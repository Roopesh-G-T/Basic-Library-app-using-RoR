require "test_helper"

class MylibrariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mylibrary = mylibraries(:one)
  end

  test "should get index" do
    get mylibraries_url
    assert_response :success
  end

  test "should get new" do
    get new_mylibrary_url
    assert_response :success
  end

  test "should create mylibrary" do
    assert_difference('Mylibrary.count') do
      post mylibraries_url, params: { mylibrary: { author: @mylibrary.author, category: @mylibrary.category, edition: @mylibrary.edition, isbn: @mylibrary.isbn, name: @mylibrary.name, price: @mylibrary.price } }
    end

    assert_redirected_to mylibrary_url(Mylibrary.last)
  end

  test "should show mylibrary" do
    get mylibrary_url(@mylibrary)
    assert_response :success
  end

  test "should get edit" do
    get edit_mylibrary_url(@mylibrary)
    assert_response :success
  end

  test "should update mylibrary" do
    patch mylibrary_url(@mylibrary), params: { mylibrary: { author: @mylibrary.author, category: @mylibrary.category, edition: @mylibrary.edition, isbn: @mylibrary.isbn, name: @mylibrary.name, price: @mylibrary.price } }
    assert_redirected_to mylibrary_url(@mylibrary)
  end

  test "should destroy mylibrary" do
    assert_difference('Mylibrary.count', -1) do
      delete mylibrary_url(@mylibrary)
    end

    assert_redirected_to mylibraries_url
  end
end
