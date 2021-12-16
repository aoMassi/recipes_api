json.extract! @recipe, :id, :name, :description
json.comments @recipe.comments do |comment|
  json.extract! comment, :id, :content
end