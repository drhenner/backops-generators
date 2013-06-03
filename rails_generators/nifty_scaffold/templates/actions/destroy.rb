  def destroy
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
    @<%= singular_name %>.destroy
    @<%= singular_name %>.inactivate!
    flash[:notice] = "Successfully destroyed <%= name.underscore.humanize.downcase %>."
    redirect_to <%= items_path('url') %>
  end
