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

defmodule GoogleApi.Blogger.V3.Model.Blog do
  @moduledoc """


  ## Attributes

  - customMetaData (String.t): The JSON custom meta-data for the Blog Defaults to `nil`.
  - description (String.t): The description of this blog. This is displayed underneath the title. Defaults to `nil`.
  - id (String.t): The identifier for this resource. Defaults to `nil`.
  - kind (String.t): The kind of this entry. Always blogger#blog Defaults to `blogger#blog`.
  - locale (GoogleApi.Blogger.V3.Model.BlogLocale.t): The locale this Blog is set to. Defaults to `nil`.
  - name (String.t): The name of this blog. This is displayed as the title. Defaults to `nil`.
  - pages (GoogleApi.Blogger.V3.Model.BlogPages.t): The container of pages in this blog. Defaults to `nil`.
  - posts (GoogleApi.Blogger.V3.Model.BlogPosts.t): The container of posts in this blog. Defaults to `nil`.
  - published (DateTime.t): RFC 3339 date-time when this blog was published. Defaults to `nil`.
  - selfLink (String.t): The API REST URL to fetch this resource from. Defaults to `nil`.
  - status (String.t): The status of the blog. Defaults to `nil`.
  - updated (DateTime.t): RFC 3339 date-time when this blog was last updated. Defaults to `nil`.
  - url (String.t): The URL where this blog is published. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customMetaData => String.t(),
          :description => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :locale => GoogleApi.Blogger.V3.Model.BlogLocale.t(),
          :name => String.t(),
          :pages => GoogleApi.Blogger.V3.Model.BlogPages.t(),
          :posts => GoogleApi.Blogger.V3.Model.BlogPosts.t(),
          :published => DateTime.t(),
          :selfLink => String.t(),
          :status => String.t(),
          :updated => DateTime.t(),
          :url => String.t()
        }

  field(:customMetaData)
  field(:description)
  field(:id)
  field(:kind)
  field(:locale, as: GoogleApi.Blogger.V3.Model.BlogLocale)
  field(:name)
  field(:pages, as: GoogleApi.Blogger.V3.Model.BlogPages)
  field(:posts, as: GoogleApi.Blogger.V3.Model.BlogPosts)
  field(:published, as: DateTime)
  field(:selfLink)
  field(:status)
  field(:updated, as: DateTime)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.Blog do
  def decode(value, options) do
    GoogleApi.Blogger.V3.Model.Blog.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.Blog do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
