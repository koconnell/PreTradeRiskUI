require 'account'

class Order < ActiveRecord::Base
  validates_presence_of :instrumentID, :side, :venue 
  validates :quantity, :numericality => { :only_integer => true }
  validates :price, :numericality => true
  #validate :do_validate_account

  attr_accessible :instrumentID, :accountID, :side, :quantity, :price, :venue

#private
 # def do_validate_account
  #  errors.add(:accountID, " must be linked with a valid account") if !self.accountID.nil? and !Account.exists?(self.accountID)
  #end

end
