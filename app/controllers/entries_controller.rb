class EntriesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @entries = Entry.all
  end


end
