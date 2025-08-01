class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [ :edit, :update, :show, :destroy ]
  def index
    @portfolios = Portfolio.all
    #This is not a best way to do this -->
    # @portfolios = Portfolio.where(subtitle: 'Ruby on Rails')


    #This is a best way to do this (custom scope) -->
    #step-2->
    #  @portfolios = Portfolio.angular
    
    
    #or-->
    # @portfolios = Portfolio.ruby_on_rails_portfolio_items
  end

  #step-3->
  #making a specific page on which only angular/ruby on rails portfolios will be shown (good practice) not opening at the index page-->
  def angular
    @angular_portfolios = Portfolio.angular
  end

  def new
      @portfolio = Portfolio.new
      #below is for showing all technologies in the form for filling-->
      3.times  {@portfolio.technologies.build}
  end

  def create
        @portfolio = Portfolio.new(portfolio_params)

        respond_to do |format|
          if @portfolio.save
                        format.html { redirect_to portfolios_path, notice: "Your post is now live." }
          else
            format.html { render :new }
          end
        end
  end

def show
end

def edit
end

def update
  respond_to do |format|
        if @portfolio.update(portfolio_params)
                    format.html { redirect_to portfolios_path, notice: "The record successfully updated." }
        else
          format.html { render :edit }
        end
  end
end

def destroy
   @portfolio.destroy
   respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Post was removed." }
   end
end

private
  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body , technologies_attributes: [:name]) 
  end
end


