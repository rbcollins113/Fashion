json.array!(@products) do |product|
  json.extract! product, :id, :title, :price, :discount, :quick, :quantity, :description, :information, :reviews
  json.url product_url(product, format: :json)
end
