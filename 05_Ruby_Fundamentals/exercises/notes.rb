require 'typhoeus'#library that faciltates http requests
require 'pry'
require 'pry-byebug'
require 'json'


def stories(json_response)
  stories = json_response["data"]["children"]
  stories.each do | story |
    create_story_hash(story["data"])
    #story_hash = create_story_hash(story["data"])
  end
end

def create_story_hash(story) #creates a story hash
  {title: story["title"], upvotes: story["ups"], category: story["subreddit"]}
end


url ='http://www.reddit.com/.json'
json_response = connect_to_api(url)

stories(json_response)
