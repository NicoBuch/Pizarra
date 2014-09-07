class UsersController < ApplicationController
  before_action :log_out, only: [:update]
  before_action :authenticate_user!
  inherit_resources

  def log_out
    sign_out current_user
  end

  def update
    current_user.update_attributes!(params.require(:user).permit(:name, :phone, :reference, :notes,
                                                                 :address))
    redirect_to entries_path
  end

end
