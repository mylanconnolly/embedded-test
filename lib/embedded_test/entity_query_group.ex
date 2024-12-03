defmodule EmbeddedTest.EntityQueryGroup do
  use Ash.Resource, data_layer: :embedded

  actions do
    defaults []

    create :create do
      accept [:criteria, :groups, :mode]
      primary? true
    end
  end

  attributes do
    uuid_v7_primary_key :id

    attribute :criteria, {:array, EmbeddedTest.EntityCriteria} do
      allow_nil? false
      default []
    end

    attribute :groups, {:array, EmbeddedTest.NestedEntityQueryGroup} do
      allow_nil? false
      default []
    end

    attribute :mode, :string do
      allow_nil? false
    end
  end
end
