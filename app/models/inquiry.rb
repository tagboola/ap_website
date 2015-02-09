class Inquiry < ActiveRecord::Base
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :message, presence: true
  validates :email, email: true

  before_save :downcase_email

  private

  def downcase_email
    self.email = self.email.downcase
  end
end
