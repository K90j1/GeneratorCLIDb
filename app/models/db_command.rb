class DbCommand < ActiveRecord::Base
  include ActiveModel::Validations

  attr_accessible :db_name, :db_user, :db_pass, :encode, :option
  validates :db_name,  :presence=> true
  validates :db_user,  :presence=> true
  validates :db_pass,  :presence=> true
end
