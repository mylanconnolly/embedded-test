defmodule EmbeddedTest.EntitySort do
  use Ash.Resource, data_layer: :embedded

  actions do
    defaults []

    create :create do
      accept [:attribute, :direction]
      primary? true
    end
  end

  attributes do
    uuid_v7_primary_key :id

    attribute :attribute, :string do
      allow_nil? false
    end

    attribute :direction, :string do
      allow_nil? false
      default "asc"
    end
  end
end
