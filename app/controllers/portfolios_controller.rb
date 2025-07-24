class PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
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
    # if @portfolio.save
    #             redirect_to portfolios_path, notice: "Portfolio item was successfully created."
    # else
    #   render :new
    # end
  end

def show
end

def editing
end

def update
  if @portfolio.update(portfolio_params)
    redirect_to portfolios_path, notice: "Portfolio item was successfully updated."
  else
    render :editing
  end
end

def destroy
  if @portfolio.destroy
    redirect_to portfolios_path, notice: "Portfolio item was successfully deleted."
  else
    redirect_to portfolios_path, alert: "Error deleting portfolio item."
  end
end

private
  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
