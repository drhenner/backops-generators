  def update
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
    if @<%= singular_name %>.update_attributes(allowed_params)
      flash[:notice] = "Successfully updated <%= name.underscore.humanize.downcase %>."
      redirect_to <%= item_path('url') %>
    else
      form_info
      render :action => 'edit'
    end
  end
