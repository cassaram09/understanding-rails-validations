class Person < ActiveRecord::Base
  include ActiveModel::Validations


  validate :is_a_human

  validates_with NameValidator

  validates :email, presence: true, email: true

  def is_a_human
    errors.add(:human, "You're a robot!") unless self.human == true
  end
end
