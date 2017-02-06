require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
    before do
     user = User.create(email: "test_post@test.com", password: "sdfsddsfsd", first_name: "hhihi", last_name: "hello")
     @post = Post.create(date: Date.today, rationale: "hello", user_id: user.id)
    end
   it 'can be created' do
     expect(@post).to be_valid
   end
   it 'cannot be created' do
     @post.date = nil
     @post.rationale = nil
     expect(@post).not_to be_valid
   end
  end
end
