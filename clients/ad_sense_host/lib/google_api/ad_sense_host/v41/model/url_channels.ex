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

defmodule GoogleApi.AdSenseHost.V41.Model.UrlChannels do
  @moduledoc """


  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of this response for caching purposes.
  *   `items` (*type:* `list(GoogleApi.AdSenseHost.V41.Model.UrlChannel.t)`, *default:* `nil`) - The URL channels returned in this list response.
  *   `kind` (*type:* `String.t`, *default:* `adsensehost#urlChannels`) - Kind of list this is, in this case adsensehost#urlChannels.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Continuation token used to page through URL channels. To retrieve the next page of results, set the next request's "pageToken" value to this.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t() | nil,
          :items => list(GoogleApi.AdSenseHost.V41.Model.UrlChannel.t()) | nil,
          :kind => String.t() | nil,
          :nextPageToken => String.t() | nil
        }

  field(:etag)
  field(:items, as: GoogleApi.AdSenseHost.V41.Model.UrlChannel, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.AdSenseHost.V41.Model.UrlChannels do
  def decode(value, options) do
    GoogleApi.AdSenseHost.V41.Model.UrlChannels.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSenseHost.V41.Model.UrlChannels do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
