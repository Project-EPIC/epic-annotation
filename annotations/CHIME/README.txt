B0;136;0c------------------------------------------------------------------------
CHIME Data
Hurricane Sandy generated a huge response of social media data. In order to
accurately mine it for useful information we annotated selected users for a
variety of decision making, vulnerability, and risk awareness related
behaviors.

----
FORMAT
----

data keys : tweet_id
data[key] : list of strings for all the annotations of the
  tweet. "None" is for tweets that are tagged as irrelevant  

----
SCHEMA
----
93 users, totalling 7,490 tweets, were annotated, with 1,757 of them being
marked as relevant. The annotated fell into a two-layered scheme:

1. Relevant or Not
--Binary classification of if the tweet is related to the storm or not.

2. High level Annotation
Sentiment
Sentiments expressed by the Tweeter. These can cooccur. We relied on
annotators to determine the intent of the tweet - if a tweeter though they
were being humorous, we marked it, even if we didn't agree that they
succeeded. Sentiment incorporates the following categories:
--Humorous
--Excited
--Worried
--Settled
--Frustrated
--Positive Coping
--Awed

Preparation/Planning
This category reflects people making plans. Commonly includes mentions of
school and road closures, as well as changes in vacations and holiday
events (Halloween parties were frequently moved, as the event occurred at
the same time).
--Maintaining Plans
--Changing Plans
--Considering Plans
--Transportation Plans

Actions
People dealing with their immediate physical environemnt to prepare and
react to the event. This included both taking actions (buying
supplies/generators, moving vehicles, etc) as well as mentions of needing
to charge phones, needing power for other appliances, drinking, and eating.
--Power for Life
--Power for Comm
--Getting/Using Supplies
--Getting/Using Alcohol/Drugs
--Preparing Home and Property

Movement
Explicit mentions of evacuate, lack of evacuation, or coming home. This
category is designed to help determine whether users evacuated, and when
they returned.
--Move Somewhere Safer
--Stationary
--Move Home

Reporting
Tweeters reporting first hand information about the event.
--External Natural Environment
--Immediate Personal Environment
--Other Built Environment
--What People Are Doing / Social Reporting

Information
Two categories relating to the flow of information: Passing information on
from other sources (includes retweetse, weather reports, evacuation
orders), and people seeking information, either from public sources or from
their more personal networks.
--Pass on Information
--Seeking Information

Other
Category for anything that doesn't fit elsewhere, along with two categories
particularly interesting for researchers which occur only rarely: mentions
of other household members (including pets) and mentions of previous events
(such as Hurricane Irene).
--Household Information
--Previous Experience
--Other

Anything deemed relevant but not found in one of these categories is marked
as Other--Other, so
that all relevant tweets are captured.

---------------------------------------------------------------------------

