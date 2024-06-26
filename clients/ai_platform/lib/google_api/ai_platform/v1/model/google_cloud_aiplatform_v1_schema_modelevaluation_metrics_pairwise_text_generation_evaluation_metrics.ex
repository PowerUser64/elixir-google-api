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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsPairwiseTextGenerationEvaluationMetrics do
  @moduledoc """
  Metrics for general pairwise text generation evaluation results.

  ## Attributes

  *   `accuracy` (*type:* `number()`, *default:* `nil`) - Fraction of cases where the autorater agreed with the human raters.
  *   `baselineModelWinRate` (*type:* `number()`, *default:* `nil`) - Percentage of time the autorater decided the baseline model had the better response.
  *   `cohensKappa` (*type:* `number()`, *default:* `nil`) - A measurement of agreement between the autorater and human raters that takes the likelihood of random agreement into account.
  *   `f1Score` (*type:* `number()`, *default:* `nil`) - Harmonic mean of precision and recall.
  *   `falseNegativeCount` (*type:* `String.t`, *default:* `nil`) - Number of examples where the autorater chose the baseline model, but humans preferred the model.
  *   `falsePositiveCount` (*type:* `String.t`, *default:* `nil`) - Number of examples where the autorater chose the model, but humans preferred the baseline model.
  *   `humanPreferenceBaselineModelWinRate` (*type:* `number()`, *default:* `nil`) - Percentage of time humans decided the baseline model had the better response.
  *   `humanPreferenceModelWinRate` (*type:* `number()`, *default:* `nil`) - Percentage of time humans decided the model had the better response.
  *   `modelWinRate` (*type:* `number()`, *default:* `nil`) - Percentage of time the autorater decided the model had the better response.
  *   `precision` (*type:* `number()`, *default:* `nil`) - Fraction of cases where the autorater and humans thought the model had a better response out of all cases where the autorater thought the model had a better response. True positive divided by all positive.
  *   `recall` (*type:* `number()`, *default:* `nil`) - Fraction of cases where the autorater and humans thought the model had a better response out of all cases where the humans thought the model had a better response.
  *   `trueNegativeCount` (*type:* `String.t`, *default:* `nil`) - Number of examples where both the autorater and humans decided that the model had the worse response.
  *   `truePositiveCount` (*type:* `String.t`, *default:* `nil`) - Number of examples where both the autorater and humans decided that the model had the better response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accuracy => number() | nil,
          :baselineModelWinRate => number() | nil,
          :cohensKappa => number() | nil,
          :f1Score => number() | nil,
          :falseNegativeCount => String.t() | nil,
          :falsePositiveCount => String.t() | nil,
          :humanPreferenceBaselineModelWinRate => number() | nil,
          :humanPreferenceModelWinRate => number() | nil,
          :modelWinRate => number() | nil,
          :precision => number() | nil,
          :recall => number() | nil,
          :trueNegativeCount => String.t() | nil,
          :truePositiveCount => String.t() | nil
        }

  field(:accuracy)
  field(:baselineModelWinRate)
  field(:cohensKappa)
  field(:f1Score)
  field(:falseNegativeCount)
  field(:falsePositiveCount)
  field(:humanPreferenceBaselineModelWinRate)
  field(:humanPreferenceModelWinRate)
  field(:modelWinRate)
  field(:precision)
  field(:recall)
  field(:trueNegativeCount)
  field(:truePositiveCount)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsPairwiseTextGenerationEvaluationMetrics do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsPairwiseTextGenerationEvaluationMetrics.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsPairwiseTextGenerationEvaluationMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
