class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {:minimum => 250}
  validates :summary, length: {:maximum => 250}
  validates :category, inclusion: {in: %w(Fiction Non Fiction)}
  validate :clickbait?
  
  CLICKBAIT = [/won't believe/i, /secret/i, /guess/i, /top [0-9]*/i]
  
  def clickbait?
    
  end
end
