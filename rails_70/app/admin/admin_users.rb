ActiveAdmin.register AdminUser do
  menu parent: "Administrative", priority: 1

  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  filter :updated_at, as: :date_picker, input_html: { "data-test": "one" }

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :created_at, as: :datepicker, hint: "ActiveAdmin input[type=date]"
      f.input :updated_at, as: :date_picker, hint: "Formtastic input[type=date]"
    end
    f.actions
  end

end
