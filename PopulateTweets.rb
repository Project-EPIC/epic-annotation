require_relative 'lookup_tweets/requests/StatusesLookup'

require 'trollop'
require 'json'

USAGE = %Q{
get_tweets_lookup: returns the tweet objects associated with a given set of tweet ids

Example:
  ruby get_tweets_lookup -p oauth.properties --ids <file_of_tweet_ids>

Usage:

  ruby get_statuses_lookup.rb <options>

The following options are required:
}

def parse_command_line
  options_props = {type: :string, required: true}
  options_input = {type: :string, required: true}
  
  opts = Trollop::options do
    version "2017 K. Stowe, based on get_lookup 0.1 (c) 2015 Kenneth M. Anderson"
    banner USAGE
    
    opt :props, "OAuth Properties File", options_props
    opt :input, "File to populate tweets to", options_input
  end

  unless File.exist?(opts[:props])
    Trollop::die :props, "must point to a valid oauth properties file"
  end

  unless File.exist?(opts[:input])
    Trollop::die :input, "must point to an existing annotation file"
  end

  opts
end

if __FILE__ == $0
  STDOUT.sync = true

  input   = parse_command_line
  
  params  = { id: "" }
  data    = { props: input[:props] }

  args    = { params: params, data: data }
  twitter = StatusesLookup.new(args)
  
  json_data = JSON.parse( File.read ( input[:input] ) )
  list_of_ids = json_data.keys

  result = {}
  tot = 0
  
  while list_of_ids.length > 0

    puts String(list_of_ids.length) + " tweets to process..."
    
    ids = list_of_ids.shift(100)

    twitter.params[:id] = ids.join(",")

    twitter.collect do |tweets|
      tot += tweets.length
      tweets.each do |tweet|
        result[tweet["id_str"]] = {"text" => tweet["text"], "annotations" => json_data[tweet["id_str"]]}
      end
    end
  end

  puts "Writing annotated tweets to " + String(input[:input] + "-t")
  File.open(input[:input] + "-t", "w") do |f|
    f.write(result.to_json)
  end
  
  puts String(tot) + " tweets written of " + String(json_data.keys.length)

end
