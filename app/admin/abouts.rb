ActiveAdmin.register About do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :main_photo, :description

  form do |f|
    f.input :description
    f.input :main_photo, as: :file
    f.actions
  end

  show do
    attributes_table do
      row :description
      row :main_photo do |ad|
        image_tag url_for(ad.main_photo)
      end
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:main_photo, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
