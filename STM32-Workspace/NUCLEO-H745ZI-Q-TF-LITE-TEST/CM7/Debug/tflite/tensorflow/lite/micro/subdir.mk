################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tflite/tensorflow/lite/micro/all_ops_resolver.cc \
../tflite/tensorflow/lite/micro/debug_log.cc \
../tflite/tensorflow/lite/micro/flatbuffer_utils.cc \
../tflite/tensorflow/lite/micro/memory_helpers.cc \
../tflite/tensorflow/lite/micro/micro_allocator.cc \
../tflite/tensorflow/lite/micro/micro_error_reporter.cc \
../tflite/tensorflow/lite/micro/micro_graph.cc \
../tflite/tensorflow/lite/micro/micro_interpreter.cc \
../tflite/tensorflow/lite/micro/micro_profiler.cc \
../tflite/tensorflow/lite/micro/micro_string.cc \
../tflite/tensorflow/lite/micro/micro_time.cc \
../tflite/tensorflow/lite/micro/micro_utils.cc \
../tflite/tensorflow/lite/micro/mock_micro_graph.cc \
../tflite/tensorflow/lite/micro/recording_micro_allocator.cc \
../tflite/tensorflow/lite/micro/recording_simple_memory_allocator.cc \
../tflite/tensorflow/lite/micro/simple_memory_allocator.cc \
../tflite/tensorflow/lite/micro/system_setup.cc \
../tflite/tensorflow/lite/micro/test_helpers.cc 

CC_DEPS += \
./tflite/tensorflow/lite/micro/all_ops_resolver.d \
./tflite/tensorflow/lite/micro/debug_log.d \
./tflite/tensorflow/lite/micro/flatbuffer_utils.d \
./tflite/tensorflow/lite/micro/memory_helpers.d \
./tflite/tensorflow/lite/micro/micro_allocator.d \
./tflite/tensorflow/lite/micro/micro_error_reporter.d \
./tflite/tensorflow/lite/micro/micro_graph.d \
./tflite/tensorflow/lite/micro/micro_interpreter.d \
./tflite/tensorflow/lite/micro/micro_profiler.d \
./tflite/tensorflow/lite/micro/micro_string.d \
./tflite/tensorflow/lite/micro/micro_time.d \
./tflite/tensorflow/lite/micro/micro_utils.d \
./tflite/tensorflow/lite/micro/mock_micro_graph.d \
./tflite/tensorflow/lite/micro/recording_micro_allocator.d \
./tflite/tensorflow/lite/micro/recording_simple_memory_allocator.d \
./tflite/tensorflow/lite/micro/simple_memory_allocator.d \
./tflite/tensorflow/lite/micro/system_setup.d \
./tflite/tensorflow/lite/micro/test_helpers.d 

OBJS += \
./tflite/tensorflow/lite/micro/all_ops_resolver.o \
./tflite/tensorflow/lite/micro/debug_log.o \
./tflite/tensorflow/lite/micro/flatbuffer_utils.o \
./tflite/tensorflow/lite/micro/memory_helpers.o \
./tflite/tensorflow/lite/micro/micro_allocator.o \
./tflite/tensorflow/lite/micro/micro_error_reporter.o \
./tflite/tensorflow/lite/micro/micro_graph.o \
./tflite/tensorflow/lite/micro/micro_interpreter.o \
./tflite/tensorflow/lite/micro/micro_profiler.o \
./tflite/tensorflow/lite/micro/micro_string.o \
./tflite/tensorflow/lite/micro/micro_time.o \
./tflite/tensorflow/lite/micro/micro_utils.o \
./tflite/tensorflow/lite/micro/mock_micro_graph.o \
./tflite/tensorflow/lite/micro/recording_micro_allocator.o \
./tflite/tensorflow/lite/micro/recording_simple_memory_allocator.o \
./tflite/tensorflow/lite/micro/simple_memory_allocator.o \
./tflite/tensorflow/lite/micro/system_setup.o \
./tflite/tensorflow/lite/micro/test_helpers.o 


# Each subdirectory must supply rules for building sources it contributes
tflite/tensorflow/lite/micro/%.o: ../tflite/tensorflow/lite/micro/%.cc tflite/tensorflow/lite/micro/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/robin/OneDrive/Hochschule/Master/Masterarbeit/Programme/STM32-Workspace/NUCLEO-H745ZI-Q-TF-LITE-TEST/CM7/tflite" -I"C:/Users/robin/OneDrive/Hochschule/Master/Masterarbeit/Programme/STM32-Workspace/NUCLEO-H745ZI-Q-TF-LITE-TEST/CM7/tflite/third_party/flatbuffers/include" -I"C:/Users/robin/OneDrive/Hochschule/Master/Masterarbeit/Programme/STM32-Workspace/NUCLEO-H745ZI-Q-TF-LITE-TEST/CM7/tflite/third_party/gemmlowp" -I"C:/Users/robin/OneDrive/Hochschule/Master/Masterarbeit/Programme/STM32-Workspace/NUCLEO-H745ZI-Q-TF-LITE-TEST/CM7/tflite/third_party/ruy" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

