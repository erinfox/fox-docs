require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'formatted_publish_date' do
    it 'formats the date' do
     post = Post.create(title: 'Reading 101', content: 'words')

     expect(post.formatted_publish_date).to eq('Feb 28, 2025')
    end
  end
  describe 'publish_title' do
    it 'publish_title' do
      post = Post.create(title: 'Reading 101', content: 'words')

      expect(post.publish_title).to eq('Published on: Feb 28, 2025')
    end
  end

  describe 'self.available_cat' do
    it 'self.available_cat' do
      # Post.available_cat
      expect(Post.available_cat).to eq(['reading', 'pets'])
    end
  end
end
