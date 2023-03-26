class ResponseResource < Avo::BaseResource
  self.title = :name
  self.includes = []

  field :id, as: :id
  field :request, as: :belongs_to, required: true
  field :name, as: :text, required: true
  field :description, as: :text
  field :conditions, as: :key_value, default: {}
  field :status, as: :number, required: true
  field :headers, as: :key_value, default: {}
  field :body, as: :code, required: true, language: "json", default: "{}"
end