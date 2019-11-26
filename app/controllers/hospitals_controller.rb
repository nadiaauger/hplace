class HospitalsController < ApplicationController
skip_before_action :authenticate_user!, only: [:show]

  def show
     @hospital = Hospital.find(params[:id])
  end
end
