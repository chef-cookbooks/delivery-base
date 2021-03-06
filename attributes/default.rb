#
# Copyright:: 2015 Chef Software, Inc.
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
#

include_attribute 'push-jobs'

override['push_jobs']['allow_unencrypted'] = true

if platform_family?('windows')
  default['push_jobs']['package_url']      = 'https://packages.chef.io/files/stable/push-jobs-client/2.1.4/windows/2012/push-jobs-client-2.1.4-1-x86.msi'
  default['push_jobs']['package_checksum'] = '3b979f8d362738c8ac126ace0e80122a4cbc53425d5f8cf9653cdd79eca16d62'
end
