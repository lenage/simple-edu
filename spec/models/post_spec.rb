require_relative '../spec_helper'

describe Post do
  let(:post) { Post.new }

  it "#validate" do
    post.validate.should have(1).error_on(:title)
    post.title = "A Blog for RSpec"
    post.validate.should eq nil
  end
end
