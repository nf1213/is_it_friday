class DaysController < ApplicationController

  def index
    t = Time.now.in_time_zone
    @day = Day.find(t.wday + 1)
    @today_is_friday = t.friday?
    @today_is_wednesday = t.wednesday?
  end

  private


  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:days).permit(:name, :message)
  end
end
