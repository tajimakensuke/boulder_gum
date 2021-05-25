ActiveAdmin.register Gym do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :gym_name, :introduction, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:gym_name, :introduction, :image_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
      f.inputs "gyms" do
        f.input :gym_name
        f.input :introduction
        f.attachment_field :image
      end
      f.actions
    end

    show do |gym_image|
      attributes_table do
        row :gym_name
        row :introduction
        # show画面で画像を表示するためのタグを追加
        row :image
      end
    end


end
