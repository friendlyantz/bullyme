class HomeController < ApplicationController
  def index
    @habits = Habit.all
  end

  def terms
  end

  def privacy
  end
end
