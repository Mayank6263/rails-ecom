class ProfilesController < ApplicationController
  before_action :authenticate_user!  
  
  def new
    @profile = current_user.build_profile
  end
  
  def index
    @profiles = Profile.all
  end

  def create
    # debugger
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    if @profile.save
      redirect_to @profile, notice: 'Profile created successfully.'
    else
      render :new  
    end
  end

  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    
    if @profile.update(profile_params)
      redirect_to root_path, notice: 'Profile updated successfully.'
    else
      render :edit  
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :contact_no, :age, :gender)
  end
end
