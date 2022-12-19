ActiveAdmin.register Service do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :client_name, :year, :main_photo, :link, :services_category_id
  #
  form do |f|
    f.input :title
    f.input :client_name
    f.input :year
    f.input :main_photo, as: :file
    f.input :link
    f.input :services_category_id
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :client_name
      row :year
      row :main_photo do |ad|
        image_tag url_for(ad.main_photo)
      end
      row :link
      row :services_category_id
    end
  end
  # or
  #
  # permit_params do
  #   permitted = [:title, :client_name, :year, :main_photo, :link, :services_category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
