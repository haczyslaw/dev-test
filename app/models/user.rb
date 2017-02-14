class User < ActiveRecord::Base
  before_create :generate_authentication_token!

  private

  def generate_authentication_token!
    self.authentication_token = Digest::SHA1.hexdigest("#{Time.now}-#{self.id}-#{self.updated_at}")
  end
end
