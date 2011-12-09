  def edit
    @<%= instance_name %> = <%= class_name %>.find(params[:id])
    form_info
  end
