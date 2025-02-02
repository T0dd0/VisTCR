require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ExperimentsController do

  # This should return the minimal set of attributes required to create a valid
  # Experiment. As you add validations to Experiment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ExperimentsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all experiments as @experiments" do
      experiment = Experiment.create! valid_attributes
      get :index, {}, valid_session
      assigns(:experiments).should eq([experiment])
    end
  end

  describe "GET show" do
    it "assigns the requested experiment as @experiment" do
      experiment = Experiment.create! valid_attributes
      get :show, {:id => experiment.to_param}, valid_session
      assigns(:experiment).should eq(experiment)
    end
  end

  describe "GET new" do
    it "assigns a new experiment as @experiment" do
      get :new, {}, valid_session
      assigns(:experiment).should be_a_new(Experiment)
    end
  end

  describe "GET edit" do
    it "assigns the requested experiment as @experiment" do
      experiment = Experiment.create! valid_attributes
      get :edit, {:id => experiment.to_param}, valid_session
      assigns(:experiment).should eq(experiment)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Experiment" do
        expect {
          post :create, {:experiment => valid_attributes}, valid_session
        }.to change(Experiment, :count).by(1)
      end

      it "assigns a newly created experiment as @experiment" do
        post :create, {:experiment => valid_attributes}, valid_session
        assigns(:experiment).should be_a(Experiment)
        assigns(:experiment).should be_persisted
      end

      it "redirects to the created experiment" do
        post :create, {:experiment => valid_attributes}, valid_session
        response.should redirect_to(Experiment.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved experiment as @experiment" do
        # Trigger the behavior that occurs when invalid params are submitted
        Experiment.any_instance.stub(:save).and_return(false)
        post :create, {:experiment => { "title" => "invalid value" }}, valid_session
        assigns(:experiment).should be_a_new(Experiment)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Experiment.any_instance.stub(:save).and_return(false)
        post :create, {:experiment => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested experiment" do
        experiment = Experiment.create! valid_attributes
        # Assuming there are no other experiments in the database, this
        # specifies that the Experiment created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Experiment.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => experiment.to_param, :experiment => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested experiment as @experiment" do
        experiment = Experiment.create! valid_attributes
        put :update, {:id => experiment.to_param, :experiment => valid_attributes}, valid_session
        assigns(:experiment).should eq(experiment)
      end

      it "redirects to the experiment" do
        experiment = Experiment.create! valid_attributes
        put :update, {:id => experiment.to_param, :experiment => valid_attributes}, valid_session
        response.should redirect_to(experiment)
      end
    end

    describe "with invalid params" do
      it "assigns the experiment as @experiment" do
        experiment = Experiment.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Experiment.any_instance.stub(:save).and_return(false)
        put :update, {:id => experiment.to_param, :experiment => { "title" => "invalid value" }}, valid_session
        assigns(:experiment).should eq(experiment)
      end

      it "re-renders the 'edit' template" do
        experiment = Experiment.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Experiment.any_instance.stub(:save).and_return(false)
        put :update, {:id => experiment.to_param, :experiment => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested experiment" do
      experiment = Experiment.create! valid_attributes
      expect {
        delete :destroy, {:id => experiment.to_param}, valid_session
      }.to change(Experiment, :count).by(-1)
    end

    it "redirects to the experiments list" do
      experiment = Experiment.create! valid_attributes
      delete :destroy, {:id => experiment.to_param}, valid_session
      response.should redirect_to(experiments_url)
    end
  end

end
