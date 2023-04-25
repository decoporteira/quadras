require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/values", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Value. As you add validations to Value, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Value.create! valid_attributes
      get values_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      value = Value.create! valid_attributes
      get value_url(value)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_value_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      value = Value.create! valid_attributes
      get edit_value_url(value)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Value" do
        expect {
          post values_url, params: { value: valid_attributes }
        }.to change(Value, :count).by(1)
      end

      it "redirects to the created value" do
        post values_url, params: { value: valid_attributes }
        expect(response).to redirect_to(value_url(Value.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Value" do
        expect {
          post values_url, params: { value: invalid_attributes }
        }.to change(Value, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post values_url, params: { value: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested value" do
        value = Value.create! valid_attributes
        patch value_url(value), params: { value: new_attributes }
        value.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the value" do
        value = Value.create! valid_attributes
        patch value_url(value), params: { value: new_attributes }
        value.reload
        expect(response).to redirect_to(value_url(value))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        value = Value.create! valid_attributes
        patch value_url(value), params: { value: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested value" do
      value = Value.create! valid_attributes
      expect {
        delete value_url(value)
      }.to change(Value, :count).by(-1)
    end

    it "redirects to the values list" do
      value = Value.create! valid_attributes
      delete value_url(value)
      expect(response).to redirect_to(values_url)
    end
  end
end
