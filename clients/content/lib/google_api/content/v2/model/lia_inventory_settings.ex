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

defmodule GoogleApi.Content.V2.Model.LiaInventorySettings do
  @moduledoc """


  ## Attributes

  *   `inventoryVerificationContactEmail` (*type:* `String.t`, *default:* `nil`) - The email of the contact for the inventory verification process.
  *   `inventoryVerificationContactName` (*type:* `String.t`, *default:* `nil`) - The name of the contact for the inventory verification process.
  *   `inventoryVerificationContactStatus` (*type:* `String.t`, *default:* `nil`) - The status of the verification contact. Acceptable values are: - "`active`" - "`inactive`" - "`pending`" 
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the inventory verification process. Acceptable values are: - "`active`" - "`inactive`" - "`pending`" 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inventoryVerificationContactEmail => String.t(),
          :inventoryVerificationContactName => String.t(),
          :inventoryVerificationContactStatus => String.t(),
          :status => String.t()
        }

  field(:inventoryVerificationContactEmail)
  field(:inventoryVerificationContactName)
  field(:inventoryVerificationContactStatus)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.LiaInventorySettings do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.LiaInventorySettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.LiaInventorySettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
