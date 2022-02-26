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

defmodule GoogleApi.GameServices.V1beta.Model.ScalingConfig do
  @moduledoc """
  Autoscaling config for an Agones fleet.

  ## Attributes

  *   `fleetAutoscalerSpec` (*type:* `String.t`, *default:* `nil`) - Required. Agones fleet autoscaler spec (see [example spec](https://agones.dev/site/docs/reference/fleetautoscaler/)).
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name of the scaling config.
  *   `schedules` (*type:* `list(GoogleApi.GameServices.V1beta.Model.Schedule.t)`, *default:* `nil`) - The schedules to which this scaling config applies.
  *   `selectors` (*type:* `list(GoogleApi.GameServices.V1beta.Model.LabelSelector.t)`, *default:* `nil`) - Labels used to identify the game server clusters to which this Agones scaling config applies. A game server cluster is subject to this Agones scaling config if its labels match any of the selector entries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fleetAutoscalerSpec => String.t() | nil,
          :name => String.t() | nil,
          :schedules => list(GoogleApi.GameServices.V1beta.Model.Schedule.t()) | nil,
          :selectors => list(GoogleApi.GameServices.V1beta.Model.LabelSelector.t()) | nil
        }

  field(:fleetAutoscalerSpec)
  field(:name)
  field(:schedules, as: GoogleApi.GameServices.V1beta.Model.Schedule, type: :list)
  field(:selectors, as: GoogleApi.GameServices.V1beta.Model.LabelSelector, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.GameServices.V1beta.Model.ScalingConfig do
  def decode(value, options) do
    GoogleApi.GameServices.V1beta.Model.ScalingConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GameServices.V1beta.Model.ScalingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
