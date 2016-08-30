require 'rails_helper'

describe Artist do
  describe "validations" do
    it "is invalid without a name" do
      recipe = Artist.new(name: "")
      recipe.valid?
      expect(recipe.errors).to have_key(:name)
    end

  end
end
