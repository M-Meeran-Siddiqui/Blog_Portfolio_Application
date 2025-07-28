class Blog < ApplicationRecord
  # enum :status, { draft: 0, published: 1, archived: 2 }
  enum status: {draft: 0, published: 1, archived: 2} 
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  belongs_to :topic
end

