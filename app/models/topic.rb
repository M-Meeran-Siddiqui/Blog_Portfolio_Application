class Topic < ApplicationRecord

  validates_presence_of :title 
  has_many :blogs
end


=begin
Blogs:
title: Baseball world series , topic_id: 1
Superbowl, topic_id: 2
Spring training , topic_id: 1

Topics:
1. baseball
2. football
=end

