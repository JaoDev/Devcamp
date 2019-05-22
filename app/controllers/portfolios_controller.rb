class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  layout 'portfolio'
  access all: [:show, :index, :python], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  def index
    @portfolio_items = Portfolio.all
  end

  def python
    @python_portfolio_items = Portfolio.python
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body,
      technologies_attributes: [:name]))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'The changes was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def destroy

    #destroy and delete the Record
    @portfolio_item.destroy
    #redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end
end
