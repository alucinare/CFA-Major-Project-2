class User < ApplicationRecord

  attr_accessor :password

  before_save :encrypt_password
  after_save :clear_password


  has_many :messages, dependent: :destroy
  has_many :chatrooms, through: :messages
  has_many :connects, dependent: :destroy

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates_length_of :password, in: 6..20, on: :create


  # attr_accessible :username, :password, :password_confirmation


  # def self.authenticate(login_password="")
  #
  #   if user && user.match_password(login_password)
  #     return user
  #   else
  #     return false
  #   end
  # end
  #
  # def match_password(login_password="")
  #   encrypted_password == BCrypt::Engine.hash_secret(login_password, salt)
  # end


# these are calls from within the model
  def encrypt_password
    unless password.blank?
      self.salt = BCrypt::Engine.generate_salt
      self.encrypted_password = BCrypt::Engine.hash_secret(password, salt)
    end
  end

  def clear_password
    self.password = nil
  end

end
