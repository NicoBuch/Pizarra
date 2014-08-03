class EntriesController < ApplicationController
  before_filter :authenticate_user!
  after_filter :log_out
  before_filter :check_user_data, only: [:new]

  def log_out
    sign_out current_user
  end

  def index
    @current_user = current_user
    @entries = Entry.where(logical_down: true)
  end

  def new
    @entry = Entry.new
    @entry.user = current_user
  end

  def check_user_data
    if current_user.name.blank? || current_user.reference.blank? || current_user.phone.blank?
      redirect_to edit_user_registration_path
    end
  end
end
