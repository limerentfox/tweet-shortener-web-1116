# Write your code here.

def dictionary
   dictionary = {
   'hello' => 'hi',
   'to' => '2',
   'too' => '2',
   'two' => '2',
   'for' => '4',
   'four' => '4',
   'be' => 'b',
   'you' => 'u',
   'at' => '@',
   'and' => '&'
  }
end

def word_substituter(tweet)
  tweet_word_array = tweet.split(" ")
  tweet_word_array.map do |word|
    dictionary.each do |key, value|
      word = value if word.downcase == key
  end
    word
  end.join(" ")
end


def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
   word_substituter(tweet)
  else
    tweet
  end
end



def shortened_tweet_truncator(tweet)
  subbed_tweet = word_substituter(tweet)
  if subbed_tweet.length >= 140
    "#{subbed_tweet[0..136]}..."
  else
    subbed_tweet
  end
end
