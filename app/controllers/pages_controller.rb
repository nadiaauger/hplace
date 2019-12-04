class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @best_events = [Event.find_by(name: "Belote"), Event.find_by(name: "Tricot"), Event.where("name ILIKE ?", "%uno%").first]
  end
end
