class DrinksController < ApplicationController
  def index
    @q = Drink.ransack(params[:q])
    @drinks = @q.result(:distinct => true).includes(:votes, :brand, :category, :users).page(params[:page]).per(10)

    render("drinks/index.html.erb")
  end

  def show
    @vote = Vote.new
    @drink = Drink.find(params[:id])

    render("drinks/show.html.erb")
  end

  def new
    @drink = Drink.new

    render("drinks/new.html.erb")
  end

  def create
    @drink = Drink.new

    @drink.name = params[:name]
    @drink.category_id = params[:category_id]
    @drink.brand_id = params[:brand_id]

    save_status = @drink.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/drinks/new", "/create_drink"
        redirect_to("/drinks")
      else
        redirect_back(:fallback_location => "/", :notice => "Drink created successfully.")
      end
    else
      render("drinks/new.html.erb")
    end
  end

  def edit
    @drink = Drink.find(params[:id])

    render("drinks/edit.html.erb")
  end

  def update
    @drink = Drink.find(params[:id])

    @drink.name = params[:name]
    @drink.category_id = params[:category_id]
    @drink.brand_id = params[:brand_id]

    save_status = @drink.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/drinks/#{@drink.id}/edit", "/update_drink"
        redirect_to("/drinks/#{@drink.id}", :notice => "Drink updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Drink updated successfully.")
      end
    else
      render("drinks/edit.html.erb")
    end
  end

  def destroy
    @drink = Drink.find(params[:id])

    @drink.destroy

    if URI(request.referer).path == "/drinks/#{@drink.id}"
      redirect_to("/", :notice => "Drink deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Drink deleted.")
    end
  end
end
