class HuntsController < ApplicationController

  def index
    @q = Hunt.search(params[:q])
    @hunts = @q.result
  end

  def show
    @hunt = Hunt.find(params[:id])
  end

  def new
    @hunt = Hunt.new
    @hunt.victim = Victim.new
  end

  def create
    @hunt = Hunt.new(hunt_params)
    if @hunt.save
      flash[:notice] = t(:'flash_create')
      redirect_to @hunt
    else
      flash[:error] = t(:'flash_create_error')
      render action: 'new'
    end
  end

  def update
    @hunt = Hunt.find(params[:id])
    @hunt.update!(hunt_params)
    flash[:notice] = t(:'flash_update')
    redirect_to @hunt
  end

  def destroy
    @hunt = Hunt.find(params[:id])
    @hunt.destroy
    redirect_to hunts_path
  end


  private

  def hunt_params
    params.require(:hunt).permit(:reason, victim_attributes: [:name, :guild])
  end

end
