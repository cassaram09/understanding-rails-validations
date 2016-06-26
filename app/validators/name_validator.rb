class NameValidator < ActiveModel::Validator
  def validate(record)
    if record.name.nil? 
      record.errors.add :name, "Name can't be blank!"
    elsif record.name.length < 5 
      record.errors.add :name, "The name isn't long enough!"
    else
      true
    end
  end
end