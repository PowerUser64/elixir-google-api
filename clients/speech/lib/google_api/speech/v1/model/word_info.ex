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

defmodule GoogleApi.Speech.V1.Model.WordInfo do
  @moduledoc """
  Word-specific information for recognized words.

  ## Attributes

  *   `confidence` (*type:* `number()`, *default:* `nil`) - The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative of a non-streaming result or, of a streaming result where `is_final=true`. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating `confidence` was not set.
  *   `endTime` (*type:* `String.t`, *default:* `nil`) - Time offset relative to the beginning of the audio, and corresponding to the end of the spoken word. This field is only set if `enable_word_time_offsets=true` and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.
  *   `speakerLabel` (*type:* `String.t`, *default:* `nil`) - Output only. A label value assigned for every unique speaker within the audio. This field specifies which speaker was detected to have spoken this word. For some models, like medical_conversation this can be actual speaker role, for example "patient" or "provider", but generally this would be a number identifying a speaker. This field is only set if enable_speaker_diarization = 'true' and only for the top alternative.
  *   `speakerTag` (*type:* `integer()`, *default:* `nil`) - Output only. A distinct integer value is assigned for every speaker within the audio. This field specifies which one of those speakers was detected to have spoken this word. Value ranges from '1' to diarization_speaker_count. speaker_tag is set if enable_speaker_diarization = 'true' and only for the top alternative. Note: Use speaker_label instead.
  *   `startTime` (*type:* `String.t`, *default:* `nil`) - Time offset relative to the beginning of the audio, and corresponding to the start of the spoken word. This field is only set if `enable_word_time_offsets=true` and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.
  *   `word` (*type:* `String.t`, *default:* `nil`) - The word corresponding to this set of information.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => number() | nil,
          :endTime => String.t() | nil,
          :speakerLabel => String.t() | nil,
          :speakerTag => integer() | nil,
          :startTime => String.t() | nil,
          :word => String.t() | nil
        }

  field(:confidence)
  field(:endTime)
  field(:speakerLabel)
  field(:speakerTag)
  field(:startTime)
  field(:word)
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1.Model.WordInfo do
  def decode(value, options) do
    GoogleApi.Speech.V1.Model.WordInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1.Model.WordInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
