require 'spec_helper'

describe GeotimeController do
  let(:valid_attributes) { {lat: '41.882656', long: '-87.623304'} }

  describe "GET new" do
    it "assigns a new geotime as @Geotime" do
      get :new, {}, {}
      assigns(:geotime).should be_a_new(Geotime)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Geotime" do
        expect {
          post :create, {:geotime => valid_attributes}, {}
        }.to change(Geotime, :count).by(1)
        expect(Geotime.last.lat).to_not be_nil
        expect(Geotime.last.long).to_not be_nil
        expect(Geotime.last.earthtools_time).to_not be_nil
      end

      it "assigns a newly created geotime as @geotime" do
        post :create, {:geotime => valid_attributes}, {}
        assigns(:geotime).should be_a(Geotime)
        assigns(:geotime).should be_persisted
      end

      it "redirects to the created geotime" do
        post :create, {:geotime => valid_attributes}, {}
        response.should redirect_to(Geotime.last)
      end
    end
  end

end
