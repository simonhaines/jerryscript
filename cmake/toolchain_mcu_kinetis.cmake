# Copyright JS Foundation and other contributors, http://js.foundation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# FIXME sample compile of main:
# arm-none-eabi-gcc -D__USE_CMSIS -DDEBUG -D__NEWLIB__ -O0 -fno-common -fsigned-char -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -MMD -MP -MF"source/main.d" -MT"source/main.o" -MT"source/main.d" -o "source/main.o" "../source/main.c"

# FIXME sample link:
# arm-none-eabi-gcc -nostdlib -Xlinker -Map="..." -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -T MCU_RallySafe_Debug.ld -o "MCU.FlagMarshal.axf"  <.o files>

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR armv7l)

set(FLAGS_COMMON_ARCH -mlittle-endian -mthumb -mcpu=cortex-m4 -march=armv7e-m -mfpu=fpv4-sp-d16 -mfloat-abi=hard)

set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_C_COMPILER_WORKS TRUE)

#--
set(CMAKE_STATIC_LINKER_FLAGS_INIT -nostdlib -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb)
#--

set(CMAKE_C_FLAGS_DEBUG_INIT -DDEBUG -g3 -O0)
#SET (CMAKE_C_FLAGS_DEBUG_INIT          "-g")
#SET (CMAKE_C_FLAGS_MINSIZEREL_INIT     "-o4 -mf0 -DNDEBUG")
#SET (CMAKE_C_FLAGS_RELEASE_INIT        "-o4 -DNDEBUG")
#SET (CMAKE_C_FLAGS_RELWITHDEBINFO_INIT "-o2 -g")

#SET (CMAKE_CXX_FLAGS_DEBUG_INIT          "-g")
#SET (CMAKE_CXX_FLAGS_MINSIZEREL_INIT     "-o4 -mf0 -DNDEBUG")
#SET (CMAKE_CXX_FLAGS_RELEASE_INIT        "-o4 -DNDEBUG")
#SET (CMAKE_CXX_FLAGS_RELWITHDEBINFO_INIT "-o2 -g")
