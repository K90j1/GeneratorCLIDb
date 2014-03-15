class DbCommandsController < ApplicationController

  def new
    @db_commands = DbCommand.new
  end

  def create
    @db_commands = DbCommand.new(params[:db_command])
    if @db_commands.valid?
      render 'index'
    else
      render 'new'
    end
  end

  def index
  end
end
