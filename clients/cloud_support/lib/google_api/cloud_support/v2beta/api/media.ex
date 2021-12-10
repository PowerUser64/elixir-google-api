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

defmodule GoogleApi.CloudSupport.V2beta.Api.Media do
  @moduledoc """
  API calls for all endpoints tagged `Media`.
  """

  alias GoogleApi.CloudSupport.V2beta.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Download a file attachment on a case. Note: HTTP requests must append "?alt=media" to the URL.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSupport.V2beta.Connection.t`) - Connection to server
  *   `v2beta_id` (*type:* `String.t`) - Part of `name`. The resource name of the attachment to be downloaded.
  *   `v2beta_id1` (*type:* `String.t`) - Part of `name`. See documentation of `v2betaId`.
  *   `cases_id` (*type:* `String.t`) - Part of `name`. See documentation of `v2betaId`.
  *   `attachments_id` (*type:* `String.t`) - Part of `name`. See documentation of `v2betaId`.
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSupport.V2beta.Model.Media{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsupport_media_download(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSupport.V2beta.Model.Media.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudsupport_media_download(
        connection,
        v2beta_id,
        v2beta_id1,
        cases_id,
        attachments_id,
        optional_params \\ [],
        opts \\ []
      ) do
    opts =
      if Keyword.get(optional_params, :alt) == "media",
        do: Keyword.put_new(opts, :decode, false),
        else: opts

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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/v2beta/{v2betaId}/{v2betaId1}/cases/{casesId}/attachments/{attachmentsId}:download",
        %{
          "v2betaId" => URI.encode(v2beta_id, &URI.char_unreserved?/1),
          "v2betaId1" => URI.encode(v2beta_id1, &URI.char_unreserved?/1),
          "casesId" => URI.encode(cases_id, &URI.char_unreserved?/1),
          "attachmentsId" => URI.encode(attachments_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudSupport.V2beta.Model.Media{}])
  end

  @doc """
  Create a file attachment on a case or Cloud resource.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSupport.V2beta.Connection.t`) - Connection to server
  *   `v2beta_id` (*type:* `String.t`) - Part of `parent`. Required. The resource name of the case to which attachment should be attached.
  *   `v2beta_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v2betaId`.
  *   `cases_id` (*type:* `String.t`) - Part of `parent`. See documentation of `v2betaId`.
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
      *   `:body` (*type:* `GoogleApi.CloudSupport.V2beta.Model.CreateAttachmentRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSupport.V2beta.Model.Attachment{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsupport_media_upload(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSupport.V2beta.Model.Attachment.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudsupport_media_upload(
        connection,
        v2beta_id,
        v2beta_id1,
        cases_id,
        optional_params \\ [],
        opts \\ []
      ) do
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2beta/{v2betaId}/{v2betaId1}/cases/{casesId}/attachments", %{
        "v2betaId" => URI.encode(v2beta_id, &URI.char_unreserved?/1),
        "v2betaId1" => URI.encode(v2beta_id1, &URI.char_unreserved?/1),
        "casesId" => URI.encode(cases_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudSupport.V2beta.Model.Attachment{}])
  end

  @doc """
  Create a file attachment on a case or Cloud resource.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSupport.V2beta.Connection.t`) - Connection to server
  *   `v2beta_id` (*type:* `String.t`) - Part of `parent`. Required. The resource name of the case to which attachment should be attached.
  *   `v2beta_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v2betaId`.
  *   `cases_id` (*type:* `String.t`) - Part of `parent`. See documentation of `v2betaId`.
  *   `upload_type` (*type:* `String.t`) - Upload type. Must be "multipart".
  *   `metadata` (*type:* `GoogleApi.CloudSupport.V2beta.Model.CreateAttachmentRequest.t`) - object metadata
  *   `data` (*type:* `iodata`) - Content to upload, as a string or iolist
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSupport.V2beta.Model.Attachment{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsupport_media_upload_iodata(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          GoogleApi.CloudSupport.V2beta.Model.CreateAttachmentRequest.t(),
          iodata,
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSupport.V2beta.Model.Attachment.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudsupport_media_upload_iodata(
        connection,
        v2beta_id,
        v2beta_id1,
        cases_id,
        upload_type,
        metadata,
        data,
        optional_params \\ [],
        opts \\ []
      ) do
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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/upload/v2beta/{v2betaId}/{v2betaId1}/cases/{casesId}/attachments", %{
        "v2betaId" => URI.encode(v2beta_id, &URI.char_unreserved?/1),
        "v2betaId1" => URI.encode(v2beta_id1, &URI.char_unreserved?/1),
        "casesId" => URI.encode(cases_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_param(:body, :metadata, metadata)
      |> Request.add_param(:body, :data, data)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudSupport.V2beta.Model.Attachment{}])
  end

  @doc """
  Create a file attachment on a case or Cloud resource.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSupport.V2beta.Connection.t`) - Connection to server
  *   `v2beta_id` (*type:* `String.t`) - Part of `parent`. Required. The resource name of the case to which attachment should be attached.
  *   `v2beta_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v2betaId`.
  *   `cases_id` (*type:* `String.t`) - Part of `parent`. See documentation of `v2betaId`.
  *   `upload_type` (*type:* `String.t`) - Upload type. Must be "multipart".
  *   `metadata` (*type:* `GoogleApi.CloudSupport.V2beta.Model.CreateAttachmentRequest.t`) - object metadata
  *   `data` (*type:* `String.t`) - Path to file containing content to upload
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSupport.V2beta.Model.Attachment{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsupport_media_upload_simple(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          GoogleApi.CloudSupport.V2beta.Model.CreateAttachmentRequest.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSupport.V2beta.Model.Attachment.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudsupport_media_upload_simple(
        connection,
        v2beta_id,
        v2beta_id1,
        cases_id,
        upload_type,
        metadata,
        data,
        optional_params \\ [],
        opts \\ []
      ) do
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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/upload/v2beta/{v2betaId}/{v2betaId1}/cases/{casesId}/attachments", %{
        "v2betaId" => URI.encode(v2beta_id, &URI.char_unreserved?/1),
        "v2betaId1" => URI.encode(v2beta_id1, &URI.char_unreserved?/1),
        "casesId" => URI.encode(cases_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_param(:body, :metadata, metadata)
      |> Request.add_param(:file, :data, data)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudSupport.V2beta.Model.Attachment{}])
  end
end