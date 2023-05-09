-- Q1, Q2
CREATE INDEX tweettags_idx_tagtweets ON tweet_tags(tag, id_tweets);
CREATE INDEX tweettags_idx_tweetstag ON tweet_tags(id_tweets, tag);
-- Q3
CREATE INDEX tweets_idx_lang on tweets(id_tweets, lang);
-- Q4,5
CREATE INDEX tweets_idx_gin on tweets USING gin(to_tsvector('english', text)) WHERE lang='en';