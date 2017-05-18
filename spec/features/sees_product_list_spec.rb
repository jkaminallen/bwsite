require "rails_helper"

feature "user sees a list of products" do

  let!(:product) do
    Product.create(
      name: "Chair",
      description: "A comfy chair"
    )
  end

  scenario "the product's name is visible" do
    visit '/products'

    expect(page).to have_content("Chair")
  end

  scenario "the product's description is not visible" do
    visit '/products'

    expect(page).to_not have_content("A comfy chair")
  end 
end
