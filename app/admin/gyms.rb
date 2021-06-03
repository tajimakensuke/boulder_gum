# frozen_string_literal: true

ActiveAdmin.register Gym, as: 'GymAdmin' do
  # , :as => "aaa"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :gym_name, :introduction, :image, :address, :station, :latitude, :longitude
  #
  # or
  #
  # permit_params do
  #   permitted = [:gym_name, :introduction, :image_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs 'gyms' do
      f.input :gym_name
      f.input :introduction
      f.input :address
      f.input :station
      f.input :latitude
      f.input :longitude
      f.attachment_field :image
    end
    f.actions
  end

  show do |_gym_image|
    attributes_table do
      row :gym_name
      row :introduction
      row :address
      row :station
      row :latitude
      row :longitude
      row :image
    end
  end
end
