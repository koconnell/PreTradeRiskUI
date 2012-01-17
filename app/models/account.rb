class Account < ActiveRecord::Base
  validates_presence_of :accountID
  validates_uniqueness_of :accountID

  attr_accessible :accountID, :localCurrency

  def to_s
    self.accountID
  end

private
  def do_before_create
    self.objectID = self.accountID
  end

end
