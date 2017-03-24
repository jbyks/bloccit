require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) {Advertisement.create!(title: "New Advertisement", body: "New Advertisement Body")}

  describe "attributes" do
    it "has a body attribute" do
      expect(advertisement).to have_attributes(title: "New Advertisement", body: "New Advertisement Body")
    end
  end
end
