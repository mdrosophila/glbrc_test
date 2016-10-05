class RelationshipsController < ApplicationController
  def create
    app = Application.find(params[:application_id]);
    @user = current_user
    @user.addApp(app)
    redirect_to configureApp_user_path(@user)
  end
  
  def destroy
    #relation = Relationship.find(params[:id]);
    app = Application.find(params[:application_id])
    @user = current_user
    @user.removeApp(app)
    redirect_to configureApp_user_path(@user)
  end
end
