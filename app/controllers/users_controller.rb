class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :new_patient
  def patients
    @patients = current_user.patients
  end

  def new_patient
    params[:clinic_id] = current_user.clinic_id
    params[:password] = SecureRandom.hex(4)
    params[:nutritionist_id] = current_user.id
    User.create(user_params)
    redirect_to :back
  end

  def user_params
    params.permit(:first_name, :last_name, :email,
    :phone, :address, :role, :clinic_id, :password, :role, :nutritionist_id)
  end
end
