ActiveAdmin.register ExpenseCategory do

  menu :parent => "Gastos"
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  index do
    selectable_column
    column :id
    column :name
    default_actions
  end

  controller do
    def permitted_params
      params.permit expense_category: [:name]
    end
  end
end
