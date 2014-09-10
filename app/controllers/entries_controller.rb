class EntriesController < ApplicationController
  before_filter :check_user_data, only: [:new]
  inherit_resources

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
      redirect_to edit_user_path(current_user)
    end
  end

  def permitted_params
    params.permit(entry: [:transaction_date, :transaction_type, :my_coin, :your_coin])
  end
end
