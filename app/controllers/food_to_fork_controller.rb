class FoodToForkController < ActionController::Base
  protect_from_forgery

  def recipe
    response = HTTParty.get("http://food2fork.com/api/get?key=#{F2F_KEY}&rId=#{params[:recipe_id]}")

    respond_to do |format|
      format.json  { render :json => response }
    end
  end

  def recipe_search
    response = HTTParty.get("http://food2fork.com/api/search?key=#{F2F_KEY}&q=#{params[:search_terms]}")

    respond_to do |format|
      format.json  { render :json => response }
    end
  end
end