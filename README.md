# epic-annotation
**SRL Data for Hurricane Gustav and the Red River floods now available in annotations/SRL**

Annotation data released under Project Epic. For annotation related to the CHIME grant, see https://github.com/Project-EPIC/chime-annotation. We're still working on the collected data; here's what is and what will be available:

<table>
  <tr><td>Dataset</td><td># of Tweets</td></tr>
  <tr><td>Named Entity Annotation for 10 different events</td><td>18,081</tr>
  <tr><td>Behavioral Annotation (from  <a href="http://www.aaai.org/ocs/index.php/ICWSM/ICWSM11/paper/download/2834/3282">Verma et al (ICWSM 2011)</a>) for 3 events</td><td>1,500</td></tr>
  <tr><td>Semantic role labeling (Gustav, Red River)</td><td>32,912 lines</tr>
  <tr><td>*Part-of-speech tagging for a variety of events</td><td/></tr>
</table>
*Will be available soon<br>

The data provided includes only annotations, and not original tweets, in order to attempt to honor privacy concerns of potentially sensitive information. We've included tools for accessing the original tweets via Twitter: please see the <a href="https://github.com/Project-EPIC/epic-annotation/blob/master/Epic%20Tweet%20Documentation.pdf">Epic Tweet Documentation</a>. We've released SRL data for Hurricane Gustav and the Red River floods with the original text, as we were unable to reconstruct the SRL information using only Tweet IDs.


# Named Entity Annotation
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

* - These datasets may not have been collected with accurate Tweet IDs, and thus they may not be recoverable from the Twitter API. We are looking into possibilities for restoring
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

# Semantic Role Labelling

Semantic Role Labelling involves annotation of the important semantic entities within a sentence and the syntactic relations between them. More generally, we aim to identify who did what to whom. The SRL data annotated for Project EPIC is over two events: Hurricane Gustiv and the Red River floods. This data is based on PropBank annotation, and is presented in an Excel style format. Each line contains a word, along with the word's index in the tweet, part of speech, dependency relation and semantic role. The semantic roles are the final column: they indicate the verb that the word is a role of (via it's index), as well as the type of argument. These types are:

<ul>
  <li>A0: ARG0</li>
  <li>A1: ARG1</li>
  <li>A2: ARG2</li>
  <li>AM: Modifier - can be temporal (TMP), directional (DIR), and many others</li>
</ul>

For example, consider the following tweet:<br/>

1	Thinking	think	VBG	_	5	DEP	think.XX	_
2	of	of	IN	_	1	ADV	_	1:A1
3	Gustav	gustav	NNP	_	2	PMOD	_	_
4	.	.	.	_	1	P	_	_
5	May	may	MD	_	0	ROOT	_	7:AM-MOD
6	it	it	PRP	_	5	SBJ	_	7:A0
7	bring	bring	VB	_	5	VC	bring.XX	_
8	minimal	minimal	JJ	_	9	NMOD	_	_
9	damage	damage	NN	_	7	OBJ	_	7:A1
10	.	.	.	_	5	P	_	_

Here, the verbs are "think", indexed 1, and "bring", indexed 7. The phrase "of Gustav" is the ARG1 of "think", marked by the index of the verb on "of": 1:A1. "May" is a modal (MOD) modifier of "bring", marked 7:AM-MOD. The pronoun "it" is the ARG0 of bring (7:A0), and the phrase "minimal damage" is the ARG1 of bring (7:A1 on "damage").



# Behavioral Annotation
This data is based on the paper <a href="https://pdfs.semanticscholar.org/7867/159013a9c10661fbfe8619a9c1cc76c3012c.pdf
>Natural Language Processing to the Rescue? Extracting “Situational Awareness” Tweets During Mass Emergency</a>. They collected four datasets of 500 tweets each. These datasets overlap with the named entity annotation, and include the two Red River Floods (2009, 2010), the Oklahoma wildfire, and the Haiti Earthquake. These tweets were annotated with 'behavioral' categories:

<ul>
  <li>Situational Awareness: whether they contribute to user's awareness of the event </li>
  <li>Subjectivity: Whether the tweet is objective of subjective</li>
  <li>Linguistic Register: Whether the tweet is in a <em>formal</em> or <em>informal</em> register</li>
  <li>Personal/impersonal: Whether the tweet is expressed from a personal standpoint or not</li>
</ul>

These categories are annotated at the tweet level: each tweet has four annotations for each of the above categories. Like the named entity data, we include only tweet IDs and annotations. Unfortunately, the original IDs for the Oklahoma dats were not maintained, and this data is currently unavailable. We are looking into ways of releasing it publically in a consistent and ethical fashion.
For any questions, please contact<br>
Kevin Stowe<br>
kevin.stowe@colorado.edu<br>
