class User < ApplicationRecord
  has_many :questions
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable



end
