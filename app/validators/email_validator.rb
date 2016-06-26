class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if incorrect_email_domain(value)
      record.errors.add attribute, 'Must be a gmail address!' 
    end
  end

  private
  def incorrect_email_domain(value)
    !value.nil? && !value.include?("@gmail.com")
  end
end