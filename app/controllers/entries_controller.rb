class EntriesController < ApplicationController
  before_filter :authenticate_user!, only: [:index, :new]
  after_filter :log_out, only: [:index]
  before_filter :check_user_data, only: [:new]
  inherit_resources

  def log_out
    sign_out current_user
  end

  def index
    @current_user = current_user
    @entries = Entry.where(logical_down: true)
  end

  def new
    @entry = Entry.new
  end

  def create
    Entry.create!(permitted_params[:entry].merge(user: current_user, my_amount:
                                                 params['entry']['my_amount'].to_f, unity_price:
                                                 params['entry']['unity_price'].to_f))
    redirect_to entries_path
  end

  def down
    Entry.find(params[:entry_id]).down
    redirect_to root_path
  end

  def check_user_data
    if current_user.name.blank? || current_user.reference.blank? || current_user.phone.blank?
      redirect_to edit_user_registration_path
    end
  end

  def permitted_params
    params.permit(entry: [:transaction_date, :transaction_type, :my_coin, :your_coin])
  end
end
