#*******************************************************************************
# Copyright 2016 JSL Solucoes LTDA - https://jslsolucoes.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#*******************************************************************************
#!/bin/bash
service nginx-admin stop
rm -rf /opt/nginx-admin
rm -rf /etc/init.d/nginx-admin
userdel -f nginx-admin
sed -i 's/nginx-admin ALL = NOPASSWD: \/usr\/sbin\/nginx,\/usr\/bin\/pgrep//g' /etc/sudoers
sed -i 's/Defaults:nginx-admin !requiretty//g' /etc/sudoers