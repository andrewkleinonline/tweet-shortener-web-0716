# Write your code here.
require 'pry'

def dictionary()

word_changes = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}

end

def change_words(words)
  words.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
end


def word_substituter(tweet)

  tweet_words = tweet.split(" ")

  short_words = change_words(tweet_words)
  short_tweet = short_words.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
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


def shortened_tweet_truncator(shortened_tweet)
  if shortened_tweet.length > 140
    shortened_tweet = shortened_tweet[0..139]
    shortened_tweet[137..139] = "..."

    shortened_tweet
  else
    shortened_tweet
  end
end
