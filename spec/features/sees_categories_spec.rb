require "rails_helper"

feature "user sees a list of products" do

  let!(:product) do
    Category.create(
      name: "Products",
    )
  end

  scenario "the category's name is visible" do
    visit '/categories'

    expect(page).to have_content("Products")
  end
end
