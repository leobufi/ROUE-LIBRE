ActiveAdmin.register Character do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :insta_link, :email, :main_photo, :about_id
  #

  form do |f|
    f.input :title
    f.input :description
    f.input :insta_link
    f.input :email
    f.input :main_photo, as: :file
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :insta_link
      row :email
      row :main_photo do |ad|
        image_tag url_for(ad.main_photo)
      end
    end
  end

  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :insta_link, :email, :main_photo, :about_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
