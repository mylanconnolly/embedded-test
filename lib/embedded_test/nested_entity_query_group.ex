defmodule EmbeddedTest.NestedEntityQueryGroup do
  use Ash.Type.NewType,
    subtype_of: EmbeddedTest.EntityQueryGroup,
    lazy_init?: true
end
