# frozen_string_literal: true

ActiveAdmin.register GymComment do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :gym_id, :commment
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :gym_id, :commment]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
