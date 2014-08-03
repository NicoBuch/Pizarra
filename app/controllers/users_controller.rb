class UsersController < ApplicationController
  before_action :authenticate_user!
  inherit_resources

  def update
    current_user.update_attributes!(params.require(:user).permit(:name, :phone, :reference, :notes,
                                                                 :address))
    redirect_to entries_path
  end

end
