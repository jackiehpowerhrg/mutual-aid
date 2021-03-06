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

RSpec.describe "/software_feedbacks", type: :request do
  # SoftwareFeedback. As you add validations to SoftwareFeedback, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      SoftwareFeedback.create! valid_attributes
      get software_feedbacks_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      software_feedback = SoftwareFeedback.create! valid_attributes
      get software_feedback_url(software_feedback)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_software_feedback_url
      skip # TODO
      # expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      software_feedback = SoftwareFeedback.create! valid_attributes
      get edit_software_feedback_url(software_feedback)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new SoftwareFeedback" do
        expect {
          post software_feedbacks_url, params: { software_feedback: valid_attributes }
        }.to change(SoftwareFeedback, :count).by(1)
      end

      it "redirects to the created software_feedback" do
        post software_feedbacks_url, params: { software_feedback: valid_attributes }
        expect(response).to redirect_to(software_feedback_url(SoftwareFeedback.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new SoftwareFeedback" do
        expect {
          post software_feedbacks_url, params: { software_feedback: invalid_attributes }
        }.to change(SoftwareFeedback, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post software_feedbacks_url, params: { software_feedback: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested software_feedback" do
        software_feedback = SoftwareFeedback.create! valid_attributes
        patch software_feedback_url(software_feedback), params: { software_feedback: new_attributes }
        software_feedback.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the software_feedback" do
        software_feedback = SoftwareFeedback.create! valid_attributes
        patch software_feedback_url(software_feedback), params: { software_feedback: new_attributes }
        software_feedback.reload
        expect(response).to redirect_to(software_feedback_url(software_feedback))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        software_feedback = SoftwareFeedback.create! valid_attributes
        patch software_feedback_url(software_feedback), params: { software_feedback: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested software_feedback" do
      software_feedback = SoftwareFeedback.create! valid_attributes
      expect {
        delete software_feedback_url(software_feedback)
      }.to change(SoftwareFeedback, :count).by(-1)
    end

    it "redirects to the software_feedbacks list" do
      software_feedback = SoftwareFeedback.create! valid_attributes
      delete software_feedback_url(software_feedback)
      expect(response).to redirect_to(software_feedbacks_url)
    end
  end
end
