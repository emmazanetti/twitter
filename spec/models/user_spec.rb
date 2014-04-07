require 'spec_helper'

describe User do

 it "should have a username" do

  user = User.new(
  	first_name: "emma", 
  	last_name: "zanetti", 
  	location: "asheville, nc")

  expect(user.first_name).to eq("emma")

  expect(user.last_name).to eq("zanetti")

  expect(user.location).to eq("asheville, nc")

 end
end