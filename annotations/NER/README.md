---------
NER DATA
---------
This annotation is based on the paper <a href="http://www.lrec-conf.org/proceedings/lrec2012/pdf/1008_Paper.pdf">Foundations of a Multilayer Annotation Framework for Twitter</a>. They describe collection of tweets for five events, searching on certain hand-curated keywords. These were then filtered down into usable datasets. For a full description of the data collection process, see <a href="https://ieeexplore.ieee.org/document/6032533">Anderson and Schram, 2009</a>.

Based on these methods, named entities were tagged over the following events:
The Events, with the number of tweets for each JSON:
<ul>
  <li>*Colorado_Wildfires_June_2012.json : 741</li>
<li>*Dallas_Tornado_April_2012.json : 475</li>
<li>*Haiti_Earthquake.json : 480</li>
<li>*High_Park_Fire.json : 344</li>
<li>Hurricane_Sandy_Random_Tweets.json : 716</li>
<li>Lower_North_Fork_Fire.json : 239</li>
<li>New_Mexico_Fire_June_2012.json : 122</li>
<li>New_Zealand_Earthquake.json : 1227</li>
<li>Red_River_2009.json : 12885</li>
<li>Red_River_2010.json : 450</li>
<li>Winter_Storm_Nemo.json : 402</li>
</ul>

Total : 18081
*Total : 3610

\* These datasets may not have been collected with accurate Tweet IDs, and thus they may not be recoverable from the Twitter API. We are looking into possibilities for restoring
accurate tweet ids.

These tweess are annotated with named entity tags based on the <a href="https://www.ldc.upenn.edu/sites/www.ldc.upenn.edu/files/english-entities-guidelines-v6.6.pdf">Automatic Content Extraction guidelines</a> for entities. The tags annotated are:

<ul>
  <li>PERSON</li>
  <li>ARTIFACT</li>
  <li>ORGANIZATION</li>
  <li>LOCATION</li>
  <li>FACILITY</li>
</ul>
 These annotations are provided along with the span of text for the tweet annotated. For information on how to extract the original tweet texts, please see the <a href="https://github.com/Project-EPIC/epic-annotation/blob/master/Epic%20Tweet%20Documentation.pdf">Epic Tweet Documentation</a>.

# Structure

NER Data is organized by Event. Each Event has a .json file with the
following format:<br/>

Keys : Tweet_Ids<br/>

data[key] = <br/>
  {"tweet_id":tweet_id_string<br/>
  "event":event_name<br/>
  "anns":list of tuples consisting of [span_start, span_end, named_entity_category]<br/>
  }

------------------------------------------------------------------------
