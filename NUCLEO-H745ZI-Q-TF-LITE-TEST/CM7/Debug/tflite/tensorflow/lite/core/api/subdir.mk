################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tflite/tensorflow/lite/core/api/error_reporter.cc \
../tflite/tensorflow/lite/core/api/flatbuffer_conversions.cc \
../tflite/tensorflow/lite/core/api/op_resolver.cc \
../tflite/tensorflow/lite/core/api/tensor_utils.cc 

CC_DEPS += \
./tflite/tensorflow/lite/core/api/error_reporter.d \
./tflite/tensorflow/lite/core/api/flatbuffer_conversions.d \
./tflite/tensorflow/lite/core/api/op_resolver.d \
./tflite/tensorflow/lite/core/api/tensor_utils.d 

OBJS += \
./tflite/tensorflow/lite/core/api/error_reporter.o \
./tflite/tensorflow/lite/core/api/flatbuffer_conversions.o \
./tflite/tensorflow/lite/core/api/op_resolver.o \
./tflite/tensorflow/lite/core/api/tensor_utils.o 


# Each subdirectory must supply rules for building sources it contributes
tflite/tensorflow/lite/core/api/%.o: ../tflite/tensorflow/lite/core/api/%.cc tflite/tensorflow/lite/core/api/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/robin/OneDrive/Hochschule/Master/Masterarbeit/Programme/STM32-Workspace/NUCLEO-H745ZI-Q-TF-LITE-TEST/CM7/tflite" -I"C:/Users/robin/OneDrive/Hochschule/Master/Masterarbeit/Programme/STM32-Workspace/NUCLEO-H745ZI-Q-TF-LITE-TEST/CM7/tflite/third_party/flatbuffers/include" -I"C:/Users/robin/OneDrive/Hochschule/Master/Masterarbeit/Programme/STM32-Workspace/NUCLEO-H745ZI-Q-TF-LITE-TEST/CM7/tflite/third_party/gemmlowp" -I"C:/Users/robin/OneDrive/Hochschule/Master/Masterarbeit/Programme/STM32-Workspace/NUCLEO-H745ZI-Q-TF-LITE-TEST/CM7/tflite/third_party/ruy" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

