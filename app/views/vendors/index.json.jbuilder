json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :email, :password_digest, :legal_name, :dba, :type, :jbt_num, :jbt_rating, :first_name, :last_name, :phone, :cell_phone, :fax, :website, :facebook, :linkedin, :address1, :address2, :city, :state, :zip, :country
  json.url vendor_url(vendor, format: :json)
end
