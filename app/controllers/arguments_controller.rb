class ArgumentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @arguments = Argument.all
  end

  def show
    @argument = Argument.find(params[:id])
  end

  def new
    @argument = Argument.new
  end

  def edit
    @argument = Argument.find(params[:id])
  end

  def create
    @argument = Argument.new(argument_params)
    if @argument.save
      redirect_to @argument
    else
      render 'new'
    end
  end

  def update
    @argument = Argument.find(params[:id])
    if @argument.update(argument_params)
      redirect_to @argument
    else
      render 'edit'
    end
  end

  def destroy
    @argument = Argument.find(params[:id])
    @argument.destroy
    redirect_to arguments_path
  end

  private
    def argument_params
      params.require(:argument).permit(:topic, :with_who, :outcome)
    end
end
