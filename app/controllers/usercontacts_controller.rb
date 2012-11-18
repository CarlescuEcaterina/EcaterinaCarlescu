class UsercontactsController < ApplicationController
  # GET /usercontacts
  # GET /usercontacts.json
 def sendmail
      email = @params["email"]
	  recipient = email["recipient"]
	  subject = email["subject"]
	  message = email["message"]
      Usercontacts.deliver_contact(recipient, subject, message)
      return if request.xhr?
      render :text => 'Message sent successfully'
   end

  def index
    @usercontacts = Usercontact.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usercontacts }
    end
  end

  # GET /usercontacts/1
  # GET /usercontacts/1.json
  def show
    @usercontact = Usercontact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usercontact }
    end
  end

  # GET /usercontacts/new
  # GET /usercontacts/new.json
  def new
    @usercontact = Usercontact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usercontact }
    end
  end

  # GET /usercontacts/1/edit
  def edit
    @usercontact = Usercontact.find(params[:id])
  end

  # POST /usercontacts
  # POST /usercontacts.json
  def create
    @usercontact = Usercontact.new(params[:usercontact])

    respond_to do |format|
      if @usercontact.save
        format.html { redirect_to @usercontact, notice: 'Usercontact was successfully created.' }
        format.json { render json: @usercontact, status: :created, location: @usercontact }
      else
        format.html { render action: "new" }
        format.json { render json: @usercontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usercontacts/1
  # PUT /usercontacts/1.json
  def update
    @usercontact = Usercontact.find(params[:id])

    respond_to do |format|
      if @usercontact.update_attributes(params[:usercontact])
        format.html { redirect_to @usercontact, notice: 'Usercontact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usercontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usercontacts/1
  # DELETE /usercontacts/1.json
  def destroy
    @usercontact = Usercontact.find(params[:id])
    @usercontact.destroy

    respond_to do |format|
      format.html { redirect_to usercontacts_url }
      format.json { head :no_content }
    end
  end
end
