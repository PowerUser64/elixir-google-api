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

defmodule GoogleApi.Compute.V1.Model.ManagedInstanceLastAttemptErrorsErrorsErrorDetails do
  @moduledoc """


  ## Attributes

  *   `errorInfo` (*type:* `GoogleApi.Compute.V1.Model.ErrorInfo.t`, *default:* `nil`) - 
  *   `help` (*type:* `GoogleApi.Compute.V1.Model.Help.t`, *default:* `nil`) - 
  *   `localizedMessage` (*type:* `GoogleApi.Compute.V1.Model.LocalizedMessage.t`, *default:* `nil`) - 
  *   `quotaInfo` (*type:* `GoogleApi.Compute.V1.Model.QuotaExceededInfo.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorInfo => GoogleApi.Compute.V1.Model.ErrorInfo.t() | nil,
          :help => GoogleApi.Compute.V1.Model.Help.t() | nil,
          :localizedMessage => GoogleApi.Compute.V1.Model.LocalizedMessage.t() | nil,
          :quotaInfo => GoogleApi.Compute.V1.Model.QuotaExceededInfo.t() | nil
        }

  field(:errorInfo, as: GoogleApi.Compute.V1.Model.ErrorInfo)
  field(:help, as: GoogleApi.Compute.V1.Model.Help)
  field(:localizedMessage, as: GoogleApi.Compute.V1.Model.LocalizedMessage)
  field(:quotaInfo, as: GoogleApi.Compute.V1.Model.QuotaExceededInfo)
end

defimpl Poison.Decoder,
  for: GoogleApi.Compute.V1.Model.ManagedInstanceLastAttemptErrorsErrorsErrorDetails do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ManagedInstanceLastAttemptErrorsErrorsErrorDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Compute.V1.Model.ManagedInstanceLastAttemptErrorsErrorsErrorDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
