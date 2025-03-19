class Post < ApplicationRecord
  def formatted_publish_date
    created_at.strftime('%b %d, %Y')
  end

  def publish_title
    'Published on: ' + formatted_publish_date
  end

  def self.available_cat
    ['reading', 'pets']
  end
end
