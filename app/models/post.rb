class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {min: 250}
end
