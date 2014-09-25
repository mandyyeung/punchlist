ActiveAdmin.register Punchitem do

  permit_params :description, :completion_date, :approved_date, :owner, :reviewer,
                :subcontractor_id, :superintendent_id, :engineer_id, :location_id

  scope 'Open Items', :open do |item|
    item.where('completion_date IS NULL')
  end

  index do
    column :id
    column 'Room', :location
    column :description
    column :subcontractor
    column :superintendent
    column :owner
    column :reviewer
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
