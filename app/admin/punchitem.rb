ActiveAdmin.register Punchitem do
  menu :priority => 1

  active_admin_importable do |model, hash|
    subcontractor = Subcontractor.find_by_name(hash[:subcontractor])
    location = Location.find_by_room_num(hash[:location])
    engineer = Engineer.find_by_name(hash[:engineer])
    superintendent = Superintendent.find_by_name(hash[:superintendent])
    hash[:subcontractor_id] = subcontractor.id
    hash[:location_id] = location.id
    hash[:engineer_id] = engineer.id
    hash[:superintendent_id] = superintendent.id
    hash.delete(:subcontractor)
    hash.delete(:location)
    hash.delete(:engineer)
    hash.delete(:superintendent)
    model.create!(hash)
  end

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
