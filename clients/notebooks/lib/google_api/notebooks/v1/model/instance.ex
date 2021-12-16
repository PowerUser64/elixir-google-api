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

defmodule GoogleApi.Notebooks.V1.Model.Instance do
  @moduledoc """
  The definition of a notebook instance.

  ## Attributes

  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Required. The [Compute Engine machine type](/compute/docs/machine-types) of this instance.
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  *   `customGpuDriverPath` (*type:* `String.t`, *default:* `nil`) - Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  *   `containerImage` (*type:* `GoogleApi.Notebooks.V1.Model.ContainerImage.t`, *default:* `nil`) - Use a container image to start the notebook instance.
  *   `acceleratorConfig` (*type:* `GoogleApi.Notebooks.V1.Model.AcceleratorConfig.t`, *default:* `nil`) - The hardware accelerator used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](/compute/docs/gpus/#gpus-list).
  *   `noProxyAccess` (*type:* `boolean()`, *default:* `nil`) - If true, the notebook instance will not register with the proxy.
  *   `postStartupScript` (*type:* `String.t`, *default:* `nil`) - Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  *   `noPublicIp` (*type:* `boolean()`, *default:* `nil`) - If true, no public IP will be assigned to this instance.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Instance update time.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Instance creation time.
  *   `dataDiskSizeGb` (*type:* `String.t`, *default:* `nil`) - Input only. The size of the data disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). You can choose the size of the data disk based on how big your notebooks and data are. If not specified, this defaults to 100.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Custom metadata to apply to this instance.
  *   `shieldedInstanceConfig` (*type:* `GoogleApi.Notebooks.V1.Model.ShieldedInstanceConfig.t`, *default:* `nil`) - Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  *   `diskEncryption` (*type:* `String.t`, *default:* `nil`) - Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of this notebook instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of this instance.
  *   `network` (*type:* `String.t`, *default:* `nil`) - The name of the VPC that this instance is in. Format: `projects/{project_id}/global/networks/{network_id}`
  *   `disks` (*type:* `list(GoogleApi.Notebooks.V1.Model.Disk.t)`, *default:* `nil`) - Output only. Attached disks to notebook instance.
  *   `bootDiskType` (*type:* `String.t`, *default:* `nil`) - Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  *   `subnet` (*type:* `String.t`, *default:* `nil`) - The name of the subnet that this instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  *   `kmsKey` (*type:* `String.t`, *default:* `nil`) - Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about [using your own encryption keys](/kms/docs/quickstart).
  *   `installGpuDriver` (*type:* `boolean()`, *default:* `nil`) - Whether the end user authorizes Google Cloud to install GPU driver on this instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  *   `upgradeHistory` (*type:* `list(GoogleApi.Notebooks.V1.Model.UpgradeHistoryEntry.t)`, *default:* `nil`) - The upgrade history of this instance.
  *   `serviceAccountScopes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The URIs of service account scopes to be included in Compute Engine instances. If not specified, the following [scopes](https://cloud.google.com/compute/docs/access/service-accounts#accesscopesiam) are defined: - https://www.googleapis.com/auth/cloud-platform - https://www.googleapis.com/auth/userinfo.email If not using default scopes, you need at least: https://www.googleapis.com/auth/compute
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - The service account on this instance, giving access to other Google Cloud services. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  *   `proxyUri` (*type:* `String.t`, *default:* `nil`) - Output only. The proxy endpoint that is used to access the Jupyter notebook.
  *   `vmImage` (*type:* `GoogleApi.Notebooks.V1.Model.VmImage.t`, *default:* `nil`) - Use a Compute Engine VM image to start the notebook instance.
  *   `nicType` (*type:* `String.t`, *default:* `nil`) - Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  *   `dataDiskType` (*type:* `String.t`, *default:* `nil`) - Input only. The type of the data disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels to apply to this instance. These can be later modified by the setLabels method.
  *   `noRemoveDataDisk` (*type:* `boolean()`, *default:* `nil`) - Input only. If true, the data disk will not be auto deleted when deleting the instance.
  *   `bootDiskSizeGb` (*type:* `String.t`, *default:* `nil`) - Input only. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB. If not specified, this defaults to 100.
  *   `instanceOwners` (*type:* `list(String.t)`, *default:* `nil`) - Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  *   `reservationAffinity` (*type:* `GoogleApi.Notebooks.V1.Model.ReservationAffinity.t`, *default:* `nil`) - Optional. The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this notebook instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :machineType => String.t() | nil,
          :tags => list(String.t()) | nil,
          :customGpuDriverPath => String.t() | nil,
          :containerImage => GoogleApi.Notebooks.V1.Model.ContainerImage.t() | nil,
          :acceleratorConfig => GoogleApi.Notebooks.V1.Model.AcceleratorConfig.t() | nil,
          :noProxyAccess => boolean() | nil,
          :postStartupScript => String.t() | nil,
          :noPublicIp => boolean() | nil,
          :updateTime => DateTime.t() | nil,
          :createTime => DateTime.t() | nil,
          :dataDiskSizeGb => String.t() | nil,
          :metadata => map() | nil,
          :shieldedInstanceConfig =>
            GoogleApi.Notebooks.V1.Model.ShieldedInstanceConfig.t() | nil,
          :diskEncryption => String.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :network => String.t() | nil,
          :disks => list(GoogleApi.Notebooks.V1.Model.Disk.t()) | nil,
          :bootDiskType => String.t() | nil,
          :subnet => String.t() | nil,
          :kmsKey => String.t() | nil,
          :installGpuDriver => boolean() | nil,
          :upgradeHistory => list(GoogleApi.Notebooks.V1.Model.UpgradeHistoryEntry.t()) | nil,
          :serviceAccountScopes => list(String.t()) | nil,
          :serviceAccount => String.t() | nil,
          :proxyUri => String.t() | nil,
          :vmImage => GoogleApi.Notebooks.V1.Model.VmImage.t() | nil,
          :nicType => String.t() | nil,
          :dataDiskType => String.t() | nil,
          :labels => map() | nil,
          :noRemoveDataDisk => boolean() | nil,
          :bootDiskSizeGb => String.t() | nil,
          :instanceOwners => list(String.t()) | nil,
          :reservationAffinity => GoogleApi.Notebooks.V1.Model.ReservationAffinity.t() | nil
        }

  field(:machineType)
  field(:tags, type: :list)
  field(:customGpuDriverPath)
  field(:containerImage, as: GoogleApi.Notebooks.V1.Model.ContainerImage)
  field(:acceleratorConfig, as: GoogleApi.Notebooks.V1.Model.AcceleratorConfig)
  field(:noProxyAccess)
  field(:postStartupScript)
  field(:noPublicIp)
  field(:updateTime, as: DateTime)
  field(:createTime, as: DateTime)
  field(:dataDiskSizeGb)
  field(:metadata, type: :map)
  field(:shieldedInstanceConfig, as: GoogleApi.Notebooks.V1.Model.ShieldedInstanceConfig)
  field(:diskEncryption)
  field(:name)
  field(:state)
  field(:network)
  field(:disks, as: GoogleApi.Notebooks.V1.Model.Disk, type: :list)
  field(:bootDiskType)
  field(:subnet)
  field(:kmsKey)
  field(:installGpuDriver)
  field(:upgradeHistory, as: GoogleApi.Notebooks.V1.Model.UpgradeHistoryEntry, type: :list)
  field(:serviceAccountScopes, type: :list)
  field(:serviceAccount)
  field(:proxyUri)
  field(:vmImage, as: GoogleApi.Notebooks.V1.Model.VmImage)
  field(:nicType)
  field(:dataDiskType)
  field(:labels, type: :map)
  field(:noRemoveDataDisk)
  field(:bootDiskSizeGb)
  field(:instanceOwners, type: :list)
  field(:reservationAffinity, as: GoogleApi.Notebooks.V1.Model.ReservationAffinity)
end

defimpl Poison.Decoder, for: GoogleApi.Notebooks.V1.Model.Instance do
  def decode(value, options) do
    GoogleApi.Notebooks.V1.Model.Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Notebooks.V1.Model.Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end