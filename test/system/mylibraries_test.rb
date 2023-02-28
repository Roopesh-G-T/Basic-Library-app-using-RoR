require "application_system_test_case"

class MylibrariesTest < ApplicationSystemTestCase
  setup do
    @mylibrary = mylibraries(:one)
  end

  test "visiting the index" do
    visit mylibraries_url
    assert_selector "h1", text: "Mylibraries"
  end

  test "creating a Mylibrary" do
    visit mylibraries_url
    click_on "New Mylibrary"

    fill_in "Author", with: @mylibrary.author
    fill_in "Category", with: @mylibrary.category
    fill_in "Edition", with: @mylibrary.edition
    fill_in "Isbn", with: @mylibrary.isbn
    fill_in "Name", with: @mylibrary.name
    fill_in "Price", with: @mylibrary.price
    click_on "Create Mylibrary"

    assert_text "Mylibrary was successfully created"
    click_on "Back"
  end

  test "updating a Mylibrary" do
    visit mylibraries_url
    click_on "Edit", match: :first

    fill_in "Author", with: @mylibrary.author
    fill_in "Category", with: @mylibrary.category
    fill_in "Edition", with: @mylibrary.edition
    fill_in "Isbn", with: @mylibrary.isbn
    fill_in "Name", with: @mylibrary.name
    fill_in "Price", with: @mylibrary.price
    click_on "Update Mylibrary"

    assert_text "Mylibrary was successfully updated"
    click_on "Back"
  end

  test "destroying a Mylibrary" do
    visit mylibraries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mylibrary was successfully destroyed"
  end
end
