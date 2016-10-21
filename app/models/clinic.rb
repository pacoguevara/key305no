class Clinic < ActiveRecord::Base
  has_many :users

  def patients
    users.where(role: 'patient')
  end
end
