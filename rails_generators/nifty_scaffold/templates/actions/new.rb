  def new
    @<%= singular_name %> = <%= class_name %>.new
    form_info
  end
