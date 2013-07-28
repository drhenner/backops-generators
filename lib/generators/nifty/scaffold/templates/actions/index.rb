  def index
    @<%= instances_name %> = <%= class_name %>.order(sort_column + " " + sort_direction).
                                              page(pagination_page).per(pagination_rows)
  end
