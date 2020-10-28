# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Content.V21.Model.RepricingRuleRestrictionBoundary do
  @moduledoc """
  Definition of a boundary.

  ## Attributes

  *   `percentageDelta` (*type:* `integer()`, *default:* `nil`) - The percentage delta relative to the offer selling price. This field is signed. It must be negative in floor. When it is used in floor, it should be > -100. If an offer is selling at $10 and this field is -30 in floor, the repricing rule only applies if the calculated new price is >= $7.
  *   `priceDelta` (*type:* `String.t`, *default:* `nil`) - The price micros relative to the offer selling price. This field is signed. It must be negative in floor. If an offer is selling at $10 and this field is -$2 in floor, the repricing rule only applies if the calculated new price is >= $8.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :percentageDelta => integer(),
          :priceDelta => String.t()
        }

  field(:percentageDelta)
  field(:priceDelta)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.RepricingRuleRestrictionBoundary do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.RepricingRuleRestrictionBoundary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.RepricingRuleRestrictionBoundary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
