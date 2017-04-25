class User < ApplicationRecord
  rolify

  attr_accessor :password

  before_save :encrypt_password
  after_save :clear_password


  has_many :messages, dependent: :destroy
  has_many :chatrooms, through: :messages
  has_many :connects, dependent: :destroy
  has_one :profile, dependent: :destroy

  # EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates_length_of :password, in: 6..20, on: :create

  after_create :assign_default_role


  def assign_default_role
    self.add_role(:member) if self.roles.blank?
  end

  def admin?
    has_role?(:admin)
  end

  def self.authenticate(username="", login_password="")

    puts username.inspect
    puts login_password.inspect


    user = User.find_by_username(username)
    puts user.inspect


    puts "username inspect 2"
    puts username.inspect

    if user && user.match_password(login_password)
      puts "in user && user.match"
      return user
    else
      puts "in else for user and user.match"
      return false
    end
  end

  def match_password(login_password="")
    puts "in match"
    encrypted_password == BCrypt::Engine.hash_secret(login_password, salt)
  end

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
