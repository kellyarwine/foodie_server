require 'spec_helper'

describe FoodToForkController do
  describe "GET /recipes" do
    it "handles one recipe" do
      recipe_id = "47486"
      recipe_url = "recipe_url"
      # subject.stub(:recipe_url).and_return(recipe_url)
      subject.stub(:recipe_call).and_return(recipe_id)

      get :recipes, :recipe_ids => "recipe_id=#{recipe_id}", :format => :json

      expect(response.body).to eq([recipe_id])
    end

    xit "handles multiple recipes" do
      recipe_id = "47486"
      recipe_id_2 = "a16a8e"
      recipe_url = "recipe_url"
      mock_response = "mock_response"
      subject.stub(:recipe_url).and_return(recipe_url)
      subject.stub(:api_call).with(recipe_url).and_return(mock_response)

      get :recipes, :recipe_ids => "recipe_id=47486&recipe_id=a16a8e", :format => :json

      expect(response.body).to eq([recipe_id, recipe_id_2])
    end


{"recipe":
    {"publisher": "Homesick Texan",
      "f2f_url": "http://food2fork.com/view/47486",
      "ingredients": ["3 pounds of pork butt, with plenty of fat",
                      "1 cup of orange juice",
                      "3 cups of water",
                      "2 teaspoons of salt\n"],
      "source_url": "http://homesicktexan.blogspot.com/2008/07/carnitas-houston-style.html",
      "recipe_id": "47486",
      "image_url": "http://static.food2fork.com/carnitasDSC4852b63a1a3c.jpg",
      "social_rank": 99.9999552650565,
      "publisher_url": "http://homesicktexan.blogspot.com",
      "title": "Carnitas, Houston style"}
}
# {"recipe": {"publisher": "Smitten Kitchen", "f2f_url": "http://food2fork.com/view/a16a8e", "ingredients": ["3 pounds boneless pork shoulder or pork butt, cut into 2-inch cubes", "1/2 cup orange juice", "1/4 cup lime juice (from about 2 to 3 limes)", "4 cloves garlic, peeled and crushed", "1 teaspoon ground cumin", "1 teaspoon Kosher salt, plus more to taste"], "source_url": "http://smittenkitchen.com/blog/2011/11/homesick-texan-carnitas/", "recipe_id": "a16a8e", "image_url": "http://static.food2fork.com/6304496620_b3868f247eae9e.jpg", "social_rank": 99.99993593591067, "publisher_url": "http://www.smittenkitchen.com", "title": "homesick texan carnitas"}}

  end
end