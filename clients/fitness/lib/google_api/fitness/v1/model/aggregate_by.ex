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

defmodule GoogleApi.Fitness.V1.Model.AggregateBy do
  @moduledoc """
  The specification of which data to aggregate.

  ## Attributes

  *   `dataSourceId` (*type:* `String.t`, *default:* `nil`) - A data source ID to aggregate. Mutually exclusive of dataTypeName. Only data from the specified data source ID will be included in the aggregation. The dataset in the response will have the same data source ID.
  *   `dataTypeName` (*type:* `String.t`, *default:* `nil`) - The data type to aggregate. All data sources providing this data type will contribute data to the aggregation. The response will contain a single dataset for this data type name. The dataset will have a data source ID of derived:com.google.:com.google.android.gms:aggregated
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataSourceId => String.t(),
          :dataTypeName => String.t()
        }

  field(:dataSourceId)
  field(:dataTypeName)
end

defimpl Poison.Decoder, for: GoogleApi.Fitness.V1.Model.AggregateBy do
  def decode(value, options) do
    GoogleApi.Fitness.V1.Model.AggregateBy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Fitness.V1.Model.AggregateBy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
