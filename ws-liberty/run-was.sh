#!/bin/bash
# ---------------------------------------------------------------------------
#   Copyright 2018 Jerome Delvigne
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
# ---------------------------------------------------------------------------

docker run  --name was -d -i \
            --hostname wasbox \
            --network infosphere \
            --network-alias wasbox \
            --sysctl kernel.msgmax=65536 \
            --sysctl kernel.msgmnb=65536 \
            -p 9446:9446 \
            -p 9080:9080 \
            --entrypoint "/root/entrypoint.sh start"
            jdelvigne/ws-liberty:was117
