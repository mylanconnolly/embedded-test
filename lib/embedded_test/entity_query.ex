defmodule EmbeddedTest.EntityQuery do
  use Ash.Resource, data_layer: :embedded

  actions do
    defaults []

    create :create do
      accept [:criteria, :groups, :sorts]
      primary? true
    end
  end

  attributes do
    uuid_v7_primary_key :id

    attribute :criteria, {:array, EmbeddedTest.EntityCriteria} do
      allow_nil? false
      default []
    end

    attribute :groups, {:array, EmbeddedTest.EntityQueryGroup} do
      allow_nil? false
      default []
    end

    attribute :sorts, {:array, EmbeddedTest.EntitySort} do
      allow_nil? false
      default []
    end
  end
end
