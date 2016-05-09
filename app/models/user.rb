class User < ActiveRecord::Base
<<<<<<< HEAD
  has_many :articles, dependent:  :destroy #destroy qualquer artigo que usuario tiver..
=======
  has_many :articles
>>>>>>> 491a24b1fe80297020f4ff1c15f01387fb7f2b88
  before_save{ self.email = email.downcase } #coloca o email em letra minuscula antes de salvar na database
  validates :username, presence: true,
            uniqueness: {case_sensitive: false},
            length: {minimum: 3, maximum: 25}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 105},
            uniqueness: {case_sensitive: false},
            format: {with: VALID_EMAIL_REGEX}
  has_secure_password

end