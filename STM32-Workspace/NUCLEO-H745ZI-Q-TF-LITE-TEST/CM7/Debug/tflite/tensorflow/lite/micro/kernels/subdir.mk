################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tflite/tensorflow/lite/micro/kernels/activations.cc \
../tflite/tensorflow/lite/micro/kernels/activations_common.cc \
../tflite/tensorflow/lite/micro/kernels/add.cc \
../tflite/tensorflow/lite/micro/kernels/add_n.cc \
../tflite/tensorflow/lite/micro/kernels/arg_min_max.cc \
../tflite/tensorflow/lite/micro/kernels/batch_to_space_nd.cc \
../tflite/tensorflow/lite/micro/kernels/cast.cc \
../tflite/tensorflow/lite/micro/kernels/ceil.cc \
../tflite/tensorflow/lite/micro/kernels/circular_buffer.cc \
../tflite/tensorflow/lite/micro/kernels/circular_buffer_common.cc \
../tflite/tensorflow/lite/micro/kernels/comparisons.cc \
../tflite/tensorflow/lite/micro/kernels/concatenation.cc \
../tflite/tensorflow/lite/micro/kernels/conv.cc \
../tflite/tensorflow/lite/micro/kernels/conv_common.cc \
../tflite/tensorflow/lite/micro/kernels/cumsum.cc \
../tflite/tensorflow/lite/micro/kernels/depth_to_space.cc \
../tflite/tensorflow/lite/micro/kernels/depthwise_conv.cc \
../tflite/tensorflow/lite/micro/kernels/depthwise_conv_common.cc \
../tflite/tensorflow/lite/micro/kernels/dequantize.cc \
../tflite/tensorflow/lite/micro/kernels/detection_postprocess.cc \
../tflite/tensorflow/lite/micro/kernels/elementwise.cc \
../tflite/tensorflow/lite/micro/kernels/elu.cc \
../tflite/tensorflow/lite/micro/kernels/ethosu.cc \
../tflite/tensorflow/lite/micro/kernels/exp.cc \
../tflite/tensorflow/lite/micro/kernels/expand_dims.cc \
../tflite/tensorflow/lite/micro/kernels/fill.cc \
../tflite/tensorflow/lite/micro/kernels/floor.cc \
../tflite/tensorflow/lite/micro/kernels/floor_div.cc \
../tflite/tensorflow/lite/micro/kernels/floor_mod.cc \
../tflite/tensorflow/lite/micro/kernels/fully_connected.cc \
../tflite/tensorflow/lite/micro/kernels/fully_connected_common.cc \
../tflite/tensorflow/lite/micro/kernels/gather.cc \
../tflite/tensorflow/lite/micro/kernels/gather_nd.cc \
../tflite/tensorflow/lite/micro/kernels/hard_swish.cc \
../tflite/tensorflow/lite/micro/kernels/hard_swish_common.cc \
../tflite/tensorflow/lite/micro/kernels/if.cc \
../tflite/tensorflow/lite/micro/kernels/kernel_runner.cc \
../tflite/tensorflow/lite/micro/kernels/kernel_util.cc \
../tflite/tensorflow/lite/micro/kernels/l2_pool_2d.cc \
../tflite/tensorflow/lite/micro/kernels/l2norm.cc \
../tflite/tensorflow/lite/micro/kernels/leaky_relu.cc \
../tflite/tensorflow/lite/micro/kernels/leaky_relu_common.cc \
../tflite/tensorflow/lite/micro/kernels/log_softmax.cc \
../tflite/tensorflow/lite/micro/kernels/logical.cc \
../tflite/tensorflow/lite/micro/kernels/logical_common.cc \
../tflite/tensorflow/lite/micro/kernels/logistic.cc \
../tflite/tensorflow/lite/micro/kernels/logistic_common.cc \
../tflite/tensorflow/lite/micro/kernels/maximum_minimum.cc \
../tflite/tensorflow/lite/micro/kernels/mul.cc \
../tflite/tensorflow/lite/micro/kernels/neg.cc \
../tflite/tensorflow/lite/micro/kernels/pack.cc \
../tflite/tensorflow/lite/micro/kernels/pad.cc \
../tflite/tensorflow/lite/micro/kernels/pooling.cc \
../tflite/tensorflow/lite/micro/kernels/pooling_common.cc \
../tflite/tensorflow/lite/micro/kernels/prelu.cc \
../tflite/tensorflow/lite/micro/kernels/quantize.cc \
../tflite/tensorflow/lite/micro/kernels/quantize_common.cc \
../tflite/tensorflow/lite/micro/kernels/reduce.cc \
../tflite/tensorflow/lite/micro/kernels/reshape.cc \
../tflite/tensorflow/lite/micro/kernels/resize_bilinear.cc \
../tflite/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc \
../tflite/tensorflow/lite/micro/kernels/round.cc \
../tflite/tensorflow/lite/micro/kernels/shape.cc \
../tflite/tensorflow/lite/micro/kernels/softmax.cc \
../tflite/tensorflow/lite/micro/kernels/softmax_common.cc \
../tflite/tensorflow/lite/micro/kernels/space_to_batch_nd.cc \
../tflite/tensorflow/lite/micro/kernels/space_to_depth.cc \
../tflite/tensorflow/lite/micro/kernels/split.cc \
../tflite/tensorflow/lite/micro/kernels/split_v.cc \
../tflite/tensorflow/lite/micro/kernels/squeeze.cc \
../tflite/tensorflow/lite/micro/kernels/strided_slice.cc \
../tflite/tensorflow/lite/micro/kernels/sub.cc \
../tflite/tensorflow/lite/micro/kernels/svdf.cc \
../tflite/tensorflow/lite/micro/kernels/svdf_common.cc \
../tflite/tensorflow/lite/micro/kernels/tanh.cc \
../tflite/tensorflow/lite/micro/kernels/transpose.cc \
../tflite/tensorflow/lite/micro/kernels/transpose_conv.cc \
../tflite/tensorflow/lite/micro/kernels/unpack.cc \
../tflite/tensorflow/lite/micro/kernels/zeros_like.cc 

CC_DEPS += \
./tflite/tensorflow/lite/micro/kernels/activations.d \
./tflite/tensorflow/lite/micro/kernels/activations_common.d \
./tflite/tensorflow/lite/micro/kernels/add.d \
./tflite/tensorflow/lite/micro/kernels/add_n.d \
./tflite/tensorflow/lite/micro/kernels/arg_min_max.d \
./tflite/tensorflow/lite/micro/kernels/batch_to_space_nd.d \
./tflite/tensorflow/lite/micro/kernels/cast.d \
./tflite/tensorflow/lite/micro/kernels/ceil.d \
./tflite/tensorflow/lite/micro/kernels/circular_buffer.d \
./tflite/tensorflow/lite/micro/kernels/circular_buffer_common.d \
./tflite/tensorflow/lite/micro/kernels/comparisons.d \
./tflite/tensorflow/lite/micro/kernels/concatenation.d \
./tflite/tensorflow/lite/micro/kernels/conv.d \
./tflite/tensorflow/lite/micro/kernels/conv_common.d \
./tflite/tensorflow/lite/micro/kernels/cumsum.d \
./tflite/tensorflow/lite/micro/kernels/depth_to_space.d \
./tflite/tensorflow/lite/micro/kernels/depthwise_conv.d \
./tflite/tensorflow/lite/micro/kernels/depthwise_conv_common.d \
./tflite/tensorflow/lite/micro/kernels/dequantize.d \
./tflite/tensorflow/lite/micro/kernels/detection_postprocess.d \
./tflite/tensorflow/lite/micro/kernels/elementwise.d \
./tflite/tensorflow/lite/micro/kernels/elu.d \
./tflite/tensorflow/lite/micro/kernels/ethosu.d \
./tflite/tensorflow/lite/micro/kernels/exp.d \
./tflite/tensorflow/lite/micro/kernels/expand_dims.d \
./tflite/tensorflow/lite/micro/kernels/fill.d \
./tflite/tensorflow/lite/micro/kernels/floor.d \
./tflite/tensorflow/lite/micro/kernels/floor_div.d \
./tflite/tensorflow/lite/micro/kernels/floor_mod.d \
./tflite/tensorflow/lite/micro/kernels/fully_connected.d \
./tflite/tensorflow/lite/micro/kernels/fully_connected_common.d \
./tflite/tensorflow/lite/micro/kernels/gather.d \
./tflite/tensorflow/lite/micro/kernels/gather_nd.d \
./tflite/tensorflow/lite/micro/kernels/hard_swish.d \
./tflite/tensorflow/lite/micro/kernels/hard_swish_common.d \
./tflite/tensorflow/lite/micro/kernels/if.d \
./tflite/tensorflow/lite/micro/kernels/kernel_runner.d \
./tflite/tensorflow/lite/micro/kernels/kernel_util.d \
./tflite/tensorflow/lite/micro/kernels/l2_pool_2d.d \
./tflite/tensorflow/lite/micro/kernels/l2norm.d \
./tflite/tensorflow/lite/micro/kernels/leaky_relu.d \
./tflite/tensorflow/lite/micro/kernels/leaky_relu_common.d \
./tflite/tensorflow/lite/micro/kernels/log_softmax.d \
./tflite/tensorflow/lite/micro/kernels/logical.d \
./tflite/tensorflow/lite/micro/kernels/logical_common.d \
./tflite/tensorflow/lite/micro/kernels/logistic.d \
./tflite/tensorflow/lite/micro/kernels/logistic_common.d \
./tflite/tensorflow/lite/micro/kernels/maximum_minimum.d \
./tflite/tensorflow/lite/micro/kernels/mul.d \
./tflite/tensorflow/lite/micro/kernels/neg.d \
./tflite/tensorflow/lite/micro/kernels/pack.d \
./tflite/tensorflow/lite/micro/kernels/pad.d \
./tflite/tensorflow/lite/micro/kernels/pooling.d \
./tflite/tensorflow/lite/micro/kernels/pooling_common.d \
./tflite/tensorflow/lite/micro/kernels/prelu.d \
./tflite/tensorflow/lite/micro/kernels/quantize.d \
./tflite/tensorflow/lite/micro/kernels/quantize_common.d \
./tflite/tensorflow/lite/micro/kernels/reduce.d \
./tflite/tensorflow/lite/micro/kernels/reshape.d \
./tflite/tensorflow/lite/micro/kernels/resize_bilinear.d \
./tflite/tensorflow/lite/micro/kernels/resize_nearest_neighbor.d \
./tflite/tensorflow/lite/micro/kernels/round.d \
./tflite/tensorflow/lite/micro/kernels/shape.d \
./tflite/tensorflow/lite/micro/kernels/softmax.d \
./tflite/tensorflow/lite/micro/kernels/softmax_common.d \
./tflite/tensorflow/lite/micro/kernels/space_to_batch_nd.d \
./tflite/tensorflow/lite/micro/kernels/space_to_depth.d \
./tflite/tensorflow/lite/micro/kernels/split.d \
./tflite/tensorflow/lite/micro/kernels/split_v.d \
./tflite/tensorflow/lite/micro/kernels/squeeze.d \
./tflite/tensorflow/lite/micro/kernels/strided_slice.d \
./tflite/tensorflow/lite/micro/kernels/sub.d \
./tflite/tensorflow/lite/micro/kernels/svdf.d \
./tflite/tensorflow/lite/micro/kernels/svdf_common.d \
./tflite/tensorflow/lite/micro/kernels/tanh.d \
./tflite/tensorflow/lite/micro/kernels/transpose.d \
./tflite/tensorflow/lite/micro/kernels/transpose_conv.d \
./tflite/tensorflow/lite/micro/kernels/unpack.d \
./tflite/tensorflow/lite/micro/kernels/zeros_like.d 

OBJS += \
./tflite/tensorflow/lite/micro/kernels/activations.o \
./tflite/tensorflow/lite/micro/kernels/activations_common.o \
./tflite/tensorflow/lite/micro/kernels/add.o \
./tflite/tensorflow/lite/micro/kernels/add_n.o \
./tflite/tensorflow/lite/micro/kernels/arg_min_max.o \
./tflite/tensorflow/lite/micro/kernels/batch_to_space_nd.o \
./tflite/tensorflow/lite/micro/kernels/cast.o \
./tflite/tensorflow/lite/micro/kernels/ceil.o \
./tflite/tensorflow/lite/micro/kernels/circular_buffer.o \
./tflite/tensorflow/lite/micro/kernels/circular_buffer_common.o \
./tflite/tensorflow/lite/micro/kernels/comparisons.o \
./tflite/tensorflow/lite/micro/kernels/concatenation.o \
./tflite/tensorflow/lite/micro/kernels/conv.o \
./tflite/tensorflow/lite/micro/kernels/conv_common.o \
./tflite/tensorflow/lite/micro/kernels/cumsum.o \
./tflite/tensorflow/lite/micro/kernels/depth_to_space.o \
./tflite/tensorflow/lite/micro/kernels/depthwise_conv.o \
./tflite/tensorflow/lite/micro/kernels/depthwise_conv_common.o \
./tflite/tensorflow/lite/micro/kernels/dequantize.o \
./tflite/tensorflow/lite/micro/kernels/detection_postprocess.o \
./tflite/tensorflow/lite/micro/kernels/elementwise.o \
./tflite/tensorflow/lite/micro/kernels/elu.o \
./tflite/tensorflow/lite/micro/kernels/ethosu.o \
./tflite/tensorflow/lite/micro/kernels/exp.o \
./tflite/tensorflow/lite/micro/kernels/expand_dims.o \
./tflite/tensorflow/lite/micro/kernels/fill.o \
./tflite/tensorflow/lite/micro/kernels/floor.o \
./tflite/tensorflow/lite/micro/kernels/floor_div.o \
./tflite/tensorflow/lite/micro/kernels/floor_mod.o \
./tflite/tensorflow/lite/micro/kernels/fully_connected.o \
./tflite/tensorflow/lite/micro/kernels/fully_connected_common.o \
./tflite/tensorflow/lite/micro/kernels/gather.o \
./tflite/tensorflow/lite/micro/kernels/gather_nd.o \
./tflite/tensorflow/lite/micro/kernels/hard_swish.o \
./tflite/tensorflow/lite/micro/kernels/hard_swish_common.o \
./tflite/tensorflow/lite/micro/kernels/if.o \
./tflite/tensorflow/lite/micro/kernels/kernel_runner.o \
./tflite/tensorflow/lite/micro/kernels/kernel_util.o \
./tflite/tensorflow/lite/micro/kernels/l2_pool_2d.o \
./tflite/tensorflow/lite/micro/kernels/l2norm.o \
./tflite/tensorflow/lite/micro/kernels/leaky_relu.o \
./tflite/tensorflow/lite/micro/kernels/leaky_relu_common.o \
./tflite/tensorflow/lite/micro/kernels/log_softmax.o \
./tflite/tensorflow/lite/micro/kernels/logical.o \
./tflite/tensorflow/lite/micro/kernels/logical_common.o \
./tflite/tensorflow/lite/micro/kernels/logistic.o \
./tflite/tensorflow/lite/micro/kernels/logistic_common.o \
./tflite/tensorflow/lite/micro/kernels/maximum_minimum.o \
./tflite/tensorflow/lite/micro/kernels/mul.o \
./tflite/tensorflow/lite/micro/kernels/neg.o \
./tflite/tensorflow/lite/micro/kernels/pack.o \
./tflite/tensorflow/lite/micro/kernels/pad.o \
./tflite/tensorflow/lite/micro/kernels/pooling.o \
./tflite/tensorflow/lite/micro/kernels/pooling_common.o \
./tflite/tensorflow/lite/micro/kernels/prelu.o \
./tflite/tensorflow/lite/micro/kernels/quantize.o \
./tflite/tensorflow/lite/micro/kernels/quantize_common.o \
./tflite/tensorflow/lite/micro/kernels/reduce.o \
./tflite/tensorflow/lite/micro/kernels/reshape.o \
./tflite/tensorflow/lite/micro/kernels/resize_bilinear.o \
./tflite/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o \
./tflite/tensorflow/lite/micro/kernels/round.o \
./tflite/tensorflow/lite/micro/kernels/shape.o \
./tflite/tensorflow/lite/micro/kernels/softmax.o \
./tflite/tensorflow/lite/micro/kernels/softmax_common.o \
./tflite/tensorflow/lite/micro/kernels/space_to_batch_nd.o \
./tflite/tensorflow/lite/micro/kernels/space_to_depth.o \
./tflite/tensorflow/lite/micro/kernels/split.o \
./tflite/tensorflow/lite/micro/kernels/split_v.o \
./tflite/tensorflow/lite/micro/kernels/squeeze.o \
./tflite/tensorflow/lite/micro/kernels/strided_slice.o \
./tflite/tensorflow/lite/micro/kernels/sub.o \
./tflite/tensorflow/lite/micro/kernels/svdf.o \
./tflite/tensorflow/lite/micro/kernels/svdf_common.o \
./tflite/tensorflow/lite/micro/kernels/tanh.o \
./tflite/tensorflow/lite/micro/kernels/transpose.o \
./tflite/tensorflow/lite/micro/kernels/transpose_conv.o \
./tflite/tensorflow/lite/micro/kernels/unpack.o \
./tflite/tensorflow/lite/micro/kernels/zeros_like.o 


# Each subdirectory must supply rules for building sources it contributes
tflite/tensorflow/lite/micro/kernels/%.o: ../tflite/tensorflow/lite/micro/kernels/%.cc tflite/tensorflow/lite/micro/kernels/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/robin/OneDrive/Hochschule/Master/Masterarbeit/Programme/STM32-Workspace/NUCLEO-H745ZI-Q-TF-LITE-TEST/CM7/tflite" -I"C:/Users/robin/OneDrive/Hochschule/Master/Masterarbeit/Programme/STM32-Workspace/NUCLEO-H745ZI-Q-TF-LITE-TEST/CM7/tflite/third_party/flatbuffers/include" -I"C:/Users/robin/OneDrive/Hochschule/Master/Masterarbeit/Programme/STM32-Workspace/NUCLEO-H745ZI-Q-TF-LITE-TEST/CM7/tflite/third_party/gemmlowp" -I"C:/Users/robin/OneDrive/Hochschule/Master/Masterarbeit/Programme/STM32-Workspace/NUCLEO-H745ZI-Q-TF-LITE-TEST/CM7/tflite/third_party/ruy" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

