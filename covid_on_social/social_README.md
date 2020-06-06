# covid_on_social

The aim of covid_on_social is to gain insights into the discussion about COVID-19 on social media. The data we gather from social media will be used to train an NLP model for processing and interpreting the free-text data our app collects (the section of the app where users can leave comments). See issue #9 for more information and to add ideas about how this feature should be implemented.

## Goal
Research and scrape social media threads/conversations for specific symptoms of COVID as well as non-COVID health issues in order to generate randomized sentence data to train our NLP model. 

## Data we need to scrape
We would need to gather the post text itself, and in addition we could also scrape the hashtags the poster uses in order to find other posts on similar topics. For symptom discussions relating to COVID-19 we would need to know if the individual who is posting is confirmed to have COVID-19, which is difficult to know unless the individual chooses to post about it.

## What the data will be used for
The data for the NLP model will be used to mock users' comments on the app. The NLP model can help us generate insights from eventual comments users write and incorporate those when considering the correlation of certain symptoms to COVID. The comments section of our app allows users to report symptoms they are experiencing that are not listed within the given choices, and it would be helpful to be able to analyze whether those symptoms are most correlated with COVID or other non-COVID illnesses.

## Possible sources for scraping

#### Twitter

- COVID-19 TweetID dataset: https://github.com/echen102/COVID-19-TweetIDs

- Health topics from Twitter (non-covid): https://figshare.com/articles/Discovering_health_topics_in_social_media_using_topic_models/1007712

#### Facebook

- API of epidemiological data which includes Facebook’s survey of self-reported COVID symptoms: https://cmu-delphi.github.io/delphi-epidata/api/covidcast.html

##### Facebook Groups (covid and non-covid)

- Anxiety/panic disorders, PTSD, OCD, health anxiety, stress, depression. https://www.facebook.com/groups/164523694481528/?ref=br_rs

- KIDNEY FAILURE Symptoms, Causes & Treatments https://www.facebook.com/groups/2501744840149737/?ref=br_rs

- Causes,symptoms and treatment of diseases. https://www.facebook.com/groups/446950865479954/?ref=br_rs

- COVID-19 information and discussion group https://www.facebook.com/groups/3050168458361195/?ref=br_rs

- COVID-19 Symptoms, Experiences, Questions, Remedies, & Sharing https://www.facebook.com/groups/636713580226698/?ref=br_rs

- Coronavirus Experiences and Recoveries https://www.facebook.com/groups/3450478258300773/?ref=br_rs

#### Other

- subreddits dedicated to coronavirus symptom discussion (if these actually exist) or for patients who have other health conditions separate from COVID

- other instagram/facebook communities for patients with coronavirus or non-coronavirus health conditions

- any other social media or chat platforms you can think of, please add them to the list!
