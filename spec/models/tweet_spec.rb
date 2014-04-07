require 'spec_helper'

describe Tweet do

 it "should have a body" do

  tweet = Tweet.new(user_id: 1, body: "Sup Yall")

  expect(tweet.body).to eq("Sup Yall")

  expect(tweet.user_id).to eq(1)

  expect(tweet.valid?).to eq(true)

 end

end
