ActiveAdmin.register Engineer do
  menu :parent => 'Project Settings'
  active_admin_importable

  permit_params :name

  index do
    column '#', :id
    column :name
    column :created_at if current_admin_user.admin?
    column :updated_at if current_admin_user.admin?
    actions if current_admin_user.admin?
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
