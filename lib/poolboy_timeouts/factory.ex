defmodule PoolboyTimeouts.Factory do
  @moduledoc false

  use ExMachina

  def create_something_factory do
    %PoolboyTimeouts.Commands.CreateSomething{
      attr1: Faker.Lorem.Shakespeare.as_you_like_it(),
      attr2: Faker.Lorem.Shakespeare.hamlet(),
      attr3: Faker.Lorem.Shakespeare.king_richard_iii(),
      attr4: Faker.Lorem.Shakespeare.as_you_like_it(),
      attr5: Faker.Lorem.Shakespeare.hamlet(),
      attr6: Faker.Lorem.Shakespeare.king_richard_iii(),
      attr7: Faker.Lorem.Shakespeare.as_you_like_it()
    }
  end

  def something_created_factory do
    %PoolboyTimeouts.Events.SomethingCreated{
      attr1: Faker.Lorem.Shakespeare.as_you_like_it(),
      attr2: Faker.Lorem.Shakespeare.hamlet(),
      attr3: Faker.Lorem.Shakespeare.king_richard_iii(),
      attr4: Faker.Lorem.Shakespeare.as_you_like_it(),
      attr5: Faker.Lorem.Shakespeare.hamlet(),
      attr6: Faker.Lorem.Shakespeare.king_richard_iii(),
      attr7: Faker.Lorem.Shakespeare.as_you_like_it()
    }
  end
end
