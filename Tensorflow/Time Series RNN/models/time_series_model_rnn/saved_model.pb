ǃ,
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718ˇ*
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

: *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
?
lstm_2/lstm_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_namelstm_2/lstm_cell_2/kernel
?
-lstm_2/lstm_cell_2/kernel/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/kernel*
_output_shapes
:	?*
dtype0
?
#lstm_2/lstm_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*4
shared_name%#lstm_2/lstm_cell_2/recurrent_kernel
?
7lstm_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_2/lstm_cell_2/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_2/lstm_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namelstm_2/lstm_cell_2/bias
?
+lstm_2/lstm_cell_2/bias/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/bias*
_output_shapes	
:?*
dtype0
?
lstm_3/lstm_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?**
shared_namelstm_3/lstm_cell_3/kernel
?
-lstm_3/lstm_cell_3/kernel/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_3/kernel*
_output_shapes
:	 ?*
dtype0
?
#lstm_3/lstm_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*4
shared_name%#lstm_3/lstm_cell_3/recurrent_kernel
?
7lstm_3/lstm_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_3/lstm_cell_3/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_3/lstm_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namelstm_3/lstm_cell_3/bias
?
+lstm_3/lstm_cell_3/bias/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_3/bias*
_output_shapes	
:?*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
regularization_losses
trainable_variables
	variables
	keras_api

signatures
l
	cell


state_spec
regularization_losses
trainable_variables
	variables
	keras_api
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
 
8
0
1
2
3
4
 5
6
7
8
0
1
2
3
4
 5
6
7
?
regularization_losses
trainable_variables

!layers
"layer_regularization_losses
#non_trainable_variables
$metrics
%layer_metrics
	variables
 
?
&
state_size

kernel
recurrent_kernel
bias
'regularization_losses
(trainable_variables
)	variables
*	keras_api
 
 

0
1
2

0
1
2
?
regularization_losses
trainable_variables
+layer_regularization_losses

,layers

-states
.non_trainable_variables
/metrics
0layer_metrics
	variables
?
1
state_size

kernel
recurrent_kernel
 bias
2regularization_losses
3trainable_variables
4	variables
5	keras_api
 
 

0
1
 2

0
1
 2
?
regularization_losses
trainable_variables
6layer_regularization_losses

7layers

8states
9non_trainable_variables
:metrics
;layer_metrics
	variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses
trainable_variables
<layer_regularization_losses

=layers
>non_trainable_variables
?metrics
@layer_metrics
	variables
_]
VARIABLE_VALUElstm_2/lstm_cell_2/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_2/lstm_cell_2/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_2/lstm_cell_2/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_3/lstm_cell_3/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_3/lstm_cell_3/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_3/lstm_cell_3/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
 
 
 
 
 
 

0
1
2

0
1
2
?
'regularization_losses
(trainable_variables
Alayer_regularization_losses

Blayers
Cnon_trainable_variables
Dmetrics
Elayer_metrics
)	variables
 

	0
 
 
 
 
 
 

0
1
 2

0
1
 2
?
2regularization_losses
3trainable_variables
Flayer_regularization_losses

Glayers
Hnon_trainable_variables
Imetrics
Jlayer_metrics
4	variables
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
p
serving_default_input_2Placeholder*"
_output_shapes
:*
dtype0*
shape:
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2lstm_2/lstm_cell_2/kernel#lstm_2/lstm_cell_2/recurrent_kernellstm_2/lstm_cell_2/biaslstm_3/lstm_cell_3/kernel#lstm_3/lstm_cell_3/recurrent_kernellstm_3/lstm_cell_3/biasdense_1/kerneldense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_20353
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp-lstm_2/lstm_cell_2/kernel/Read/ReadVariableOp7lstm_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOp+lstm_2/lstm_cell_2/bias/Read/ReadVariableOp-lstm_3/lstm_cell_3/kernel/Read/ReadVariableOp7lstm_3/lstm_cell_3/recurrent_kernel/Read/ReadVariableOp+lstm_3/lstm_cell_3/bias/Read/ReadVariableOpConst*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_23121
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biaslstm_2/lstm_cell_2/kernel#lstm_2/lstm_cell_2/recurrent_kernellstm_2/lstm_cell_2/biaslstm_3/lstm_cell_3/kernel#lstm_3/lstm_cell_3/recurrent_kernellstm_3/lstm_cell_3/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_23155??)
?
?
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_23006

inputs
states_0
states_11
matmul_readvariableop_resource:	 ?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_like_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_3?
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
+__inference_lstm_cell_3_layer_call_fn_22953

inputs
states_0
states_1
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_187322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
while_cond_22276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_22276___redundant_placeholder03
/while_while_cond_22276___redundant_placeholder13
/while_while_cond_22276___redundant_placeholder23
/while_while_cond_22276___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_18732

inputs

states
states_11
matmul_readvariableop_resource:	 ?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_like_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_3?
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?
?
while_cond_19823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_19823___redundant_placeholder03
/while_while_cond_19823___redundant_placeholder13
/while_while_cond_19823___redundant_placeholder23
/while_while_cond_19823___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_20307
input_2
lstm_2_20287:	?
lstm_2_20289:	 ?
lstm_2_20291:	?
lstm_3_20294:	 ?
lstm_3_20296:	 ?
lstm_3_20298:	?
dense_1_20301: 
dense_1_20303:
identity??dense_1/StatefulPartitionedCall?lstm_2/StatefulPartitionedCall?lstm_3/StatefulPartitionedCall?
lstm_2/StatefulPartitionedCallStatefulPartitionedCallinput_2lstm_2_20287lstm_2_20289lstm_2_20291*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_194882 
lstm_2/StatefulPartitionedCall?
lstm_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0lstm_3_20294lstm_3_20296lstm_3_20298*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_196542 
lstm_3/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_1_20301dense_1_20303*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_196722!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:: : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_2
?C
?
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_18914

inputs

states
states_11
matmul_readvariableop_resource:	 ?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2???2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_3/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_3?
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?
?
while_cond_19399
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_19399___redundant_placeholder03
/while_while_cond_19399___redundant_placeholder13
/while_while_cond_19399___redundant_placeholder23
/while_while_cond_19399___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_19679

inputs
lstm_2_19489:	?
lstm_2_19491:	 ?
lstm_2_19493:	?
lstm_3_19655:	 ?
lstm_3_19657:	 ?
lstm_3_19659:	?
dense_1_19673: 
dense_1_19675:
identity??dense_1/StatefulPartitionedCall?lstm_2/StatefulPartitionedCall?lstm_3/StatefulPartitionedCall?
lstm_2/StatefulPartitionedCallStatefulPartitionedCallinputslstm_2_19489lstm_2_19491lstm_2_19493*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_194882 
lstm_2/StatefulPartitionedCall?
lstm_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0lstm_3_19655lstm_3_19657lstm_3_19659*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_196542 
lstm_3/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_1_19673dense_1_19675*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_196722!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:: : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
?
while_cond_18075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_18075___redundant_placeholder03
/while_while_cond_18075___redundant_placeholder13
/while_while_cond_18075___redundant_placeholder23
/while_while_cond_18075___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
&__inference_lstm_2_layer_call_fn_21207

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_201892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*"
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:: : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
?
+__inference_lstm_cell_3_layer_call_fn_22970

inputs
states_0
states_1
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_189142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
while_cond_22467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_22467___redundant_placeholder03
/while_while_cond_22467___redundant_placeholder13
/while_while_cond_22467___redundant_placeholder23
/while_while_cond_22467___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
?]
?
A__inference_lstm_2_layer_call_and_return_conditional_losses_19488

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	??
,lstm_cell_2_matmul_1_readvariableop_resource:	 ?:
+lstm_cell_2_biasadd_readvariableop_resource:	?
identity??"lstm_cell_2/BiasAdd/ReadVariableOp?!lstm_cell_2/MatMul/ReadVariableOp?#lstm_cell_2/MatMul_1/ReadVariableOp?whilec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constl
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes

: 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constt
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes

: 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permq
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:2
	transposeg
Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
strided_slice_2?
lstm_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_2/ones_like/Const?
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_2/ones_like?
lstm_cell_2/mulMulstrided_slice_2:output:0lstm_cell_2/ones_like:output:0*
T0*
_output_shapes

:2
lstm_cell_2/mul?
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_2/MatMul/ReadVariableOp?
lstm_cell_2/MatMulMatMullstm_cell_2/mul:z:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_2/MatMul?
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_2/MatMul_1/ReadVariableOp?
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_2/MatMul_1?
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_2/add?
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_2/BiasAdd/ReadVariableOp?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_2/BiasAdd|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_2/splitz
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_2/Sigmoid~
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_2/Sigmoid_1?
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_2/mul_1q
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_2/Relu?
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_2/mul_2?
lstm_cell_2/add_1AddV2lstm_cell_2/mul_1:z:0lstm_cell_2/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_2/add_1~
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_2/Sigmoid_2p
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_2/Relu_1?
lstm_cell_2/mul_3Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_2/mul_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_19400*
condR
while_cond_19399*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*
T0*"
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
?
&__inference_lstm_3_layer_call_fn_21982
inputs_0
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_188152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?
?
+__inference_lstm_cell_2_layer_call_fn_22832

inputs
states_0
states_1
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_182442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?P
?

lstm_3_while_body_20621*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3)
%lstm_3_while_lstm_3_strided_slice_1_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0:	 ?N
;lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0:	 ?I
:lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5'
#lstm_3_while_lstm_3_strided_slice_1c
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensorJ
7lstm_3_while_lstm_cell_3_matmul_readvariableop_resource:	 ?L
9lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource:	 ?G
8lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource:	???/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp?.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp?0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp?
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2@
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

: *
element_dtype022
0lstm_3/while/TensorArrayV2Read/TensorListGetItem?
(lstm_3/while/lstm_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2*
(lstm_3/while/lstm_cell_3/ones_like/Shape?
(lstm_3/while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm_3/while/lstm_cell_3/ones_like/Const?
"lstm_3/while/lstm_cell_3/ones_likeFill1lstm_3/while/lstm_cell_3/ones_like/Shape:output:01lstm_3/while/lstm_cell_3/ones_like/Const:output:0*
T0*
_output_shapes

: 2$
"lstm_3/while/lstm_cell_3/ones_like?
lstm_3/while/lstm_cell_3/mulMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes

: 2
lstm_3/while/lstm_cell_3/mul?
.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp9lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype020
.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp?
lstm_3/while/lstm_cell_3/MatMulMatMul lstm_3/while/lstm_cell_3/mul:z:06lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2!
lstm_3/while/lstm_cell_3/MatMul?
0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp;lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype022
0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp?
!lstm_3/while/lstm_cell_3/MatMul_1MatMullstm_3_while_placeholder_28lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!lstm_3/while/lstm_cell_3/MatMul_1?
lstm_3/while/lstm_cell_3/addAddV2)lstm_3/while/lstm_cell_3/MatMul:product:0+lstm_3/while/lstm_cell_3/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_3/while/lstm_cell_3/add?
/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp:lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp?
 lstm_3/while/lstm_cell_3/BiasAddBiasAdd lstm_3/while/lstm_cell_3/add:z:07lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2"
 lstm_3/while/lstm_cell_3/BiasAdd?
(lstm_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_3/while/lstm_cell_3/split/split_dim?
lstm_3/while/lstm_cell_3/splitSplit1lstm_3/while/lstm_cell_3/split/split_dim:output:0)lstm_3/while/lstm_cell_3/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2 
lstm_3/while/lstm_cell_3/split?
 lstm_3/while/lstm_cell_3/SigmoidSigmoid'lstm_3/while/lstm_cell_3/split:output:0*
T0*
_output_shapes

: 2"
 lstm_3/while/lstm_cell_3/Sigmoid?
"lstm_3/while/lstm_cell_3/Sigmoid_1Sigmoid'lstm_3/while/lstm_cell_3/split:output:1*
T0*
_output_shapes

: 2$
"lstm_3/while/lstm_cell_3/Sigmoid_1?
lstm_3/while/lstm_cell_3/mul_1Mul&lstm_3/while/lstm_cell_3/Sigmoid_1:y:0lstm_3_while_placeholder_3*
T0*
_output_shapes

: 2 
lstm_3/while/lstm_cell_3/mul_1?
lstm_3/while/lstm_cell_3/ReluRelu'lstm_3/while/lstm_cell_3/split:output:2*
T0*
_output_shapes

: 2
lstm_3/while/lstm_cell_3/Relu?
lstm_3/while/lstm_cell_3/mul_2Mul$lstm_3/while/lstm_cell_3/Sigmoid:y:0+lstm_3/while/lstm_cell_3/Relu:activations:0*
T0*
_output_shapes

: 2 
lstm_3/while/lstm_cell_3/mul_2?
lstm_3/while/lstm_cell_3/add_1AddV2"lstm_3/while/lstm_cell_3/mul_1:z:0"lstm_3/while/lstm_cell_3/mul_2:z:0*
T0*
_output_shapes

: 2 
lstm_3/while/lstm_cell_3/add_1?
"lstm_3/while/lstm_cell_3/Sigmoid_2Sigmoid'lstm_3/while/lstm_cell_3/split:output:3*
T0*
_output_shapes

: 2$
"lstm_3/while/lstm_cell_3/Sigmoid_2?
lstm_3/while/lstm_cell_3/Relu_1Relu"lstm_3/while/lstm_cell_3/add_1:z:0*
T0*
_output_shapes

: 2!
lstm_3/while/lstm_cell_3/Relu_1?
lstm_3/while/lstm_cell_3/mul_3Mul&lstm_3/while/lstm_cell_3/Sigmoid_2:y:0-lstm_3/while/lstm_cell_3/Relu_1:activations:0*
T0*
_output_shapes

: 2 
lstm_3/while/lstm_cell_3/mul_3?
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder"lstm_3/while/lstm_cell_3/mul_3:z:0*
_output_shapes
: *
element_dtype023
1lstm_3/while/TensorArrayV2Write/TensorListSetItemj
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add/y?
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/addn
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add_1/y?
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/add_1?
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:00^lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity?
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations0^lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_1?
lstm_3/while/Identity_2Identitylstm_3/while/add:z:00^lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_2?
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_3?
lstm_3/while/Identity_4Identity"lstm_3/while/lstm_cell_3/mul_3:z:00^lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
lstm_3/while/Identity_4?
lstm_3/while/Identity_5Identity"lstm_3/while/lstm_cell_3/add_1:z:00^lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
lstm_3/while/Identity_5"7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"L
#lstm_3_while_lstm_3_strided_slice_1%lstm_3_while_lstm_3_strided_slice_1_0"v
8lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource:lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0"x
9lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource;lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0"t
7lstm_3_while_lstm_cell_3_matmul_readvariableop_resource9lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0"?
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : 2b
/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp2`
.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp2d
0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_20330
input_2
lstm_2_20310:	?
lstm_2_20312:	 ?
lstm_2_20314:	?
lstm_3_20317:	 ?
lstm_3_20319:	 ?
lstm_3_20321:	?
dense_1_20324: 
dense_1_20326:
identity??dense_1/StatefulPartitionedCall?lstm_2/StatefulPartitionedCall?lstm_3/StatefulPartitionedCall?
lstm_2/StatefulPartitionedCallStatefulPartitionedCallinput_2lstm_2_20310lstm_2_20312lstm_2_20314*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_201892 
lstm_2/StatefulPartitionedCall?
lstm_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0lstm_3_20317lstm_3_20319lstm_3_20321*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_199442 
lstm_3/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_1_20324dense_1_20326*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_196722!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:: : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_2
??
?

lstm_3_while_body_21037*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3)
%lstm_3_while_lstm_3_strided_slice_1_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0:	 ?N
;lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0:	 ?I
:lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5'
#lstm_3_while_lstm_3_strided_slice_1c
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensorJ
7lstm_3_while_lstm_cell_3_matmul_readvariableop_resource:	 ?L
9lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource:	 ?G
8lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource:	???/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp?.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp?0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp?
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2@
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

: *
element_dtype022
0lstm_3/while/TensorArrayV2Read/TensorListGetItem?
(lstm_3/while/lstm_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2*
(lstm_3/while/lstm_cell_3/ones_like/Shape?
(lstm_3/while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm_3/while/lstm_cell_3/ones_like/Const?
"lstm_3/while/lstm_cell_3/ones_likeFill1lstm_3/while/lstm_cell_3/ones_like/Shape:output:01lstm_3/while/lstm_cell_3/ones_like/Const:output:0*
T0*
_output_shapes

: 2$
"lstm_3/while/lstm_cell_3/ones_like?
&lstm_3/while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2(
&lstm_3/while/lstm_cell_3/dropout/Const?
$lstm_3/while/lstm_cell_3/dropout/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:0/lstm_3/while/lstm_cell_3/dropout/Const:output:0*
T0*
_output_shapes

: 2&
$lstm_3/while/lstm_cell_3/dropout/Mul?
&lstm_3/while/lstm_cell_3/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2(
&lstm_3/while/lstm_cell_3/dropout/Shape?
=lstm_3/while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform/lstm_3/while/lstm_cell_3/dropout/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2?
=lstm_3/while/lstm_cell_3/dropout/random_uniform/RandomUniform?
/lstm_3/while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=21
/lstm_3/while/lstm_cell_3/dropout/GreaterEqual/y?
-lstm_3/while/lstm_cell_3/dropout/GreaterEqualGreaterEqualFlstm_3/while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:08lstm_3/while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2/
-lstm_3/while/lstm_cell_3/dropout/GreaterEqual?
%lstm_3/while/lstm_cell_3/dropout/CastCast1lstm_3/while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2'
%lstm_3/while/lstm_cell_3/dropout/Cast?
&lstm_3/while/lstm_cell_3/dropout/Mul_1Mul(lstm_3/while/lstm_cell_3/dropout/Mul:z:0)lstm_3/while/lstm_cell_3/dropout/Cast:y:0*
T0*
_output_shapes

: 2(
&lstm_3/while/lstm_cell_3/dropout/Mul_1?
(lstm_3/while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2*
(lstm_3/while/lstm_cell_3/dropout_1/Const?
&lstm_3/while/lstm_cell_3/dropout_1/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:01lstm_3/while/lstm_cell_3/dropout_1/Const:output:0*
T0*
_output_shapes

: 2(
&lstm_3/while/lstm_cell_3/dropout_1/Mul?
(lstm_3/while/lstm_cell_3/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2*
(lstm_3/while/lstm_cell_3/dropout_1/Shape?
?lstm_3/while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_1/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2A
?lstm_3/while/lstm_cell_3/dropout_1/random_uniform/RandomUniform?
1lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=23
1lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual/y?
/lstm_3/while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

: 21
/lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual?
'lstm_3/while/lstm_cell_3/dropout_1/CastCast3lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2)
'lstm_3/while/lstm_cell_3/dropout_1/Cast?
(lstm_3/while/lstm_cell_3/dropout_1/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_1/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_1/Cast:y:0*
T0*
_output_shapes

: 2*
(lstm_3/while/lstm_cell_3/dropout_1/Mul_1?
(lstm_3/while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2*
(lstm_3/while/lstm_cell_3/dropout_2/Const?
&lstm_3/while/lstm_cell_3/dropout_2/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:01lstm_3/while/lstm_cell_3/dropout_2/Const:output:0*
T0*
_output_shapes

: 2(
&lstm_3/while/lstm_cell_3/dropout_2/Mul?
(lstm_3/while/lstm_cell_3/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2*
(lstm_3/while/lstm_cell_3/dropout_2/Shape?
?lstm_3/while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_2/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2??=2A
?lstm_3/while/lstm_cell_3/dropout_2/random_uniform/RandomUniform?
1lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=23
1lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual/y?
/lstm_3/while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

: 21
/lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual?
'lstm_3/while/lstm_cell_3/dropout_2/CastCast3lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2)
'lstm_3/while/lstm_cell_3/dropout_2/Cast?
(lstm_3/while/lstm_cell_3/dropout_2/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_2/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_2/Cast:y:0*
T0*
_output_shapes

: 2*
(lstm_3/while/lstm_cell_3/dropout_2/Mul_1?
(lstm_3/while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2*
(lstm_3/while/lstm_cell_3/dropout_3/Const?
&lstm_3/while/lstm_cell_3/dropout_3/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:01lstm_3/while/lstm_cell_3/dropout_3/Const:output:0*
T0*
_output_shapes

: 2(
&lstm_3/while/lstm_cell_3/dropout_3/Mul?
(lstm_3/while/lstm_cell_3/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2*
(lstm_3/while/lstm_cell_3/dropout_3/Shape?
?lstm_3/while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_3/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2A
?lstm_3/while/lstm_cell_3/dropout_3/random_uniform/RandomUniform?
1lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=23
1lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual/y?
/lstm_3/while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

: 21
/lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual?
'lstm_3/while/lstm_cell_3/dropout_3/CastCast3lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2)
'lstm_3/while/lstm_cell_3/dropout_3/Cast?
(lstm_3/while/lstm_cell_3/dropout_3/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_3/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_3/Cast:y:0*
T0*
_output_shapes

: 2*
(lstm_3/while/lstm_cell_3/dropout_3/Mul_1?
lstm_3/while/lstm_cell_3/mulMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm_3/while/lstm_cell_3/dropout/Mul_1:z:0*
T0*
_output_shapes

: 2
lstm_3/while/lstm_cell_3/mul?
.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp9lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype020
.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp?
lstm_3/while/lstm_cell_3/MatMulMatMul lstm_3/while/lstm_cell_3/mul:z:06lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2!
lstm_3/while/lstm_cell_3/MatMul?
0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp;lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype022
0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp?
!lstm_3/while/lstm_cell_3/MatMul_1MatMullstm_3_while_placeholder_28lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!lstm_3/while/lstm_cell_3/MatMul_1?
lstm_3/while/lstm_cell_3/addAddV2)lstm_3/while/lstm_cell_3/MatMul:product:0+lstm_3/while/lstm_cell_3/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_3/while/lstm_cell_3/add?
/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp:lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp?
 lstm_3/while/lstm_cell_3/BiasAddBiasAdd lstm_3/while/lstm_cell_3/add:z:07lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2"
 lstm_3/while/lstm_cell_3/BiasAdd?
(lstm_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_3/while/lstm_cell_3/split/split_dim?
lstm_3/while/lstm_cell_3/splitSplit1lstm_3/while/lstm_cell_3/split/split_dim:output:0)lstm_3/while/lstm_cell_3/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2 
lstm_3/while/lstm_cell_3/split?
 lstm_3/while/lstm_cell_3/SigmoidSigmoid'lstm_3/while/lstm_cell_3/split:output:0*
T0*
_output_shapes

: 2"
 lstm_3/while/lstm_cell_3/Sigmoid?
"lstm_3/while/lstm_cell_3/Sigmoid_1Sigmoid'lstm_3/while/lstm_cell_3/split:output:1*
T0*
_output_shapes

: 2$
"lstm_3/while/lstm_cell_3/Sigmoid_1?
lstm_3/while/lstm_cell_3/mul_1Mul&lstm_3/while/lstm_cell_3/Sigmoid_1:y:0lstm_3_while_placeholder_3*
T0*
_output_shapes

: 2 
lstm_3/while/lstm_cell_3/mul_1?
lstm_3/while/lstm_cell_3/ReluRelu'lstm_3/while/lstm_cell_3/split:output:2*
T0*
_output_shapes

: 2
lstm_3/while/lstm_cell_3/Relu?
lstm_3/while/lstm_cell_3/mul_2Mul$lstm_3/while/lstm_cell_3/Sigmoid:y:0+lstm_3/while/lstm_cell_3/Relu:activations:0*
T0*
_output_shapes

: 2 
lstm_3/while/lstm_cell_3/mul_2?
lstm_3/while/lstm_cell_3/add_1AddV2"lstm_3/while/lstm_cell_3/mul_1:z:0"lstm_3/while/lstm_cell_3/mul_2:z:0*
T0*
_output_shapes

: 2 
lstm_3/while/lstm_cell_3/add_1?
"lstm_3/while/lstm_cell_3/Sigmoid_2Sigmoid'lstm_3/while/lstm_cell_3/split:output:3*
T0*
_output_shapes

: 2$
"lstm_3/while/lstm_cell_3/Sigmoid_2?
lstm_3/while/lstm_cell_3/Relu_1Relu"lstm_3/while/lstm_cell_3/add_1:z:0*
T0*
_output_shapes

: 2!
lstm_3/while/lstm_cell_3/Relu_1?
lstm_3/while/lstm_cell_3/mul_3Mul&lstm_3/while/lstm_cell_3/Sigmoid_2:y:0-lstm_3/while/lstm_cell_3/Relu_1:activations:0*
T0*
_output_shapes

: 2 
lstm_3/while/lstm_cell_3/mul_3?
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder"lstm_3/while/lstm_cell_3/mul_3:z:0*
_output_shapes
: *
element_dtype023
1lstm_3/while/TensorArrayV2Write/TensorListSetItemj
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add/y?
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/addn
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add_1/y?
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/add_1?
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:00^lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity?
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations0^lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_1?
lstm_3/while/Identity_2Identitylstm_3/while/add:z:00^lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_2?
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_3?
lstm_3/while/Identity_4Identity"lstm_3/while/lstm_cell_3/mul_3:z:00^lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
lstm_3/while/Identity_4?
lstm_3/while/Identity_5Identity"lstm_3/while/lstm_cell_3/add_1:z:00^lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
lstm_3/while/Identity_5"7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"L
#lstm_3_while_lstm_3_strided_slice_1%lstm_3_while_lstm_3_strided_slice_1_0"v
8lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource:lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0"x
9lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource;lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0"t
7lstm_3_while_lstm_cell_3_matmul_readvariableop_resource9lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0"?
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : 2b
/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp2`
.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp2d
0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
?y
?
while_body_21469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 ?B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	?E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	 ?@
1while_lstm_cell_2_biasadd_readvariableop_resource:	???(while/lstm_cell_2/BiasAdd/ReadVariableOp?'while/lstm_cell_2/MatMul/ReadVariableOp?)while/lstm_cell_2/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_2/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/ones_like/Shape?
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_2/ones_like/Const?
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_2/ones_like?
while/lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2!
while/lstm_cell_2/dropout/Const?
while/lstm_cell_2/dropout/MulMul$while/lstm_cell_2/ones_like:output:0(while/lstm_cell_2/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_2/dropout/Mul?
while/lstm_cell_2/dropout/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_2/dropout/Shape?
6while/lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_2/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed228
6while/lstm_cell_2/dropout/random_uniform/RandomUniform?
(while/lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2*
(while/lstm_cell_2/dropout/GreaterEqual/y?
&while/lstm_cell_2/dropout/GreaterEqualGreaterEqual?while/lstm_cell_2/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2(
&while/lstm_cell_2/dropout/GreaterEqual?
while/lstm_cell_2/dropout/CastCast*while/lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2 
while/lstm_cell_2/dropout/Cast?
while/lstm_cell_2/dropout/Mul_1Mul!while/lstm_cell_2/dropout/Mul:z:0"while/lstm_cell_2/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2!
while/lstm_cell_2/dropout/Mul_1?
!while/lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_2/dropout_1/Const?
while/lstm_cell_2/dropout_1/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????2!
while/lstm_cell_2/dropout_1/Mul?
!while/lstm_cell_2/dropout_1/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_1/Shape?
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed2?Ƞ2:
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_2/dropout_1/GreaterEqual/y?
(while/lstm_cell_2/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2*
(while/lstm_cell_2/dropout_1/GreaterEqual?
 while/lstm_cell_2/dropout_1/CastCast,while/lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2"
 while/lstm_cell_2/dropout_1/Cast?
!while/lstm_cell_2/dropout_1/Mul_1Mul#while/lstm_cell_2/dropout_1/Mul:z:0$while/lstm_cell_2/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????2#
!while/lstm_cell_2/dropout_1/Mul_1?
!while/lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_2/dropout_2/Const?
while/lstm_cell_2/dropout_2/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_2/Const:output:0*
T0*'
_output_shapes
:?????????2!
while/lstm_cell_2/dropout_2/Mul?
!while/lstm_cell_2/dropout_2/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_2/Shape?
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_2/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed2???2:
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_2/dropout_2/GreaterEqual/y?
(while/lstm_cell_2/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2*
(while/lstm_cell_2/dropout_2/GreaterEqual?
 while/lstm_cell_2/dropout_2/CastCast,while/lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2"
 while/lstm_cell_2/dropout_2/Cast?
!while/lstm_cell_2/dropout_2/Mul_1Mul#while/lstm_cell_2/dropout_2/Mul:z:0$while/lstm_cell_2/dropout_2/Cast:y:0*
T0*'
_output_shapes
:?????????2#
!while/lstm_cell_2/dropout_2/Mul_1?
!while/lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_2/dropout_3/Const?
while/lstm_cell_2/dropout_3/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????2!
while/lstm_cell_2/dropout_3/Mul?
!while/lstm_cell_2/dropout_3/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_3/Shape?
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed2???2:
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_2/dropout_3/GreaterEqual/y?
(while/lstm_cell_2/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2*
(while/lstm_cell_2/dropout_3/GreaterEqual?
 while/lstm_cell_2/dropout_3/CastCast,while/lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2"
 while/lstm_cell_2/dropout_3/Cast?
!while/lstm_cell_2/dropout_3/Mul_1Mul#while/lstm_cell_2/dropout_3/Mul:z:0$while/lstm_cell_2/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????2#
!while/lstm_cell_2/dropout_3/Mul_1?
while/lstm_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_2/dropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_2/mul?
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_2/MatMul/ReadVariableOp?
while/lstm_cell_2/MatMulMatMulwhile/lstm_cell_2/mul:z:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_2/MatMul?
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_2/MatMul_1/ReadVariableOp?
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_2/MatMul_1?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_2/add?
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_2/BiasAdd/ReadVariableOp?
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_2/BiasAdd?
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dim?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_2/split?
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid?
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_1?
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_1?
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu?
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_2?
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul_1:z:0while/lstm_cell_2/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_1?
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_2?
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu_1?
while/lstm_cell_2/mul_3Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_2/mul_3:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?E
?
while_body_19566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	 ?G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	 ?B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	 ?E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	 ?@
1while_lstm_cell_3_biasadd_readvariableop_resource:	???(while/lstm_cell_3/BiasAdd/ReadVariableOp?'while/lstm_cell_3/MatMul/ReadVariableOp?)while/lstm_cell_3/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

: *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!while/lstm_cell_3/ones_like/Shape?
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_3/ones_like/Const?
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/ones_like?
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul?
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'while/lstm_cell_3/MatMul/ReadVariableOp?
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/MatMul?
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_3/MatMul_1/ReadVariableOp?
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/MatMul_1?
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/add?
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_3/BiasAdd/ReadVariableOp?
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/BiasAdd?
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dim?
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_3/split?
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/Sigmoid?
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_3/Sigmoid_1?
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul_1?
while/lstm_cell_3/ReluRelu while/lstm_cell_3/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_3/Relu?
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid:y:0$while/lstm_cell_3/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul_2?
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul_1:z:0while/lstm_cell_3/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/add_1?
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_3/Sigmoid_2?
while/lstm_cell_3/Relu_1Reluwhile/lstm_cell_3/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/Relu_1?
while/lstm_cell_3/mul_3Mulwhile/lstm_cell_3/Sigmoid_2:y:0&while/lstm_cell_3/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_3/mul_3:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
?E
?
A__inference_lstm_2_layer_call_and_return_conditional_losses_18391

inputs$
lstm_cell_2_18309:	?$
lstm_cell_2_18311:	 ? 
lstm_cell_2_18313:	?
identity??#lstm_cell_2/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_18309lstm_cell_2_18311lstm_cell_2_18313*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_182442%
#lstm_cell_2/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_18309lstm_cell_2_18311lstm_cell_2_18313*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_18322*
condR
while_cond_18321*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_2/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :?????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_21277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_21277___redundant_placeholder03
/while_while_cond_21277___redundant_placeholder13
/while_while_cond_21277___redundant_placeholder23
/while_while_cond_21277___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?%
?
while_body_18992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_3_19016_0:	 ?,
while_lstm_cell_3_19018_0:	 ?(
while_lstm_cell_3_19020_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_3_19016:	 ?*
while_lstm_cell_3_19018:	 ?&
while_lstm_cell_3_19020:	???)while/lstm_cell_3/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_19016_0while_lstm_cell_3_19018_0while_lstm_cell_3_19020_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_189142+
)while/lstm_cell_3/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_3_19016while_lstm_cell_3_19016_0"4
while_lstm_cell_3_19018while_lstm_cell_3_19018_0"4
while_lstm_cell_3_19020while_lstm_cell_3_19020_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
??
?
A__inference_lstm_2_layer_call_and_return_conditional_losses_21589
inputs_0=
*lstm_cell_2_matmul_readvariableop_resource:	??
,lstm_cell_2_matmul_1_readvariableop_resource:	 ?:
+lstm_cell_2_biasadd_readvariableop_resource:	?
identity??"lstm_cell_2/BiasAdd/ReadVariableOp?!lstm_cell_2/MatMul/ReadVariableOp?#lstm_cell_2/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell_2/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_2/ones_like/Const?
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_2/ones_like{
lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_2/dropout/Const?
lstm_cell_2/dropout/MulMullstm_cell_2/ones_like:output:0"lstm_cell_2/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_2/dropout/Mul?
lstm_cell_2/dropout/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout/Shape?
0lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_2/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed2Խ?22
0lstm_cell_2/dropout/random_uniform/RandomUniform?
"lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"lstm_cell_2/dropout/GreaterEqual/y?
 lstm_cell_2/dropout/GreaterEqualGreaterEqual9lstm_cell_2/dropout/random_uniform/RandomUniform:output:0+lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2"
 lstm_cell_2/dropout/GreaterEqual?
lstm_cell_2/dropout/CastCast$lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
lstm_cell_2/dropout/Cast?
lstm_cell_2/dropout/Mul_1Mullstm_cell_2/dropout/Mul:z:0lstm_cell_2/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
lstm_cell_2/dropout/Mul_1
lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_2/dropout_1/Const?
lstm_cell_2/dropout_1/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_2/dropout_1/Mul?
lstm_cell_2/dropout_1/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_1/Shape?
2lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed2ϵ?24
2lstm_cell_2/dropout_1/random_uniform/RandomUniform?
$lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_2/dropout_1/GreaterEqual/y?
"lstm_cell_2/dropout_1/GreaterEqualGreaterEqual;lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2$
"lstm_cell_2/dropout_1/GreaterEqual?
lstm_cell_2/dropout_1/CastCast&lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
lstm_cell_2/dropout_1/Cast?
lstm_cell_2/dropout_1/Mul_1Mullstm_cell_2/dropout_1/Mul:z:0lstm_cell_2/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????2
lstm_cell_2/dropout_1/Mul_1
lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_2/dropout_2/Const?
lstm_cell_2/dropout_2/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_2/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_2/dropout_2/Mul?
lstm_cell_2/dropout_2/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_2/Shape?
2lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_2/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed2???24
2lstm_cell_2/dropout_2/random_uniform/RandomUniform?
$lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_2/dropout_2/GreaterEqual/y?
"lstm_cell_2/dropout_2/GreaterEqualGreaterEqual;lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2$
"lstm_cell_2/dropout_2/GreaterEqual?
lstm_cell_2/dropout_2/CastCast&lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
lstm_cell_2/dropout_2/Cast?
lstm_cell_2/dropout_2/Mul_1Mullstm_cell_2/dropout_2/Mul:z:0lstm_cell_2/dropout_2/Cast:y:0*
T0*'
_output_shapes
:?????????2
lstm_cell_2/dropout_2/Mul_1
lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_2/dropout_3/Const?
lstm_cell_2/dropout_3/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_2/dropout_3/Mul?
lstm_cell_2/dropout_3/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_3/Shape?
2lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed2???24
2lstm_cell_2/dropout_3/random_uniform/RandomUniform?
$lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_2/dropout_3/GreaterEqual/y?
"lstm_cell_2/dropout_3/GreaterEqualGreaterEqual;lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2$
"lstm_cell_2/dropout_3/GreaterEqual?
lstm_cell_2/dropout_3/CastCast&lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
lstm_cell_2/dropout_3/Cast?
lstm_cell_2/dropout_3/Mul_1Mullstm_cell_2/dropout_3/Mul:z:0lstm_cell_2/dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????2
lstm_cell_2/dropout_3/Mul_1?
lstm_cell_2/mulMulstrided_slice_2:output:0lstm_cell_2/dropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_2/mul?
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_2/MatMul/ReadVariableOp?
lstm_cell_2/MatMulMatMullstm_cell_2/mul:z:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_2/MatMul?
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_2/MatMul_1/ReadVariableOp?
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_2/MatMul_1?
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_2/add?
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_2/BiasAdd/ReadVariableOp?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_2/BiasAdd|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_2/split?
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid?
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_1?
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_1z
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu?
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_2?
lstm_cell_2/add_1AddV2lstm_cell_2/mul_1:z:0lstm_cell_2/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_1?
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_2y
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu_1?
lstm_cell_2/mul_3Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_21469*
condR
while_cond_21468*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :?????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?	
?
,__inference_sequential_1_layer_call_fn_20395

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2:	 ?
	unknown_3:	 ?
	unknown_4:	?
	unknown_5: 
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_202442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
?
&__inference_lstm_3_layer_call_fn_21993
inputs_0
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_190612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
??
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_21163

inputsD
1lstm_2_lstm_cell_2_matmul_readvariableop_resource:	?F
3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource:	 ?A
2lstm_2_lstm_cell_2_biasadd_readvariableop_resource:	?D
1lstm_3_lstm_cell_3_matmul_readvariableop_resource:	 ?F
3lstm_3_lstm_cell_3_matmul_1_readvariableop_resource:	 ?A
2lstm_3_lstm_cell_3_biasadd_readvariableop_resource:	?8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp?(lstm_2/lstm_cell_2/MatMul/ReadVariableOp?*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp?lstm_2/while?)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp?(lstm_3/lstm_cell_3/MatMul/ReadVariableOp?*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp?lstm_3/whileq
lstm_2/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
lstm_2/Shape?
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice/stack?
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_1?
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_2?
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slicej
lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/zeros/mul/y?
lstm_2/zeros/mulMullstm_2/strided_slice:output:0lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/mulm
lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_2/zeros/Less/y?
lstm_2/zeros/LessLesslstm_2/zeros/mul:z:0lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/Lessp
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/zeros/packed/1?
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros/packedm
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros/Const?
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*
_output_shapes

: 2
lstm_2/zerosn
lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/zeros_1/mul/y?
lstm_2/zeros_1/mulMullstm_2/strided_slice:output:0lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/mulq
lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_2/zeros_1/Less/y?
lstm_2/zeros_1/LessLesslstm_2/zeros_1/mul:z:0lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/Lesst
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/zeros_1/packed/1?
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros_1/packedq
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros_1/Const?
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*
_output_shapes

: 2
lstm_2/zeros_1?
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose/perm?
lstm_2/transpose	Transposeinputslstm_2/transpose/perm:output:0*
T0*"
_output_shapes
:2
lstm_2/transposeu
lstm_2/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         2
lstm_2/Shape_1?
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_1/stack?
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_1?
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_2?
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slice_1?
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_2/TensorArrayV2/element_shape?
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2?
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2>
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_2/TensorArrayUnstack/TensorListFromTensor?
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_2/stack?
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_1?
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_2?
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
lstm_2/strided_slice_2?
"lstm_2/lstm_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_2/lstm_cell_2/ones_like/Shape?
"lstm_2/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"lstm_2/lstm_cell_2/ones_like/Const?
lstm_2/lstm_cell_2/ones_likeFill+lstm_2/lstm_cell_2/ones_like/Shape:output:0+lstm_2/lstm_cell_2/ones_like/Const:output:0*
T0*
_output_shapes

:2
lstm_2/lstm_cell_2/ones_like?
 lstm_2/lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2"
 lstm_2/lstm_cell_2/dropout/Const?
lstm_2/lstm_cell_2/dropout/MulMul%lstm_2/lstm_cell_2/ones_like:output:0)lstm_2/lstm_cell_2/dropout/Const:output:0*
T0*
_output_shapes

:2 
lstm_2/lstm_cell_2/dropout/Mul?
 lstm_2/lstm_cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 lstm_2/lstm_cell_2/dropout/Shape?
7lstm_2/lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform)lstm_2/lstm_cell_2/dropout/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???29
7lstm_2/lstm_cell_2/dropout/random_uniform/RandomUniform?
)lstm_2/lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2+
)lstm_2/lstm_cell_2/dropout/GreaterEqual/y?
'lstm_2/lstm_cell_2/dropout/GreaterEqualGreaterEqual@lstm_2/lstm_cell_2/dropout/random_uniform/RandomUniform:output:02lstm_2/lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

:2)
'lstm_2/lstm_cell_2/dropout/GreaterEqual?
lstm_2/lstm_cell_2/dropout/CastCast+lstm_2/lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2!
lstm_2/lstm_cell_2/dropout/Cast?
 lstm_2/lstm_cell_2/dropout/Mul_1Mul"lstm_2/lstm_cell_2/dropout/Mul:z:0#lstm_2/lstm_cell_2/dropout/Cast:y:0*
T0*
_output_shapes

:2"
 lstm_2/lstm_cell_2/dropout/Mul_1?
"lstm_2/lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2$
"lstm_2/lstm_cell_2/dropout_1/Const?
 lstm_2/lstm_cell_2/dropout_1/MulMul%lstm_2/lstm_cell_2/ones_like:output:0+lstm_2/lstm_cell_2/dropout_1/Const:output:0*
T0*
_output_shapes

:2"
 lstm_2/lstm_cell_2/dropout_1/Mul?
"lstm_2/lstm_cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_2/lstm_cell_2/dropout_1/Shape?
9lstm_2/lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_2/lstm_cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2ٵ?2;
9lstm_2/lstm_cell_2/dropout_1/random_uniform/RandomUniform?
+lstm_2/lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+lstm_2/lstm_cell_2/dropout_1/GreaterEqual/y?
)lstm_2/lstm_cell_2/dropout_1/GreaterEqualGreaterEqualBlstm_2/lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:04lstm_2/lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

:2+
)lstm_2/lstm_cell_2/dropout_1/GreaterEqual?
!lstm_2/lstm_cell_2/dropout_1/CastCast-lstm_2/lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2#
!lstm_2/lstm_cell_2/dropout_1/Cast?
"lstm_2/lstm_cell_2/dropout_1/Mul_1Mul$lstm_2/lstm_cell_2/dropout_1/Mul:z:0%lstm_2/lstm_cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes

:2$
"lstm_2/lstm_cell_2/dropout_1/Mul_1?
"lstm_2/lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2$
"lstm_2/lstm_cell_2/dropout_2/Const?
 lstm_2/lstm_cell_2/dropout_2/MulMul%lstm_2/lstm_cell_2/ones_like:output:0+lstm_2/lstm_cell_2/dropout_2/Const:output:0*
T0*
_output_shapes

:2"
 lstm_2/lstm_cell_2/dropout_2/Mul?
"lstm_2/lstm_cell_2/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_2/lstm_cell_2/dropout_2/Shape?
9lstm_2/lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_2/lstm_cell_2/dropout_2/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2;
9lstm_2/lstm_cell_2/dropout_2/random_uniform/RandomUniform?
+lstm_2/lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+lstm_2/lstm_cell_2/dropout_2/GreaterEqual/y?
)lstm_2/lstm_cell_2/dropout_2/GreaterEqualGreaterEqualBlstm_2/lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:04lstm_2/lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

:2+
)lstm_2/lstm_cell_2/dropout_2/GreaterEqual?
!lstm_2/lstm_cell_2/dropout_2/CastCast-lstm_2/lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2#
!lstm_2/lstm_cell_2/dropout_2/Cast?
"lstm_2/lstm_cell_2/dropout_2/Mul_1Mul$lstm_2/lstm_cell_2/dropout_2/Mul:z:0%lstm_2/lstm_cell_2/dropout_2/Cast:y:0*
T0*
_output_shapes

:2$
"lstm_2/lstm_cell_2/dropout_2/Mul_1?
"lstm_2/lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2$
"lstm_2/lstm_cell_2/dropout_3/Const?
 lstm_2/lstm_cell_2/dropout_3/MulMul%lstm_2/lstm_cell_2/ones_like:output:0+lstm_2/lstm_cell_2/dropout_3/Const:output:0*
T0*
_output_shapes

:2"
 lstm_2/lstm_cell_2/dropout_3/Mul?
"lstm_2/lstm_cell_2/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_2/lstm_cell_2/dropout_3/Shape?
9lstm_2/lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_2/lstm_cell_2/dropout_3/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2;
9lstm_2/lstm_cell_2/dropout_3/random_uniform/RandomUniform?
+lstm_2/lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+lstm_2/lstm_cell_2/dropout_3/GreaterEqual/y?
)lstm_2/lstm_cell_2/dropout_3/GreaterEqualGreaterEqualBlstm_2/lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:04lstm_2/lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

:2+
)lstm_2/lstm_cell_2/dropout_3/GreaterEqual?
!lstm_2/lstm_cell_2/dropout_3/CastCast-lstm_2/lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2#
!lstm_2/lstm_cell_2/dropout_3/Cast?
"lstm_2/lstm_cell_2/dropout_3/Mul_1Mul$lstm_2/lstm_cell_2/dropout_3/Mul:z:0%lstm_2/lstm_cell_2/dropout_3/Cast:y:0*
T0*
_output_shapes

:2$
"lstm_2/lstm_cell_2/dropout_3/Mul_1?
lstm_2/lstm_cell_2/mulMullstm_2/strided_slice_2:output:0$lstm_2/lstm_cell_2/dropout/Mul_1:z:0*
T0*
_output_shapes

:2
lstm_2/lstm_cell_2/mul?
(lstm_2/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp1lstm_2_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(lstm_2/lstm_cell_2/MatMul/ReadVariableOp?
lstm_2/lstm_cell_2/MatMulMatMullstm_2/lstm_cell_2/mul:z:00lstm_2/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_2/lstm_cell_2/MatMul?
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02,
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp?
lstm_2/lstm_cell_2/MatMul_1MatMullstm_2/zeros:output:02lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_2/lstm_cell_2/MatMul_1?
lstm_2/lstm_cell_2/addAddV2#lstm_2/lstm_cell_2/MatMul:product:0%lstm_2/lstm_cell_2/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_2/lstm_cell_2/add?
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp?
lstm_2/lstm_cell_2/BiasAddBiasAddlstm_2/lstm_cell_2/add:z:01lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_2/lstm_cell_2/BiasAdd?
"lstm_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_2/lstm_cell_2/split/split_dim?
lstm_2/lstm_cell_2/splitSplit+lstm_2/lstm_cell_2/split/split_dim:output:0#lstm_2/lstm_cell_2/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_2/lstm_cell_2/split?
lstm_2/lstm_cell_2/SigmoidSigmoid!lstm_2/lstm_cell_2/split:output:0*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/Sigmoid?
lstm_2/lstm_cell_2/Sigmoid_1Sigmoid!lstm_2/lstm_cell_2/split:output:1*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/Sigmoid_1?
lstm_2/lstm_cell_2/mul_1Mul lstm_2/lstm_cell_2/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/mul_1?
lstm_2/lstm_cell_2/ReluRelu!lstm_2/lstm_cell_2/split:output:2*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/Relu?
lstm_2/lstm_cell_2/mul_2Mullstm_2/lstm_cell_2/Sigmoid:y:0%lstm_2/lstm_cell_2/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/mul_2?
lstm_2/lstm_cell_2/add_1AddV2lstm_2/lstm_cell_2/mul_1:z:0lstm_2/lstm_cell_2/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/add_1?
lstm_2/lstm_cell_2/Sigmoid_2Sigmoid!lstm_2/lstm_cell_2/split:output:3*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/Sigmoid_2?
lstm_2/lstm_cell_2/Relu_1Relulstm_2/lstm_cell_2/add_1:z:0*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/Relu_1?
lstm_2/lstm_cell_2/mul_3Mul lstm_2/lstm_cell_2/Sigmoid_2:y:0'lstm_2/lstm_cell_2/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/mul_3?
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$lstm_2/TensorArrayV2_1/element_shape?
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2_1\
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/time?
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_2/while/maximum_iterationsx
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/while/loop_counter?
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_2_lstm_cell_2_matmul_readvariableop_resource3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource2lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_2_while_body_20818*#
condR
lstm_2_while_cond_20817*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
lstm_2/while?
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02+
)lstm_2/TensorArrayV2Stack/TensorListStack?
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_2/strided_slice_3/stack?
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_2/strided_slice_3/stack_1?
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_3/stack_2?
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
lstm_2/strided_slice_3?
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose_1/perm?
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
lstm_2/transpose_1t
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/runtimeq
lstm_3/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/Shape?
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice/stack?
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_1?
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_2?
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slicej
lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros/mul/y?
lstm_3/zeros/mulMullstm_3/strided_slice:output:0lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/mulm
lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros/Less/y?
lstm_3/zeros/LessLesslstm_3/zeros/mul:z:0lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/Lessp
lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros/packed/1?
lstm_3/zeros/packedPacklstm_3/strided_slice:output:0lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros/packedm
lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros/Const?
lstm_3/zerosFilllstm_3/zeros/packed:output:0lstm_3/zeros/Const:output:0*
T0*
_output_shapes

: 2
lstm_3/zerosn
lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros_1/mul/y?
lstm_3/zeros_1/mulMullstm_3/strided_slice:output:0lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/mulq
lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros_1/Less/y?
lstm_3/zeros_1/LessLesslstm_3/zeros_1/mul:z:0lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/Lesst
lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros_1/packed/1?
lstm_3/zeros_1/packedPacklstm_3/strided_slice:output:0 lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros_1/packedq
lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros_1/Const?
lstm_3/zeros_1Filllstm_3/zeros_1/packed:output:0lstm_3/zeros_1/Const:output:0*
T0*
_output_shapes

: 2
lstm_3/zeros_1?
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose/perm?
lstm_3/transpose	Transposelstm_2/transpose_1:y:0lstm_3/transpose/perm:output:0*
T0*"
_output_shapes
: 2
lstm_3/transposeu
lstm_3/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/Shape_1?
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_1/stack?
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_1?
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_2?
lstm_3/strided_slice_1StridedSlicelstm_3/Shape_1:output:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slice_1?
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_3/TensorArrayV2/element_shape?
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2?
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2>
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_3/TensorArrayUnstack/TensorListFromTensor?
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_2/stack?
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_1?
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_2?
lstm_3/strided_slice_2StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
lstm_3/strided_slice_2?
"lstm_3/lstm_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2$
"lstm_3/lstm_cell_3/ones_like/Shape?
"lstm_3/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"lstm_3/lstm_cell_3/ones_like/Const?
lstm_3/lstm_cell_3/ones_likeFill+lstm_3/lstm_cell_3/ones_like/Shape:output:0+lstm_3/lstm_cell_3/ones_like/Const:output:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/ones_like?
 lstm_3/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2"
 lstm_3/lstm_cell_3/dropout/Const?
lstm_3/lstm_cell_3/dropout/MulMul%lstm_3/lstm_cell_3/ones_like:output:0)lstm_3/lstm_cell_3/dropout/Const:output:0*
T0*
_output_shapes

: 2 
lstm_3/lstm_cell_3/dropout/Mul?
 lstm_3/lstm_cell_3/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2"
 lstm_3/lstm_cell_3/dropout/Shape?
7lstm_3/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform)lstm_3/lstm_cell_3/dropout/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???29
7lstm_3/lstm_cell_3/dropout/random_uniform/RandomUniform?
)lstm_3/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2+
)lstm_3/lstm_cell_3/dropout/GreaterEqual/y?
'lstm_3/lstm_cell_3/dropout/GreaterEqualGreaterEqual@lstm_3/lstm_cell_3/dropout/random_uniform/RandomUniform:output:02lstm_3/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2)
'lstm_3/lstm_cell_3/dropout/GreaterEqual?
lstm_3/lstm_cell_3/dropout/CastCast+lstm_3/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2!
lstm_3/lstm_cell_3/dropout/Cast?
 lstm_3/lstm_cell_3/dropout/Mul_1Mul"lstm_3/lstm_cell_3/dropout/Mul:z:0#lstm_3/lstm_cell_3/dropout/Cast:y:0*
T0*
_output_shapes

: 2"
 lstm_3/lstm_cell_3/dropout/Mul_1?
"lstm_3/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2$
"lstm_3/lstm_cell_3/dropout_1/Const?
 lstm_3/lstm_cell_3/dropout_1/MulMul%lstm_3/lstm_cell_3/ones_like:output:0+lstm_3/lstm_cell_3/dropout_1/Const:output:0*
T0*
_output_shapes

: 2"
 lstm_3/lstm_cell_3/dropout_1/Mul?
"lstm_3/lstm_cell_3/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2$
"lstm_3/lstm_cell_3/dropout_1/Shape?
9lstm_3/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_1/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2;
9lstm_3/lstm_cell_3/dropout_1/random_uniform/RandomUniform?
+lstm_3/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+lstm_3/lstm_cell_3/dropout_1/GreaterEqual/y?
)lstm_3/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2+
)lstm_3/lstm_cell_3/dropout_1/GreaterEqual?
!lstm_3/lstm_cell_3/dropout_1/CastCast-lstm_3/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2#
!lstm_3/lstm_cell_3/dropout_1/Cast?
"lstm_3/lstm_cell_3/dropout_1/Mul_1Mul$lstm_3/lstm_cell_3/dropout_1/Mul:z:0%lstm_3/lstm_cell_3/dropout_1/Cast:y:0*
T0*
_output_shapes

: 2$
"lstm_3/lstm_cell_3/dropout_1/Mul_1?
"lstm_3/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2$
"lstm_3/lstm_cell_3/dropout_2/Const?
 lstm_3/lstm_cell_3/dropout_2/MulMul%lstm_3/lstm_cell_3/ones_like:output:0+lstm_3/lstm_cell_3/dropout_2/Const:output:0*
T0*
_output_shapes

: 2"
 lstm_3/lstm_cell_3/dropout_2/Mul?
"lstm_3/lstm_cell_3/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2$
"lstm_3/lstm_cell_3/dropout_2/Shape?
9lstm_3/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_2/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2ͻ"2;
9lstm_3/lstm_cell_3/dropout_2/random_uniform/RandomUniform?
+lstm_3/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+lstm_3/lstm_cell_3/dropout_2/GreaterEqual/y?
)lstm_3/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2+
)lstm_3/lstm_cell_3/dropout_2/GreaterEqual?
!lstm_3/lstm_cell_3/dropout_2/CastCast-lstm_3/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2#
!lstm_3/lstm_cell_3/dropout_2/Cast?
"lstm_3/lstm_cell_3/dropout_2/Mul_1Mul$lstm_3/lstm_cell_3/dropout_2/Mul:z:0%lstm_3/lstm_cell_3/dropout_2/Cast:y:0*
T0*
_output_shapes

: 2$
"lstm_3/lstm_cell_3/dropout_2/Mul_1?
"lstm_3/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2$
"lstm_3/lstm_cell_3/dropout_3/Const?
 lstm_3/lstm_cell_3/dropout_3/MulMul%lstm_3/lstm_cell_3/ones_like:output:0+lstm_3/lstm_cell_3/dropout_3/Const:output:0*
T0*
_output_shapes

: 2"
 lstm_3/lstm_cell_3/dropout_3/Mul?
"lstm_3/lstm_cell_3/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2$
"lstm_3/lstm_cell_3/dropout_3/Shape?
9lstm_3/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_3/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2?ݯ2;
9lstm_3/lstm_cell_3/dropout_3/random_uniform/RandomUniform?
+lstm_3/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+lstm_3/lstm_cell_3/dropout_3/GreaterEqual/y?
)lstm_3/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2+
)lstm_3/lstm_cell_3/dropout_3/GreaterEqual?
!lstm_3/lstm_cell_3/dropout_3/CastCast-lstm_3/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2#
!lstm_3/lstm_cell_3/dropout_3/Cast?
"lstm_3/lstm_cell_3/dropout_3/Mul_1Mul$lstm_3/lstm_cell_3/dropout_3/Mul:z:0%lstm_3/lstm_cell_3/dropout_3/Cast:y:0*
T0*
_output_shapes

: 2$
"lstm_3/lstm_cell_3/dropout_3/Mul_1?
lstm_3/lstm_cell_3/mulMullstm_3/strided_slice_2:output:0$lstm_3/lstm_cell_3/dropout/Mul_1:z:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/mul?
(lstm_3/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp1lstm_3_lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02*
(lstm_3/lstm_cell_3/MatMul/ReadVariableOp?
lstm_3/lstm_cell_3/MatMulMatMullstm_3/lstm_cell_3/mul:z:00lstm_3/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_3/lstm_cell_3/MatMul?
*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp3lstm_3_lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02,
*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp?
lstm_3/lstm_cell_3/MatMul_1MatMullstm_3/zeros:output:02lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_3/lstm_cell_3/MatMul_1?
lstm_3/lstm_cell_3/addAddV2#lstm_3/lstm_cell_3/MatMul:product:0%lstm_3/lstm_cell_3/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_3/lstm_cell_3/add?
)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp2lstm_3_lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp?
lstm_3/lstm_cell_3/BiasAddBiasAddlstm_3/lstm_cell_3/add:z:01lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_3/lstm_cell_3/BiasAdd?
"lstm_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_3/lstm_cell_3/split/split_dim?
lstm_3/lstm_cell_3/splitSplit+lstm_3/lstm_cell_3/split/split_dim:output:0#lstm_3/lstm_cell_3/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_3/lstm_cell_3/split?
lstm_3/lstm_cell_3/SigmoidSigmoid!lstm_3/lstm_cell_3/split:output:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/Sigmoid?
lstm_3/lstm_cell_3/Sigmoid_1Sigmoid!lstm_3/lstm_cell_3/split:output:1*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/Sigmoid_1?
lstm_3/lstm_cell_3/mul_1Mul lstm_3/lstm_cell_3/Sigmoid_1:y:0lstm_3/zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/mul_1?
lstm_3/lstm_cell_3/ReluRelu!lstm_3/lstm_cell_3/split:output:2*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/Relu?
lstm_3/lstm_cell_3/mul_2Mullstm_3/lstm_cell_3/Sigmoid:y:0%lstm_3/lstm_cell_3/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/mul_2?
lstm_3/lstm_cell_3/add_1AddV2lstm_3/lstm_cell_3/mul_1:z:0lstm_3/lstm_cell_3/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/add_1?
lstm_3/lstm_cell_3/Sigmoid_2Sigmoid!lstm_3/lstm_cell_3/split:output:3*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/Sigmoid_2?
lstm_3/lstm_cell_3/Relu_1Relulstm_3/lstm_cell_3/add_1:z:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/Relu_1?
lstm_3/lstm_cell_3/mul_3Mul lstm_3/lstm_cell_3/Sigmoid_2:y:0'lstm_3/lstm_cell_3/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/mul_3?
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$lstm_3/TensorArrayV2_1/element_shape?
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2_1\
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/time?
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_3/while/maximum_iterationsx
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/while/loop_counter?
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0lstm_3/zeros:output:0lstm_3/zeros_1:output:0lstm_3/strided_slice_1:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_3_lstm_cell_3_matmul_readvariableop_resource3lstm_3_lstm_cell_3_matmul_1_readvariableop_resource2lstm_3_lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_3_while_body_21037*#
condR
lstm_3_while_cond_21036*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
lstm_3/while?
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02+
)lstm_3/TensorArrayV2Stack/TensorListStack?
lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_3/strided_slice_3/stack?
lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_3/strided_slice_3/stack_1?
lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_3/stack_2?
lstm_3/strided_slice_3StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_3/stack:output:0'lstm_3/strided_slice_3/stack_1:output:0'lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
lstm_3/strided_slice_3?
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose_1/perm?
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
lstm_3/transpose_1t
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/runtime?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMullstm_3/strided_slice_3:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_1/BiasAdd?
IdentityIdentitydense_1/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*^lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)^lstm_2/lstm_cell_2/MatMul/ReadVariableOp+^lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp^lstm_2/while*^lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp)^lstm_3/lstm_cell_3/MatMul/ReadVariableOp+^lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp^lstm_3/while*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:: : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2V
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp2T
(lstm_2/lstm_cell_2/MatMul/ReadVariableOp(lstm_2/lstm_cell_2/MatMul/ReadVariableOp2X
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while2V
)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp2T
(lstm_3/lstm_cell_3/MatMul/ReadVariableOp(lstm_3/lstm_cell_3/MatMul/ReadVariableOp2X
*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp2
lstm_3/whilelstm_3/while:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?y
?
while_body_22277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	 ?G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	 ?B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	 ?E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	 ?@
1while_lstm_cell_3_biasadd_readvariableop_resource:	???(while/lstm_cell_3/BiasAdd/ReadVariableOp?'while/lstm_cell_3/MatMul/ReadVariableOp?)while/lstm_cell_3/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_3/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape?
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_3/ones_like/Const?
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/ones_like?
while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2!
while/lstm_cell_3/dropout/Const?
while/lstm_cell_3/dropout/MulMul$while/lstm_cell_3/ones_like:output:0(while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/dropout/Mul?
while/lstm_cell_3/dropout/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_3/dropout/Shape?
6while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2???28
6while/lstm_cell_3/dropout/random_uniform/RandomUniform?
(while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2*
(while/lstm_cell_3/dropout/GreaterEqual/y?
&while/lstm_cell_3/dropout/GreaterEqualGreaterEqual?while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell_3/dropout/GreaterEqual?
while/lstm_cell_3/dropout/CastCast*while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell_3/dropout/Cast?
while/lstm_cell_3/dropout/Mul_1Mul!while/lstm_cell_3/dropout/Mul:z:0"while/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_3/dropout/Mul_1?
!while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_3/dropout_1/Const?
while/lstm_cell_3/dropout_1/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_3/dropout_1/Mul?
!while/lstm_cell_3/dropout_1/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_1/Shape?
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2???2:
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_3/dropout_1/GreaterEqual/y?
(while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_3/dropout_1/GreaterEqual?
 while/lstm_cell_3/dropout_1/CastCast,while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_3/dropout_1/Cast?
!while/lstm_cell_3/dropout_1/Mul_1Mul#while/lstm_cell_3/dropout_1/Mul:z:0$while/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_3/dropout_1/Mul_1?
!while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_3/dropout_2/Const?
while/lstm_cell_3/dropout_2/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_3/dropout_2/Mul?
!while/lstm_cell_3/dropout_2/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_2/Shape?
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2???2:
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_3/dropout_2/GreaterEqual/y?
(while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_3/dropout_2/GreaterEqual?
 while/lstm_cell_3/dropout_2/CastCast,while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_3/dropout_2/Cast?
!while/lstm_cell_3/dropout_2/Mul_1Mul#while/lstm_cell_3/dropout_2/Mul:z:0$while/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_3/dropout_2/Mul_1?
!while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_3/dropout_3/Const?
while/lstm_cell_3/dropout_3/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_3/dropout_3/Mul?
!while/lstm_cell_3/dropout_3/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_3/Shape?
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2雈2:
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_3/dropout_3/GreaterEqual/y?
(while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_3/dropout_3/GreaterEqual?
 while/lstm_cell_3/dropout_3/CastCast,while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_3/dropout_3/Cast?
!while/lstm_cell_3/dropout_3/Mul_1Mul#while/lstm_cell_3/dropout_3/Mul:z:0$while/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_3/dropout_3/Mul_1?
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/mul?
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'while/lstm_cell_3/MatMul/ReadVariableOp?
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_3/MatMul?
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_3/MatMul_1/ReadVariableOp?
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_3/MatMul_1?
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_3/add?
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_3/BiasAdd/ReadVariableOp?
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_3/BiasAdd?
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dim?
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_3/split?
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/Sigmoid?
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/Sigmoid_1?
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/mul_1?
while/lstm_cell_3/ReluRelu while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/Relu?
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid:y:0$while/lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/mul_2?
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul_1:z:0while/lstm_cell_3/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/add_1?
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/Sigmoid_2?
while/lstm_cell_3/Relu_1Reluwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/Relu_1?
while/lstm_cell_3/mul_3Mulwhile/lstm_cell_3/Sigmoid_2:y:0&while/lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_3/mul_3:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
??
?
A__inference_lstm_3_layer_call_and_return_conditional_losses_22779

inputs=
*lstm_cell_3_matmul_readvariableop_resource:	 ??
,lstm_cell_3_matmul_1_readvariableop_resource:	 ?:
+lstm_cell_3_biasadd_readvariableop_resource:	?
identity??"lstm_cell_3/BiasAdd/ReadVariableOp?!lstm_cell_3/MatMul/ReadVariableOp?#lstm_cell_3/MatMul_1/ReadVariableOp?whilec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constl
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes

: 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constt
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes

: 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permq
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
: 2
	transposeg
Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"          2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_2?
lstm_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_3/ones_like/Const?
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/ones_like{
lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_3/dropout/Const?
lstm_cell_3/dropout/MulMullstm_cell_3/ones_like:output:0"lstm_cell_3/dropout/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout/Mul?
lstm_cell_3/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_3/dropout/Shape?
0lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_3/dropout/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???22
0lstm_cell_3/dropout/random_uniform/RandomUniform?
"lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"lstm_cell_3/dropout/GreaterEqual/y?
 lstm_cell_3/dropout/GreaterEqualGreaterEqual9lstm_cell_3/dropout/random_uniform/RandomUniform:output:0+lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2"
 lstm_cell_3/dropout/GreaterEqual?
lstm_cell_3/dropout/CastCast$lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_3/dropout/Cast?
lstm_cell_3/dropout/Mul_1Mullstm_cell_3/dropout/Mul:z:0lstm_cell_3/dropout/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout/Mul_1
lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_3/dropout_1/Const?
lstm_cell_3/dropout_1/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_1/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout_1/Mul?
lstm_cell_3/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_3/dropout_1/Shape?
2lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_1/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???24
2lstm_cell_3/dropout_1/random_uniform/RandomUniform?
$lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_3/dropout_1/GreaterEqual/y?
"lstm_cell_3/dropout_1/GreaterEqualGreaterEqual;lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2$
"lstm_cell_3/dropout_1/GreaterEqual?
lstm_cell_3/dropout_1/CastCast&lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_3/dropout_1/Cast?
lstm_cell_3/dropout_1/Mul_1Mullstm_cell_3/dropout_1/Mul:z:0lstm_cell_3/dropout_1/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout_1/Mul_1
lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_3/dropout_2/Const?
lstm_cell_3/dropout_2/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_2/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout_2/Mul?
lstm_cell_3/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_3/dropout_2/Shape?
2lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_2/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2??<24
2lstm_cell_3/dropout_2/random_uniform/RandomUniform?
$lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_3/dropout_2/GreaterEqual/y?
"lstm_cell_3/dropout_2/GreaterEqualGreaterEqual;lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2$
"lstm_cell_3/dropout_2/GreaterEqual?
lstm_cell_3/dropout_2/CastCast&lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_3/dropout_2/Cast?
lstm_cell_3/dropout_2/Mul_1Mullstm_cell_3/dropout_2/Mul:z:0lstm_cell_3/dropout_2/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout_2/Mul_1
lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_3/dropout_3/Const?
lstm_cell_3/dropout_3/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_3/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout_3/Mul?
lstm_cell_3/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_3/dropout_3/Shape?
2lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_3/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???24
2lstm_cell_3/dropout_3/random_uniform/RandomUniform?
$lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_3/dropout_3/GreaterEqual/y?
"lstm_cell_3/dropout_3/GreaterEqualGreaterEqual;lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2$
"lstm_cell_3/dropout_3/GreaterEqual?
lstm_cell_3/dropout_3/CastCast&lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_3/dropout_3/Cast?
lstm_cell_3/dropout_3/Mul_1Mullstm_cell_3/dropout_3/Mul:z:0lstm_cell_3/dropout_3/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout_3/Mul_1?
lstm_cell_3/mulMulstrided_slice_2:output:0lstm_cell_3/dropout/Mul_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul?
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_cell_3/MatMul/ReadVariableOp?
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_3/MatMul?
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_3/MatMul_1/ReadVariableOp?
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_3/MatMul_1?
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_3/add?
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_3/BiasAdd/ReadVariableOp?
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_3/BiasAdd|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim?
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_3/splitz
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/Sigmoid~
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_3/Sigmoid_1?
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul_1q
lstm_cell_3/ReluRelulstm_cell_3/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_3/Relu?
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul_2?
lstm_cell_3/add_1AddV2lstm_cell_3/mul_1:z:0lstm_cell_3/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_3/add_1~
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_3/Sigmoid_2p
lstm_cell_3/Relu_1Relulstm_cell_3/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_3/Relu_1?
lstm_cell_3/mul_3Mullstm_cell_3/Sigmoid_2:y:0 lstm_cell_3/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_22659*
condR
while_cond_22658*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
: : : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
?E
?
while_body_19400
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 ?B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	?E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	 ?@
1while_lstm_cell_2_biasadd_readvariableop_resource:	???(while/lstm_cell_2/BiasAdd/ReadVariableOp?'while/lstm_cell_2/MatMul/ReadVariableOp?)while/lstm_cell_2/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!while/lstm_cell_2/ones_like/Shape?
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_2/ones_like/Const?
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*
_output_shapes

:2
while/lstm_cell_2/ones_like?
while/lstm_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes

:2
while/lstm_cell_2/mul?
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_2/MatMul/ReadVariableOp?
while/lstm_cell_2/MatMulMatMulwhile/lstm_cell_2/mul:z:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/MatMul?
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_2/MatMul_1/ReadVariableOp?
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/MatMul_1?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/add?
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_2/BiasAdd/ReadVariableOp?
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/BiasAdd?
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dim?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_2/split?
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/Sigmoid?
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_2/Sigmoid_1?
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_2/mul_1?
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_2/Relu?
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/mul_2?
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul_1:z:0while/lstm_cell_2/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/add_1?
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_2/Sigmoid_2?
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/Relu_1?
while/lstm_cell_2/mul_3Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_2/mul_3:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
?%
?
while_body_18746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_3_18770_0:	 ?,
while_lstm_cell_3_18772_0:	 ?(
while_lstm_cell_3_18774_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_3_18770:	 ?*
while_lstm_cell_3_18772:	 ?&
while_lstm_cell_3_18774:	???)while/lstm_cell_3/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_18770_0while_lstm_cell_3_18772_0while_lstm_cell_3_18774_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_187322+
)while/lstm_cell_3/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_3_18770while_lstm_cell_3_18770_0"4
while_lstm_cell_3_18772while_lstm_cell_3_18772_0"4
while_lstm_cell_3_18774while_lstm_cell_3_18774_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
??
?
A__inference_lstm_3_layer_call_and_return_conditional_losses_22397
inputs_0=
*lstm_cell_3_matmul_readvariableop_resource:	 ??
,lstm_cell_3_matmul_1_readvariableop_resource:	 ?:
+lstm_cell_3_biasadd_readvariableop_resource:	?
identity??"lstm_cell_3/BiasAdd/ReadVariableOp?!lstm_cell_3/MatMul/ReadVariableOp?#lstm_cell_3/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
lstm_cell_3/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_3/ones_like/Const?
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/ones_like{
lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_3/dropout/Const?
lstm_cell_3/dropout/MulMullstm_cell_3/ones_like:output:0"lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/dropout/Mul?
lstm_cell_3/dropout/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout/Shape?
0lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2??[22
0lstm_cell_3/dropout/random_uniform/RandomUniform?
"lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"lstm_cell_3/dropout/GreaterEqual/y?
 lstm_cell_3/dropout/GreaterEqualGreaterEqual9lstm_cell_3/dropout/random_uniform/RandomUniform:output:0+lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell_3/dropout/GreaterEqual?
lstm_cell_3/dropout/CastCast$lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_3/dropout/Cast?
lstm_cell_3/dropout/Mul_1Mullstm_cell_3/dropout/Mul:z:0lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/dropout/Mul_1
lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_3/dropout_1/Const?
lstm_cell_3/dropout_1/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/dropout_1/Mul?
lstm_cell_3/dropout_1/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_1/Shape?
2lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2???24
2lstm_cell_3/dropout_1/random_uniform/RandomUniform?
$lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_3/dropout_1/GreaterEqual/y?
"lstm_cell_3/dropout_1/GreaterEqualGreaterEqual;lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_3/dropout_1/GreaterEqual?
lstm_cell_3/dropout_1/CastCast&lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_3/dropout_1/Cast?
lstm_cell_3/dropout_1/Mul_1Mullstm_cell_3/dropout_1/Mul:z:0lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/dropout_1/Mul_1
lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_3/dropout_2/Const?
lstm_cell_3/dropout_2/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/dropout_2/Mul?
lstm_cell_3/dropout_2/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_2/Shape?
2lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2?˧24
2lstm_cell_3/dropout_2/random_uniform/RandomUniform?
$lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_3/dropout_2/GreaterEqual/y?
"lstm_cell_3/dropout_2/GreaterEqualGreaterEqual;lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_3/dropout_2/GreaterEqual?
lstm_cell_3/dropout_2/CastCast&lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_3/dropout_2/Cast?
lstm_cell_3/dropout_2/Mul_1Mullstm_cell_3/dropout_2/Mul:z:0lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/dropout_2/Mul_1
lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_3/dropout_3/Const?
lstm_cell_3/dropout_3/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/dropout_3/Mul?
lstm_cell_3/dropout_3/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_3/Shape?
2lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2??j24
2lstm_cell_3/dropout_3/random_uniform/RandomUniform?
$lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_3/dropout_3/GreaterEqual/y?
"lstm_cell_3/dropout_3/GreaterEqualGreaterEqual;lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_3/dropout_3/GreaterEqual?
lstm_cell_3/dropout_3/CastCast&lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_3/dropout_3/Cast?
lstm_cell_3/dropout_3/Mul_1Mullstm_cell_3/dropout_3/Mul:z:0lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/dropout_3/Mul_1?
lstm_cell_3/mulMulstrided_slice_2:output:0lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/mul?
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_cell_3/MatMul/ReadVariableOp?
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_3/MatMul?
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_3/MatMul_1/ReadVariableOp?
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_3/MatMul_1?
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_3/add?
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_3/BiasAdd/ReadVariableOp?
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_3/BiasAdd|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim?
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_3/split?
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/Sigmoid?
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/Sigmoid_1?
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/mul_1z
lstm_cell_3/ReluRelulstm_cell_3/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/Relu?
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/mul_2?
lstm_cell_3/add_1AddV2lstm_cell_3/mul_1:z:0lstm_cell_3/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/add_1?
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/Sigmoid_2y
lstm_cell_3/Relu_1Relulstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/Relu_1?
lstm_cell_3/mul_3Mullstm_cell_3/Sigmoid_2:y:0 lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/mul_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_22277*
condR
while_cond_22276*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?
?
while_cond_18745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_18745___redundant_placeholder03
/while_while_cond_18745___redundant_placeholder13
/while_while_cond_18745___redundant_placeholder23
/while_while_cond_18745___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?	
?
lstm_3_while_cond_20620*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3,
(lstm_3_while_less_lstm_3_strided_slice_1A
=lstm_3_while_lstm_3_while_cond_20620___redundant_placeholder0A
=lstm_3_while_lstm_3_while_cond_20620___redundant_placeholder1A
=lstm_3_while_lstm_3_while_cond_20620___redundant_placeholder2A
=lstm_3_while_lstm_3_while_cond_20620___redundant_placeholder3
lstm_3_while_identity
?
lstm_3/while/LessLesslstm_3_while_placeholder(lstm_3_while_less_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2
lstm_3/while/Lessr
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_3/while/Identity"7
lstm_3_while_identitylstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
?]
?
A__inference_lstm_3_layer_call_and_return_conditional_losses_22556

inputs=
*lstm_cell_3_matmul_readvariableop_resource:	 ??
,lstm_cell_3_matmul_1_readvariableop_resource:	 ?:
+lstm_cell_3_biasadd_readvariableop_resource:	?
identity??"lstm_cell_3/BiasAdd/ReadVariableOp?!lstm_cell_3/MatMul/ReadVariableOp?#lstm_cell_3/MatMul_1/ReadVariableOp?whilec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constl
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes

: 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constt
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes

: 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permq
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
: 2
	transposeg
Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"          2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_2?
lstm_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_3/ones_like/Const?
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/ones_like?
lstm_cell_3/mulMulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul?
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_cell_3/MatMul/ReadVariableOp?
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_3/MatMul?
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_3/MatMul_1/ReadVariableOp?
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_3/MatMul_1?
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_3/add?
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_3/BiasAdd/ReadVariableOp?
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_3/BiasAdd|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim?
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_3/splitz
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/Sigmoid~
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_3/Sigmoid_1?
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul_1q
lstm_cell_3/ReluRelulstm_cell_3/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_3/Relu?
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul_2?
lstm_cell_3/add_1AddV2lstm_cell_3/mul_1:z:0lstm_cell_3/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_3/add_1~
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_3/Sigmoid_2p
lstm_cell_3/Relu_1Relulstm_cell_3/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_3/Relu_1?
lstm_cell_3/mul_3Mullstm_cell_3/Sigmoid_2:y:0 lstm_cell_3/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_22468*
condR
while_cond_22467*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
: : : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
?'
?
!__inference__traced_restore_23155
file_prefix1
assignvariableop_dense_1_kernel: -
assignvariableop_1_dense_1_bias:?
,assignvariableop_2_lstm_2_lstm_cell_2_kernel:	?I
6assignvariableop_3_lstm_2_lstm_cell_2_recurrent_kernel:	 ?9
*assignvariableop_4_lstm_2_lstm_cell_2_bias:	??
,assignvariableop_5_lstm_3_lstm_cell_3_kernel:	 ?I
6assignvariableop_6_lstm_3_lstm_cell_3_recurrent_kernel:	 ?9
*assignvariableop_7_lstm_3_lstm_cell_3_bias:	?

identity_9??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*?
value?B?	B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp,assignvariableop_2_lstm_2_lstm_cell_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp6assignvariableop_3_lstm_2_lstm_cell_2_recurrent_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp*assignvariableop_4_lstm_2_lstm_cell_2_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp,assignvariableop_5_lstm_3_lstm_cell_3_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp6assignvariableop_6_lstm_3_lstm_cell_3_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp*assignvariableop_7_lstm_3_lstm_cell_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_8?

Identity_9IdentityIdentity_8:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*
T0*
_output_shapes
: 2

Identity_9"!

identity_9Identity_9:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?C
?
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_18244

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:?????????2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed2䛔2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed2?Ţ2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed2???2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_3/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_3?
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?v
?
while_body_21851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 ?B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	?E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	 ?@
1while_lstm_cell_2_biasadd_readvariableop_resource:	???(while/lstm_cell_2/BiasAdd/ReadVariableOp?'while/lstm_cell_2/MatMul/ReadVariableOp?)while/lstm_cell_2/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!while/lstm_cell_2/ones_like/Shape?
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_2/ones_like/Const?
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*
_output_shapes

:2
while/lstm_cell_2/ones_like?
while/lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2!
while/lstm_cell_2/dropout/Const?
while/lstm_cell_2/dropout/MulMul$while/lstm_cell_2/ones_like:output:0(while/lstm_cell_2/dropout/Const:output:0*
T0*
_output_shapes

:2
while/lstm_cell_2/dropout/Mul?
while/lstm_cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
while/lstm_cell_2/dropout/Shape?
6while/lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_2/dropout/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2?޻28
6while/lstm_cell_2/dropout/random_uniform/RandomUniform?
(while/lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2*
(while/lstm_cell_2/dropout/GreaterEqual/y?
&while/lstm_cell_2/dropout/GreaterEqualGreaterEqual?while/lstm_cell_2/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

:2(
&while/lstm_cell_2/dropout/GreaterEqual?
while/lstm_cell_2/dropout/CastCast*while/lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2 
while/lstm_cell_2/dropout/Cast?
while/lstm_cell_2/dropout/Mul_1Mul!while/lstm_cell_2/dropout/Mul:z:0"while/lstm_cell_2/dropout/Cast:y:0*
T0*
_output_shapes

:2!
while/lstm_cell_2/dropout/Mul_1?
!while/lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_2/dropout_1/Const?
while/lstm_cell_2/dropout_1/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_1/Const:output:0*
T0*
_output_shapes

:2!
while/lstm_cell_2/dropout_1/Mul?
!while/lstm_cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!while/lstm_cell_2/dropout_1/Shape?
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2??W2:
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_2/dropout_1/GreaterEqual/y?
(while/lstm_cell_2/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

:2*
(while/lstm_cell_2/dropout_1/GreaterEqual?
 while/lstm_cell_2/dropout_1/CastCast,while/lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2"
 while/lstm_cell_2/dropout_1/Cast?
!while/lstm_cell_2/dropout_1/Mul_1Mul#while/lstm_cell_2/dropout_1/Mul:z:0$while/lstm_cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes

:2#
!while/lstm_cell_2/dropout_1/Mul_1?
!while/lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_2/dropout_2/Const?
while/lstm_cell_2/dropout_2/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_2/Const:output:0*
T0*
_output_shapes

:2!
while/lstm_cell_2/dropout_2/Mul?
!while/lstm_cell_2/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!while/lstm_cell_2/dropout_2/Shape?
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_2/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2??2:
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_2/dropout_2/GreaterEqual/y?
(while/lstm_cell_2/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

:2*
(while/lstm_cell_2/dropout_2/GreaterEqual?
 while/lstm_cell_2/dropout_2/CastCast,while/lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2"
 while/lstm_cell_2/dropout_2/Cast?
!while/lstm_cell_2/dropout_2/Mul_1Mul#while/lstm_cell_2/dropout_2/Mul:z:0$while/lstm_cell_2/dropout_2/Cast:y:0*
T0*
_output_shapes

:2#
!while/lstm_cell_2/dropout_2/Mul_1?
!while/lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_2/dropout_3/Const?
while/lstm_cell_2/dropout_3/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_3/Const:output:0*
T0*
_output_shapes

:2!
while/lstm_cell_2/dropout_3/Mul?
!while/lstm_cell_2/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!while/lstm_cell_2/dropout_3/Shape?
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_3/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2:
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_2/dropout_3/GreaterEqual/y?
(while/lstm_cell_2/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

:2*
(while/lstm_cell_2/dropout_3/GreaterEqual?
 while/lstm_cell_2/dropout_3/CastCast,while/lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2"
 while/lstm_cell_2/dropout_3/Cast?
!while/lstm_cell_2/dropout_3/Mul_1Mul#while/lstm_cell_2/dropout_3/Mul:z:0$while/lstm_cell_2/dropout_3/Cast:y:0*
T0*
_output_shapes

:2#
!while/lstm_cell_2/dropout_3/Mul_1?
while/lstm_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_2/dropout/Mul_1:z:0*
T0*
_output_shapes

:2
while/lstm_cell_2/mul?
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_2/MatMul/ReadVariableOp?
while/lstm_cell_2/MatMulMatMulwhile/lstm_cell_2/mul:z:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/MatMul?
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_2/MatMul_1/ReadVariableOp?
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/MatMul_1?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/add?
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_2/BiasAdd/ReadVariableOp?
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/BiasAdd?
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dim?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_2/split?
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/Sigmoid?
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_2/Sigmoid_1?
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_2/mul_1?
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_2/Relu?
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/mul_2?
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul_1:z:0while/lstm_cell_2/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/add_1?
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_2/Sigmoid_2?
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/Relu_1?
while/lstm_cell_2/mul_3Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_2/mul_3:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
?
?
&__inference_lstm_2_layer_call_fn_21185
inputs_0
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_183912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :?????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_22936

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:?????????2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0*

seed**
seed2ڿ?2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_3/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_3?
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?%
?
while_body_18322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_2_18346_0:	?,
while_lstm_cell_2_18348_0:	 ?(
while_lstm_cell_2_18350_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_2_18346:	?*
while_lstm_cell_2_18348:	 ?&
while_lstm_cell_2_18350:	???)while/lstm_cell_2/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_18346_0while_lstm_cell_2_18348_0while_lstm_cell_2_18350_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_182442+
)while/lstm_cell_2/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1*^while/lstm_cell_2/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2*^while/lstm_cell_2/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_2_18346while_lstm_cell_2_18346_0"4
while_lstm_cell_2_18348while_lstm_cell_2_18348_0"4
while_lstm_cell_2_18350while_lstm_cell_2_18350_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?v
?
while_body_19824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	 ?G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	 ?B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	 ?E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	 ?@
1while_lstm_cell_3_biasadd_readvariableop_resource:	???(while/lstm_cell_3/BiasAdd/ReadVariableOp?'while/lstm_cell_3/MatMul/ReadVariableOp?)while/lstm_cell_3/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

: *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!while/lstm_cell_3/ones_like/Shape?
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_3/ones_like/Const?
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/ones_like?
while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2!
while/lstm_cell_3/dropout/Const?
while/lstm_cell_3/dropout/MulMul$while/lstm_cell_3/ones_like:output:0(while/lstm_cell_3/dropout/Const:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/dropout/Mul?
while/lstm_cell_3/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2!
while/lstm_cell_3/dropout/Shape?
6while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_3/dropout/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???28
6while/lstm_cell_3/dropout/random_uniform/RandomUniform?
(while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2*
(while/lstm_cell_3/dropout/GreaterEqual/y?
&while/lstm_cell_3/dropout/GreaterEqualGreaterEqual?while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2(
&while/lstm_cell_3/dropout/GreaterEqual?
while/lstm_cell_3/dropout/CastCast*while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2 
while/lstm_cell_3/dropout/Cast?
while/lstm_cell_3/dropout/Mul_1Mul!while/lstm_cell_3/dropout/Mul:z:0"while/lstm_cell_3/dropout/Cast:y:0*
T0*
_output_shapes

: 2!
while/lstm_cell_3/dropout/Mul_1?
!while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_3/dropout_1/Const?
while/lstm_cell_3/dropout_1/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_1/Const:output:0*
T0*
_output_shapes

: 2!
while/lstm_cell_3/dropout_1/Mul?
!while/lstm_cell_3/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!while/lstm_cell_3/dropout_1/Shape?
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_1/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2:
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_3/dropout_1/GreaterEqual/y?
(while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2*
(while/lstm_cell_3/dropout_1/GreaterEqual?
 while/lstm_cell_3/dropout_1/CastCast,while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2"
 while/lstm_cell_3/dropout_1/Cast?
!while/lstm_cell_3/dropout_1/Mul_1Mul#while/lstm_cell_3/dropout_1/Mul:z:0$while/lstm_cell_3/dropout_1/Cast:y:0*
T0*
_output_shapes

: 2#
!while/lstm_cell_3/dropout_1/Mul_1?
!while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_3/dropout_2/Const?
while/lstm_cell_3/dropout_2/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_2/Const:output:0*
T0*
_output_shapes

: 2!
while/lstm_cell_3/dropout_2/Mul?
!while/lstm_cell_3/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!while/lstm_cell_3/dropout_2/Shape?
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_2/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2:
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_3/dropout_2/GreaterEqual/y?
(while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2*
(while/lstm_cell_3/dropout_2/GreaterEqual?
 while/lstm_cell_3/dropout_2/CastCast,while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2"
 while/lstm_cell_3/dropout_2/Cast?
!while/lstm_cell_3/dropout_2/Mul_1Mul#while/lstm_cell_3/dropout_2/Mul:z:0$while/lstm_cell_3/dropout_2/Cast:y:0*
T0*
_output_shapes

: 2#
!while/lstm_cell_3/dropout_2/Mul_1?
!while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_3/dropout_3/Const?
while/lstm_cell_3/dropout_3/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_3/Const:output:0*
T0*
_output_shapes

: 2!
while/lstm_cell_3/dropout_3/Mul?
!while/lstm_cell_3/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!while/lstm_cell_3/dropout_3/Shape?
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_3/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2:
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_3/dropout_3/GreaterEqual/y?
(while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2*
(while/lstm_cell_3/dropout_3/GreaterEqual?
 while/lstm_cell_3/dropout_3/CastCast,while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2"
 while/lstm_cell_3/dropout_3/Cast?
!while/lstm_cell_3/dropout_3/Mul_1Mul#while/lstm_cell_3/dropout_3/Mul:z:0$while/lstm_cell_3/dropout_3/Cast:y:0*
T0*
_output_shapes

: 2#
!while/lstm_cell_3/dropout_3/Mul_1?
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_3/dropout/Mul_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul?
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'while/lstm_cell_3/MatMul/ReadVariableOp?
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/MatMul?
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_3/MatMul_1/ReadVariableOp?
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/MatMul_1?
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/add?
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_3/BiasAdd/ReadVariableOp?
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/BiasAdd?
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dim?
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_3/split?
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/Sigmoid?
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_3/Sigmoid_1?
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul_1?
while/lstm_cell_3/ReluRelu while/lstm_cell_3/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_3/Relu?
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid:y:0$while/lstm_cell_3/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul_2?
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul_1:z:0while/lstm_cell_3/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/add_1?
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_3/Sigmoid_2?
while/lstm_cell_3/Relu_1Reluwhile/lstm_cell_3/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/Relu_1?
while/lstm_cell_3/mul_3Mulwhile/lstm_cell_3/Sigmoid_2:y:0&while/lstm_cell_3/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_3/mul_3:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_18991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_18991___redundant_placeholder03
/while_while_cond_18991___redundant_placeholder13
/while_while_cond_18991___redundant_placeholder23
/while_while_cond_18991___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
+__inference_lstm_cell_2_layer_call_fn_22815

inputs
states_0
states_1
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_180622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?	
?
lstm_2_while_cond_20465*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1A
=lstm_2_while_lstm_2_while_cond_20465___redundant_placeholder0A
=lstm_2_while_lstm_2_while_cond_20465___redundant_placeholder1A
=lstm_2_while_lstm_2_while_cond_20465___redundant_placeholder2A
=lstm_2_while_lstm_2_while_cond_20465___redundant_placeholder3
lstm_2_while_identity
?
lstm_2/while/LessLesslstm_2_while_placeholder(lstm_2_while_less_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2
lstm_2/while/Lessr
lstm_2/while/IdentityIdentitylstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_2/while/Identity"7
lstm_2_while_identitylstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
?E
?
while_body_22468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	 ?G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	 ?B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	 ?E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	 ?@
1while_lstm_cell_3_biasadd_readvariableop_resource:	???(while/lstm_cell_3/BiasAdd/ReadVariableOp?'while/lstm_cell_3/MatMul/ReadVariableOp?)while/lstm_cell_3/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

: *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!while/lstm_cell_3/ones_like/Shape?
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_3/ones_like/Const?
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/ones_like?
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul?
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'while/lstm_cell_3/MatMul/ReadVariableOp?
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/MatMul?
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_3/MatMul_1/ReadVariableOp?
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/MatMul_1?
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/add?
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_3/BiasAdd/ReadVariableOp?
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/BiasAdd?
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dim?
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_3/split?
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/Sigmoid?
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_3/Sigmoid_1?
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul_1?
while/lstm_cell_3/ReluRelu while/lstm_cell_3/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_3/Relu?
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid:y:0$while/lstm_cell_3/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul_2?
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul_1:z:0while/lstm_cell_3/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/add_1?
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_3/Sigmoid_2?
while/lstm_cell_3/Relu_1Reluwhile/lstm_cell_3/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/Relu_1?
while/lstm_cell_3/mul_3Mulwhile/lstm_cell_3/Sigmoid_2:y:0&while/lstm_cell_3/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_3/mul_3:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
?	
?
,__inference_sequential_1_layer_call_fn_20284
input_2
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2:	 ?
	unknown_3:	 ?
	unknown_4:	?
	unknown_5: 
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_202442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_2
?e
?
$sequential_1_lstm_2_while_body_17734D
@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counterJ
Fsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations)
%sequential_1_lstm_2_while_placeholder+
'sequential_1_lstm_2_while_placeholder_1+
'sequential_1_lstm_2_while_placeholder_2+
'sequential_1_lstm_2_while_placeholder_3C
?sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1_0
{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0Y
Fsequential_1_lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0:	?[
Hsequential_1_lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 ?V
Gsequential_1_lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0:	?&
"sequential_1_lstm_2_while_identity(
$sequential_1_lstm_2_while_identity_1(
$sequential_1_lstm_2_while_identity_2(
$sequential_1_lstm_2_while_identity_3(
$sequential_1_lstm_2_while_identity_4(
$sequential_1_lstm_2_while_identity_5A
=sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1}
ysequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensorW
Dsequential_1_lstm_2_while_lstm_cell_2_matmul_readvariableop_resource:	?Y
Fsequential_1_lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource:	 ?T
Esequential_1_lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource:	???<sequential_1/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp?;sequential_1/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp?=sequential_1/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp?
Ksequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2M
Ksequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=sequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_2_while_placeholderTsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02?
=sequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem?
5sequential_1/lstm_2/while/lstm_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_1/lstm_2/while/lstm_cell_2/ones_like/Shape?
5sequential_1/lstm_2/while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??27
5sequential_1/lstm_2/while/lstm_cell_2/ones_like/Const?
/sequential_1/lstm_2/while/lstm_cell_2/ones_likeFill>sequential_1/lstm_2/while/lstm_cell_2/ones_like/Shape:output:0>sequential_1/lstm_2/while/lstm_cell_2/ones_like/Const:output:0*
T0*
_output_shapes

:21
/sequential_1/lstm_2/while/lstm_cell_2/ones_like?
)sequential_1/lstm_2/while/lstm_cell_2/mulMulDsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_1/lstm_2/while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes

:2+
)sequential_1/lstm_2/while/lstm_cell_2/mul?
;sequential_1/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpFsequential_1_lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02=
;sequential_1/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp?
,sequential_1/lstm_2/while/lstm_cell_2/MatMulMatMul-sequential_1/lstm_2/while/lstm_cell_2/mul:z:0Csequential_1/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,sequential_1/lstm_2/while/lstm_cell_2/MatMul?
=sequential_1/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpHsequential_1_lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02?
=sequential_1/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp?
.sequential_1/lstm_2/while/lstm_cell_2/MatMul_1MatMul'sequential_1_lstm_2_while_placeholder_2Esequential_1/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.sequential_1/lstm_2/while/lstm_cell_2/MatMul_1?
)sequential_1/lstm_2/while/lstm_cell_2/addAddV26sequential_1/lstm_2/while/lstm_cell_2/MatMul:product:08sequential_1/lstm_2/while/lstm_cell_2/MatMul_1:product:0*
T0*
_output_shapes
:	?2+
)sequential_1/lstm_2/while/lstm_cell_2/add?
<sequential_1/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02>
<sequential_1/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp?
-sequential_1/lstm_2/while/lstm_cell_2/BiasAddBiasAdd-sequential_1/lstm_2/while/lstm_cell_2/add:z:0Dsequential_1/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2/
-sequential_1/lstm_2/while/lstm_cell_2/BiasAdd?
5sequential_1/lstm_2/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_1/lstm_2/while/lstm_cell_2/split/split_dim?
+sequential_1/lstm_2/while/lstm_cell_2/splitSplit>sequential_1/lstm_2/while/lstm_cell_2/split/split_dim:output:06sequential_1/lstm_2/while/lstm_cell_2/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2-
+sequential_1/lstm_2/while/lstm_cell_2/split?
-sequential_1/lstm_2/while/lstm_cell_2/SigmoidSigmoid4sequential_1/lstm_2/while/lstm_cell_2/split:output:0*
T0*
_output_shapes

: 2/
-sequential_1/lstm_2/while/lstm_cell_2/Sigmoid?
/sequential_1/lstm_2/while/lstm_cell_2/Sigmoid_1Sigmoid4sequential_1/lstm_2/while/lstm_cell_2/split:output:1*
T0*
_output_shapes

: 21
/sequential_1/lstm_2/while/lstm_cell_2/Sigmoid_1?
+sequential_1/lstm_2/while/lstm_cell_2/mul_1Mul3sequential_1/lstm_2/while/lstm_cell_2/Sigmoid_1:y:0'sequential_1_lstm_2_while_placeholder_3*
T0*
_output_shapes

: 2-
+sequential_1/lstm_2/while/lstm_cell_2/mul_1?
*sequential_1/lstm_2/while/lstm_cell_2/ReluRelu4sequential_1/lstm_2/while/lstm_cell_2/split:output:2*
T0*
_output_shapes

: 2,
*sequential_1/lstm_2/while/lstm_cell_2/Relu?
+sequential_1/lstm_2/while/lstm_cell_2/mul_2Mul1sequential_1/lstm_2/while/lstm_cell_2/Sigmoid:y:08sequential_1/lstm_2/while/lstm_cell_2/Relu:activations:0*
T0*
_output_shapes

: 2-
+sequential_1/lstm_2/while/lstm_cell_2/mul_2?
+sequential_1/lstm_2/while/lstm_cell_2/add_1AddV2/sequential_1/lstm_2/while/lstm_cell_2/mul_1:z:0/sequential_1/lstm_2/while/lstm_cell_2/mul_2:z:0*
T0*
_output_shapes

: 2-
+sequential_1/lstm_2/while/lstm_cell_2/add_1?
/sequential_1/lstm_2/while/lstm_cell_2/Sigmoid_2Sigmoid4sequential_1/lstm_2/while/lstm_cell_2/split:output:3*
T0*
_output_shapes

: 21
/sequential_1/lstm_2/while/lstm_cell_2/Sigmoid_2?
,sequential_1/lstm_2/while/lstm_cell_2/Relu_1Relu/sequential_1/lstm_2/while/lstm_cell_2/add_1:z:0*
T0*
_output_shapes

: 2.
,sequential_1/lstm_2/while/lstm_cell_2/Relu_1?
+sequential_1/lstm_2/while/lstm_cell_2/mul_3Mul3sequential_1/lstm_2/while/lstm_cell_2/Sigmoid_2:y:0:sequential_1/lstm_2/while/lstm_cell_2/Relu_1:activations:0*
T0*
_output_shapes

: 2-
+sequential_1/lstm_2/while/lstm_cell_2/mul_3?
>sequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_2_while_placeholder_1%sequential_1_lstm_2_while_placeholder/sequential_1/lstm_2/while/lstm_cell_2/mul_3:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItem?
sequential_1/lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_2/while/add/y?
sequential_1/lstm_2/while/addAddV2%sequential_1_lstm_2_while_placeholder(sequential_1/lstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_2/while/add?
!sequential_1/lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_2/while/add_1/y?
sequential_1/lstm_2/while/add_1AddV2@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counter*sequential_1/lstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_2/while/add_1?
"sequential_1/lstm_2/while/IdentityIdentity#sequential_1/lstm_2/while/add_1:z:0=^sequential_1/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/lstm_2/while/Identity?
$sequential_1/lstm_2/while/Identity_1IdentityFsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations=^sequential_1/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_1?
$sequential_1/lstm_2/while/Identity_2Identity!sequential_1/lstm_2/while/add:z:0=^sequential_1/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_2?
$sequential_1/lstm_2/while/Identity_3IdentityNsequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^sequential_1/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_3?
$sequential_1/lstm_2/while/Identity_4Identity/sequential_1/lstm_2/while/lstm_cell_2/mul_3:z:0=^sequential_1/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2&
$sequential_1/lstm_2/while/Identity_4?
$sequential_1/lstm_2/while/Identity_5Identity/sequential_1/lstm_2/while/lstm_cell_2/add_1:z:0=^sequential_1/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2&
$sequential_1/lstm_2/while/Identity_5"Q
"sequential_1_lstm_2_while_identity+sequential_1/lstm_2/while/Identity:output:0"U
$sequential_1_lstm_2_while_identity_1-sequential_1/lstm_2/while/Identity_1:output:0"U
$sequential_1_lstm_2_while_identity_2-sequential_1/lstm_2/while/Identity_2:output:0"U
$sequential_1_lstm_2_while_identity_3-sequential_1/lstm_2/while/Identity_3:output:0"U
$sequential_1_lstm_2_while_identity_4-sequential_1/lstm_2/while/Identity_4:output:0"U
$sequential_1_lstm_2_while_identity_5-sequential_1/lstm_2/while/Identity_5:output:0"?
Esequential_1_lstm_2_while_lstm_cell_2_biasadd_readvariableop_resourceGsequential_1_lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0"?
Fsequential_1_lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resourceHsequential_1_lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0"?
Dsequential_1_lstm_2_while_lstm_cell_2_matmul_readvariableop_resourceFsequential_1_lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0"?
=sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1?sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1_0"?
ysequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : 2|
<sequential_1/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp<sequential_1/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp2z
;sequential_1/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp;sequential_1/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp2~
=sequential_1/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp=sequential_1/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
?E
?
A__inference_lstm_3_layer_call_and_return_conditional_losses_19061

inputs$
lstm_cell_3_18979:	 ?$
lstm_cell_3_18981:	 ? 
lstm_cell_3_18983:	?
identity??#lstm_cell_3/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_18979lstm_cell_3_18981lstm_cell_3_18983*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_189142%
#lstm_cell_3/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_18979lstm_cell_3_18981lstm_cell_3_18983*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_18992*
condR
while_cond_18991*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_3/StatefulPartitionedCall^while*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?_
?
A__inference_lstm_2_layer_call_and_return_conditional_losses_21366
inputs_0=
*lstm_cell_2_matmul_readvariableop_resource:	??
,lstm_cell_2_matmul_1_readvariableop_resource:	 ?:
+lstm_cell_2_biasadd_readvariableop_resource:	?
identity??"lstm_cell_2/BiasAdd/ReadVariableOp?!lstm_cell_2/MatMul/ReadVariableOp?#lstm_cell_2/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell_2/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_2/ones_like/Const?
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_2/ones_like?
lstm_cell_2/mulMulstrided_slice_2:output:0lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_2/mul?
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_2/MatMul/ReadVariableOp?
lstm_cell_2/MatMulMatMullstm_cell_2/mul:z:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_2/MatMul?
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_2/MatMul_1/ReadVariableOp?
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_2/MatMul_1?
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_2/add?
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_2/BiasAdd/ReadVariableOp?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_2/BiasAdd|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_2/split?
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid?
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_1?
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_1z
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu?
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_2?
lstm_cell_2/add_1AddV2lstm_cell_2/mul_1:z:0lstm_cell_2/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_1?
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_2y
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu_1?
lstm_cell_2/mul_3Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_21278*
condR
while_cond_21277*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :?????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_19565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_19565___redundant_placeholder03
/while_while_cond_19565___redundant_placeholder13
/while_while_cond_19565___redundant_placeholder23
/while_while_cond_19565___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_22798

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOpj
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

: 
 
_user_specified_nameinputs
?E
?
while_body_21660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 ?B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	?E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	 ?@
1while_lstm_cell_2_biasadd_readvariableop_resource:	???(while/lstm_cell_2/BiasAdd/ReadVariableOp?'while/lstm_cell_2/MatMul/ReadVariableOp?)while/lstm_cell_2/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!while/lstm_cell_2/ones_like/Shape?
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_2/ones_like/Const?
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*
_output_shapes

:2
while/lstm_cell_2/ones_like?
while/lstm_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes

:2
while/lstm_cell_2/mul?
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_2/MatMul/ReadVariableOp?
while/lstm_cell_2/MatMulMatMulwhile/lstm_cell_2/mul:z:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/MatMul?
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_2/MatMul_1/ReadVariableOp?
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/MatMul_1?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/add?
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_2/BiasAdd/ReadVariableOp?
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/BiasAdd?
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dim?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_2/split?
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/Sigmoid?
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_2/Sigmoid_1?
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_2/mul_1?
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_2/Relu?
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/mul_2?
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul_1:z:0while/lstm_cell_2/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/add_1?
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_2/Sigmoid_2?
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/Relu_1?
while/lstm_cell_2/mul_3Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_2/mul_3:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
?v
?
while_body_22659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	 ?G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	 ?B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	 ?E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	 ?@
1while_lstm_cell_3_biasadd_readvariableop_resource:	???(while/lstm_cell_3/BiasAdd/ReadVariableOp?'while/lstm_cell_3/MatMul/ReadVariableOp?)while/lstm_cell_3/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

: *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!while/lstm_cell_3/ones_like/Shape?
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_3/ones_like/Const?
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/ones_like?
while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2!
while/lstm_cell_3/dropout/Const?
while/lstm_cell_3/dropout/MulMul$while/lstm_cell_3/ones_like:output:0(while/lstm_cell_3/dropout/Const:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/dropout/Mul?
while/lstm_cell_3/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2!
while/lstm_cell_3/dropout/Shape?
6while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_3/dropout/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???28
6while/lstm_cell_3/dropout/random_uniform/RandomUniform?
(while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2*
(while/lstm_cell_3/dropout/GreaterEqual/y?
&while/lstm_cell_3/dropout/GreaterEqualGreaterEqual?while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2(
&while/lstm_cell_3/dropout/GreaterEqual?
while/lstm_cell_3/dropout/CastCast*while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2 
while/lstm_cell_3/dropout/Cast?
while/lstm_cell_3/dropout/Mul_1Mul!while/lstm_cell_3/dropout/Mul:z:0"while/lstm_cell_3/dropout/Cast:y:0*
T0*
_output_shapes

: 2!
while/lstm_cell_3/dropout/Mul_1?
!while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_3/dropout_1/Const?
while/lstm_cell_3/dropout_1/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_1/Const:output:0*
T0*
_output_shapes

: 2!
while/lstm_cell_3/dropout_1/Mul?
!while/lstm_cell_3/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!while/lstm_cell_3/dropout_1/Shape?
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_1/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2:
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_3/dropout_1/GreaterEqual/y?
(while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2*
(while/lstm_cell_3/dropout_1/GreaterEqual?
 while/lstm_cell_3/dropout_1/CastCast,while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2"
 while/lstm_cell_3/dropout_1/Cast?
!while/lstm_cell_3/dropout_1/Mul_1Mul#while/lstm_cell_3/dropout_1/Mul:z:0$while/lstm_cell_3/dropout_1/Cast:y:0*
T0*
_output_shapes

: 2#
!while/lstm_cell_3/dropout_1/Mul_1?
!while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_3/dropout_2/Const?
while/lstm_cell_3/dropout_2/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_2/Const:output:0*
T0*
_output_shapes

: 2!
while/lstm_cell_3/dropout_2/Mul?
!while/lstm_cell_3/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!while/lstm_cell_3/dropout_2/Shape?
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_2/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2:
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_3/dropout_2/GreaterEqual/y?
(while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2*
(while/lstm_cell_3/dropout_2/GreaterEqual?
 while/lstm_cell_3/dropout_2/CastCast,while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2"
 while/lstm_cell_3/dropout_2/Cast?
!while/lstm_cell_3/dropout_2/Mul_1Mul#while/lstm_cell_3/dropout_2/Mul:z:0$while/lstm_cell_3/dropout_2/Cast:y:0*
T0*
_output_shapes

: 2#
!while/lstm_cell_3/dropout_2/Mul_1?
!while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_3/dropout_3/Const?
while/lstm_cell_3/dropout_3/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_3/Const:output:0*
T0*
_output_shapes

: 2!
while/lstm_cell_3/dropout_3/Mul?
!while/lstm_cell_3/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!while/lstm_cell_3/dropout_3/Shape?
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_3/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2:
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_3/dropout_3/GreaterEqual/y?
(while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2*
(while/lstm_cell_3/dropout_3/GreaterEqual?
 while/lstm_cell_3/dropout_3/CastCast,while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2"
 while/lstm_cell_3/dropout_3/Cast?
!while/lstm_cell_3/dropout_3/Mul_1Mul#while/lstm_cell_3/dropout_3/Mul:z:0$while/lstm_cell_3/dropout_3/Cast:y:0*
T0*
_output_shapes

: 2#
!while/lstm_cell_3/dropout_3/Mul_1?
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_3/dropout/Mul_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul?
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'while/lstm_cell_3/MatMul/ReadVariableOp?
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/MatMul?
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_3/MatMul_1/ReadVariableOp?
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/MatMul_1?
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/add?
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_3/BiasAdd/ReadVariableOp?
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_3/BiasAdd?
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dim?
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_3/split?
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/Sigmoid?
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_3/Sigmoid_1?
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul_1?
while/lstm_cell_3/ReluRelu while/lstm_cell_3/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_3/Relu?
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid:y:0$while/lstm_cell_3/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul_2?
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul_1:z:0while/lstm_cell_3/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/add_1?
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_3/Sigmoid_2?
while/lstm_cell_3/Relu_1Reluwhile/lstm_cell_3/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/Relu_1?
while/lstm_cell_3/mul_3Mulwhile/lstm_cell_3/Sigmoid_2:y:0&while/lstm_cell_3/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_3/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_3/mul_3:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_dense_1_layer_call_fn_22788

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_196722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

: 
 
_user_specified_nameinputs
?C
?
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_23074

inputs
states_0
states_11
matmul_readvariableop_resource:	 ?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2??2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed**
seed2???2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_3/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_3?
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:????????? :????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
while_cond_18321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_18321___redundant_placeholder03
/while_while_cond_18321___redundant_placeholder13
/while_while_cond_18321___redundant_placeholder23
/while_while_cond_18321___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
while_cond_22658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_22658___redundant_placeholder03
/while_while_cond_22658___redundant_placeholder13
/while_while_cond_22658___redundant_placeholder23
/while_while_cond_22658___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
?
?
__inference__traced_save_23121
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop8
4savev2_lstm_2_lstm_cell_2_kernel_read_readvariableopB
>savev2_lstm_2_lstm_cell_2_recurrent_kernel_read_readvariableop6
2savev2_lstm_2_lstm_cell_2_bias_read_readvariableop8
4savev2_lstm_3_lstm_cell_3_kernel_read_readvariableopB
>savev2_lstm_3_lstm_cell_3_recurrent_kernel_read_readvariableop6
2savev2_lstm_3_lstm_cell_3_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*?
value?B?	B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop4savev2_lstm_2_lstm_cell_2_kernel_read_readvariableop>savev2_lstm_2_lstm_cell_2_recurrent_kernel_read_readvariableop2savev2_lstm_2_lstm_cell_2_bias_read_readvariableop4savev2_lstm_3_lstm_cell_3_kernel_read_readvariableop>savev2_lstm_3_lstm_cell_3_recurrent_kernel_read_readvariableop2savev2_lstm_3_lstm_cell_3_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*a
_input_shapesP
N: : ::	?:	 ?:?:	 ?:	 ?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:%!

_output_shapes
:	 ?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:	

_output_shapes
: 
?
?
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_22868

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:?????????2
	ones_like_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:?????????2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_3?
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
$sequential_1_lstm_3_while_cond_17888D
@sequential_1_lstm_3_while_sequential_1_lstm_3_while_loop_counterJ
Fsequential_1_lstm_3_while_sequential_1_lstm_3_while_maximum_iterations)
%sequential_1_lstm_3_while_placeholder+
'sequential_1_lstm_3_while_placeholder_1+
'sequential_1_lstm_3_while_placeholder_2+
'sequential_1_lstm_3_while_placeholder_3F
Bsequential_1_lstm_3_while_less_sequential_1_lstm_3_strided_slice_1[
Wsequential_1_lstm_3_while_sequential_1_lstm_3_while_cond_17888___redundant_placeholder0[
Wsequential_1_lstm_3_while_sequential_1_lstm_3_while_cond_17888___redundant_placeholder1[
Wsequential_1_lstm_3_while_sequential_1_lstm_3_while_cond_17888___redundant_placeholder2[
Wsequential_1_lstm_3_while_sequential_1_lstm_3_while_cond_17888___redundant_placeholder3&
"sequential_1_lstm_3_while_identity
?
sequential_1/lstm_3/while/LessLess%sequential_1_lstm_3_while_placeholderBsequential_1_lstm_3_while_less_sequential_1_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/lstm_3/while/Less?
"sequential_1/lstm_3/while/IdentityIdentity"sequential_1/lstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/lstm_3/while/Identity"Q
"sequential_1_lstm_3_while_identity+sequential_1/lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
?	
?
,__inference_sequential_1_layer_call_fn_19698
input_2
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2:	 ?
	unknown_3:	 ?
	unknown_4:	?
	unknown_5: 
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_196792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_2
?
?
#__inference_signature_wrapper_20353
input_2
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2:	 ?
	unknown_3:	 ?
	unknown_4:	?
	unknown_5: 
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_179832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_2
?%
?
while_body_18076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_2_18100_0:	?,
while_lstm_cell_2_18102_0:	 ?(
while_lstm_cell_2_18104_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_2_18100:	?*
while_lstm_cell_2_18102:	 ?&
while_lstm_cell_2_18104:	???)while/lstm_cell_2/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_18100_0while_lstm_cell_2_18102_0while_lstm_cell_2_18104_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_180622+
)while/lstm_cell_2/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1*^while/lstm_cell_2/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2*^while/lstm_cell_2/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_2_18100while_lstm_cell_2_18100_0"4
while_lstm_cell_2_18102while_lstm_cell_2_18102_0"4
while_lstm_cell_2_18104while_lstm_cell_2_18104_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
??
?
A__inference_lstm_2_layer_call_and_return_conditional_losses_20189

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	??
,lstm_cell_2_matmul_1_readvariableop_resource:	 ?:
+lstm_cell_2_biasadd_readvariableop_resource:	?
identity??"lstm_cell_2/BiasAdd/ReadVariableOp?!lstm_cell_2/MatMul/ReadVariableOp?#lstm_cell_2/MatMul_1/ReadVariableOp?whilec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constl
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes

: 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constt
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes

: 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permq
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:2
	transposeg
Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
strided_slice_2?
lstm_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_2/ones_like/Const?
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_2/ones_like{
lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_2/dropout/Const?
lstm_cell_2/dropout/MulMullstm_cell_2/ones_like:output:0"lstm_cell_2/dropout/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout/Mul?
lstm_cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_2/dropout/Shape?
0lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_2/dropout/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2Иr22
0lstm_cell_2/dropout/random_uniform/RandomUniform?
"lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"lstm_cell_2/dropout/GreaterEqual/y?
 lstm_cell_2/dropout/GreaterEqualGreaterEqual9lstm_cell_2/dropout/random_uniform/RandomUniform:output:0+lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

:2"
 lstm_cell_2/dropout/GreaterEqual?
lstm_cell_2/dropout/CastCast$lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_2/dropout/Cast?
lstm_cell_2/dropout/Mul_1Mullstm_cell_2/dropout/Mul:z:0lstm_cell_2/dropout/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout/Mul_1
lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_2/dropout_1/Const?
lstm_cell_2/dropout_1/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_1/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout_1/Mul?
lstm_cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_2/dropout_1/Shape?
2lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???24
2lstm_cell_2/dropout_1/random_uniform/RandomUniform?
$lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_2/dropout_1/GreaterEqual/y?
"lstm_cell_2/dropout_1/GreaterEqualGreaterEqual;lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

:2$
"lstm_cell_2/dropout_1/GreaterEqual?
lstm_cell_2/dropout_1/CastCast&lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_2/dropout_1/Cast?
lstm_cell_2/dropout_1/Mul_1Mullstm_cell_2/dropout_1/Mul:z:0lstm_cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout_1/Mul_1
lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_2/dropout_2/Const?
lstm_cell_2/dropout_2/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_2/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout_2/Mul?
lstm_cell_2/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_2/dropout_2/Shape?
2lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_2/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???24
2lstm_cell_2/dropout_2/random_uniform/RandomUniform?
$lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_2/dropout_2/GreaterEqual/y?
"lstm_cell_2/dropout_2/GreaterEqualGreaterEqual;lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

:2$
"lstm_cell_2/dropout_2/GreaterEqual?
lstm_cell_2/dropout_2/CastCast&lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_2/dropout_2/Cast?
lstm_cell_2/dropout_2/Mul_1Mullstm_cell_2/dropout_2/Mul:z:0lstm_cell_2/dropout_2/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout_2/Mul_1
lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_2/dropout_3/Const?
lstm_cell_2/dropout_3/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_3/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout_3/Mul?
lstm_cell_2/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_2/dropout_3/Shape?
2lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_3/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2?ی24
2lstm_cell_2/dropout_3/random_uniform/RandomUniform?
$lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_2/dropout_3/GreaterEqual/y?
"lstm_cell_2/dropout_3/GreaterEqualGreaterEqual;lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

:2$
"lstm_cell_2/dropout_3/GreaterEqual?
lstm_cell_2/dropout_3/CastCast&lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_2/dropout_3/Cast?
lstm_cell_2/dropout_3/Mul_1Mullstm_cell_2/dropout_3/Mul:z:0lstm_cell_2/dropout_3/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout_3/Mul_1?
lstm_cell_2/mulMulstrided_slice_2:output:0lstm_cell_2/dropout/Mul_1:z:0*
T0*
_output_shapes

:2
lstm_cell_2/mul?
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_2/MatMul/ReadVariableOp?
lstm_cell_2/MatMulMatMullstm_cell_2/mul:z:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_2/MatMul?
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_2/MatMul_1/ReadVariableOp?
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_2/MatMul_1?
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_2/add?
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_2/BiasAdd/ReadVariableOp?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_2/BiasAdd|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_2/splitz
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_2/Sigmoid~
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_2/Sigmoid_1?
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_2/mul_1q
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_2/Relu?
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_2/mul_2?
lstm_cell_2/add_1AddV2lstm_cell_2/mul_1:z:0lstm_cell_2/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_2/add_1~
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_2/Sigmoid_2p
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_2/Relu_1?
lstm_cell_2/mul_3Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_2/mul_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_20069*
condR
while_cond_20068*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*
T0*"
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?E
?
A__inference_lstm_2_layer_call_and_return_conditional_losses_18145

inputs$
lstm_cell_2_18063:	?$
lstm_cell_2_18065:	 ? 
lstm_cell_2_18067:	?
identity??#lstm_cell_2/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_18063lstm_cell_2_18065lstm_cell_2_18067*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_180622%
#lstm_cell_2/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_18063lstm_cell_2_18065lstm_cell_2_18067*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_18076*
condR
while_cond_18075*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_2/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :?????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?v
?
while_body_20069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 ?B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	?E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	 ?@
1while_lstm_cell_2_biasadd_readvariableop_resource:	???(while/lstm_cell_2/BiasAdd/ReadVariableOp?'while/lstm_cell_2/MatMul/ReadVariableOp?)while/lstm_cell_2/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!while/lstm_cell_2/ones_like/Shape?
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_2/ones_like/Const?
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*
_output_shapes

:2
while/lstm_cell_2/ones_like?
while/lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2!
while/lstm_cell_2/dropout/Const?
while/lstm_cell_2/dropout/MulMul$while/lstm_cell_2/ones_like:output:0(while/lstm_cell_2/dropout/Const:output:0*
T0*
_output_shapes

:2
while/lstm_cell_2/dropout/Mul?
while/lstm_cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
while/lstm_cell_2/dropout/Shape?
6while/lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_2/dropout/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???28
6while/lstm_cell_2/dropout/random_uniform/RandomUniform?
(while/lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2*
(while/lstm_cell_2/dropout/GreaterEqual/y?
&while/lstm_cell_2/dropout/GreaterEqualGreaterEqual?while/lstm_cell_2/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

:2(
&while/lstm_cell_2/dropout/GreaterEqual?
while/lstm_cell_2/dropout/CastCast*while/lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2 
while/lstm_cell_2/dropout/Cast?
while/lstm_cell_2/dropout/Mul_1Mul!while/lstm_cell_2/dropout/Mul:z:0"while/lstm_cell_2/dropout/Cast:y:0*
T0*
_output_shapes

:2!
while/lstm_cell_2/dropout/Mul_1?
!while/lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_2/dropout_1/Const?
while/lstm_cell_2/dropout_1/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_1/Const:output:0*
T0*
_output_shapes

:2!
while/lstm_cell_2/dropout_1/Mul?
!while/lstm_cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!while/lstm_cell_2/dropout_1/Shape?
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2:
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_2/dropout_1/GreaterEqual/y?
(while/lstm_cell_2/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

:2*
(while/lstm_cell_2/dropout_1/GreaterEqual?
 while/lstm_cell_2/dropout_1/CastCast,while/lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2"
 while/lstm_cell_2/dropout_1/Cast?
!while/lstm_cell_2/dropout_1/Mul_1Mul#while/lstm_cell_2/dropout_1/Mul:z:0$while/lstm_cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes

:2#
!while/lstm_cell_2/dropout_1/Mul_1?
!while/lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_2/dropout_2/Const?
while/lstm_cell_2/dropout_2/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_2/Const:output:0*
T0*
_output_shapes

:2!
while/lstm_cell_2/dropout_2/Mul?
!while/lstm_cell_2/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!while/lstm_cell_2/dropout_2/Shape?
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_2/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2:
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_2/dropout_2/GreaterEqual/y?
(while/lstm_cell_2/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

:2*
(while/lstm_cell_2/dropout_2/GreaterEqual?
 while/lstm_cell_2/dropout_2/CastCast,while/lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2"
 while/lstm_cell_2/dropout_2/Cast?
!while/lstm_cell_2/dropout_2/Mul_1Mul#while/lstm_cell_2/dropout_2/Mul:z:0$while/lstm_cell_2/dropout_2/Cast:y:0*
T0*
_output_shapes

:2#
!while/lstm_cell_2/dropout_2/Mul_1?
!while/lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_2/dropout_3/Const?
while/lstm_cell_2/dropout_3/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_3/Const:output:0*
T0*
_output_shapes

:2!
while/lstm_cell_2/dropout_3/Mul?
!while/lstm_cell_2/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!while/lstm_cell_2/dropout_3/Shape?
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_3/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2??2:
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_2/dropout_3/GreaterEqual/y?
(while/lstm_cell_2/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

:2*
(while/lstm_cell_2/dropout_3/GreaterEqual?
 while/lstm_cell_2/dropout_3/CastCast,while/lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2"
 while/lstm_cell_2/dropout_3/Cast?
!while/lstm_cell_2/dropout_3/Mul_1Mul#while/lstm_cell_2/dropout_3/Mul:z:0$while/lstm_cell_2/dropout_3/Cast:y:0*
T0*
_output_shapes

:2#
!while/lstm_cell_2/dropout_3/Mul_1?
while/lstm_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_2/dropout/Mul_1:z:0*
T0*
_output_shapes

:2
while/lstm_cell_2/mul?
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_2/MatMul/ReadVariableOp?
while/lstm_cell_2/MatMulMatMulwhile/lstm_cell_2/mul:z:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/MatMul?
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_2/MatMul_1/ReadVariableOp?
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/MatMul_1?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/add?
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_2/BiasAdd/ReadVariableOp?
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_2/BiasAdd?
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dim?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_2/split?
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/Sigmoid?
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_2/Sigmoid_1?
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_2/mul_1?
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_2/Relu?
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/mul_2?
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul_1:z:0while/lstm_cell_2/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/add_1?
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_2/Sigmoid_2?
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/Relu_1?
while/lstm_cell_2/mul_3Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_2/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_2/mul_3:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
?
?
&__inference_lstm_2_layer_call_fn_21174
inputs_0
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_181452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :?????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?_
?
A__inference_lstm_3_layer_call_and_return_conditional_losses_22174
inputs_0=
*lstm_cell_3_matmul_readvariableop_resource:	 ??
,lstm_cell_3_matmul_1_readvariableop_resource:	 ?:
+lstm_cell_3_biasadd_readvariableop_resource:	?
identity??"lstm_cell_3/BiasAdd/ReadVariableOp?!lstm_cell_3/MatMul/ReadVariableOp?#lstm_cell_3/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
lstm_cell_3/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_3/ones_like/Const?
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/ones_like?
lstm_cell_3/mulMulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/mul?
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_cell_3/MatMul/ReadVariableOp?
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_3/MatMul?
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_3/MatMul_1/ReadVariableOp?
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_3/MatMul_1?
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_3/add?
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_3/BiasAdd/ReadVariableOp?
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_3/BiasAdd|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim?
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
lstm_cell_3/split?
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/Sigmoid?
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/Sigmoid_1?
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/mul_1z
lstm_cell_3/ReluRelulstm_cell_3/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/Relu?
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/mul_2?
lstm_cell_3/add_1AddV2lstm_cell_3/mul_1:z:0lstm_cell_3/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/add_1?
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/Sigmoid_2y
lstm_cell_3/Relu_1Relulstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/Relu_1?
lstm_cell_3/mul_3Mullstm_cell_3/Sigmoid_2:y:0 lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_3/mul_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_22086*
condR
while_cond_22085*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?
?
&__inference_lstm_3_layer_call_fn_22015

inputs
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_199442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
??
?
A__inference_lstm_3_layer_call_and_return_conditional_losses_19944

inputs=
*lstm_cell_3_matmul_readvariableop_resource:	 ??
,lstm_cell_3_matmul_1_readvariableop_resource:	 ?:
+lstm_cell_3_biasadd_readvariableop_resource:	?
identity??"lstm_cell_3/BiasAdd/ReadVariableOp?!lstm_cell_3/MatMul/ReadVariableOp?#lstm_cell_3/MatMul_1/ReadVariableOp?whilec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constl
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes

: 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constt
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes

: 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permq
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
: 2
	transposeg
Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"          2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_2?
lstm_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_3/ones_like/Const?
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/ones_like{
lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_3/dropout/Const?
lstm_cell_3/dropout/MulMullstm_cell_3/ones_like:output:0"lstm_cell_3/dropout/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout/Mul?
lstm_cell_3/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_3/dropout/Shape?
0lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_3/dropout/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2ٺY22
0lstm_cell_3/dropout/random_uniform/RandomUniform?
"lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"lstm_cell_3/dropout/GreaterEqual/y?
 lstm_cell_3/dropout/GreaterEqualGreaterEqual9lstm_cell_3/dropout/random_uniform/RandomUniform:output:0+lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2"
 lstm_cell_3/dropout/GreaterEqual?
lstm_cell_3/dropout/CastCast$lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_3/dropout/Cast?
lstm_cell_3/dropout/Mul_1Mullstm_cell_3/dropout/Mul:z:0lstm_cell_3/dropout/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout/Mul_1
lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_3/dropout_1/Const?
lstm_cell_3/dropout_1/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_1/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout_1/Mul?
lstm_cell_3/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_3/dropout_1/Shape?
2lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_1/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2??24
2lstm_cell_3/dropout_1/random_uniform/RandomUniform?
$lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_3/dropout_1/GreaterEqual/y?
"lstm_cell_3/dropout_1/GreaterEqualGreaterEqual;lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2$
"lstm_cell_3/dropout_1/GreaterEqual?
lstm_cell_3/dropout_1/CastCast&lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_3/dropout_1/Cast?
lstm_cell_3/dropout_1/Mul_1Mullstm_cell_3/dropout_1/Mul:z:0lstm_cell_3/dropout_1/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout_1/Mul_1
lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_3/dropout_2/Const?
lstm_cell_3/dropout_2/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_2/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout_2/Mul?
lstm_cell_3/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_3/dropout_2/Shape?
2lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_2/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2??o24
2lstm_cell_3/dropout_2/random_uniform/RandomUniform?
$lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_3/dropout_2/GreaterEqual/y?
"lstm_cell_3/dropout_2/GreaterEqualGreaterEqual;lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2$
"lstm_cell_3/dropout_2/GreaterEqual?
lstm_cell_3/dropout_2/CastCast&lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_3/dropout_2/Cast?
lstm_cell_3/dropout_2/Mul_1Mullstm_cell_3/dropout_2/Mul:z:0lstm_cell_3/dropout_2/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout_2/Mul_1
lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_3/dropout_3/Const?
lstm_cell_3/dropout_3/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_3/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout_3/Mul?
lstm_cell_3/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_3/dropout_3/Shape?
2lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_3/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2?ʧ24
2lstm_cell_3/dropout_3/random_uniform/RandomUniform?
$lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_3/dropout_3/GreaterEqual/y?
"lstm_cell_3/dropout_3/GreaterEqualGreaterEqual;lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2$
"lstm_cell_3/dropout_3/GreaterEqual?
lstm_cell_3/dropout_3/CastCast&lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_3/dropout_3/Cast?
lstm_cell_3/dropout_3/Mul_1Mullstm_cell_3/dropout_3/Mul:z:0lstm_cell_3/dropout_3/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_3/dropout_3/Mul_1?
lstm_cell_3/mulMulstrided_slice_2:output:0lstm_cell_3/dropout/Mul_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul?
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_cell_3/MatMul/ReadVariableOp?
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_3/MatMul?
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_3/MatMul_1/ReadVariableOp?
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_3/MatMul_1?
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_3/add?
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_3/BiasAdd/ReadVariableOp?
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_3/BiasAdd|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim?
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_3/splitz
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/Sigmoid~
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_3/Sigmoid_1?
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul_1q
lstm_cell_3/ReluRelulstm_cell_3/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_3/Relu?
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul_2?
lstm_cell_3/add_1AddV2lstm_cell_3/mul_1:z:0lstm_cell_3/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_3/add_1~
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_3/Sigmoid_2p
lstm_cell_3/Relu_1Relulstm_cell_3/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_3/Relu_1?
lstm_cell_3/mul_3Mullstm_cell_3/Sigmoid_2:y:0 lstm_cell_3/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_19824*
condR
while_cond_19823*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
: : : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
?
?
&__inference_lstm_3_layer_call_fn_22004

inputs
unknown:	 ?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_196542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
??
?

lstm_2_while_body_20818*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0:	?N
;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 ?I
:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0:	?
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorJ
7lstm_2_while_lstm_cell_2_matmul_readvariableop_resource:	?L
9lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource:	 ?G
8lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource:	???/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp?.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp?0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp?
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2@
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype022
0lstm_2/while/TensorArrayV2Read/TensorListGetItem?
(lstm_2/while/lstm_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_2/while/lstm_cell_2/ones_like/Shape?
(lstm_2/while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm_2/while/lstm_cell_2/ones_like/Const?
"lstm_2/while/lstm_cell_2/ones_likeFill1lstm_2/while/lstm_cell_2/ones_like/Shape:output:01lstm_2/while/lstm_cell_2/ones_like/Const:output:0*
T0*
_output_shapes

:2$
"lstm_2/while/lstm_cell_2/ones_like?
&lstm_2/while/lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2(
&lstm_2/while/lstm_cell_2/dropout/Const?
$lstm_2/while/lstm_cell_2/dropout/MulMul+lstm_2/while/lstm_cell_2/ones_like:output:0/lstm_2/while/lstm_cell_2/dropout/Const:output:0*
T0*
_output_shapes

:2&
$lstm_2/while/lstm_cell_2/dropout/Mul?
&lstm_2/while/lstm_cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm_2/while/lstm_cell_2/dropout/Shape?
=lstm_2/while/lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform/lstm_2/while/lstm_cell_2/dropout/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2ɡ?2?
=lstm_2/while/lstm_cell_2/dropout/random_uniform/RandomUniform?
/lstm_2/while/lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=21
/lstm_2/while/lstm_cell_2/dropout/GreaterEqual/y?
-lstm_2/while/lstm_cell_2/dropout/GreaterEqualGreaterEqualFlstm_2/while/lstm_cell_2/dropout/random_uniform/RandomUniform:output:08lstm_2/while/lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

:2/
-lstm_2/while/lstm_cell_2/dropout/GreaterEqual?
%lstm_2/while/lstm_cell_2/dropout/CastCast1lstm_2/while/lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2'
%lstm_2/while/lstm_cell_2/dropout/Cast?
&lstm_2/while/lstm_cell_2/dropout/Mul_1Mul(lstm_2/while/lstm_cell_2/dropout/Mul:z:0)lstm_2/while/lstm_cell_2/dropout/Cast:y:0*
T0*
_output_shapes

:2(
&lstm_2/while/lstm_cell_2/dropout/Mul_1?
(lstm_2/while/lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2*
(lstm_2/while/lstm_cell_2/dropout_1/Const?
&lstm_2/while/lstm_cell_2/dropout_1/MulMul+lstm_2/while/lstm_cell_2/ones_like:output:01lstm_2/while/lstm_cell_2/dropout_1/Const:output:0*
T0*
_output_shapes

:2(
&lstm_2/while/lstm_cell_2/dropout_1/Mul?
(lstm_2/while/lstm_cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_2/while/lstm_cell_2/dropout_1/Shape?
?lstm_2/while/lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_2/while/lstm_cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2??M2A
?lstm_2/while/lstm_cell_2/dropout_1/random_uniform/RandomUniform?
1lstm_2/while/lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=23
1lstm_2/while/lstm_cell_2/dropout_1/GreaterEqual/y?
/lstm_2/while/lstm_cell_2/dropout_1/GreaterEqualGreaterEqualHlstm_2/while/lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:0:lstm_2/while/lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

:21
/lstm_2/while/lstm_cell_2/dropout_1/GreaterEqual?
'lstm_2/while/lstm_cell_2/dropout_1/CastCast3lstm_2/while/lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2)
'lstm_2/while/lstm_cell_2/dropout_1/Cast?
(lstm_2/while/lstm_cell_2/dropout_1/Mul_1Mul*lstm_2/while/lstm_cell_2/dropout_1/Mul:z:0+lstm_2/while/lstm_cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes

:2*
(lstm_2/while/lstm_cell_2/dropout_1/Mul_1?
(lstm_2/while/lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2*
(lstm_2/while/lstm_cell_2/dropout_2/Const?
&lstm_2/while/lstm_cell_2/dropout_2/MulMul+lstm_2/while/lstm_cell_2/ones_like:output:01lstm_2/while/lstm_cell_2/dropout_2/Const:output:0*
T0*
_output_shapes

:2(
&lstm_2/while/lstm_cell_2/dropout_2/Mul?
(lstm_2/while/lstm_cell_2/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_2/while/lstm_cell_2/dropout_2/Shape?
?lstm_2/while/lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_2/while/lstm_cell_2/dropout_2/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2A
?lstm_2/while/lstm_cell_2/dropout_2/random_uniform/RandomUniform?
1lstm_2/while/lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=23
1lstm_2/while/lstm_cell_2/dropout_2/GreaterEqual/y?
/lstm_2/while/lstm_cell_2/dropout_2/GreaterEqualGreaterEqualHlstm_2/while/lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:0:lstm_2/while/lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

:21
/lstm_2/while/lstm_cell_2/dropout_2/GreaterEqual?
'lstm_2/while/lstm_cell_2/dropout_2/CastCast3lstm_2/while/lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2)
'lstm_2/while/lstm_cell_2/dropout_2/Cast?
(lstm_2/while/lstm_cell_2/dropout_2/Mul_1Mul*lstm_2/while/lstm_cell_2/dropout_2/Mul:z:0+lstm_2/while/lstm_cell_2/dropout_2/Cast:y:0*
T0*
_output_shapes

:2*
(lstm_2/while/lstm_cell_2/dropout_2/Mul_1?
(lstm_2/while/lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2*
(lstm_2/while/lstm_cell_2/dropout_3/Const?
&lstm_2/while/lstm_cell_2/dropout_3/MulMul+lstm_2/while/lstm_cell_2/ones_like:output:01lstm_2/while/lstm_cell_2/dropout_3/Const:output:0*
T0*
_output_shapes

:2(
&lstm_2/while/lstm_cell_2/dropout_3/Mul?
(lstm_2/while/lstm_cell_2/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_2/while/lstm_cell_2/dropout_3/Shape?
?lstm_2/while/lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_2/while/lstm_cell_2/dropout_3/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2A
?lstm_2/while/lstm_cell_2/dropout_3/random_uniform/RandomUniform?
1lstm_2/while/lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=23
1lstm_2/while/lstm_cell_2/dropout_3/GreaterEqual/y?
/lstm_2/while/lstm_cell_2/dropout_3/GreaterEqualGreaterEqualHlstm_2/while/lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:0:lstm_2/while/lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

:21
/lstm_2/while/lstm_cell_2/dropout_3/GreaterEqual?
'lstm_2/while/lstm_cell_2/dropout_3/CastCast3lstm_2/while/lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2)
'lstm_2/while/lstm_cell_2/dropout_3/Cast?
(lstm_2/while/lstm_cell_2/dropout_3/Mul_1Mul*lstm_2/while/lstm_cell_2/dropout_3/Mul:z:0+lstm_2/while/lstm_cell_2/dropout_3/Cast:y:0*
T0*
_output_shapes

:2*
(lstm_2/while/lstm_cell_2/dropout_3/Mul_1?
lstm_2/while/lstm_cell_2/mulMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm_2/while/lstm_cell_2/dropout/Mul_1:z:0*
T0*
_output_shapes

:2
lstm_2/while/lstm_cell_2/mul?
.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype020
.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp?
lstm_2/while/lstm_cell_2/MatMulMatMul lstm_2/while/lstm_cell_2/mul:z:06lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2!
lstm_2/while/lstm_cell_2/MatMul?
0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype022
0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp?
!lstm_2/while/lstm_cell_2/MatMul_1MatMullstm_2_while_placeholder_28lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!lstm_2/while/lstm_cell_2/MatMul_1?
lstm_2/while/lstm_cell_2/addAddV2)lstm_2/while/lstm_cell_2/MatMul:product:0+lstm_2/while/lstm_cell_2/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_2/while/lstm_cell_2/add?
/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp?
 lstm_2/while/lstm_cell_2/BiasAddBiasAdd lstm_2/while/lstm_cell_2/add:z:07lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2"
 lstm_2/while/lstm_cell_2/BiasAdd?
(lstm_2/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_2/while/lstm_cell_2/split/split_dim?
lstm_2/while/lstm_cell_2/splitSplit1lstm_2/while/lstm_cell_2/split/split_dim:output:0)lstm_2/while/lstm_cell_2/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2 
lstm_2/while/lstm_cell_2/split?
 lstm_2/while/lstm_cell_2/SigmoidSigmoid'lstm_2/while/lstm_cell_2/split:output:0*
T0*
_output_shapes

: 2"
 lstm_2/while/lstm_cell_2/Sigmoid?
"lstm_2/while/lstm_cell_2/Sigmoid_1Sigmoid'lstm_2/while/lstm_cell_2/split:output:1*
T0*
_output_shapes

: 2$
"lstm_2/while/lstm_cell_2/Sigmoid_1?
lstm_2/while/lstm_cell_2/mul_1Mul&lstm_2/while/lstm_cell_2/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*
_output_shapes

: 2 
lstm_2/while/lstm_cell_2/mul_1?
lstm_2/while/lstm_cell_2/ReluRelu'lstm_2/while/lstm_cell_2/split:output:2*
T0*
_output_shapes

: 2
lstm_2/while/lstm_cell_2/Relu?
lstm_2/while/lstm_cell_2/mul_2Mul$lstm_2/while/lstm_cell_2/Sigmoid:y:0+lstm_2/while/lstm_cell_2/Relu:activations:0*
T0*
_output_shapes

: 2 
lstm_2/while/lstm_cell_2/mul_2?
lstm_2/while/lstm_cell_2/add_1AddV2"lstm_2/while/lstm_cell_2/mul_1:z:0"lstm_2/while/lstm_cell_2/mul_2:z:0*
T0*
_output_shapes

: 2 
lstm_2/while/lstm_cell_2/add_1?
"lstm_2/while/lstm_cell_2/Sigmoid_2Sigmoid'lstm_2/while/lstm_cell_2/split:output:3*
T0*
_output_shapes

: 2$
"lstm_2/while/lstm_cell_2/Sigmoid_2?
lstm_2/while/lstm_cell_2/Relu_1Relu"lstm_2/while/lstm_cell_2/add_1:z:0*
T0*
_output_shapes

: 2!
lstm_2/while/lstm_cell_2/Relu_1?
lstm_2/while/lstm_cell_2/mul_3Mul&lstm_2/while/lstm_cell_2/Sigmoid_2:y:0-lstm_2/while/lstm_cell_2/Relu_1:activations:0*
T0*
_output_shapes

: 2 
lstm_2/while/lstm_cell_2/mul_3?
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder"lstm_2/while/lstm_cell_2/mul_3:z:0*
_output_shapes
: *
element_dtype023
1lstm_2/while/TensorArrayV2Write/TensorListSetItemj
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add/y?
lstm_2/while/addAddV2lstm_2_while_placeholderlstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/addn
lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add_1/y?
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/add_1?
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:00^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity?
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations0^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_1?
lstm_2/while/Identity_2Identitylstm_2/while/add:z:00^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_2?
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_3?
lstm_2/while/Identity_4Identity"lstm_2/while/lstm_cell_2/mul_3:z:00^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
lstm_2/while/Identity_4?
lstm_2/while/Identity_5Identity"lstm_2/while/lstm_cell_2/add_1:z:00^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
lstm_2/while/Identity_5"7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"v
8lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0"x
9lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0"t
7lstm_2_while_lstm_cell_2_matmul_readvariableop_resource9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0"?
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : 2b
/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp2`
.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp2d
0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
?	
?
lstm_2_while_cond_20817*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1A
=lstm_2_while_lstm_2_while_cond_20817___redundant_placeholder0A
=lstm_2_while_lstm_2_while_cond_20817___redundant_placeholder1A
=lstm_2_while_lstm_2_while_cond_20817___redundant_placeholder2A
=lstm_2_while_lstm_2_while_cond_20817___redundant_placeholder3
lstm_2_while_identity
?
lstm_2/while/LessLesslstm_2_while_placeholder(lstm_2_while_less_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2
lstm_2/while/Lessr
lstm_2/while/IdentityIdentitylstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_2/while/Identity"7
lstm_2_while_identitylstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
?	
?
lstm_3_while_cond_21036*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3,
(lstm_3_while_less_lstm_3_strided_slice_1A
=lstm_3_while_lstm_3_while_cond_21036___redundant_placeholder0A
=lstm_3_while_lstm_3_while_cond_21036___redundant_placeholder1A
=lstm_3_while_lstm_3_while_cond_21036___redundant_placeholder2A
=lstm_3_while_lstm_3_while_cond_21036___redundant_placeholder3
lstm_3_while_identity
?
lstm_3/while/LessLesslstm_3_while_placeholder(lstm_3_while_less_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2
lstm_3/while/Lessr
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_3/while/Identity"7
lstm_3_while_identitylstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
?]
?
A__inference_lstm_2_layer_call_and_return_conditional_losses_21748

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	??
,lstm_cell_2_matmul_1_readvariableop_resource:	 ?:
+lstm_cell_2_biasadd_readvariableop_resource:	?
identity??"lstm_cell_2/BiasAdd/ReadVariableOp?!lstm_cell_2/MatMul/ReadVariableOp?#lstm_cell_2/MatMul_1/ReadVariableOp?whilec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constl
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes

: 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constt
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes

: 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permq
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:2
	transposeg
Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
strided_slice_2?
lstm_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_2/ones_like/Const?
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_2/ones_like?
lstm_cell_2/mulMulstrided_slice_2:output:0lstm_cell_2/ones_like:output:0*
T0*
_output_shapes

:2
lstm_cell_2/mul?
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_2/MatMul/ReadVariableOp?
lstm_cell_2/MatMulMatMullstm_cell_2/mul:z:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_2/MatMul?
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_2/MatMul_1/ReadVariableOp?
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_2/MatMul_1?
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_2/add?
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_2/BiasAdd/ReadVariableOp?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_2/BiasAdd|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_2/splitz
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_2/Sigmoid~
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_2/Sigmoid_1?
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_2/mul_1q
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_2/Relu?
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_2/mul_2?
lstm_cell_2/add_1AddV2lstm_cell_2/mul_1:z:0lstm_cell_2/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_2/add_1~
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_2/Sigmoid_2p
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_2/Relu_1?
lstm_cell_2/mul_3Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_2/mul_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_21660*
condR
while_cond_21659*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*
T0*"
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?G
?
while_body_21278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 ?B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	?E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	 ?@
1while_lstm_cell_2_biasadd_readvariableop_resource:	???(while/lstm_cell_2/BiasAdd/ReadVariableOp?'while/lstm_cell_2/MatMul/ReadVariableOp?)while/lstm_cell_2/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_2/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/ones_like/Shape?
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_2/ones_like/Const?
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_2/ones_like?
while/lstm_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_2/mul?
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_2/MatMul/ReadVariableOp?
while/lstm_cell_2/MatMulMatMulwhile/lstm_cell_2/mul:z:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_2/MatMul?
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_2/MatMul_1/ReadVariableOp?
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_2/MatMul_1?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_2/add?
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_2/BiasAdd/ReadVariableOp?
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_2/BiasAdd?
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dim?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_2/split?
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid?
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_1?
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_1?
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu?
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_2?
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul_1:z:0while/lstm_cell_2/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_1?
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_2?
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu_1?
while/lstm_cell_2/mul_3Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_2/mul_3:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?e
?
$sequential_1_lstm_3_while_body_17889D
@sequential_1_lstm_3_while_sequential_1_lstm_3_while_loop_counterJ
Fsequential_1_lstm_3_while_sequential_1_lstm_3_while_maximum_iterations)
%sequential_1_lstm_3_while_placeholder+
'sequential_1_lstm_3_while_placeholder_1+
'sequential_1_lstm_3_while_placeholder_2+
'sequential_1_lstm_3_while_placeholder_3C
?sequential_1_lstm_3_while_sequential_1_lstm_3_strided_slice_1_0
{sequential_1_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_3_tensorarrayunstack_tensorlistfromtensor_0Y
Fsequential_1_lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0:	 ?[
Hsequential_1_lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0:	 ?V
Gsequential_1_lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0:	?&
"sequential_1_lstm_3_while_identity(
$sequential_1_lstm_3_while_identity_1(
$sequential_1_lstm_3_while_identity_2(
$sequential_1_lstm_3_while_identity_3(
$sequential_1_lstm_3_while_identity_4(
$sequential_1_lstm_3_while_identity_5A
=sequential_1_lstm_3_while_sequential_1_lstm_3_strided_slice_1}
ysequential_1_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_3_tensorarrayunstack_tensorlistfromtensorW
Dsequential_1_lstm_3_while_lstm_cell_3_matmul_readvariableop_resource:	 ?Y
Fsequential_1_lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource:	 ?T
Esequential_1_lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource:	???<sequential_1/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp?;sequential_1/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp?=sequential_1/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp?
Ksequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2M
Ksequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=sequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_3_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_3_while_placeholderTsequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

: *
element_dtype02?
=sequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem?
5sequential_1/lstm_3/while/lstm_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5sequential_1/lstm_3/while/lstm_cell_3/ones_like/Shape?
5sequential_1/lstm_3/while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??27
5sequential_1/lstm_3/while/lstm_cell_3/ones_like/Const?
/sequential_1/lstm_3/while/lstm_cell_3/ones_likeFill>sequential_1/lstm_3/while/lstm_cell_3/ones_like/Shape:output:0>sequential_1/lstm_3/while/lstm_cell_3/ones_like/Const:output:0*
T0*
_output_shapes

: 21
/sequential_1/lstm_3/while/lstm_cell_3/ones_like?
)sequential_1/lstm_3/while/lstm_cell_3/mulMulDsequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_1/lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes

: 2+
)sequential_1/lstm_3/while/lstm_cell_3/mul?
;sequential_1/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOpFsequential_1_lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02=
;sequential_1/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp?
,sequential_1/lstm_3/while/lstm_cell_3/MatMulMatMul-sequential_1/lstm_3/while/lstm_cell_3/mul:z:0Csequential_1/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,sequential_1/lstm_3/while/lstm_cell_3/MatMul?
=sequential_1/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOpHsequential_1_lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02?
=sequential_1/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp?
.sequential_1/lstm_3/while/lstm_cell_3/MatMul_1MatMul'sequential_1_lstm_3_while_placeholder_2Esequential_1/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.sequential_1/lstm_3/while/lstm_cell_3/MatMul_1?
)sequential_1/lstm_3/while/lstm_cell_3/addAddV26sequential_1/lstm_3/while/lstm_cell_3/MatMul:product:08sequential_1/lstm_3/while/lstm_cell_3/MatMul_1:product:0*
T0*
_output_shapes
:	?2+
)sequential_1/lstm_3/while/lstm_cell_3/add?
<sequential_1/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02>
<sequential_1/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp?
-sequential_1/lstm_3/while/lstm_cell_3/BiasAddBiasAdd-sequential_1/lstm_3/while/lstm_cell_3/add:z:0Dsequential_1/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2/
-sequential_1/lstm_3/while/lstm_cell_3/BiasAdd?
5sequential_1/lstm_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_1/lstm_3/while/lstm_cell_3/split/split_dim?
+sequential_1/lstm_3/while/lstm_cell_3/splitSplit>sequential_1/lstm_3/while/lstm_cell_3/split/split_dim:output:06sequential_1/lstm_3/while/lstm_cell_3/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2-
+sequential_1/lstm_3/while/lstm_cell_3/split?
-sequential_1/lstm_3/while/lstm_cell_3/SigmoidSigmoid4sequential_1/lstm_3/while/lstm_cell_3/split:output:0*
T0*
_output_shapes

: 2/
-sequential_1/lstm_3/while/lstm_cell_3/Sigmoid?
/sequential_1/lstm_3/while/lstm_cell_3/Sigmoid_1Sigmoid4sequential_1/lstm_3/while/lstm_cell_3/split:output:1*
T0*
_output_shapes

: 21
/sequential_1/lstm_3/while/lstm_cell_3/Sigmoid_1?
+sequential_1/lstm_3/while/lstm_cell_3/mul_1Mul3sequential_1/lstm_3/while/lstm_cell_3/Sigmoid_1:y:0'sequential_1_lstm_3_while_placeholder_3*
T0*
_output_shapes

: 2-
+sequential_1/lstm_3/while/lstm_cell_3/mul_1?
*sequential_1/lstm_3/while/lstm_cell_3/ReluRelu4sequential_1/lstm_3/while/lstm_cell_3/split:output:2*
T0*
_output_shapes

: 2,
*sequential_1/lstm_3/while/lstm_cell_3/Relu?
+sequential_1/lstm_3/while/lstm_cell_3/mul_2Mul1sequential_1/lstm_3/while/lstm_cell_3/Sigmoid:y:08sequential_1/lstm_3/while/lstm_cell_3/Relu:activations:0*
T0*
_output_shapes

: 2-
+sequential_1/lstm_3/while/lstm_cell_3/mul_2?
+sequential_1/lstm_3/while/lstm_cell_3/add_1AddV2/sequential_1/lstm_3/while/lstm_cell_3/mul_1:z:0/sequential_1/lstm_3/while/lstm_cell_3/mul_2:z:0*
T0*
_output_shapes

: 2-
+sequential_1/lstm_3/while/lstm_cell_3/add_1?
/sequential_1/lstm_3/while/lstm_cell_3/Sigmoid_2Sigmoid4sequential_1/lstm_3/while/lstm_cell_3/split:output:3*
T0*
_output_shapes

: 21
/sequential_1/lstm_3/while/lstm_cell_3/Sigmoid_2?
,sequential_1/lstm_3/while/lstm_cell_3/Relu_1Relu/sequential_1/lstm_3/while/lstm_cell_3/add_1:z:0*
T0*
_output_shapes

: 2.
,sequential_1/lstm_3/while/lstm_cell_3/Relu_1?
+sequential_1/lstm_3/while/lstm_cell_3/mul_3Mul3sequential_1/lstm_3/while/lstm_cell_3/Sigmoid_2:y:0:sequential_1/lstm_3/while/lstm_cell_3/Relu_1:activations:0*
T0*
_output_shapes

: 2-
+sequential_1/lstm_3/while/lstm_cell_3/mul_3?
>sequential_1/lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_3_while_placeholder_1%sequential_1_lstm_3_while_placeholder/sequential_1/lstm_3/while/lstm_cell_3/mul_3:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/lstm_3/while/TensorArrayV2Write/TensorListSetItem?
sequential_1/lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_3/while/add/y?
sequential_1/lstm_3/while/addAddV2%sequential_1_lstm_3_while_placeholder(sequential_1/lstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_3/while/add?
!sequential_1/lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_3/while/add_1/y?
sequential_1/lstm_3/while/add_1AddV2@sequential_1_lstm_3_while_sequential_1_lstm_3_while_loop_counter*sequential_1/lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_3/while/add_1?
"sequential_1/lstm_3/while/IdentityIdentity#sequential_1/lstm_3/while/add_1:z:0=^sequential_1/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp<^sequential_1/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp>^sequential_1/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/lstm_3/while/Identity?
$sequential_1/lstm_3/while/Identity_1IdentityFsequential_1_lstm_3_while_sequential_1_lstm_3_while_maximum_iterations=^sequential_1/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp<^sequential_1/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp>^sequential_1/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_3/while/Identity_1?
$sequential_1/lstm_3/while/Identity_2Identity!sequential_1/lstm_3/while/add:z:0=^sequential_1/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp<^sequential_1/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp>^sequential_1/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_3/while/Identity_2?
$sequential_1/lstm_3/while/Identity_3IdentityNsequential_1/lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^sequential_1/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp<^sequential_1/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp>^sequential_1/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_3/while/Identity_3?
$sequential_1/lstm_3/while/Identity_4Identity/sequential_1/lstm_3/while/lstm_cell_3/mul_3:z:0=^sequential_1/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp<^sequential_1/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp>^sequential_1/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2&
$sequential_1/lstm_3/while/Identity_4?
$sequential_1/lstm_3/while/Identity_5Identity/sequential_1/lstm_3/while/lstm_cell_3/add_1:z:0=^sequential_1/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp<^sequential_1/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp>^sequential_1/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2&
$sequential_1/lstm_3/while/Identity_5"Q
"sequential_1_lstm_3_while_identity+sequential_1/lstm_3/while/Identity:output:0"U
$sequential_1_lstm_3_while_identity_1-sequential_1/lstm_3/while/Identity_1:output:0"U
$sequential_1_lstm_3_while_identity_2-sequential_1/lstm_3/while/Identity_2:output:0"U
$sequential_1_lstm_3_while_identity_3-sequential_1/lstm_3/while/Identity_3:output:0"U
$sequential_1_lstm_3_while_identity_4-sequential_1/lstm_3/while/Identity_4:output:0"U
$sequential_1_lstm_3_while_identity_5-sequential_1/lstm_3/while/Identity_5:output:0"?
Esequential_1_lstm_3_while_lstm_cell_3_biasadd_readvariableop_resourceGsequential_1_lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0"?
Fsequential_1_lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resourceHsequential_1_lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0"?
Dsequential_1_lstm_3_while_lstm_cell_3_matmul_readvariableop_resourceFsequential_1_lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0"?
=sequential_1_lstm_3_while_sequential_1_lstm_3_strided_slice_1?sequential_1_lstm_3_while_sequential_1_lstm_3_strided_slice_1_0"?
ysequential_1_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_3_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : 2|
<sequential_1/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp<sequential_1/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp2z
;sequential_1/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp;sequential_1/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp2~
=sequential_1/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp=sequential_1/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
?	
?
,__inference_sequential_1_layer_call_fn_20374

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
	unknown_2:	 ?
	unknown_3:	 ?
	unknown_4:	?
	unknown_5: 
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_196792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
?
$sequential_1_lstm_2_while_cond_17733D
@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counterJ
Fsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations)
%sequential_1_lstm_2_while_placeholder+
'sequential_1_lstm_2_while_placeholder_1+
'sequential_1_lstm_2_while_placeholder_2+
'sequential_1_lstm_2_while_placeholder_3F
Bsequential_1_lstm_2_while_less_sequential_1_lstm_2_strided_slice_1[
Wsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_17733___redundant_placeholder0[
Wsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_17733___redundant_placeholder1[
Wsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_17733___redundant_placeholder2[
Wsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_17733___redundant_placeholder3&
"sequential_1_lstm_2_while_identity
?
sequential_1/lstm_2/while/LessLess%sequential_1_lstm_2_while_placeholderBsequential_1_lstm_2_while_less_sequential_1_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/lstm_2/while/Less?
"sequential_1/lstm_2/while/IdentityIdentity"sequential_1/lstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/lstm_2/while/Identity"Q
"sequential_1_lstm_2_while_identity+sequential_1/lstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
?
?
while_cond_21468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_21468___redundant_placeholder03
/while_while_cond_21468___redundant_placeholder13
/while_while_cond_21468___redundant_placeholder23
/while_while_cond_21468___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
&__inference_lstm_2_layer_call_fn_21196

inputs
unknown:	?
	unknown_0:	 ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_194882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*"
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:: : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
??
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_20715

inputsD
1lstm_2_lstm_cell_2_matmul_readvariableop_resource:	?F
3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource:	 ?A
2lstm_2_lstm_cell_2_biasadd_readvariableop_resource:	?D
1lstm_3_lstm_cell_3_matmul_readvariableop_resource:	 ?F
3lstm_3_lstm_cell_3_matmul_1_readvariableop_resource:	 ?A
2lstm_3_lstm_cell_3_biasadd_readvariableop_resource:	?8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp?(lstm_2/lstm_cell_2/MatMul/ReadVariableOp?*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp?lstm_2/while?)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp?(lstm_3/lstm_cell_3/MatMul/ReadVariableOp?*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp?lstm_3/whileq
lstm_2/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
lstm_2/Shape?
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice/stack?
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_1?
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_2?
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slicej
lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/zeros/mul/y?
lstm_2/zeros/mulMullstm_2/strided_slice:output:0lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/mulm
lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_2/zeros/Less/y?
lstm_2/zeros/LessLesslstm_2/zeros/mul:z:0lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/Lessp
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/zeros/packed/1?
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros/packedm
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros/Const?
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*
_output_shapes

: 2
lstm_2/zerosn
lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/zeros_1/mul/y?
lstm_2/zeros_1/mulMullstm_2/strided_slice:output:0lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/mulq
lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_2/zeros_1/Less/y?
lstm_2/zeros_1/LessLesslstm_2/zeros_1/mul:z:0lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/Lesst
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/zeros_1/packed/1?
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros_1/packedq
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros_1/Const?
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*
_output_shapes

: 2
lstm_2/zeros_1?
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose/perm?
lstm_2/transpose	Transposeinputslstm_2/transpose/perm:output:0*
T0*"
_output_shapes
:2
lstm_2/transposeu
lstm_2/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         2
lstm_2/Shape_1?
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_1/stack?
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_1?
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_2?
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slice_1?
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_2/TensorArrayV2/element_shape?
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2?
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2>
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_2/TensorArrayUnstack/TensorListFromTensor?
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_2/stack?
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_1?
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_2?
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
lstm_2/strided_slice_2?
"lstm_2/lstm_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_2/lstm_cell_2/ones_like/Shape?
"lstm_2/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"lstm_2/lstm_cell_2/ones_like/Const?
lstm_2/lstm_cell_2/ones_likeFill+lstm_2/lstm_cell_2/ones_like/Shape:output:0+lstm_2/lstm_cell_2/ones_like/Const:output:0*
T0*
_output_shapes

:2
lstm_2/lstm_cell_2/ones_like?
lstm_2/lstm_cell_2/mulMullstm_2/strided_slice_2:output:0%lstm_2/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes

:2
lstm_2/lstm_cell_2/mul?
(lstm_2/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp1lstm_2_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(lstm_2/lstm_cell_2/MatMul/ReadVariableOp?
lstm_2/lstm_cell_2/MatMulMatMullstm_2/lstm_cell_2/mul:z:00lstm_2/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_2/lstm_cell_2/MatMul?
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02,
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp?
lstm_2/lstm_cell_2/MatMul_1MatMullstm_2/zeros:output:02lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_2/lstm_cell_2/MatMul_1?
lstm_2/lstm_cell_2/addAddV2#lstm_2/lstm_cell_2/MatMul:product:0%lstm_2/lstm_cell_2/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_2/lstm_cell_2/add?
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp?
lstm_2/lstm_cell_2/BiasAddBiasAddlstm_2/lstm_cell_2/add:z:01lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_2/lstm_cell_2/BiasAdd?
"lstm_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_2/lstm_cell_2/split/split_dim?
lstm_2/lstm_cell_2/splitSplit+lstm_2/lstm_cell_2/split/split_dim:output:0#lstm_2/lstm_cell_2/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_2/lstm_cell_2/split?
lstm_2/lstm_cell_2/SigmoidSigmoid!lstm_2/lstm_cell_2/split:output:0*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/Sigmoid?
lstm_2/lstm_cell_2/Sigmoid_1Sigmoid!lstm_2/lstm_cell_2/split:output:1*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/Sigmoid_1?
lstm_2/lstm_cell_2/mul_1Mul lstm_2/lstm_cell_2/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/mul_1?
lstm_2/lstm_cell_2/ReluRelu!lstm_2/lstm_cell_2/split:output:2*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/Relu?
lstm_2/lstm_cell_2/mul_2Mullstm_2/lstm_cell_2/Sigmoid:y:0%lstm_2/lstm_cell_2/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/mul_2?
lstm_2/lstm_cell_2/add_1AddV2lstm_2/lstm_cell_2/mul_1:z:0lstm_2/lstm_cell_2/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/add_1?
lstm_2/lstm_cell_2/Sigmoid_2Sigmoid!lstm_2/lstm_cell_2/split:output:3*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/Sigmoid_2?
lstm_2/lstm_cell_2/Relu_1Relulstm_2/lstm_cell_2/add_1:z:0*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/Relu_1?
lstm_2/lstm_cell_2/mul_3Mul lstm_2/lstm_cell_2/Sigmoid_2:y:0'lstm_2/lstm_cell_2/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_2/lstm_cell_2/mul_3?
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$lstm_2/TensorArrayV2_1/element_shape?
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2_1\
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/time?
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_2/while/maximum_iterationsx
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/while/loop_counter?
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_2_lstm_cell_2_matmul_readvariableop_resource3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource2lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_2_while_body_20466*#
condR
lstm_2_while_cond_20465*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
lstm_2/while?
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02+
)lstm_2/TensorArrayV2Stack/TensorListStack?
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_2/strided_slice_3/stack?
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_2/strided_slice_3/stack_1?
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_3/stack_2?
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
lstm_2/strided_slice_3?
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose_1/perm?
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
lstm_2/transpose_1t
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/runtimeq
lstm_3/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/Shape?
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice/stack?
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_1?
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_2?
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slicej
lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros/mul/y?
lstm_3/zeros/mulMullstm_3/strided_slice:output:0lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/mulm
lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros/Less/y?
lstm_3/zeros/LessLesslstm_3/zeros/mul:z:0lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/Lessp
lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros/packed/1?
lstm_3/zeros/packedPacklstm_3/strided_slice:output:0lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros/packedm
lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros/Const?
lstm_3/zerosFilllstm_3/zeros/packed:output:0lstm_3/zeros/Const:output:0*
T0*
_output_shapes

: 2
lstm_3/zerosn
lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros_1/mul/y?
lstm_3/zeros_1/mulMullstm_3/strided_slice:output:0lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/mulq
lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros_1/Less/y?
lstm_3/zeros_1/LessLesslstm_3/zeros_1/mul:z:0lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/Lesst
lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/zeros_1/packed/1?
lstm_3/zeros_1/packedPacklstm_3/strided_slice:output:0 lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros_1/packedq
lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros_1/Const?
lstm_3/zeros_1Filllstm_3/zeros_1/packed:output:0lstm_3/zeros_1/Const:output:0*
T0*
_output_shapes

: 2
lstm_3/zeros_1?
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose/perm?
lstm_3/transpose	Transposelstm_2/transpose_1:y:0lstm_3/transpose/perm:output:0*
T0*"
_output_shapes
: 2
lstm_3/transposeu
lstm_3/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/Shape_1?
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_1/stack?
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_1?
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_2?
lstm_3/strided_slice_1StridedSlicelstm_3/Shape_1:output:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slice_1?
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_3/TensorArrayV2/element_shape?
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2?
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2>
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_3/TensorArrayUnstack/TensorListFromTensor?
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_2/stack?
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_1?
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_2?
lstm_3/strided_slice_2StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
lstm_3/strided_slice_2?
"lstm_3/lstm_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2$
"lstm_3/lstm_cell_3/ones_like/Shape?
"lstm_3/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"lstm_3/lstm_cell_3/ones_like/Const?
lstm_3/lstm_cell_3/ones_likeFill+lstm_3/lstm_cell_3/ones_like/Shape:output:0+lstm_3/lstm_cell_3/ones_like/Const:output:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/ones_like?
lstm_3/lstm_cell_3/mulMullstm_3/strided_slice_2:output:0%lstm_3/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/mul?
(lstm_3/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp1lstm_3_lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02*
(lstm_3/lstm_cell_3/MatMul/ReadVariableOp?
lstm_3/lstm_cell_3/MatMulMatMullstm_3/lstm_cell_3/mul:z:00lstm_3/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_3/lstm_cell_3/MatMul?
*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp3lstm_3_lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02,
*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp?
lstm_3/lstm_cell_3/MatMul_1MatMullstm_3/zeros:output:02lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_3/lstm_cell_3/MatMul_1?
lstm_3/lstm_cell_3/addAddV2#lstm_3/lstm_cell_3/MatMul:product:0%lstm_3/lstm_cell_3/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_3/lstm_cell_3/add?
)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp2lstm_3_lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp?
lstm_3/lstm_cell_3/BiasAddBiasAddlstm_3/lstm_cell_3/add:z:01lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_3/lstm_cell_3/BiasAdd?
"lstm_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_3/lstm_cell_3/split/split_dim?
lstm_3/lstm_cell_3/splitSplit+lstm_3/lstm_cell_3/split/split_dim:output:0#lstm_3/lstm_cell_3/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_3/lstm_cell_3/split?
lstm_3/lstm_cell_3/SigmoidSigmoid!lstm_3/lstm_cell_3/split:output:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/Sigmoid?
lstm_3/lstm_cell_3/Sigmoid_1Sigmoid!lstm_3/lstm_cell_3/split:output:1*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/Sigmoid_1?
lstm_3/lstm_cell_3/mul_1Mul lstm_3/lstm_cell_3/Sigmoid_1:y:0lstm_3/zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/mul_1?
lstm_3/lstm_cell_3/ReluRelu!lstm_3/lstm_cell_3/split:output:2*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/Relu?
lstm_3/lstm_cell_3/mul_2Mullstm_3/lstm_cell_3/Sigmoid:y:0%lstm_3/lstm_cell_3/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/mul_2?
lstm_3/lstm_cell_3/add_1AddV2lstm_3/lstm_cell_3/mul_1:z:0lstm_3/lstm_cell_3/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/add_1?
lstm_3/lstm_cell_3/Sigmoid_2Sigmoid!lstm_3/lstm_cell_3/split:output:3*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/Sigmoid_2?
lstm_3/lstm_cell_3/Relu_1Relulstm_3/lstm_cell_3/add_1:z:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/Relu_1?
lstm_3/lstm_cell_3/mul_3Mul lstm_3/lstm_cell_3/Sigmoid_2:y:0'lstm_3/lstm_cell_3/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_3/lstm_cell_3/mul_3?
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$lstm_3/TensorArrayV2_1/element_shape?
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2_1\
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/time?
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_3/while/maximum_iterationsx
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/while/loop_counter?
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0lstm_3/zeros:output:0lstm_3/zeros_1:output:0lstm_3/strided_slice_1:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_3_lstm_cell_3_matmul_readvariableop_resource3lstm_3_lstm_cell_3_matmul_1_readvariableop_resource2lstm_3_lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_3_while_body_20621*#
condR
lstm_3_while_cond_20620*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
lstm_3/while?
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02+
)lstm_3/TensorArrayV2Stack/TensorListStack?
lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_3/strided_slice_3/stack?
lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_3/strided_slice_3/stack_1?
lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_3/stack_2?
lstm_3/strided_slice_3StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_3/stack:output:0'lstm_3/strided_slice_3/stack_1:output:0'lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
lstm_3/strided_slice_3?
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose_1/perm?
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
lstm_3/transpose_1t
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/runtime?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMullstm_3/strided_slice_3:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_1/BiasAdd?
IdentityIdentitydense_1/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*^lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)^lstm_2/lstm_cell_2/MatMul/ReadVariableOp+^lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp^lstm_2/while*^lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp)^lstm_3/lstm_cell_3/MatMul/ReadVariableOp+^lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp^lstm_3/while*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:: : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2V
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp2T
(lstm_2/lstm_cell_2/MatMul/ReadVariableOp(lstm_2/lstm_cell_2/MatMul/ReadVariableOp2X
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while2V
)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp2T
(lstm_3/lstm_cell_3/MatMul/ReadVariableOp(lstm_3/lstm_cell_3/MatMul/ReadVariableOp2X
*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp2
lstm_3/whilelstm_3/while:J F
"
_output_shapes
:
 
_user_specified_nameinputs
??
?	
 __inference__wrapped_model_17983
input_2Q
>sequential_1_lstm_2_lstm_cell_2_matmul_readvariableop_resource:	?S
@sequential_1_lstm_2_lstm_cell_2_matmul_1_readvariableop_resource:	 ?N
?sequential_1_lstm_2_lstm_cell_2_biasadd_readvariableop_resource:	?Q
>sequential_1_lstm_3_lstm_cell_3_matmul_readvariableop_resource:	 ?S
@sequential_1_lstm_3_lstm_cell_3_matmul_1_readvariableop_resource:	 ?N
?sequential_1_lstm_3_lstm_cell_3_biasadd_readvariableop_resource:	?E
3sequential_1_dense_1_matmul_readvariableop_resource: B
4sequential_1_dense_1_biasadd_readvariableop_resource:
identity??+sequential_1/dense_1/BiasAdd/ReadVariableOp?*sequential_1/dense_1/MatMul/ReadVariableOp?6sequential_1/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp?5sequential_1/lstm_2/lstm_cell_2/MatMul/ReadVariableOp?7sequential_1/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp?sequential_1/lstm_2/while?6sequential_1/lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp?5sequential_1/lstm_3/lstm_cell_3/MatMul/ReadVariableOp?7sequential_1/lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp?sequential_1/lstm_3/while?
sequential_1/lstm_2/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
sequential_1/lstm_2/Shape?
'sequential_1/lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_2/strided_slice/stack?
)sequential_1/lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_2/strided_slice/stack_1?
)sequential_1/lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_2/strided_slice/stack_2?
!sequential_1/lstm_2/strided_sliceStridedSlice"sequential_1/lstm_2/Shape:output:00sequential_1/lstm_2/strided_slice/stack:output:02sequential_1/lstm_2/strided_slice/stack_1:output:02sequential_1/lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_2/strided_slice?
sequential_1/lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2!
sequential_1/lstm_2/zeros/mul/y?
sequential_1/lstm_2/zeros/mulMul*sequential_1/lstm_2/strided_slice:output:0(sequential_1/lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_2/zeros/mul?
 sequential_1/lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_1/lstm_2/zeros/Less/y?
sequential_1/lstm_2/zeros/LessLess!sequential_1/lstm_2/zeros/mul:z:0)sequential_1/lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_2/zeros/Less?
"sequential_1/lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential_1/lstm_2/zeros/packed/1?
 sequential_1/lstm_2/zeros/packedPack*sequential_1/lstm_2/strided_slice:output:0+sequential_1/lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_2/zeros/packed?
sequential_1/lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_2/zeros/Const?
sequential_1/lstm_2/zerosFill)sequential_1/lstm_2/zeros/packed:output:0(sequential_1/lstm_2/zeros/Const:output:0*
T0*
_output_shapes

: 2
sequential_1/lstm_2/zeros?
!sequential_1/lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_1/lstm_2/zeros_1/mul/y?
sequential_1/lstm_2/zeros_1/mulMul*sequential_1/lstm_2/strided_slice:output:0*sequential_1/lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_2/zeros_1/mul?
"sequential_1/lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_1/lstm_2/zeros_1/Less/y?
 sequential_1/lstm_2/zeros_1/LessLess#sequential_1/lstm_2/zeros_1/mul:z:0+sequential_1/lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_2/zeros_1/Less?
$sequential_1/lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/lstm_2/zeros_1/packed/1?
"sequential_1/lstm_2/zeros_1/packedPack*sequential_1/lstm_2/strided_slice:output:0-sequential_1/lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_2/zeros_1/packed?
!sequential_1/lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_2/zeros_1/Const?
sequential_1/lstm_2/zeros_1Fill+sequential_1/lstm_2/zeros_1/packed:output:0*sequential_1/lstm_2/zeros_1/Const:output:0*
T0*
_output_shapes

: 2
sequential_1/lstm_2/zeros_1?
"sequential_1/lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/lstm_2/transpose/perm?
sequential_1/lstm_2/transpose	Transposeinput_2+sequential_1/lstm_2/transpose/perm:output:0*
T0*"
_output_shapes
:2
sequential_1/lstm_2/transpose?
sequential_1/lstm_2/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         2
sequential_1/lstm_2/Shape_1?
)sequential_1/lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_2/strided_slice_1/stack?
+sequential_1/lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_1/stack_1?
+sequential_1/lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_1/stack_2?
#sequential_1/lstm_2/strided_slice_1StridedSlice$sequential_1/lstm_2/Shape_1:output:02sequential_1/lstm_2/strided_slice_1/stack:output:04sequential_1/lstm_2/strided_slice_1/stack_1:output:04sequential_1/lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_1?
/sequential_1/lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_1/lstm_2/TensorArrayV2/element_shape?
!sequential_1/lstm_2/TensorArrayV2TensorListReserve8sequential_1/lstm_2/TensorArrayV2/element_shape:output:0,sequential_1/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/lstm_2/TensorArrayV2?
Isequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2K
Isequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape?
;sequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_2/transpose:y:0Rsequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor?
)sequential_1/lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_2/strided_slice_2/stack?
+sequential_1/lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_2/stack_1?
+sequential_1/lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_2/stack_2?
#sequential_1/lstm_2/strided_slice_2StridedSlice!sequential_1/lstm_2/transpose:y:02sequential_1/lstm_2/strided_slice_2/stack:output:04sequential_1/lstm_2/strided_slice_2/stack_1:output:04sequential_1/lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_2?
/sequential_1/lstm_2/lstm_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      21
/sequential_1/lstm_2/lstm_cell_2/ones_like/Shape?
/sequential_1/lstm_2/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_1/lstm_2/lstm_cell_2/ones_like/Const?
)sequential_1/lstm_2/lstm_cell_2/ones_likeFill8sequential_1/lstm_2/lstm_cell_2/ones_like/Shape:output:08sequential_1/lstm_2/lstm_cell_2/ones_like/Const:output:0*
T0*
_output_shapes

:2+
)sequential_1/lstm_2/lstm_cell_2/ones_like?
#sequential_1/lstm_2/lstm_cell_2/mulMul,sequential_1/lstm_2/strided_slice_2:output:02sequential_1/lstm_2/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes

:2%
#sequential_1/lstm_2/lstm_cell_2/mul?
5sequential_1/lstm_2/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp>sequential_1_lstm_2_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype027
5sequential_1/lstm_2/lstm_cell_2/MatMul/ReadVariableOp?
&sequential_1/lstm_2/lstm_cell_2/MatMulMatMul'sequential_1/lstm_2/lstm_cell_2/mul:z:0=sequential_1/lstm_2/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2(
&sequential_1/lstm_2/lstm_cell_2/MatMul?
7sequential_1/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp@sequential_1_lstm_2_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype029
7sequential_1/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp?
(sequential_1/lstm_2/lstm_cell_2/MatMul_1MatMul"sequential_1/lstm_2/zeros:output:0?sequential_1/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2*
(sequential_1/lstm_2/lstm_cell_2/MatMul_1?
#sequential_1/lstm_2/lstm_cell_2/addAddV20sequential_1/lstm_2/lstm_cell_2/MatMul:product:02sequential_1/lstm_2/lstm_cell_2/MatMul_1:product:0*
T0*
_output_shapes
:	?2%
#sequential_1/lstm_2/lstm_cell_2/add?
6sequential_1/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_1/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp?
'sequential_1/lstm_2/lstm_cell_2/BiasAddBiasAdd'sequential_1/lstm_2/lstm_cell_2/add:z:0>sequential_1/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2)
'sequential_1/lstm_2/lstm_cell_2/BiasAdd?
/sequential_1/lstm_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_1/lstm_2/lstm_cell_2/split/split_dim?
%sequential_1/lstm_2/lstm_cell_2/splitSplit8sequential_1/lstm_2/lstm_cell_2/split/split_dim:output:00sequential_1/lstm_2/lstm_cell_2/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2'
%sequential_1/lstm_2/lstm_cell_2/split?
'sequential_1/lstm_2/lstm_cell_2/SigmoidSigmoid.sequential_1/lstm_2/lstm_cell_2/split:output:0*
T0*
_output_shapes

: 2)
'sequential_1/lstm_2/lstm_cell_2/Sigmoid?
)sequential_1/lstm_2/lstm_cell_2/Sigmoid_1Sigmoid.sequential_1/lstm_2/lstm_cell_2/split:output:1*
T0*
_output_shapes

: 2+
)sequential_1/lstm_2/lstm_cell_2/Sigmoid_1?
%sequential_1/lstm_2/lstm_cell_2/mul_1Mul-sequential_1/lstm_2/lstm_cell_2/Sigmoid_1:y:0$sequential_1/lstm_2/zeros_1:output:0*
T0*
_output_shapes

: 2'
%sequential_1/lstm_2/lstm_cell_2/mul_1?
$sequential_1/lstm_2/lstm_cell_2/ReluRelu.sequential_1/lstm_2/lstm_cell_2/split:output:2*
T0*
_output_shapes

: 2&
$sequential_1/lstm_2/lstm_cell_2/Relu?
%sequential_1/lstm_2/lstm_cell_2/mul_2Mul+sequential_1/lstm_2/lstm_cell_2/Sigmoid:y:02sequential_1/lstm_2/lstm_cell_2/Relu:activations:0*
T0*
_output_shapes

: 2'
%sequential_1/lstm_2/lstm_cell_2/mul_2?
%sequential_1/lstm_2/lstm_cell_2/add_1AddV2)sequential_1/lstm_2/lstm_cell_2/mul_1:z:0)sequential_1/lstm_2/lstm_cell_2/mul_2:z:0*
T0*
_output_shapes

: 2'
%sequential_1/lstm_2/lstm_cell_2/add_1?
)sequential_1/lstm_2/lstm_cell_2/Sigmoid_2Sigmoid.sequential_1/lstm_2/lstm_cell_2/split:output:3*
T0*
_output_shapes

: 2+
)sequential_1/lstm_2/lstm_cell_2/Sigmoid_2?
&sequential_1/lstm_2/lstm_cell_2/Relu_1Relu)sequential_1/lstm_2/lstm_cell_2/add_1:z:0*
T0*
_output_shapes

: 2(
&sequential_1/lstm_2/lstm_cell_2/Relu_1?
%sequential_1/lstm_2/lstm_cell_2/mul_3Mul-sequential_1/lstm_2/lstm_cell_2/Sigmoid_2:y:04sequential_1/lstm_2/lstm_cell_2/Relu_1:activations:0*
T0*
_output_shapes

: 2'
%sequential_1/lstm_2/lstm_cell_2/mul_3?
1sequential_1/lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       23
1sequential_1/lstm_2/TensorArrayV2_1/element_shape?
#sequential_1/lstm_2/TensorArrayV2_1TensorListReserve:sequential_1/lstm_2/TensorArrayV2_1/element_shape:output:0,sequential_1/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_1/lstm_2/TensorArrayV2_1v
sequential_1/lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_1/lstm_2/time?
,sequential_1/lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,sequential_1/lstm_2/while/maximum_iterations?
&sequential_1/lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/lstm_2/while/loop_counter?
sequential_1/lstm_2/whileWhile/sequential_1/lstm_2/while/loop_counter:output:05sequential_1/lstm_2/while/maximum_iterations:output:0!sequential_1/lstm_2/time:output:0,sequential_1/lstm_2/TensorArrayV2_1:handle:0"sequential_1/lstm_2/zeros:output:0$sequential_1/lstm_2/zeros_1:output:0,sequential_1/lstm_2/strided_slice_1:output:0Ksequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_1_lstm_2_lstm_cell_2_matmul_readvariableop_resource@sequential_1_lstm_2_lstm_cell_2_matmul_1_readvariableop_resource?sequential_1_lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$sequential_1_lstm_2_while_body_17734*0
cond(R&
$sequential_1_lstm_2_while_cond_17733*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
sequential_1/lstm_2/while?
Dsequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2F
Dsequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape?
6sequential_1/lstm_2/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_2/while:output:3Msequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype028
6sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack?
)sequential_1/lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)sequential_1/lstm_2/strided_slice_3/stack?
+sequential_1/lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/lstm_2/strided_slice_3/stack_1?
+sequential_1/lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_3/stack_2?
#sequential_1/lstm_2/strided_slice_3StridedSlice?sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_2/strided_slice_3/stack:output:04sequential_1/lstm_2/strided_slice_3/stack_1:output:04sequential_1/lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_3?
$sequential_1/lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/lstm_2/transpose_1/perm?
sequential_1/lstm_2/transpose_1	Transpose?sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_2/transpose_1/perm:output:0*
T0*"
_output_shapes
: 2!
sequential_1/lstm_2/transpose_1?
sequential_1/lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/lstm_2/runtime?
sequential_1/lstm_3/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
sequential_1/lstm_3/Shape?
'sequential_1/lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_3/strided_slice/stack?
)sequential_1/lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_3/strided_slice/stack_1?
)sequential_1/lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_3/strided_slice/stack_2?
!sequential_1/lstm_3/strided_sliceStridedSlice"sequential_1/lstm_3/Shape:output:00sequential_1/lstm_3/strided_slice/stack:output:02sequential_1/lstm_3/strided_slice/stack_1:output:02sequential_1/lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_3/strided_slice?
sequential_1/lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2!
sequential_1/lstm_3/zeros/mul/y?
sequential_1/lstm_3/zeros/mulMul*sequential_1/lstm_3/strided_slice:output:0(sequential_1/lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_3/zeros/mul?
 sequential_1/lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_1/lstm_3/zeros/Less/y?
sequential_1/lstm_3/zeros/LessLess!sequential_1/lstm_3/zeros/mul:z:0)sequential_1/lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_3/zeros/Less?
"sequential_1/lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential_1/lstm_3/zeros/packed/1?
 sequential_1/lstm_3/zeros/packedPack*sequential_1/lstm_3/strided_slice:output:0+sequential_1/lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_3/zeros/packed?
sequential_1/lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_3/zeros/Const?
sequential_1/lstm_3/zerosFill)sequential_1/lstm_3/zeros/packed:output:0(sequential_1/lstm_3/zeros/Const:output:0*
T0*
_output_shapes

: 2
sequential_1/lstm_3/zeros?
!sequential_1/lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_1/lstm_3/zeros_1/mul/y?
sequential_1/lstm_3/zeros_1/mulMul*sequential_1/lstm_3/strided_slice:output:0*sequential_1/lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_3/zeros_1/mul?
"sequential_1/lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_1/lstm_3/zeros_1/Less/y?
 sequential_1/lstm_3/zeros_1/LessLess#sequential_1/lstm_3/zeros_1/mul:z:0+sequential_1/lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_3/zeros_1/Less?
$sequential_1/lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/lstm_3/zeros_1/packed/1?
"sequential_1/lstm_3/zeros_1/packedPack*sequential_1/lstm_3/strided_slice:output:0-sequential_1/lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_3/zeros_1/packed?
!sequential_1/lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_3/zeros_1/Const?
sequential_1/lstm_3/zeros_1Fill+sequential_1/lstm_3/zeros_1/packed:output:0*sequential_1/lstm_3/zeros_1/Const:output:0*
T0*
_output_shapes

: 2
sequential_1/lstm_3/zeros_1?
"sequential_1/lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/lstm_3/transpose/perm?
sequential_1/lstm_3/transpose	Transpose#sequential_1/lstm_2/transpose_1:y:0+sequential_1/lstm_3/transpose/perm:output:0*
T0*"
_output_shapes
: 2
sequential_1/lstm_3/transpose?
sequential_1/lstm_3/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"          2
sequential_1/lstm_3/Shape_1?
)sequential_1/lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_3/strided_slice_1/stack?
+sequential_1/lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_3/strided_slice_1/stack_1?
+sequential_1/lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_3/strided_slice_1/stack_2?
#sequential_1/lstm_3/strided_slice_1StridedSlice$sequential_1/lstm_3/Shape_1:output:02sequential_1/lstm_3/strided_slice_1/stack:output:04sequential_1/lstm_3/strided_slice_1/stack_1:output:04sequential_1/lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/lstm_3/strided_slice_1?
/sequential_1/lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_1/lstm_3/TensorArrayV2/element_shape?
!sequential_1/lstm_3/TensorArrayV2TensorListReserve8sequential_1/lstm_3/TensorArrayV2/element_shape:output:0,sequential_1/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/lstm_3/TensorArrayV2?
Isequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2K
Isequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape?
;sequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_3/transpose:y:0Rsequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensor?
)sequential_1/lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_3/strided_slice_2/stack?
+sequential_1/lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_3/strided_slice_2/stack_1?
+sequential_1/lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_3/strided_slice_2/stack_2?
#sequential_1/lstm_3/strided_slice_2StridedSlice!sequential_1/lstm_3/transpose:y:02sequential_1/lstm_3/strided_slice_2/stack:output:04sequential_1/lstm_3/strided_slice_2/stack_1:output:04sequential_1/lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2%
#sequential_1/lstm_3/strided_slice_2?
/sequential_1/lstm_3/lstm_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       21
/sequential_1/lstm_3/lstm_cell_3/ones_like/Shape?
/sequential_1/lstm_3/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_1/lstm_3/lstm_cell_3/ones_like/Const?
)sequential_1/lstm_3/lstm_cell_3/ones_likeFill8sequential_1/lstm_3/lstm_cell_3/ones_like/Shape:output:08sequential_1/lstm_3/lstm_cell_3/ones_like/Const:output:0*
T0*
_output_shapes

: 2+
)sequential_1/lstm_3/lstm_cell_3/ones_like?
#sequential_1/lstm_3/lstm_cell_3/mulMul,sequential_1/lstm_3/strided_slice_2:output:02sequential_1/lstm_3/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes

: 2%
#sequential_1/lstm_3/lstm_cell_3/mul?
5sequential_1/lstm_3/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp>sequential_1_lstm_3_lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype027
5sequential_1/lstm_3/lstm_cell_3/MatMul/ReadVariableOp?
&sequential_1/lstm_3/lstm_cell_3/MatMulMatMul'sequential_1/lstm_3/lstm_cell_3/mul:z:0=sequential_1/lstm_3/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2(
&sequential_1/lstm_3/lstm_cell_3/MatMul?
7sequential_1/lstm_3/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp@sequential_1_lstm_3_lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype029
7sequential_1/lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp?
(sequential_1/lstm_3/lstm_cell_3/MatMul_1MatMul"sequential_1/lstm_3/zeros:output:0?sequential_1/lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2*
(sequential_1/lstm_3/lstm_cell_3/MatMul_1?
#sequential_1/lstm_3/lstm_cell_3/addAddV20sequential_1/lstm_3/lstm_cell_3/MatMul:product:02sequential_1/lstm_3/lstm_cell_3/MatMul_1:product:0*
T0*
_output_shapes
:	?2%
#sequential_1/lstm_3/lstm_cell_3/add?
6sequential_1/lstm_3/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_lstm_3_lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_1/lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp?
'sequential_1/lstm_3/lstm_cell_3/BiasAddBiasAdd'sequential_1/lstm_3/lstm_cell_3/add:z:0>sequential_1/lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2)
'sequential_1/lstm_3/lstm_cell_3/BiasAdd?
/sequential_1/lstm_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_1/lstm_3/lstm_cell_3/split/split_dim?
%sequential_1/lstm_3/lstm_cell_3/splitSplit8sequential_1/lstm_3/lstm_cell_3/split/split_dim:output:00sequential_1/lstm_3/lstm_cell_3/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2'
%sequential_1/lstm_3/lstm_cell_3/split?
'sequential_1/lstm_3/lstm_cell_3/SigmoidSigmoid.sequential_1/lstm_3/lstm_cell_3/split:output:0*
T0*
_output_shapes

: 2)
'sequential_1/lstm_3/lstm_cell_3/Sigmoid?
)sequential_1/lstm_3/lstm_cell_3/Sigmoid_1Sigmoid.sequential_1/lstm_3/lstm_cell_3/split:output:1*
T0*
_output_shapes

: 2+
)sequential_1/lstm_3/lstm_cell_3/Sigmoid_1?
%sequential_1/lstm_3/lstm_cell_3/mul_1Mul-sequential_1/lstm_3/lstm_cell_3/Sigmoid_1:y:0$sequential_1/lstm_3/zeros_1:output:0*
T0*
_output_shapes

: 2'
%sequential_1/lstm_3/lstm_cell_3/mul_1?
$sequential_1/lstm_3/lstm_cell_3/ReluRelu.sequential_1/lstm_3/lstm_cell_3/split:output:2*
T0*
_output_shapes

: 2&
$sequential_1/lstm_3/lstm_cell_3/Relu?
%sequential_1/lstm_3/lstm_cell_3/mul_2Mul+sequential_1/lstm_3/lstm_cell_3/Sigmoid:y:02sequential_1/lstm_3/lstm_cell_3/Relu:activations:0*
T0*
_output_shapes

: 2'
%sequential_1/lstm_3/lstm_cell_3/mul_2?
%sequential_1/lstm_3/lstm_cell_3/add_1AddV2)sequential_1/lstm_3/lstm_cell_3/mul_1:z:0)sequential_1/lstm_3/lstm_cell_3/mul_2:z:0*
T0*
_output_shapes

: 2'
%sequential_1/lstm_3/lstm_cell_3/add_1?
)sequential_1/lstm_3/lstm_cell_3/Sigmoid_2Sigmoid.sequential_1/lstm_3/lstm_cell_3/split:output:3*
T0*
_output_shapes

: 2+
)sequential_1/lstm_3/lstm_cell_3/Sigmoid_2?
&sequential_1/lstm_3/lstm_cell_3/Relu_1Relu)sequential_1/lstm_3/lstm_cell_3/add_1:z:0*
T0*
_output_shapes

: 2(
&sequential_1/lstm_3/lstm_cell_3/Relu_1?
%sequential_1/lstm_3/lstm_cell_3/mul_3Mul-sequential_1/lstm_3/lstm_cell_3/Sigmoid_2:y:04sequential_1/lstm_3/lstm_cell_3/Relu_1:activations:0*
T0*
_output_shapes

: 2'
%sequential_1/lstm_3/lstm_cell_3/mul_3?
1sequential_1/lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       23
1sequential_1/lstm_3/TensorArrayV2_1/element_shape?
#sequential_1/lstm_3/TensorArrayV2_1TensorListReserve:sequential_1/lstm_3/TensorArrayV2_1/element_shape:output:0,sequential_1/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_1/lstm_3/TensorArrayV2_1v
sequential_1/lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_1/lstm_3/time?
,sequential_1/lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,sequential_1/lstm_3/while/maximum_iterations?
&sequential_1/lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/lstm_3/while/loop_counter?
sequential_1/lstm_3/whileWhile/sequential_1/lstm_3/while/loop_counter:output:05sequential_1/lstm_3/while/maximum_iterations:output:0!sequential_1/lstm_3/time:output:0,sequential_1/lstm_3/TensorArrayV2_1:handle:0"sequential_1/lstm_3/zeros:output:0$sequential_1/lstm_3/zeros_1:output:0,sequential_1/lstm_3/strided_slice_1:output:0Ksequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_1_lstm_3_lstm_cell_3_matmul_readvariableop_resource@sequential_1_lstm_3_lstm_cell_3_matmul_1_readvariableop_resource?sequential_1_lstm_3_lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$sequential_1_lstm_3_while_body_17889*0
cond(R&
$sequential_1_lstm_3_while_cond_17888*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
sequential_1/lstm_3/while?
Dsequential_1/lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2F
Dsequential_1/lstm_3/TensorArrayV2Stack/TensorListStack/element_shape?
6sequential_1/lstm_3/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_3/while:output:3Msequential_1/lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype028
6sequential_1/lstm_3/TensorArrayV2Stack/TensorListStack?
)sequential_1/lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)sequential_1/lstm_3/strided_slice_3/stack?
+sequential_1/lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/lstm_3/strided_slice_3/stack_1?
+sequential_1/lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_3/strided_slice_3/stack_2?
#sequential_1/lstm_3/strided_slice_3StridedSlice?sequential_1/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_3/strided_slice_3/stack:output:04sequential_1/lstm_3/strided_slice_3/stack_1:output:04sequential_1/lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2%
#sequential_1/lstm_3/strided_slice_3?
$sequential_1/lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/lstm_3/transpose_1/perm?
sequential_1/lstm_3/transpose_1	Transpose?sequential_1/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_3/transpose_1/perm:output:0*
T0*"
_output_shapes
: 2!
sequential_1/lstm_3/transpose_1?
sequential_1/lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/lstm_3/runtime?
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp?
sequential_1/dense_1/MatMulMatMul,sequential_1/lstm_3/strided_slice_3:output:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential_1/dense_1/MatMul?
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp?
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential_1/dense_1/BiasAdd?
IdentityIdentity%sequential_1/dense_1/BiasAdd:output:0,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp7^sequential_1/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp6^sequential_1/lstm_2/lstm_cell_2/MatMul/ReadVariableOp8^sequential_1/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp^sequential_1/lstm_2/while7^sequential_1/lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp6^sequential_1/lstm_3/lstm_cell_3/MatMul/ReadVariableOp8^sequential_1/lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp^sequential_1/lstm_3/while*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:: : : : : : : : 2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp2p
6sequential_1/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp6sequential_1/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp2n
5sequential_1/lstm_2/lstm_cell_2/MatMul/ReadVariableOp5sequential_1/lstm_2/lstm_cell_2/MatMul/ReadVariableOp2r
7sequential_1/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp7sequential_1/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp26
sequential_1/lstm_2/whilesequential_1/lstm_2/while2p
6sequential_1/lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp6sequential_1/lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp2n
5sequential_1/lstm_3/lstm_cell_3/MatMul/ReadVariableOp5sequential_1/lstm_3/lstm_cell_3/MatMul/ReadVariableOp2r
7sequential_1/lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp7sequential_1/lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp26
sequential_1/lstm_3/whilesequential_1/lstm_3/while:K G
"
_output_shapes
:
!
_user_specified_name	input_2
?]
?
A__inference_lstm_3_layer_call_and_return_conditional_losses_19654

inputs=
*lstm_cell_3_matmul_readvariableop_resource:	 ??
,lstm_cell_3_matmul_1_readvariableop_resource:	 ?:
+lstm_cell_3_biasadd_readvariableop_resource:	?
identity??"lstm_cell_3/BiasAdd/ReadVariableOp?!lstm_cell_3/MatMul/ReadVariableOp?#lstm_cell_3/MatMul_1/ReadVariableOp?whilec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constl
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes

: 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constt
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes

: 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permq
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
: 2
	transposeg
Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"          2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_2?
lstm_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_3/ones_like/Const?
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/ones_like?
lstm_cell_3/mulMulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul?
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_cell_3/MatMul/ReadVariableOp?
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_3/MatMul?
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_3/MatMul_1/ReadVariableOp?
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_3/MatMul_1?
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_3/add?
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_3/BiasAdd/ReadVariableOp?
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_3/BiasAdd|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim?
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_3/splitz
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/Sigmoid~
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_3/Sigmoid_1?
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul_1q
lstm_cell_3/ReluRelulstm_cell_3/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_3/Relu?
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul_2?
lstm_cell_3/add_1AddV2lstm_cell_3/mul_1:z:0lstm_cell_3/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_3/add_1~
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_3/Sigmoid_2p
lstm_cell_3/Relu_1Relulstm_cell_3/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_3/Relu_1?
lstm_cell_3/mul_3Mullstm_cell_3/Sigmoid_2:y:0 lstm_cell_3/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_3/mul_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_19566*
condR
while_cond_19565*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
: : : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
??
?
A__inference_lstm_2_layer_call_and_return_conditional_losses_21971

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	??
,lstm_cell_2_matmul_1_readvariableop_resource:	 ?:
+lstm_cell_2_biasadd_readvariableop_resource:	?
identity??"lstm_cell_2/BiasAdd/ReadVariableOp?!lstm_cell_2/MatMul/ReadVariableOp?#lstm_cell_2/MatMul_1/ReadVariableOp?whilec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constl
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes

: 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constt
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes

: 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permq
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:2
	transposeg
Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
strided_slice_2?
lstm_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_2/ones_like/Const?
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_2/ones_like{
lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_2/dropout/Const?
lstm_cell_2/dropout/MulMullstm_cell_2/ones_like:output:0"lstm_cell_2/dropout/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout/Mul?
lstm_cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_2/dropout/Shape?
0lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_2/dropout/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2??k22
0lstm_cell_2/dropout/random_uniform/RandomUniform?
"lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"lstm_cell_2/dropout/GreaterEqual/y?
 lstm_cell_2/dropout/GreaterEqualGreaterEqual9lstm_cell_2/dropout/random_uniform/RandomUniform:output:0+lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

:2"
 lstm_cell_2/dropout/GreaterEqual?
lstm_cell_2/dropout/CastCast$lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_2/dropout/Cast?
lstm_cell_2/dropout/Mul_1Mullstm_cell_2/dropout/Mul:z:0lstm_cell_2/dropout/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout/Mul_1
lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_2/dropout_1/Const?
lstm_cell_2/dropout_1/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_1/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout_1/Mul?
lstm_cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_2/dropout_1/Shape?
2lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???24
2lstm_cell_2/dropout_1/random_uniform/RandomUniform?
$lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_2/dropout_1/GreaterEqual/y?
"lstm_cell_2/dropout_1/GreaterEqualGreaterEqual;lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

:2$
"lstm_cell_2/dropout_1/GreaterEqual?
lstm_cell_2/dropout_1/CastCast&lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_2/dropout_1/Cast?
lstm_cell_2/dropout_1/Mul_1Mullstm_cell_2/dropout_1/Mul:z:0lstm_cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout_1/Mul_1
lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_2/dropout_2/Const?
lstm_cell_2/dropout_2/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_2/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout_2/Mul?
lstm_cell_2/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_2/dropout_2/Shape?
2lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_2/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2??N24
2lstm_cell_2/dropout_2/random_uniform/RandomUniform?
$lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_2/dropout_2/GreaterEqual/y?
"lstm_cell_2/dropout_2/GreaterEqualGreaterEqual;lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

:2$
"lstm_cell_2/dropout_2/GreaterEqual?
lstm_cell_2/dropout_2/CastCast&lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_2/dropout_2/Cast?
lstm_cell_2/dropout_2/Mul_1Mullstm_cell_2/dropout_2/Mul:z:0lstm_cell_2/dropout_2/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout_2/Mul_1
lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_2/dropout_3/Const?
lstm_cell_2/dropout_3/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_3/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout_3/Mul?
lstm_cell_2/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_2/dropout_3/Shape?
2lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_3/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???24
2lstm_cell_2/dropout_3/random_uniform/RandomUniform?
$lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_2/dropout_3/GreaterEqual/y?
"lstm_cell_2/dropout_3/GreaterEqualGreaterEqual;lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

:2$
"lstm_cell_2/dropout_3/GreaterEqual?
lstm_cell_2/dropout_3/CastCast&lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_2/dropout_3/Cast?
lstm_cell_2/dropout_3/Mul_1Mullstm_cell_2/dropout_3/Mul:z:0lstm_cell_2/dropout_3/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_2/dropout_3/Mul_1?
lstm_cell_2/mulMulstrided_slice_2:output:0lstm_cell_2/dropout/Mul_1:z:0*
T0*
_output_shapes

:2
lstm_cell_2/mul?
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_2/MatMul/ReadVariableOp?
lstm_cell_2/MatMulMatMullstm_cell_2/mul:z:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_2/MatMul?
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_2/MatMul_1/ReadVariableOp?
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_2/MatMul_1?
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_2/add?
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_2/BiasAdd/ReadVariableOp?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_2/BiasAdd|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_2/splitz
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_2/Sigmoid~
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_2/Sigmoid_1?
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_2/mul_1q
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_2/Relu?
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_2/mul_2?
lstm_cell_2/add_1AddV2lstm_cell_2/mul_1:z:0lstm_cell_2/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_2/add_1~
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_2/Sigmoid_2p
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_2/Relu_1?
lstm_cell_2/mul_3Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_2/mul_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_21851*
condR
while_cond_21850*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*
T0*"
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?P
?

lstm_2_while_body_20466*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0:	?N
;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	 ?I
:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0:	?
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorJ
7lstm_2_while_lstm_cell_2_matmul_readvariableop_resource:	?L
9lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource:	 ?G
8lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource:	???/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp?.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp?0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp?
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2@
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype022
0lstm_2/while/TensorArrayV2Read/TensorListGetItem?
(lstm_2/while/lstm_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_2/while/lstm_cell_2/ones_like/Shape?
(lstm_2/while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm_2/while/lstm_cell_2/ones_like/Const?
"lstm_2/while/lstm_cell_2/ones_likeFill1lstm_2/while/lstm_cell_2/ones_like/Shape:output:01lstm_2/while/lstm_cell_2/ones_like/Const:output:0*
T0*
_output_shapes

:2$
"lstm_2/while/lstm_cell_2/ones_like?
lstm_2/while/lstm_cell_2/mulMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_2/while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes

:2
lstm_2/while/lstm_cell_2/mul?
.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype020
.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp?
lstm_2/while/lstm_cell_2/MatMulMatMul lstm_2/while/lstm_cell_2/mul:z:06lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2!
lstm_2/while/lstm_cell_2/MatMul?
0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype022
0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp?
!lstm_2/while/lstm_cell_2/MatMul_1MatMullstm_2_while_placeholder_28lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!lstm_2/while/lstm_cell_2/MatMul_1?
lstm_2/while/lstm_cell_2/addAddV2)lstm_2/while/lstm_cell_2/MatMul:product:0+lstm_2/while/lstm_cell_2/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_2/while/lstm_cell_2/add?
/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp?
 lstm_2/while/lstm_cell_2/BiasAddBiasAdd lstm_2/while/lstm_cell_2/add:z:07lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2"
 lstm_2/while/lstm_cell_2/BiasAdd?
(lstm_2/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_2/while/lstm_cell_2/split/split_dim?
lstm_2/while/lstm_cell_2/splitSplit1lstm_2/while/lstm_cell_2/split/split_dim:output:0)lstm_2/while/lstm_cell_2/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2 
lstm_2/while/lstm_cell_2/split?
 lstm_2/while/lstm_cell_2/SigmoidSigmoid'lstm_2/while/lstm_cell_2/split:output:0*
T0*
_output_shapes

: 2"
 lstm_2/while/lstm_cell_2/Sigmoid?
"lstm_2/while/lstm_cell_2/Sigmoid_1Sigmoid'lstm_2/while/lstm_cell_2/split:output:1*
T0*
_output_shapes

: 2$
"lstm_2/while/lstm_cell_2/Sigmoid_1?
lstm_2/while/lstm_cell_2/mul_1Mul&lstm_2/while/lstm_cell_2/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*
_output_shapes

: 2 
lstm_2/while/lstm_cell_2/mul_1?
lstm_2/while/lstm_cell_2/ReluRelu'lstm_2/while/lstm_cell_2/split:output:2*
T0*
_output_shapes

: 2
lstm_2/while/lstm_cell_2/Relu?
lstm_2/while/lstm_cell_2/mul_2Mul$lstm_2/while/lstm_cell_2/Sigmoid:y:0+lstm_2/while/lstm_cell_2/Relu:activations:0*
T0*
_output_shapes

: 2 
lstm_2/while/lstm_cell_2/mul_2?
lstm_2/while/lstm_cell_2/add_1AddV2"lstm_2/while/lstm_cell_2/mul_1:z:0"lstm_2/while/lstm_cell_2/mul_2:z:0*
T0*
_output_shapes

: 2 
lstm_2/while/lstm_cell_2/add_1?
"lstm_2/while/lstm_cell_2/Sigmoid_2Sigmoid'lstm_2/while/lstm_cell_2/split:output:3*
T0*
_output_shapes

: 2$
"lstm_2/while/lstm_cell_2/Sigmoid_2?
lstm_2/while/lstm_cell_2/Relu_1Relu"lstm_2/while/lstm_cell_2/add_1:z:0*
T0*
_output_shapes

: 2!
lstm_2/while/lstm_cell_2/Relu_1?
lstm_2/while/lstm_cell_2/mul_3Mul&lstm_2/while/lstm_cell_2/Sigmoid_2:y:0-lstm_2/while/lstm_cell_2/Relu_1:activations:0*
T0*
_output_shapes

: 2 
lstm_2/while/lstm_cell_2/mul_3?
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder"lstm_2/while/lstm_cell_2/mul_3:z:0*
_output_shapes
: *
element_dtype023
1lstm_2/while/TensorArrayV2Write/TensorListSetItemj
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add/y?
lstm_2/while/addAddV2lstm_2_while_placeholderlstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/addn
lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add_1/y?
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/add_1?
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:00^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity?
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations0^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_1?
lstm_2/while/Identity_2Identitylstm_2/while/add:z:00^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_2?
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_3?
lstm_2/while/Identity_4Identity"lstm_2/while/lstm_cell_2/mul_3:z:00^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
lstm_2/while/Identity_4?
lstm_2/while/Identity_5Identity"lstm_2/while/lstm_cell_2/add_1:z:00^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
lstm_2/while/Identity_5"7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"v
8lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0"x
9lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0"t
7lstm_2_while_lstm_cell_2_matmul_readvariableop_resource9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0"?
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : 2b
/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp2`
.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp2d
0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_21659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_21659___redundant_placeholder03
/while_while_cond_21659___redundant_placeholder13
/while_while_cond_21659___redundant_placeholder23
/while_while_cond_21659___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
?E
?
A__inference_lstm_3_layer_call_and_return_conditional_losses_18815

inputs$
lstm_cell_3_18733:	 ?$
lstm_cell_3_18735:	 ? 
lstm_cell_3_18737:	?
identity??#lstm_cell_3/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_18733lstm_cell_3_18735lstm_cell_3_18737*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_187322%
#lstm_cell_3/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_18733lstm_cell_3_18735lstm_cell_3_18737*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_18746*
condR
while_cond_18745*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_3/StatefulPartitionedCall^while*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_19672

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOpj
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

: 
 
_user_specified_nameinputs
?G
?
while_body_22086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	 ?G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	 ?B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	 ?E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	 ?@
1while_lstm_cell_3_biasadd_readvariableop_resource:	???(while/lstm_cell_3/BiasAdd/ReadVariableOp?'while/lstm_cell_3/MatMul/ReadVariableOp?)while/lstm_cell_3/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_3/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape?
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_3/ones_like/Const?
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/ones_like?
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/mul?
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'while/lstm_cell_3/MatMul/ReadVariableOp?
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_3/MatMul?
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_3/MatMul_1/ReadVariableOp?
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_3/MatMul_1?
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_3/add?
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_3/BiasAdd/ReadVariableOp?
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_3/BiasAdd?
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dim?
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
while/lstm_cell_3/split?
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/Sigmoid?
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/Sigmoid_1?
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/mul_1?
while/lstm_cell_3/ReluRelu while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/Relu?
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid:y:0$while/lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/mul_2?
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul_1:z:0while/lstm_cell_3/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/add_1?
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/Sigmoid_2?
while/lstm_cell_3/Relu_1Reluwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/Relu_1?
while/lstm_cell_3/mul_3Mulwhile/lstm_cell_3/Sigmoid_2:y:0&while/lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_3/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_3/mul_3:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_21850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_21850___redundant_placeholder03
/while_while_cond_21850___redundant_placeholder13
/while_while_cond_21850___redundant_placeholder23
/while_while_cond_21850___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_20244

inputs
lstm_2_20224:	?
lstm_2_20226:	 ?
lstm_2_20228:	?
lstm_3_20231:	 ?
lstm_3_20233:	 ?
lstm_3_20235:	?
dense_1_20238: 
dense_1_20240:
identity??dense_1/StatefulPartitionedCall?lstm_2/StatefulPartitionedCall?lstm_3/StatefulPartitionedCall?
lstm_2/StatefulPartitionedCallStatefulPartitionedCallinputslstm_2_20224lstm_2_20226lstm_2_20228*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_201892 
lstm_2/StatefulPartitionedCall?
lstm_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0lstm_3_20231lstm_3_20233lstm_3_20235*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_199442 
lstm_3/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_1_20238dense_1_20240*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_196722!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:: : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
?
while_cond_20068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_20068___redundant_placeholder03
/while_while_cond_20068___redundant_placeholder13
/while_while_cond_20068___redundant_placeholder23
/while_while_cond_20068___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
?
?
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_18062

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:?????????2
	ones_like_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:?????????2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:????????? :????????? :????????? :????????? *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1`
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mul_1V
ReluRelusplit:output:2*
T0*'
_output_shapes
:????????? 2
Reluh
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_2_
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:????????? 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_3?
IdentityIdentity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity?

Identity_1Identity	mul_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?
?
while_cond_22085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_22085___redundant_placeholder03
/while_while_cond_22085___redundant_placeholder13
/while_while_cond_22085___redundant_placeholder23
/while_while_cond_22085___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
6
input_2+
serving_default_input_2:02
dense_1'
StatefulPartitionedCall:0tensorflow/serving/predict:??
?0
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
regularization_losses
trainable_variables
	variables
	keras_api

signatures
K__call__
L_default_save_signature
*M&call_and_return_all_conditional_losses"?-
_tf_keras_sequential?-{"name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [1, 16, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}, {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 14, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 15}], "build_input_shape": {"class_name": "TensorShape", "items": [1, 16, 2]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [1, 16, 2]}, "float32", "input_2"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [1, 16, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "shared_object_id": 0}, {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}, {"class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 10}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}]}}}
?
	cell


state_spec
regularization_losses
trainable_variables
	variables
	keras_api
N__call__
*O&call_and_return_all_conditional_losses"?
_tf_keras_rnn_layer?
{"name": "lstm_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 15}], "build_input_shape": {"class_name": "TensorShape", "items": [1, 16, 2]}}
?
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"?
_tf_keras_rnn_layer?
{"name": "lstm_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 10, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 32]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 16}], "build_input_shape": {"class_name": "TensorShape", "items": [1, 16, 32]}}
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R__call__
*S&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 17}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 32]}}
 "
trackable_list_wrapper
X
0
1
2
3
4
 5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
 5
6
7"
trackable_list_wrapper
?
regularization_losses
trainable_variables

!layers
"layer_regularization_losses
#non_trainable_variables
$metrics
%layer_metrics
	variables
K__call__
L_default_save_signature
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
,
Tserving_default"
signature_map
?	
&
state_size

kernel
recurrent_kernel
bias
'regularization_losses
(trainable_variables
)	variables
*	keras_api
U__call__
*V&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "lstm_cell_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_2", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 4}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
?
regularization_losses
trainable_variables
+layer_regularization_losses

,layers

-states
.non_trainable_variables
/metrics
0layer_metrics
	variables
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
?	
1
state_size

kernel
recurrent_kernel
 bias
2regularization_losses
3trainable_variables
4	variables
5	keras_api
W__call__
*X&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "lstm_cell_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_3", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 9}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
 2"
trackable_list_wrapper
5
0
1
 2"
trackable_list_wrapper
?
regularization_losses
trainable_variables
6layer_regularization_losses

7layers

8states
9non_trainable_variables
:metrics
;layer_metrics
	variables
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
 : 2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses
trainable_variables
<layer_regularization_losses

=layers
>non_trainable_variables
?metrics
@layer_metrics
	variables
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
,:*	?2lstm_2/lstm_cell_2/kernel
6:4	 ?2#lstm_2/lstm_cell_2/recurrent_kernel
&:$?2lstm_2/lstm_cell_2/bias
,:*	 ?2lstm_3/lstm_cell_3/kernel
6:4	 ?2#lstm_3/lstm_cell_3/recurrent_kernel
&:$?2lstm_3/lstm_cell_3/bias
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
?
'regularization_losses
(trainable_variables
Alayer_regularization_losses

Blayers
Cnon_trainable_variables
Dmetrics
Elayer_metrics
)	variables
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
	0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
 2"
trackable_list_wrapper
5
0
1
 2"
trackable_list_wrapper
?
2regularization_losses
3trainable_variables
Flayer_regularization_losses

Glayers
Hnon_trainable_variables
Imetrics
Jlayer_metrics
4	variables
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
,__inference_sequential_1_layer_call_fn_19698
,__inference_sequential_1_layer_call_fn_20374
,__inference_sequential_1_layer_call_fn_20395
,__inference_sequential_1_layer_call_fn_20284?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
 __inference__wrapped_model_17983?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *!?
?
input_2
?2?
G__inference_sequential_1_layer_call_and_return_conditional_losses_20715
G__inference_sequential_1_layer_call_and_return_conditional_losses_21163
G__inference_sequential_1_layer_call_and_return_conditional_losses_20307
G__inference_sequential_1_layer_call_and_return_conditional_losses_20330?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_lstm_2_layer_call_fn_21174
&__inference_lstm_2_layer_call_fn_21185
&__inference_lstm_2_layer_call_fn_21196
&__inference_lstm_2_layer_call_fn_21207?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_lstm_2_layer_call_and_return_conditional_losses_21366
A__inference_lstm_2_layer_call_and_return_conditional_losses_21589
A__inference_lstm_2_layer_call_and_return_conditional_losses_21748
A__inference_lstm_2_layer_call_and_return_conditional_losses_21971?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_lstm_3_layer_call_fn_21982
&__inference_lstm_3_layer_call_fn_21993
&__inference_lstm_3_layer_call_fn_22004
&__inference_lstm_3_layer_call_fn_22015?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_lstm_3_layer_call_and_return_conditional_losses_22174
A__inference_lstm_3_layer_call_and_return_conditional_losses_22397
A__inference_lstm_3_layer_call_and_return_conditional_losses_22556
A__inference_lstm_3_layer_call_and_return_conditional_losses_22779?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_dense_1_layer_call_fn_22788?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_1_layer_call_and_return_conditional_losses_22798?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_20353input_2"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_lstm_cell_2_layer_call_fn_22815
+__inference_lstm_cell_2_layer_call_fn_22832?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_22868
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_22936?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_lstm_cell_3_layer_call_fn_22953
+__inference_lstm_cell_3_layer_call_fn_22970?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_23006
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_23074?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
 __inference__wrapped_model_17983a +?(
!?
?
input_2
? "(?%
#
dense_1?
dense_1?
B__inference_dense_1_layer_call_and_return_conditional_losses_22798J&?#
?
?
inputs 
? "?
?
0
? h
'__inference_dense_1_layer_call_fn_22788=&?#
?
?
inputs 
? "??
A__inference_lstm_2_layer_call_and_return_conditional_losses_21366?O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "2?/
(?%
0?????????????????? 
? ?
A__inference_lstm_2_layer_call_and_return_conditional_losses_21589?O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "2?/
(?%
0?????????????????? 
? ?
A__inference_lstm_2_layer_call_and_return_conditional_losses_21748_6?3
,?)
?
inputs

 
p 

 
? " ?
?
0 
? ?
A__inference_lstm_2_layer_call_and_return_conditional_losses_21971_6?3
,?)
?
inputs

 
p

 
? " ?
?
0 
? ?
&__inference_lstm_2_layer_call_fn_21174}O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"?????????????????? ?
&__inference_lstm_2_layer_call_fn_21185}O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"?????????????????? |
&__inference_lstm_2_layer_call_fn_21196R6?3
,?)
?
inputs

 
p 

 
? "? |
&__inference_lstm_2_layer_call_fn_21207R6?3
,?)
?
inputs

 
p

 
? "? ?
A__inference_lstm_3_layer_call_and_return_conditional_losses_22174} O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p 

 
? "%?"
?
0????????? 
? ?
A__inference_lstm_3_layer_call_and_return_conditional_losses_22397} O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p

 
? "%?"
?
0????????? 
? ?
A__inference_lstm_3_layer_call_and_return_conditional_losses_22556[ 6?3
,?)
?
inputs 

 
p 

 
? "?
?
0 
? ?
A__inference_lstm_3_layer_call_and_return_conditional_losses_22779[ 6?3
,?)
?
inputs 

 
p

 
? "?
?
0 
? ?
&__inference_lstm_3_layer_call_fn_21982p O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p 

 
? "?????????? ?
&__inference_lstm_3_layer_call_fn_21993p O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p

 
? "?????????? x
&__inference_lstm_3_layer_call_fn_22004N 6?3
,?)
?
inputs 

 
p 

 
? "? x
&__inference_lstm_3_layer_call_fn_22015N 6?3
,?)
?
inputs 

 
p

 
? "? ?
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_22868???}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_22936???}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
+__inference_lstm_cell_2_layer_call_fn_22815???}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
+__inference_lstm_cell_2_layer_call_fn_22832???}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_23006? ??}
v?s
 ?
inputs????????? 
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_23074? ??}
v?s
 ?
inputs????????? 
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
+__inference_lstm_cell_3_layer_call_fn_22953? ??}
v?s
 ?
inputs????????? 
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
+__inference_lstm_cell_3_layer_call_fn_22970? ??}
v?s
 ?
inputs????????? 
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_20307] 3?0
)?&
?
input_2
p 

 
? "?
?
0
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_20330] 3?0
)?&
?
input_2
p

 
? "?
?
0
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_20715\ 2?/
(?%
?
inputs
p 

 
? "?
?
0
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_21163\ 2?/
(?%
?
inputs
p

 
? "?
?
0
? ?
,__inference_sequential_1_layer_call_fn_19698P 3?0
)?&
?
input_2
p 

 
? "??
,__inference_sequential_1_layer_call_fn_20284P 3?0
)?&
?
input_2
p

 
? "?
,__inference_sequential_1_layer_call_fn_20374O 2?/
(?%
?
inputs
p 

 
? "?
,__inference_sequential_1_layer_call_fn_20395O 2?/
(?%
?
inputs
p

 
? "??
#__inference_signature_wrapper_20353l 6?3
? 
,?)
'
input_2?
input_2"(?%
#
dense_1?
dense_1