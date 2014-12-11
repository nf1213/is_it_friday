class DaysController < ApplicationController

  def index
    @day = Day.find(Time.now.in_time_zone.wday + 1)
    @today_is_friday = Time.now.in_time_zone.friday?
  end

  private


  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:days).permit(:name, :message)
  end
end
