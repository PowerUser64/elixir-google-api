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

defmodule GoogleApi.SecretManager.V1.Model.Secret do
  @moduledoc """
  A Secret is a logical secret whose value and versions can be accessed. A Secret is made up of zero or more SecretVersions that represent the secret data.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the Secret was created.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. Etag of the currently stored Secret.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `\\p{Ll}\\p{Lo}{0,62}` Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `[\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}` No more than 64 labels can be assigned to a given resource.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the Secret in the format `projects/*/secrets/*`.
  *   `replication` (*type:* `GoogleApi.SecretManager.V1.Model.Replication.t`, *default:* `nil`) - Required. Immutable. The replication policy of the secret data attached to the Secret. The replication policy cannot be changed after the Secret has been created.
  *   `rotation` (*type:* `GoogleApi.SecretManager.V1.Model.Rotation.t`, *default:* `nil`) - Optional. Rotation policy attached to the Secret. May be excluded if there is no rotation policy.
  *   `topics` (*type:* `list(GoogleApi.SecretManager.V1.Model.Topic.t)`, *default:* `nil`) - Optional. A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions.
  *   `ttl` (*type:* `String.t`, *default:* `nil`) - Input only. The TTL for the Secret.
  *   `versionAliases` (*type:* `map()`, *default:* `nil`) - Optional. Mapping from version alias to version name. A version alias is a string with a maximum length of 63 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore ('_') characters. An alias string must start with a letter and cannot be the string 'latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret. Version-Alias pairs will be viewable via GetSecret and modifiable via UpdateSecret. At launch Access by Allias will only be supported on GetSecretVersion and AccessSecretVersion.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :etag => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :replication => GoogleApi.SecretManager.V1.Model.Replication.t() | nil,
          :rotation => GoogleApi.SecretManager.V1.Model.Rotation.t() | nil,
          :topics => list(GoogleApi.SecretManager.V1.Model.Topic.t()) | nil,
          :ttl => String.t() | nil,
          :versionAliases => map() | nil
        }

  field(:createTime, as: DateTime)
  field(:etag)
  field(:expireTime, as: DateTime)
  field(:labels, type: :map)
  field(:name)
  field(:replication, as: GoogleApi.SecretManager.V1.Model.Replication)
  field(:rotation, as: GoogleApi.SecretManager.V1.Model.Rotation)
  field(:topics, as: GoogleApi.SecretManager.V1.Model.Topic, type: :list)
  field(:ttl)
  field(:versionAliases, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.SecretManager.V1.Model.Secret do
  def decode(value, options) do
    GoogleApi.SecretManager.V1.Model.Secret.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecretManager.V1.Model.Secret do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
