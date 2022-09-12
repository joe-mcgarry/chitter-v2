class PeepsController < ApplicationController
  def index
    @peeps = Peep.all
  end

  def show
    @peep = Peep.find(params[:id])
  end

  def new
    @peep = Peep.new
  end

  def create
    @peep = Peep.new(peep_params)

    if @peep.save
      redirect_to @peep
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @peep = Peep.find(params[:id])
  end

  def update
    @peep = Peep.find(params[:id])

    if @peep.update(peep_params)
      redirect_to @peep
    else 
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @peep = Peep.find(params[:id])
    @peep.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def peep_params
    params.require(:peep).permit(:body)
  end
end
