require 'pry'
def dictionary
  words_to_be_substituted =
{
"hello" => "hi",
"to" => '2',
"two" => '2',
"too" => '2',
"for" => '4',
"For" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
'at' => "@",
'and' => '&'
}
end

def word_substituter(tweet)
  words = tweet.split
  dictionary_word = dictionary.keys
    words.collect do |string|
      if dictionary_word.include?(string)
          string = dictionary[string]
        else
          string
        end
    end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener(tweets)
    if tweets.length > 140
      return word_substituter(tweets)
      else
        tweets
      end
end

def shortened_tweet_truncator(tweets)
    if tweets.length > 140
      return tweets[0..136] + "..."
    else
      tweets
    end
end
