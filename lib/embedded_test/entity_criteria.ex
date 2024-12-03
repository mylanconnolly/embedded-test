defmodule EmbeddedTest.EntityCriteria do
  use Ash.Resource, data_layer: :embedded

  actions do
    defaults []

    create :create do
      accept [:attribute, :operator, :value]
      primary? true
    end
  end

  attributes do
    uuid_v7_primary_key :id

    attribute :attribute, :string do
      allow_nil? false
    end

    attribute :operator, :string do
      allow_nil? false
    end

    attribute :value, :string do
      allow_nil? false
    end
  end
end
