-------------------------------------------------------------------------
NER DATA
---------
Structure

NER Data is organized by Event. Each Event has a .json file with the
following format:
Keys : Tweet_Ids

data[key] =
  {"tweet_id":tweet_id_string
  "event":event_name
  "anns":list of tuples consisting of [span_start, span_end,
  named_entity_category]
  ("text", for CU data:string text of the tweet)
  }

--------
Data

The Events, with the number of tweets for each JSON:
*Colorado_Wildfires_June_2012.json : 741
*Dallas_Tornado_April_2012.json : 475
*Haiti_Earthquake.json : 480
*High_Park_Fire.json : 344
Hurricane_Sandy_Random_Tweets.json : 716
*Lower_North_Fork_Fire.json : 239
*New_Mexico_Fire_June_2012.json : 122
*New_Zealand_Earthquake.json : 1227
Red_River_2009.json : 12885
Red_River_2010.json : 450
Winter_Storm_Nemo.json : 402

Total : 18081
*Total : 3610

* - These datasets weren't annotated with accurate Tweet IDs. These
datasets will not be recoverable from the Twitter API. They are included
with text for CU use. We are looking into possibilities for restoring
accurate tweet ids.

------------------------------------------------------------------------
