class DbCommandsController < ApplicationController

  def home
    @db_commands = DbCommand.new
  end

  def create
    @db_commands = DbCommand.new(params[:db_command])
  end

end
