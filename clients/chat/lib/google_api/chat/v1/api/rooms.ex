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

defmodule GoogleApi.Chat.V1.Api.Rooms do
  @moduledoc """
  API calls for all endpoints tagged `Rooms`.
  """

  alias GoogleApi.Chat.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Legacy path for creating message. Calling these will result in a BadRequest response.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Chat.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Required. Space resource name, in the form "spaces/*". Example: spaces/AAAAAAAAAAA
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:requestId` (*type:* `String.t`) - Optional. A unique request ID for this message. Specifying an existing request ID returns the message created with that ID instead of creating a new message.
      *   `:threadKey` (*type:* `String.t`) - Optional. Opaque thread identifier. To start or add to a thread, create a message and specify a `threadKey` instead of thread.name. (Setting thread.name has no effect.) The first message with a given `threadKey` starts a new thread. Subsequent messages with the same `threadKey` post into the same thread.
      *   `:body` (*type:* `GoogleApi.Chat.V1.Model.Message.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Chat.V1.Model.Message{}}` on success
  *   `{:error, info}` on failure
  """
  @spec chat_rooms_messages(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Chat.V1.Model.Message.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def chat_rooms_messages(connection, parent, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :requestId => :query,
      :threadKey => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/messages", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Chat.V1.Model.Message{}])
  end

  @doc """
  Legacy path for creating message. Calling these will result in a BadRequest response.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Chat.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Required. Space resource name, in the form "spaces/*". Example: spaces/AAAAAAAAAAA
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:requestId` (*type:* `String.t`) - Optional. A unique request ID for this message. Specifying an existing request ID returns the message created with that ID instead of creating a new message.
      *   `:threadKey` (*type:* `String.t`) - Optional. Opaque thread identifier. To start or add to a thread, create a message and specify a `threadKey` instead of thread.name. (Setting thread.name has no effect.) The first message with a given `threadKey` starts a new thread. Subsequent messages with the same `threadKey` post into the same thread.
      *   `:body` (*type:* `GoogleApi.Chat.V1.Model.Message.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Chat.V1.Model.Message{}}` on success
  *   `{:error, info}` on failure
  """
  @spec chat_rooms_webhooks(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Chat.V1.Model.Message.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def chat_rooms_webhooks(connection, parent, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :requestId => :query,
      :threadKey => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/webhooks", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Chat.V1.Model.Message{}])
  end

  @doc """
  Legacy path for creating message. Calling these will result in a BadRequest response.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Chat.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Required. Space resource name, in the form "spaces/*". Example: spaces/AAAAAAAAAAA
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:requestId` (*type:* `String.t`) - Optional. A unique request ID for this message. Specifying an existing request ID returns the message created with that ID instead of creating a new message.
      *   `:threadKey` (*type:* `String.t`) - Optional. Opaque thread identifier. To start or add to a thread, create a message and specify a `threadKey` instead of thread.name. (Setting thread.name has no effect.) The first message with a given `threadKey` starts a new thread. Subsequent messages with the same `threadKey` post into the same thread.
      *   `:body` (*type:* `GoogleApi.Chat.V1.Model.Message.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Chat.V1.Model.Message{}}` on success
  *   `{:error, info}` on failure
  """
  @spec chat_rooms_conversations_messages(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Chat.V1.Model.Message.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def chat_rooms_conversations_messages(connection, parent, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :requestId => :query,
      :threadKey => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/messages", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Chat.V1.Model.Message{}])
  end
end
