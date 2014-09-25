ActiveAdmin.register Location do
  menu :parent => 'Project Settings'
  active_admin_importable

  permit_params :building, :room_num, :room_name, :floor, :part

  index do
    column '#', :id
    column :building
    column :room_num
    column :room_name
    column :floor
    column :part
    column :created_at if current_admin_user.admin?
    column :updated_at if current_admin_user.admin?
    actions if current_admin_user.admin?
  end

  sidebar 'Punchlist items in this Room', :only => :show do
    table_for Punchitem.joins(:location).where(:location_id => location.id) do |t|
      t.column('Item') { |punchitem| punchitem.description }
    end
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
