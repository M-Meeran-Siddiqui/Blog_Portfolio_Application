class Blog < ApplicationRecord
  # enum :status, { draft: 0, published: 1, archived: 2 }
  enum status: {draft: 0, published: 1, archived: 2} 
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  belongs_to :topic


  def self.special_blogs
    # limit(2)
    all 
  end

  def self.featured_blogs
    limit(3)
  end
  
end

