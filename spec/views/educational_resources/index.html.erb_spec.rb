require 'rails_helper'

RSpec.describe "educational_resources/index", type: :view do
  before(:each) do
    assign(:educational_resources, [
      EducationalResource.create!(),
      EducationalResource.create!()
    ])
  end

  it "renders a list of educational_resources" do
    render
  end
end
