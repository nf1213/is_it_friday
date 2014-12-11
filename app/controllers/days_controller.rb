class DaysController < ApplicationController

  def index
    Time.zone = current_user.time_zone
    @day = Day.find(Time.now.wday + 1)
    @today_is_friday = Time.now.friday?
  end

  private


  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:days).permit(:name, :message)
  end
end
