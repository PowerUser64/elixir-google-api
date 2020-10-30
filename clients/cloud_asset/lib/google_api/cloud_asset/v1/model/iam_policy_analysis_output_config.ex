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

defmodule GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisOutputConfig do
  @moduledoc """
  Output configuration for export IAM policy analysis destination.

  ## Attributes

  *   `bigqueryDestination` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1BigQueryDestination.t`, *default:* `nil`) - Destination on BigQuery.
  *   `gcsDestination` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1GcsDestination.t`, *default:* `nil`) - Destination on Cloud Storage.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigqueryDestination =>
            GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1BigQueryDestination.t(),
          :gcsDestination => GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1GcsDestination.t()
        }

  field(:bigqueryDestination,
    as: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1BigQueryDestination
  )

  field(:gcsDestination, as: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1GcsDestination)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisOutputConfig do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisOutputConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisOutputConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
