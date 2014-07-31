class EntriesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @entries = Entry.where(logical_down: true)
  end

end