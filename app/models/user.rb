class User < ApplicationRecord
  has_many :questions
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

  # def password
  #   @password ||= BCrypt::Password:new(password_hash)
  # end

  # def password=(password_new)
  #   @password = BCrypt::Password.create(password_new)
  #   self.password_hash = @password
  # end

  # def authenticate(password_test)
  #   self.password == password_test
  # end

end
