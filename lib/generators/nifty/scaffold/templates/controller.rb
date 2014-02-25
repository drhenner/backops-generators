class <%= plural_class_name %>Controller < ApplicationController
  helper_method :sort_column
  <%= controller_methods :actions %>

  private

  def sort_column
    <%= class_name %>.column_names.include?(params[:sort]) ? params[:sort] : '<%= model_attributes.first.name %>'
  end

end
