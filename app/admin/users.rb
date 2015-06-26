ActiveAdmin.register User do
  remove_filter :encrypted_password
  remove_filter :reset_password_token

  index do
    selectable_column
    column :id
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :created_at
    column :updated_at
    default_actions
  end

  form do |f|
    f.inputs 'User Detail' do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end  
end
