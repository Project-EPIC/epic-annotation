---
ICSWM 2011 DATA
Natural Language Processing to the Rescue? Extracting “Situational Awareness” Tweets During Mass Emergency

Vieweg et al
---

Data format
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
