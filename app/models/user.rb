class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :clinic

  def patients
    return nil if role == 'patient'
    patients = clinic.patients
  end

  def full_name
    first_name+" "+last_name
  end
end
