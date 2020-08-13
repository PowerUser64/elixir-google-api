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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.OperationError do
  @moduledoc """
  Database instance operation error.

  ## Attributes

  *   `code` (*type:* `String.t`, *default:* `nil`) - Identifies the specific error that occurred.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always *sql#operationError*.
  *   `message` (*type:* `String.t`, *default:* `nil`) - Additional information about the error encountered.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t(),
          :kind => String.t(),
          :message => String.t()
        }

  field(:code)
  field(:kind)
  field(:message)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.OperationError do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.OperationError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.OperationError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
