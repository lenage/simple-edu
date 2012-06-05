# -*- coding: utf-8 -*-
require_relative './spec_helper'

describe 'Simple education app' do

  describe "home page" do
    before do
      Post.delete
    end

    context "when haven't blog" do
      it 'should show tips' do
        get "/"
        last_response.should be_ok
        last_response.body.should =~ /新阅读/
      end
    end

    context "have one blog" do
      it "should display it" do
        Post.new(:title => "A blog").save
        get "/"
        last_response.should be_ok
        last_response.body.should =~ /A blog/
      end
    end
  end
end
