# Where are the Cute Kittens and what happened to your attention spa...
P2 Deliverable, project proposal, and initial analyses for [ADA - Fall 2022](https://dlab.epfl.ch/teaching/fall2022/cs401/projects/)

# Table of contents

- [Where are the Cute Kittens and what happened to your attention spa...](#where-are-the-cute-kittens-and-what-happened-to-your-attention-spa)
  - [Table of Contents](#table-of-contents)
  - [Abstract - Where are the Cute Kittens?](#abstract---where-are-the-cute-kittens)
  - [Research Questions](#research-question)
  - [Methods](#methods)
  - [Organization of work](#organization-of-work)
  - [Authors](#authors)


## Abstract - Where are the Cute Kittens? 

> *You sit comfortably on your couch and pick up your phone.*
> *You scroll through the latest TikTok trend, past that funny Reel about Gen-Z humor. You snug into a blanket, ready to dive into the new 20min episode by 3Blue1Brown on 'Why PI Is Everywhere'. Once on YouTube, though, you get sidetracked by a Short of Elon taking a puff with Joe Rogan, and you end up irritated by a Vox documentary on the Rise to Power of Vladimir Putin.*[^1]
> 
> You stop and think: *Where are the cute kittens?*

What happened to YouTube? How did we go from funny cat videos and epic fail montages to long-form podcasts, product reviews, and deconstructions of political rivalries with incredible production quality? How did YouTube not only survive but thrive in a world where short, mobile-first content became king?

In this project, we will travel through time, and explore YouTube's trends over the years, using the YouNiverse Dataset [^2].

## Research Questions
Our aim is *not* to establish a causal relationship between particular features and engagement, nor to create a recipe for future channel success. We will focus on presenting interesting trends that can be digested and appreciated regardless of how intertwined Social media as a whole has become.
- How much information are we actually looking through on YouTube? 
- How did the length of videos change over the years?
- What can reveal positiveness in the content?
- Does the category precisely describe the video? How are the videos and categories connected?
- What are the most popular topics over the years and how are they distributed?
- How did the use of words in tags, titles and discriptions change over time and what can we observe?

## Methods
- CDF
In April 2011, James Zern, a YouTube software engineer, revealed that 30 percent of videos accounted for 99 percent of views on the site. We would like to use CDF to explore this fact and Research Question 1. We will plot it over years using information about views of videos to see how the distribution changes.
- Sentiment analysis for detecting the sentiment of headlines.
Using that we want to see if Youtube tends to be more negative or positive over years using Vader. The assumption that we made where titles with 'compound' value between 0.5 and -0.5 are considered neutral.
- Graph for glimpsing the communities and categories connections using tags.
The proposed library for that is networkx. We are constructing a graph that consists of nodes as videos and edges as common tags between two nodes. By collecting these tags and comparing them across all videos, we could build a graph of video relationships.
Another graph is constructed to display how the categories are connected to each other in terms of tags. 
- Word Clouds for visualizing popular words in tags, titles, and descriptions.
We tried different ways to separate and filter out these attributes.
## Organization within the team

## Authors
- [@mariia](https://github.com/mariiavidmuk)
- [@daria](https://github.com/dariayakovchuk)
- [@rouby](https://github.com/ahmadelrouby)
- [@jacopo](https://github.com/Ciacco99)

