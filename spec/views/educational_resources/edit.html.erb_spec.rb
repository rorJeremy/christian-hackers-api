require 'rails_helper'

RSpec.describe "educational_resources/edit", type: :view do
  before(:each) do
    @educational_resource = assign(:educational_resource, EducationalResource.create!())
  end

  it "renders the edit educational_resource form" do
    render

    assert_select "form[action=?][method=?]", educational_resource_path(@educational_resource), "post" do
    end
  end
end
