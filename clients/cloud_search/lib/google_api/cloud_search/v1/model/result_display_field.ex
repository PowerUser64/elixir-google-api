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

defmodule GoogleApi.CloudSearch.V1.Model.ResultDisplayField do
  @moduledoc """
  Display Fields for Search Results

  ## Attributes

  *   `label` (*type:* `String.t`, *default:* `nil`) - The display label for the property.
  *   `operatorName` (*type:* `String.t`, *default:* `nil`) - The operator name of the property.
  *   `property` (*type:* `GoogleApi.CloudSearch.V1.Model.NamedProperty.t`, *default:* `nil`) - The name value pair for the property.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :label => String.t() | nil,
          :operatorName => String.t() | nil,
          :property => GoogleApi.CloudSearch.V1.Model.NamedProperty.t() | nil
        }

  field(:label)
  field(:operatorName)
  field(:property, as: GoogleApi.CloudSearch.V1.Model.NamedProperty)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.ResultDisplayField do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.ResultDisplayField.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.ResultDisplayField do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
