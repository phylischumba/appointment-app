class V1::DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[show update destroy]
  skip_before_action :authorize_request, only: %i[index show]

  def index
    @doctors = Doctor.all
    json_response(@doctors)
  end

  def create
    @doctor = Doctor.create!(doctor_params)
    json_response(@doctor, :created)
  end

  def show
    json_response(@doctor)
  end

  def update
    @doctor.update(doctor_params)
    head :no_content
  end

  def destroy
    @doctor.destroy
    head :no_content
  end

  private

  def doctor_params
    params.permit(
      :name,
      :specialization,
      :practice_from,
      :professional_statement
    )
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
