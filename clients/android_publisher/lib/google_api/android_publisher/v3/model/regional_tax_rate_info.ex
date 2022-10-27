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

defmodule GoogleApi.AndroidPublisher.V3.Model.RegionalTaxRateInfo do
  @moduledoc """
  Specified details about taxation in a given geographical region.

  ## Attributes

  *   `eligibleForStreamingServiceTaxRate` (*type:* `boolean()`, *default:* `nil`) - You must tell us if your app contains streaming products to correctly charge US state and local sales tax. Field only supported in United States.
  *   `streamingTaxType` (*type:* `String.t`, *default:* `nil`) - To collect communications or amusement taxes in the United States, choose the appropriate tax category. By default Google will determine the collected rate based on the buyer ZIP code. [Learn more](https://support.google.com/googleplay/android-developer/answer/10463498#streaming_tax).
  *   `taxTier` (*type:* `String.t`, *default:* `nil`) - Tax tier to specify reduced tax rate. Developers who sell digital news, magazines, newspapers, books, or audiobooks in various regions may be eligible for reduced tax rates. [Learn more](https://support.google.com/googleplay/android-developer/answer/10463498).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eligibleForStreamingServiceTaxRate => boolean() | nil,
          :streamingTaxType => String.t() | nil,
          :taxTier => String.t() | nil
        }

  field(:eligibleForStreamingServiceTaxRate)
  field(:streamingTaxType)
  field(:taxTier)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.RegionalTaxRateInfo do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.RegionalTaxRateInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.RegionalTaxRateInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
