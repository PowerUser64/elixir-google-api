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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityResult do
  @moduledoc """
  The output of a DataQualityScan.

  ## Attributes

  *   `dimensions` (*type:* `list(GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityDimensionResult.t)`, *default:* `nil`) - A list of results at the dimension-level.
  *   `passed` (*type:* `boolean()`, *default:* `nil`) - Overall data quality result -- true if all rules passed.
  *   `rowCount` (*type:* `String.t`, *default:* `nil`) - The count of rows processed.
  *   `rules` (*type:* `list(GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleResult.t)`, *default:* `nil`) - A list of all the rules in a job, and their results.
  *   `scannedData` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ScannedData.t`, *default:* `nil`) - The data scanned for this result.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensions =>
            list(GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityDimensionResult.t())
            | nil,
          :passed => boolean() | nil,
          :rowCount => String.t() | nil,
          :rules =>
            list(GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleResult.t()) | nil,
          :scannedData => GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ScannedData.t() | nil
        }

  field(:dimensions,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityDimensionResult,
    type: :list
  )

  field(:passed)
  field(:rowCount)

  field(:rules,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleResult,
    type: :list
  )

  field(:scannedData, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ScannedData)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityResult do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
