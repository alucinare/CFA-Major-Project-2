class Connect < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom

  validates :article, presence: true 
end
