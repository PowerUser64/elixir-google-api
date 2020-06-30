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

defmodule GoogleApi.CloudBuild.V1.Model.NotifierSpec do
  @moduledoc """
  NotifierSpec is the configuration container for notifications.

  ## Attributes

  *   `notification` (*type:* `GoogleApi.CloudBuild.V1.Model.Notification.t`, *default:* `nil`) - The configuration of this particular notifier.
  *   `secrets` (*type:* `list(GoogleApi.CloudBuild.V1.Model.NotifierSecret.t)`, *default:* `nil`) - Configurations for secret resources used by this particular notifier.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :notification => GoogleApi.CloudBuild.V1.Model.Notification.t(),
          :secrets => list(GoogleApi.CloudBuild.V1.Model.NotifierSecret.t())
        }

  field(:notification, as: GoogleApi.CloudBuild.V1.Model.Notification)
  field(:secrets, as: GoogleApi.CloudBuild.V1.Model.NotifierSecret, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.NotifierSpec do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.NotifierSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.NotifierSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
