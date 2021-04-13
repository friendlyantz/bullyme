class TickersController < ApplicationController
  def create 
    @habit = Habit.find(params[:habit_id])
    @day = Day.find(params[:day_id])

    @ticker = Ticker.new
    @ticker.habit = @habit
    @ticker.day = @day

    @ticker.save && @day.save && @habit.save  
    redirect_to root_path
  end 

  def destroy
    @ticker = Ticker.find(params[:id])
    
    @ticker.destroy
    redirect_to root_path
  end

end
