class UserSerializer < ActiveModel::Serializer
  attributes :id, :title, :observation, :coronavirus, :demographics, :comorbidites
end
