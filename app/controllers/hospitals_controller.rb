class HospitalsController < ApplicationController
skip_before_action :authenticate_user!, only: [:show, :handler]

  def show
    @hospital = Hospital.find(params[:id])
  end

  def handler
    @hospital = Hospital.find_by(name: params[:query])
    if @hospital != nil
      redirect_to hospital_path(@hospital)
    else
      redirect_to root_path
    end
  end
end
