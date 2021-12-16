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

defmodule GoogleApi.MyBusinessVerifications.V1.Model.FetchVerificationOptionsRequest do
  @moduledoc """
  Request message for Verifications.FetchVerificationOptions.

  ## Attributes

  *   `context` (*type:* `GoogleApi.MyBusinessVerifications.V1.Model.ServiceBusinessContext.t`, *default:* `nil`) - Optional. Extra context information for the verification of service businesses. Can only be applied to the locations whose business type is CUSTOMER_LOCATION_ONLY. Specifying an accurate address could enable more options. INVALID_ARGUMENT will be thrown if it is set for other business types of locations.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Required. The BCP 47 language code representing the language that is to be used for the verification process. Available options vary by language.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :context => GoogleApi.MyBusinessVerifications.V1.Model.ServiceBusinessContext.t() | nil,
          :languageCode => String.t() | nil
        }

  field(:context, as: GoogleApi.MyBusinessVerifications.V1.Model.ServiceBusinessContext)
  field(:languageCode)
end

defimpl Poison.Decoder,
  for: GoogleApi.MyBusinessVerifications.V1.Model.FetchVerificationOptionsRequest do
  def decode(value, options) do
    GoogleApi.MyBusinessVerifications.V1.Model.FetchVerificationOptionsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.MyBusinessVerifications.V1.Model.FetchVerificationOptionsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end