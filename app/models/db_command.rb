class DbCommand < ActiveRecord::Base
  attr_accessible :db_name, :db_user, :db_pass, :encode, :option
end
