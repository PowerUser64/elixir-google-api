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

defmodule GoogleApi.DataMigration.V1.Model.AlloyDbSettings do
  @moduledoc """
  Settings for creating an AlloyDB cluster.

  ## Attributes

  *   `initialUser` (*type:* `GoogleApi.DataMigration.V1.Model.UserPassword.t`, *default:* `nil`) - Required. Input only. Initial user to setup during cluster creation. Required.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels for the AlloyDB cluster created by DMS. An object containing a list of 'key', 'value' pairs.
  *   `primaryInstanceSettings` (*type:* `GoogleApi.DataMigration.V1.Model.PrimaryInstanceSettings.t`, *default:* `nil`) - 
  *   `vpcNetwork` (*type:* `String.t`, *default:* `nil`) - Required. The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project_number}/global/networks/{network_id}". This is required to create a cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :initialUser => GoogleApi.DataMigration.V1.Model.UserPassword.t() | nil,
          :labels => map() | nil,
          :primaryInstanceSettings =>
            GoogleApi.DataMigration.V1.Model.PrimaryInstanceSettings.t() | nil,
          :vpcNetwork => String.t() | nil
        }

  field(:initialUser, as: GoogleApi.DataMigration.V1.Model.UserPassword)
  field(:labels, type: :map)
  field(:primaryInstanceSettings, as: GoogleApi.DataMigration.V1.Model.PrimaryInstanceSettings)
  field(:vpcNetwork)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.AlloyDbSettings do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.AlloyDbSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.AlloyDbSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
