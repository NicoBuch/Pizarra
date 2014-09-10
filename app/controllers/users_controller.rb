class UsersController < ApplicationController
  inherit_resources

  def log_out
    sign_out current_user
  end


  def update
    user = current_user
    log_out
    user.update_attributes!(params.require(:user).permit(:name, :phone, :reference, :notes,
                                                                 :address))
    redirect_to entries_path
  end

end
