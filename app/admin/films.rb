ActiveAdmin.register Film do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :duration, :author_word, :prod_word, :tech_team, :diff, :festivals, :financors, :main_photo, :affiche, :trailer, :film_category_id, :finished, :in_production, :year, photos: []
  #
  form do |f|
    f.input :title
    f.input :description
    f.input :duration
    f.input :author_word
    f.input :prod_word
    f.input :tech_team
    f.input :diff
    f.input :festivals
    f.input :financors
    f.input :main_photo, as: :file
    f.input :photo, as: :file, input_html: { multiple: true }
    f.input :affiche, as: :file
    f.input :trailer
    f.input :film_category_id
    f.input :finished
    f.input :in_production
    f.input :year
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :duration
      row :author_word
      row :prod_word
      row :tech_team
      row :diff
      row :festivals
      row :financors
      row :main_photo do |ad|
        image_tag url_for(ad.main_photo)
      end
      row :photos do |ad|
        image_tag url_for(ad.photos)
      end
      row :affiche do |ad|
        image_tag url_for(ad.affiche)
      end
      row :trailer
      row :film_category_id
      row :finished
      row :in_production
      row :year
    end
  end
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :duration, :author_word, :prod_word, :tech_team, :diff, :festivals, :financors, :main_photo, :photos, :affiche, :trailer, :film_category_id, :finished, :in_production, :year]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
