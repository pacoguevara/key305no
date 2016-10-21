class UsersController < ApplicationController
  def patients
    @patients = current_user.patients
  end
end
