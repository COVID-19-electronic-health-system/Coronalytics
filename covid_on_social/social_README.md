# covid_on_social

The aim of covid_on_social is to gain insights into the discussion about COVID-19 on social media. The data we gather from social media will be used to train an NLP model for processing and interpreting the free-text data our app collects (the section of the app where users can leave comments). See issue #9 for more information and to add ideas about how this feature should be implemented.

## Goal
Research and scrape social media threads/conversations for specific symptoms of COVID as well as non-COVID health issues in order to generate randomized sentence data to train our NLP model. 

## Data we need to scrape
We would need to gather the post text itself, and in addition we could also scrape the hashtags the poster uses in order to find other posts on similar topics. For symptom discussions relating to COVID-19 we would need to know if the individual who is posting is confirmed to have COVID-19, which is difficult to know unless the individual chooses to post about it.

## What the data will be used for
The data for the NLP model will be used to mock users' comments on the app. The NLP model can help us generate insights from eventual comments users write and incorporate those when considering the correlation of certain symptoms to COVID. The comments section of our app allows users to report symptoms they are experiencing that are not listed within the given choices, and it would be helpful to be able to analyze whether those symptoms are most correlated with COVID or other non-COVID illnesses.

## Possible sources for scraping

- twitter (i.e. using the Twitter API search endpoint with keywords or hashtags)

- subreddits dedicated to coronavirus symptom discussion (if these actually exist) or for patients who have other health conditions separate from COVID

- instagram/facebook communities for patients with coronavirus or non-coronavirus health conditions

- any other social media or chat platforms you can think of, please add them to the list!
