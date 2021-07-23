require 'test_helper'

class PublishingCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publishing_company = publishing_companies(:one)
  end

  test "should get index" do
    get publishing_companies_url, as: :json
    assert_response :success
  end

  test "should create publishing_company" do
    assert_difference('PublishingCompany.count') do
      post publishing_companies_url, params: { publishing_company: { name: @publishing_company.name } }, as: :json
    end

    assert_response 201
  end

  test "should show publishing_company" do
    get publishing_company_url(@publishing_company), as: :json
    assert_response :success
  end

  test "should update publishing_company" do
    patch publishing_company_url(@publishing_company), params: { publishing_company: { name: @publishing_company.name } }, as: :json
    assert_response 200
  end

  test "should destroy publishing_company" do
    assert_difference('PublishingCompany.count', -1) do
      delete publishing_company_url(@publishing_company), as: :json
    end

    assert_response 204
  end
end
