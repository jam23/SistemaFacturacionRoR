require 'test_helper'

class InvoiceHeadersControllerTest < ActionController::TestCase
  setup do
    @invoice_header = invoice_headers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoice_headers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice_header" do
    assert_difference('InvoiceHeader.count') do
      post :create, invoice_header: { client_id: @invoice_header.client_id, comment: @invoice_header.comment, seller_id: @invoice_header.seller_id }
    end

    assert_redirected_to invoice_header_path(assigns(:invoice_header))
  end

  test "should show invoice_header" do
    get :show, id: @invoice_header
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoice_header
    assert_response :success
  end

  test "should update invoice_header" do
    patch :update, id: @invoice_header, invoice_header: { client_id: @invoice_header.client_id, comment: @invoice_header.comment, seller_id: @invoice_header.seller_id }
    assert_redirected_to invoice_header_path(assigns(:invoice_header))
  end

  test "should destroy invoice_header" do
    assert_difference('InvoiceHeader.count', -1) do
      delete :destroy, id: @invoice_header
    end

    assert_redirected_to invoice_headers_path
  end
end
