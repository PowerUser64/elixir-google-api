# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.CloudKMS.V1.Model.KeyRing do
  @moduledoc """
  A KeyRing is a toplevel logical grouping of CryptoKeys.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this KeyRing was created.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name for the KeyRing in the format
      `projects/*/locations/*/keyRings/*`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :name => String.t()
        }

  field(:createTime, as: DateTime)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.CloudKMS.V1.Model.KeyRing do
  def decode(value, options) do
    GoogleApi.CloudKMS.V1.Model.KeyRing.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudKMS.V1.Model.KeyRing do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
