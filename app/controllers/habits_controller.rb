class HabitsController < ApplicationController
  def index
    @habits = Habit.all
  end

  def new
  end

  def edit
  end
end
