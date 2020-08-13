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

defmodule GoogleApi.Spanner.V1.Model.ResultSetMetadata do
  @moduledoc """
  Metadata about a ResultSet or PartialResultSet.

  ## Attributes

  *   `rowType` (*type:* `GoogleApi.Spanner.V1.Model.StructType.t`, *default:* `nil`) - Indicates the field names and types for the rows in the result set. For example, a SQL query like `"SELECT UserId, UserName FROM Users"` could return a `row_type` value like: "fields": [ { "name": "UserId", "type": { "code": "INT64" } }, { "name": "UserName", "type": { "code": "STRING" } }, ]
  *   `transaction` (*type:* `GoogleApi.Spanner.V1.Model.Transaction.t`, *default:* `nil`) - If the read or SQL query began a transaction as a side-effect, the information about the new transaction is yielded here.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :rowType => GoogleApi.Spanner.V1.Model.StructType.t(),
          :transaction => GoogleApi.Spanner.V1.Model.Transaction.t()
        }

  field(:rowType, as: GoogleApi.Spanner.V1.Model.StructType)
  field(:transaction, as: GoogleApi.Spanner.V1.Model.Transaction)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.ResultSetMetadata do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.ResultSetMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.ResultSetMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
