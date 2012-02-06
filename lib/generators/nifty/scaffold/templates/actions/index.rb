  def index
    params[:page] ||= 1
    params[:rows] ||= 20
    @<%= instances_name %> = <%= class_name %>.order(sort_column + " " + sort_direction).
                                              paginate(:page => params[:page].to_i, :per_page => params[:rows].to_i)
  end
