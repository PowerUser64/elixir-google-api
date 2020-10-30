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

defmodule GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1Resource do
  @moduledoc """
  A Google Cloud resource under analysis.

  ## Attributes

  *   `analysisState` (*type:* `GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisState.t`, *default:* `nil`) - The analysis state of this resource.
  *   `fullResourceName` (*type:* `String.t`, *default:* `nil`) - The [full resource name](https://cloud.google.com/asset-inventory/docs/resource-name-format)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :analysisState => GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisState.t(),
          :fullResourceName => String.t()
        }

  field(:analysisState, as: GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisState)
  field(:fullResourceName)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1Resource do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1Resource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1Resource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
