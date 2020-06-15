require 'test_helper'

class EmployeeTrainingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get employee_trainings_new_url
    assert_response :success
  end

end
