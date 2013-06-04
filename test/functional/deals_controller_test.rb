require 'test_helper'

class DealsControllerTest < ActionController::TestCase
  setup do
    @deal = deals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deal" do
    assert_difference('Deal.count') do
      post :create, deal: { businessContact: @deal.businessContact, businessHours: @deal.businessHours, businessLocation: @deal.businessLocation, businessName: @deal.businessName, detail1: @deal.detail1, detail2: @deal.detail2, detail3: @deal.detail3, detail4: @deal.detail4, detail5: @deal.detail5, detail6: @deal.detail6, detail7: @deal.detail7, longDescription: @deal.longDescription, name: @deal.name, price: @deal.price, saleEnd: @deal.saleEnd, saleStart: @deal.saleStart, shortDescription: @deal.shortDescription, validEnd: @deal.validEnd, validStart: @deal.validStart, value: @deal.value, voucherLimit: @deal.voucherLimit }
    end

    assert_redirected_to deal_path(assigns(:deal))
  end

  test "should show deal" do
    get :show, id: @deal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deal
    assert_response :success
  end

  test "should update deal" do
    put :update, id: @deal, deal: { businessContact: @deal.businessContact, businessHours: @deal.businessHours, businessLocation: @deal.businessLocation, businessName: @deal.businessName, detail1: @deal.detail1, detail2: @deal.detail2, detail3: @deal.detail3, detail4: @deal.detail4, detail5: @deal.detail5, detail6: @deal.detail6, detail7: @deal.detail7, longDescription: @deal.longDescription, name: @deal.name, price: @deal.price, saleEnd: @deal.saleEnd, saleStart: @deal.saleStart, shortDescription: @deal.shortDescription, validEnd: @deal.validEnd, validStart: @deal.validStart, value: @deal.value, voucherLimit: @deal.voucherLimit }
    assert_redirected_to deal_path(assigns(:deal))
  end

  test "should destroy deal" do
    assert_difference('Deal.count', -1) do
      delete :destroy, id: @deal
    end

    assert_redirected_to deals_path
  end
end
