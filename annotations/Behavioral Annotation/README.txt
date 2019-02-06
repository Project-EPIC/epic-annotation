---
ICSWM 2011 DATA
Natural Language Processing to the Rescue? Extracting “Situational Awareness” Tweets During Mass Emergency

Vieweg et al
---
This data is based on the paper <a href="https://pdfs.semanticscholar.org/7867/159013a9c10661fbfe8619a9c1cc76c3012c.pdf
>Natural Language Processing to the Rescue? Extracting “Situational Awareness” Tweets During Mass Emergency</a>. They collected four datasets of 500 tweets each. These datasets overlap with the named entity annotation, and include the two Red River Floods (2009, 2010), the Oklahoma wildfire, and the Haiti Earthquake. These tweets were annotated with 'behavioral' categories:

<ul>
  <li>Situational Awareness: whether they contribute to user's awareness of the event </li>
  <li>Subjectivity: Whether the tweet is objective of subjective</li>
  <li>Linguistic Register: Whether the tweet is in a <em>formal</em> or <em>informal</em> register</li>
  <li>Personal/impersonal: Whether the tweet is expressed from a personal standpoint or not</li>
</ul>

These categories are annotated at the tweet level: each tweet has four annotations for each of the above categories. Like the named entity data, we include only tweet IDs and annotations. Unfortunately, the original IDs for the Oklahoma dats were not maintained, and this data is currently unavailable. We are looking into ways of releasing it publically in a consistent and ethical fashion.

#Data format
The data is in json format, with each event being a separate JSON of approximately 500 tweets:

Red River Floods 2009
Red River Floods 2010
Haiti Earthquake 2010

*OK Fires 2009*
The OK Fire dataset did not include Tweet IDs, making it difficult to release while adhering to both Twitter and IRB standards. We are working on a solution.

JSON Format

{tweet_id:
	{"situational_awareness":	true/false
	"formal":			true/false (false being informal)
	"subjective":			true/false (false being objective)
	"personal":			true/false (false being impersonal)
	"tweet_id":			tweet id, same as the key
	}
}

Any questions, please contact:
Kevin Stowe
kest1439@colorado.edu
