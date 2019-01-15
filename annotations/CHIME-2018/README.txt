CHIME-2018
This work is the result of the annotation project presented at the Linguistic Annotation, Multi-word Expression and
Construction Grammar (LAW-MWE-CxG) workshop, held with Coling 2018.

<b>Developing and Evaluating Annotation Procedures for Twitter Data during Hazard Events<\b>
Kevin Stowe, Martha Palmer, Jennings Anderson, Marina Kogan, Leysia Palen, Kenneth M. Anderson, Rebecca Morss,
Julie Demuth and Heather Lazrus

The guidelines will be available soon, under annotations/CHIME-2018. We are still working on creating publishable versions of the guidelines. The annotations are currently available. Thank you for your patience.


The release includes two JSON files: one for the all of the <b>Relevance</b> annotation, which contains ~25,000 tweets
annotated with binary hurricane relevance, and one with the final version of annotation for ~2,000 tweets using
the most current scheme (Scheme 4). Guidelines for this annotation scheme will also be provided. Both files share the
same format, with tweet ids as keys and the annotations as lists. This allows for us to release the data using the
scripts provided, while also respecting privacy for deleted and private accounts.

Note the CHIME 2016 annotation is a subset of this data: we include the same relevance annotation, without the
fine-grained categories.

----
FORMAT
----

data keys : tweet_id
data[key] : list of strings for all the annotations of the tweet.
