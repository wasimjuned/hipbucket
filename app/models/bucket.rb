class Bucket < ActiveRecord::Base
  # callbacks
  before_create :generate_hashes

  # validations
  validates_presence_of :name, :description, :admin_email, :admin_hash, :participation_hash

  def generate_hashes
    self.admin_hash = SecureRandom.urlsafe_base64
    self.participation_hash = SecureRandom.urlsafe_base64
  end
end
