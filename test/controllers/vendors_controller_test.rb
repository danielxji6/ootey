require 'test_helper'

class VendorsControllerTest < ActionController::TestCase
  setup do
    @vendor = vendors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendor" do
    assert_difference('Vendor.count') do
      post :create, vendor: { address1: @vendor.address1, address2: @vendor.address2, cell_phone: @vendor.cell_phone, city: @vendor.city, country: @vendor.country, dba: @vendor.dba, email: @vendor.email, facebook: @vendor.facebook, fax: @vendor.fax, first_name: @vendor.first_name, jbt_num: @vendor.jbt_num, jbt_rating: @vendor.jbt_rating, last_name: @vendor.last_name, legal_name: @vendor.legal_name, linkedin: @vendor.linkedin, password_digest: @vendor.password_digest, phone: @vendor.phone, state: @vendor.state, type: @vendor.type, website: @vendor.website, zip: @vendor.zip }
    end

    assert_redirected_to vendor_path(assigns(:vendor))
  end

  test "should show vendor" do
    get :show, id: @vendor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vendor
    assert_response :success
  end

  test "should update vendor" do
    patch :update, id: @vendor, vendor: { address1: @vendor.address1, address2: @vendor.address2, cell_phone: @vendor.cell_phone, city: @vendor.city, country: @vendor.country, dba: @vendor.dba, email: @vendor.email, facebook: @vendor.facebook, fax: @vendor.fax, first_name: @vendor.first_name, jbt_num: @vendor.jbt_num, jbt_rating: @vendor.jbt_rating, last_name: @vendor.last_name, legal_name: @vendor.legal_name, linkedin: @vendor.linkedin, password_digest: @vendor.password_digest, phone: @vendor.phone, state: @vendor.state, type: @vendor.type, website: @vendor.website, zip: @vendor.zip }
    assert_redirected_to vendor_path(assigns(:vendor))
  end

  test "should destroy vendor" do
    assert_difference('Vendor.count', -1) do
      delete :destroy, id: @vendor
    end

    assert_redirected_to vendors_path
  end
end
