# Epic Annotation Overview

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
  <li>Colorado Wildfires (2012) : 741</li>
  <li>Dallas Tornado (2012) : 475</li>
  <li>Haiti Earthquake : 480</li>
  <li>Highland Park Fire : 344</li>
  <li>Hurricane Sandy : 716</li>
  <li>Lower North Fork Fire : 239</li>
  <li>New Mexico Fire : 122</li>
  <li>New Zealand Earthquake : 1227</li>
  <li>Red River Flood (2009) : 12885</li>
  <li>Red River Flood (2010) : 450</li>
  <li>Winter Storm Nemo : 402</li>
</ul>

Total : 18081

Some of these datasets may not have been collected with accurate Tweet IDs, and thus they may not be recoverable from the Twitter API. We are looking into possibilities for restoring accurate tweet ids, or releasing the data with raw text.

These tweets are annotated with named entity tags based on the <a href="https://www.ldc.upenn.edu/sites/www.ldc.upenn.edu/files/english-entities-guidelines-v6.6.pdf">Automatic Content Extraction guidelines</a> for entities. The tags annotated are:

<ul>
  <li>PERSON</li>
  <li>ARTIFACT</li>
  <li>ORGANIZATION</li>
  <li>LOCATION</li>
  <li>FACILITY</li>
</ul>
 These annotations are provided along with the span of text for the tweet annotated. For information on how to extract the original tweet texts, please see the <a href="https://github.com/Project-EPIC/epic-annotation/blob/master/Epic%20Tweet%20Documentation.pdf">Epic Tweet Documentation</a>.

# Semantic Role Labelling

Semantic Role Labelling involves annotation of the important semantic entities within a sentence and the syntactic relations between them. More generally, we aim to identify who did what to whom. The SRL data annotated for Project EPIC is over two events: Hurricane Gustiv and the Red River floods. This data is based on <a href="http://clear.colorado.edu/compsem/documents/propbank_guidelines.pdf">PropBank annotation</a>, and is presented in an Excel style format. Each line contains a word, along with the word's index in the tweet, part of speech, dependency relation and semantic role. The semantic roles are the final column: they indicate the verb that the word is a role of (via it's index), as well as the type of argument. These types are:

<ul>
  <li>A0: ARG0</li>
  <li>A1: ARG1</li>
  <li>A2: ARG2</li>
  <li>AM: Modifier - can be temporal (TMP), directional (DIR), and many others</li>
</ul>

For example, consider the following tweet:<br/>

<table>
  <tr><td>Index</td><td>Word</td><td>Lemma</td><td>POS</td><td>-</td><td>Head</td><td>Dep. Relation</td><td>PB Verb</td><td>Semantic Role</td></tr>
<tr><td>1</td><td>Thinking</td><td>think</td><td>VBG</td><td>_</td><td>5</td><td>DEP</td><td>think.XX</td><td>_</td></tr>
<tr><td>2</td><td>of</td><td>of</td><td>IN</td><td>_</td><td>1</td><td>ADV</td><td>_</td><td>1:A1</td></tr>
<tr><td>3</td><td>Gustav</td><td>gustav</td><td>NNP</td><td>_</td><td>2</td><td>PMOD</td><td>_</td><td>_</td></tr>
  <tr><td>4</td><td>.</td><td>.</td><td>.</td><td>_</td><td>1</td><td>P</td><td>_</td><td>_</td></tr>
<tr><td>5</td><td>May</td><td>may</td><td>MD</td><td>_</td><td>0</td><td>ROOT</td><td>_</td><td>7:AM-MOD</td></tr>
<tr><td>6</td><td>it</td><td>it</td><td>PRP</td><td>_</td><td>5</td><td>SBJ</td><td>_</td><td>7:A0</td></tr>
<tr><td>7</td><td>bring</td><td>bring</td><td>VB</td><td>_</td><td>5</td><td>VC</td><td>bring.XX</td><td>_</td></tr>
<tr><td>8</td><td>minimal</td><td>minimal</td><td>JJ</td><td>_</td><td>9</td><td>NMOD</td><td>_</td><td>_</td></tr>
<tr><td>9</td><td>damage</td><td>damage</td><td>NN</td><td>_</td><td>7</td><td>OBJ</td><td>_</td><td>7:A1</td></tr>
  <tr><td>10</td><td>.</td><td>.</td><td>.</td><td>_</td><td>5</td><td>P</td><td>_</td><td>_</td></tr>
  </table>

Here, the verbs are "think", indexed 1, and "bring", indexed 7. The phrase "of Gustav" is the ARG1 of "think", marked by the index of the verb on "of": 1:A1. "May" is a modal (MOD) modifier of "bring", marked 7:AM-MOD. The pronoun "it" is the ARG0 of bring (7:A0), and the phrase "minimal damage" is the ARG1 of bring (7:A1 on "damage").



# Behavioral Annotation
This data is based on the paper <a href="https://pdfs.semanticscholar.org/7867/159013a9c10661fbfe8619a9c1cc76c3012c.pdf">Natural Language Processing to the Rescue? Extracting “Situational Awareness” Tweets During Mass Emergency</a>. They collected four datasets of 500 tweets each. These datasets overlap with the named entity annotation, and include the two Red River Floods (2009, 2010), the Oklahoma wildfire, and the Haiti Earthquake. These tweets were annotated with 'behavioral' categories:

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
