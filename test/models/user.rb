class User
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  attr_reader :errors

  def persisted?
    false
  end

  def initialize
    @errors = ActiveModel::Errors.new(self)
    @errors.add(:name, "can't be blank")
  end
end
