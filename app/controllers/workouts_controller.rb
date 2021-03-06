class WorkoutsController < ApplicationController

  #show workout links/ create workout
  def index
    @workouts = current_user.workouts
  end

  #action for creating a new workout name, desc, and adding videos
  def new
    @user = current_user
    @workout = Workout.new
  end

  #create new workout
  def create
    @workout = Workout.create(params[:workout])
    current_user.workouts << @workout

    redirect_to '/workouts'
  end

  def show
    workout_id = params[:id]
    @workout = Workout.find_by_id(workout_id)
  end

  def destroy
  end

end