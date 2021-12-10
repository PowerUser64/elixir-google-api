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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1RuntimeAnnotation do
  @moduledoc """
  An annotation that was generated during the customer and agent interaction.

  ## Attributes

  *   `annotationId` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the annotation. Format: projects/{project}/locations/{location}/conversationDatasets/{dataset}/conversationDataItems/{data_item}/conversationAnnotations/{annotation}
  *   `answerFeedback` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnswerFeedback.t`, *default:* `nil`) - The feedback that the customer has about the answer in `data`.
  *   `articleSuggestion` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ArticleSuggestionData.t`, *default:* `nil`) - Agent Assist Article Suggestion data.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which this annotation was created.
  *   `dialogflowInteraction` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1DialogflowInteractionData.t`, *default:* `nil`) - Dialogflow interaction data.
  *   `endBoundary` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnnotationBoundary.t`, *default:* `nil`) - The boundary in the conversation where the annotation ends, inclusive.
  *   `faqAnswer` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1FaqAnswerData.t`, *default:* `nil`) - Agent Assist FAQ answer data.
  *   `smartComposeSuggestion` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData.t`, *default:* `nil`) - Agent Assist Smart Compose suggestion data.
  *   `smartReply` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SmartReplyData.t`, *default:* `nil`) - Agent Assist Smart Reply data.
  *   `startBoundary` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnnotationBoundary.t`, *default:* `nil`) - The boundary in the conversation where the annotation starts, inclusive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotationId => String.t() | nil,
          :answerFeedback =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnswerFeedback.t()
            | nil,
          :articleSuggestion =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ArticleSuggestionData.t()
            | nil,
          :createTime => DateTime.t() | nil,
          :dialogflowInteraction =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1DialogflowInteractionData.t()
            | nil,
          :endBoundary =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnnotationBoundary.t()
            | nil,
          :faqAnswer =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1FaqAnswerData.t()
            | nil,
          :smartComposeSuggestion =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData.t()
            | nil,
          :smartReply =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SmartReplyData.t()
            | nil,
          :startBoundary =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnnotationBoundary.t()
            | nil
        }

  field(:annotationId)

  field(:answerFeedback,
    as: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnswerFeedback
  )

  field(:articleSuggestion,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ArticleSuggestionData
  )

  field(:createTime, as: DateTime)

  field(:dialogflowInteraction,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1DialogflowInteractionData
  )

  field(:endBoundary,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnnotationBoundary
  )

  field(:faqAnswer,
    as: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1FaqAnswerData
  )

  field(:smartComposeSuggestion,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData
  )

  field(:smartReply,
    as: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SmartReplyData
  )

  field(:startBoundary,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnnotationBoundary
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1RuntimeAnnotation do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1RuntimeAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1RuntimeAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end