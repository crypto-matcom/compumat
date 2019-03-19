ActiveAdmin.register Location do
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
permit_params :name, :description

index do
  column :name do |location|
    link_to location.name, [:admin, location]
  end
  column :description
end

end
