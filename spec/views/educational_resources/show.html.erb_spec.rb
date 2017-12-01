require 'rails_helper'

RSpec.describe "educational_resources/show", type: :view do
  before(:each) do
    @educational_resource = assign(:educational_resource, EducationalResource.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
