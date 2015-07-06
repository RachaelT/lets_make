require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { author: @project.author, author_url: @project.author_url, category: @project.category, cost_per_student: @project.cost_per_student, difficulty: @project.difficulty, how_students_work: @project.how_students_work, length: @project.length, skills: @project.skills, thumb_url: @project.thumb_url, title: @project.title, user_id: @project.user_id, video_url: @project.video_url }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { author: @project.author, author_url: @project.author_url, category: @project.category, cost_per_student: @project.cost_per_student, difficulty: @project.difficulty, how_students_work: @project.how_students_work, length: @project.length, skills: @project.skills, thumb_url: @project.thumb_url, title: @project.title, user_id: @project.user_id, video_url: @project.video_url }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
