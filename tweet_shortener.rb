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
  tweet_word_array.each_with_index do |word, i|
    dictionary.keys.each do |blacklisted_word|
        if word.downcase == blacklisted_word.downcase
          tweet_word_array[i] = dictionary[blacklisted_word]
        end
      end
  end
  shortened_tweet = tweet_word_array.join(" ")
  return shortened_tweet
end


def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet_word_array = tweet.split(" ")
    tweet_word_array.each_with_index do |word, i|
      dictionary.keys.each do |blacklisted_word|
        if word.downcase == blacklisted_word.downcase
          tweet_word_array[i] = dictionary[blacklisted_word]
        end
      end
    end
    selective_shortened_tweet = tweet_word_array.join(" ")
    return selective_shortened_tweet
  else
    return tweet
  end
end



def shortened_tweet_truncator(tweet)
  edited_tweet = ""
  edited_tweet << selective_tweet_shortener(tweet)
  if edited_tweet.length >= 140
    "#{edited_tweet[0..136]}..."
  else
    "#{edited_tweet}"
  end
end 




