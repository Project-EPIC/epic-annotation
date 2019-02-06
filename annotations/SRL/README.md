Semantic Role Labelling involves annotation of the important semantic entities within a sentence and the syntactic relations between them. More generally, we aim to identify who did what to whom. The SRL data annotated for Project EPIC is over two events: Hurricane Gustiv and the Red River floods. This data is based on <a href="http://clear.colorado.edu/compsem/documents/propbank_guidelines.pdf">PropBank annotation</a>, and is presented in an Excel style format. Each line contains a word, along with the word's index in the tweet, part of speech, dependency relation and semantic role. The semantic roles are the final column: they indicate the verb that the word is a role of (via it's index), as well as the type of argument. These types are:

<ul>
  <li>A0: ARG0</li>
  <li>A1: ARG1</li>
  <li>A2: ARG2</li>
  <li>AM: Modifier - can be temporal (TMP), directional (DIR), and many others</li>
</ul>

The data is presented in spreadsheet format, with each tweet separated by a blank line. The columns are data fields:
<ol>
  <li>Word Index</li>
  <li>Word</li>
  <li>Lemma</li>
  <li>Part of Speech</li>
  <li>-</li>
  <li>Index of Head Word</li>
  <li>Relation to Head</li>
  <li>Marked as PB Verb</li>
  <li>Semantic Role</li>
</ol>

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

