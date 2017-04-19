class Connect < ApplicationRecord
  belongs_to :user

  validates :article, :presence => true
  validates :discussion, :presence => true
  validates :topic, presence: true, uniqueness: true, case_sensitive: false
end
