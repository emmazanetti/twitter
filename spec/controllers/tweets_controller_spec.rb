require 'spec_helper'

describe TweetsController do

 it "home should load all tweets" do

  # create some tweets, remember the testing database is always empty

  tweet1 = Tweet.create!(user_id: 1, body: "yolo swaggins")

  tweet2 = Tweet.create!(user_id: 2, body: "yolo 420 monster energy every day")

  # this calls the action on the controller as if it was coming from dispatch

  get :home

  # check the assigns, which is looking for any instance variables (@tweets)

  expect(assigns(:tweets)).to eq([tweet1, tweet2])

  # make sure it's a valid http response

  expect(response).to be_success

 end


 it "home should load all tweets" do

  # create some tweets, remember the testing database is always empty

  user = User.create!(username: "dave", first_name: "dave", last_name: "davidson", location: "the moon", email: "blah@gmail.com")
    

  tweet1 = Tweet.create!(user_id: 1, body: "yolo swaggins")

  tweet2 = Tweet.create!(user_id: 2, body: "yolo 420 monster energy every day")

  # this calls the action on the controller as if it was coming from dispatch

  get :user_tweets, id: user.id

  # check the assigns, which is looking for any instance variables (@tweets)

  expect(assigns(:tweets)).to eq([tweet1])

  # make sure it's a valid http response

  expect(response).to be_success

 end
end
