require 'rails_helper'

RSpec.describe "Terminals", :type => :request do
  describe "GET /terminals" do
    it "works! (now write some real specs)" do
      get terminals_path
      expect(response.status).to be(200)
    end
  end
end
