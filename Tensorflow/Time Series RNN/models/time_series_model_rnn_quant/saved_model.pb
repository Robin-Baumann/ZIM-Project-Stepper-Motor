??%
??
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
s
FakeQuantWithMinMaxVars

inputs
min
max
outputs"
num_bitsint"
narrow_rangebool( 
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
?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??#
?
'quantize_layer_32/quantize_layer_32_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'quantize_layer_32/quantize_layer_32_min
?
;quantize_layer_32/quantize_layer_32_min/Read/ReadVariableOpReadVariableOp'quantize_layer_32/quantize_layer_32_min*
_output_shapes
: *
dtype0
?
'quantize_layer_32/quantize_layer_32_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'quantize_layer_32/quantize_layer_32_max
?
;quantize_layer_32/quantize_layer_32_max/Read/ReadVariableOpReadVariableOp'quantize_layer_32/quantize_layer_32_max*
_output_shapes
: *
dtype0
?
 quantize_layer_32/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" quantize_layer_32/optimizer_step
?
4quantize_layer_32/optimizer_step/Read/ReadVariableOpReadVariableOp quantize_layer_32/optimizer_step*
_output_shapes
: *
dtype0
?
quant_lstm_2/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namequant_lstm_2/optimizer_step
?
/quant_lstm_2/optimizer_step/Read/ReadVariableOpReadVariableOpquant_lstm_2/optimizer_step*
_output_shapes
: *
dtype0
?
!quant_lstm_2/recurrent_kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quant_lstm_2/recurrent_kernel_min
?
5quant_lstm_2/recurrent_kernel_min/Read/ReadVariableOpReadVariableOp!quant_lstm_2/recurrent_kernel_min*
_output_shapes
: *
dtype0
?
!quant_lstm_2/recurrent_kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quant_lstm_2/recurrent_kernel_max
?
5quant_lstm_2/recurrent_kernel_max/Read/ReadVariableOpReadVariableOp!quant_lstm_2/recurrent_kernel_max*
_output_shapes
: *
dtype0
?
 quant_lstm_2/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" quant_lstm_2/post_activation_min
?
4quant_lstm_2/post_activation_min/Read/ReadVariableOpReadVariableOp quant_lstm_2/post_activation_min*
_output_shapes
: *
dtype0
?
 quant_lstm_2/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" quant_lstm_2/post_activation_max
?
4quant_lstm_2/post_activation_max/Read/ReadVariableOpReadVariableOp quant_lstm_2/post_activation_max*
_output_shapes
: *
dtype0
?
quant_lstm_3/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namequant_lstm_3/optimizer_step
?
/quant_lstm_3/optimizer_step/Read/ReadVariableOpReadVariableOpquant_lstm_3/optimizer_step*
_output_shapes
: *
dtype0
?
!quant_lstm_3/recurrent_kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quant_lstm_3/recurrent_kernel_min
?
5quant_lstm_3/recurrent_kernel_min/Read/ReadVariableOpReadVariableOp!quant_lstm_3/recurrent_kernel_min*
_output_shapes
: *
dtype0
?
!quant_lstm_3/recurrent_kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quant_lstm_3/recurrent_kernel_max
?
5quant_lstm_3/recurrent_kernel_max/Read/ReadVariableOpReadVariableOp!quant_lstm_3/recurrent_kernel_max*
_output_shapes
: *
dtype0
?
 quant_lstm_3/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" quant_lstm_3/post_activation_min
?
4quant_lstm_3/post_activation_min/Read/ReadVariableOpReadVariableOp quant_lstm_3/post_activation_min*
_output_shapes
: *
dtype0
?
 quant_lstm_3/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" quant_lstm_3/post_activation_max
?
4quant_lstm_3/post_activation_max/Read/ReadVariableOpReadVariableOp quant_lstm_3/post_activation_max*
_output_shapes
: *
dtype0
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
lstm_2/lstm_cell_140/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_2/lstm_cell_140/kernel
?
/lstm_2/lstm_cell_140/kernel/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_140/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_2/lstm_cell_140/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*6
shared_name'%lstm_2/lstm_cell_140/recurrent_kernel
?
9lstm_2/lstm_cell_140/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_2/lstm_cell_140/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_2/lstm_cell_140/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_2/lstm_cell_140/bias
?
-lstm_2/lstm_cell_140/bias/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_140/bias*
_output_shapes	
:?*
dtype0
?
lstm_3/lstm_cell_141/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*,
shared_namelstm_3/lstm_cell_141/kernel
?
/lstm_3/lstm_cell_141/kernel/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_141/kernel*
_output_shapes
:	 ?*
dtype0
?
%lstm_3/lstm_cell_141/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*6
shared_name'%lstm_3/lstm_cell_141/recurrent_kernel
?
9lstm_3/lstm_cell_141/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_3/lstm_cell_141/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_3/lstm_cell_141/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_3/lstm_cell_141/bias
?
-lstm_3/lstm_cell_141/bias/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_141/bias*
_output_shapes	
:?*
dtype0

NoOpNoOp
?5
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?4
value?4B?4 B?4
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
?

quantize_layer_32_min
quantize_layer_32_max
quantizer_vars
optimizer_step
regularization_losses
trainable_variables
	variables
	keras_api
?
	layer
optimizer_step
_weight_vars
recurrent_kernel_min
recurrent_kernel_max
_quantize_activations
post_activation_min
post_activation_max
_output_quantizers
regularization_losses
trainable_variables
	variables
	keras_api
?
	layer
 optimizer_step
!_weight_vars
"recurrent_kernel_min
#recurrent_kernel_max
$_quantize_activations
%post_activation_min
&post_activation_max
'_output_quantizers
(regularization_losses
)trainable_variables
*	variables
+	keras_api
h

,kernel
-bias
.regularization_losses
/trainable_variables
0	variables
1	keras_api
 
8
20
31
42
53
64
75
,6
-7
?

0
1
2
23
34
45
6
7
8
9
10
511
612
713
 14
"15
#16
%17
&18
,19
-20
?
regularization_losses
trainable_variables

8layers
9layer_regularization_losses
:non_trainable_variables
;metrics
<layer_metrics
	variables
 
??
VARIABLE_VALUE'quantize_layer_32/quantize_layer_32_minElayer_with_weights-0/quantize_layer_32_min/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'quantize_layer_32/quantize_layer_32_maxElayer_with_weights-0/quantize_layer_32_max/.ATTRIBUTES/VARIABLE_VALUE


min_var
max_var
tr
VARIABLE_VALUE quantize_layer_32/optimizer_step>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE
 
 


0
1
2
?
regularization_losses
trainable_variables
=layer_regularization_losses

>layers
?non_trainable_variables
@metrics
Alayer_metrics
	variables
l
Bcell
C
state_spec
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
om
VARIABLE_VALUEquant_lstm_2/optimizer_step>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

H0
{y
VARIABLE_VALUE!quant_lstm_2/recurrent_kernel_minDlayer_with_weights-1/recurrent_kernel_min/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE!quant_lstm_2/recurrent_kernel_maxDlayer_with_weights-1/recurrent_kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
yw
VARIABLE_VALUE quant_lstm_2/post_activation_minClayer_with_weights-1/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE quant_lstm_2/post_activation_maxClayer_with_weights-1/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
 

20
31
42
8
20
31
42
3
4
5
6
7
?
regularization_losses
trainable_variables
Ilayer_regularization_losses

Jlayers
Knon_trainable_variables
Lmetrics
Mlayer_metrics
	variables
l
Ncell
O
state_spec
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
om
VARIABLE_VALUEquant_lstm_3/optimizer_step>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

T0
{y
VARIABLE_VALUE!quant_lstm_3/recurrent_kernel_minDlayer_with_weights-2/recurrent_kernel_min/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE!quant_lstm_3/recurrent_kernel_maxDlayer_with_weights-2/recurrent_kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
yw
VARIABLE_VALUE quant_lstm_3/post_activation_minClayer_with_weights-2/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE quant_lstm_3/post_activation_maxClayer_with_weights-2/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
 

50
61
72
8
50
61
72
 3
"4
#5
%6
&7
?
(regularization_losses
)trainable_variables
Ulayer_regularization_losses

Vlayers
Wnon_trainable_variables
Xmetrics
Ylayer_metrics
*	variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

,0
-1

,0
-1
?
.regularization_losses
/trainable_variables
Zlayer_regularization_losses

[layers
\non_trainable_variables
]metrics
^layer_metrics
0	variables
a_
VARIABLE_VALUElstm_2/lstm_cell_140/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_2/lstm_cell_140/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_2/lstm_cell_140/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_3/lstm_cell_141/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_3/lstm_cell_141/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_3/lstm_cell_141/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3
 
^

0
1
2
3
4
5
6
7
 8
"9
#10
%11
&12
 
 
 
 


0
1
2
 
 
?
_
state_size

2kernel
3recurrent_kernel
4bias
`regularization_losses
atrainable_variables
b	variables
c	keras_api
 
 

20
41

20
41
?
Dregularization_losses
Etrainable_variables
dlayer_regularization_losses

elayers

fstates
gnon_trainable_variables
hmetrics
ilayer_metrics
F	variables

30
j2
 

0
#
0
1
2
3
4
 
 
?
k
state_size

5kernel
6recurrent_kernel
7bias
lregularization_losses
mtrainable_variables
n	variables
o	keras_api
 
 

50
71

50
71
?
Pregularization_losses
Qtrainable_variables
player_regularization_losses

qlayers

rstates
snon_trainable_variables
tmetrics
ulayer_metrics
R	variables

60
v2
 

0
#
 0
"1
#2
%3
&4
 
 
 
 
 
 
 
 
 

20
41

20
41
?
`regularization_losses
atrainable_variables
wlayer_regularization_losses

xlayers
ynon_trainable_variables
zmetrics
{layer_metrics
b	variables
 

B0
 
 
 
 

min_var
max_var
 
 

50
71

50
71
?
lregularization_losses
mtrainable_variables
|layer_regularization_losses

}layers
~non_trainable_variables
metrics
?layer_metrics
n	variables
 

N0
 
 
 
 

"min_var
#max_var
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
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2'quantize_layer_32/quantize_layer_32_min'quantize_layer_32/quantize_layer_32_max%lstm_2/lstm_cell_140/recurrent_kernel!quant_lstm_2/recurrent_kernel_min!quant_lstm_2/recurrent_kernel_maxlstm_2/lstm_cell_140/kernellstm_2/lstm_cell_140/bias%lstm_3/lstm_cell_141/recurrent_kernel!quant_lstm_3/recurrent_kernel_min!quant_lstm_3/recurrent_kernel_maxlstm_3/lstm_cell_141/kernellstm_3/lstm_cell_141/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_349192
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename;quantize_layer_32/quantize_layer_32_min/Read/ReadVariableOp;quantize_layer_32/quantize_layer_32_max/Read/ReadVariableOp4quantize_layer_32/optimizer_step/Read/ReadVariableOp/quant_lstm_2/optimizer_step/Read/ReadVariableOp5quant_lstm_2/recurrent_kernel_min/Read/ReadVariableOp5quant_lstm_2/recurrent_kernel_max/Read/ReadVariableOp4quant_lstm_2/post_activation_min/Read/ReadVariableOp4quant_lstm_2/post_activation_max/Read/ReadVariableOp/quant_lstm_3/optimizer_step/Read/ReadVariableOp5quant_lstm_3/recurrent_kernel_min/Read/ReadVariableOp5quant_lstm_3/recurrent_kernel_max/Read/ReadVariableOp4quant_lstm_3/post_activation_min/Read/ReadVariableOp4quant_lstm_3/post_activation_max/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp/lstm_2/lstm_cell_140/kernel/Read/ReadVariableOp9lstm_2/lstm_cell_140/recurrent_kernel/Read/ReadVariableOp-lstm_2/lstm_cell_140/bias/Read/ReadVariableOp/lstm_3/lstm_cell_141/kernel/Read/ReadVariableOp9lstm_3/lstm_cell_141/recurrent_kernel/Read/ReadVariableOp-lstm_3/lstm_cell_141/bias/Read/ReadVariableOpConst*"
Tin
2*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_352193
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename'quantize_layer_32/quantize_layer_32_min'quantize_layer_32/quantize_layer_32_max quantize_layer_32/optimizer_stepquant_lstm_2/optimizer_step!quant_lstm_2/recurrent_kernel_min!quant_lstm_2/recurrent_kernel_max quant_lstm_2/post_activation_min quant_lstm_2/post_activation_maxquant_lstm_3/optimizer_step!quant_lstm_3/recurrent_kernel_min!quant_lstm_3/recurrent_kernel_max quant_lstm_3/post_activation_min quant_lstm_3/post_activation_maxdense_1/kerneldense_1/biaslstm_2/lstm_cell_140/kernel%lstm_2/lstm_cell_140/recurrent_kernellstm_2/lstm_cell_140/biaslstm_3/lstm_cell_141/kernel%lstm_3/lstm_cell_141/recurrent_kernellstm_3/lstm_cell_141/bias*!
Tin
2*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_352266??"
Ԓ
?
quant_lstm_2_while_body_3497346
2quant_lstm_2_while_quant_lstm_2_while_loop_counter<
8quant_lstm_2_while_quant_lstm_2_while_maximum_iterations"
quant_lstm_2_while_placeholder$
 quant_lstm_2_while_placeholder_1$
 quant_lstm_2_while_placeholder_2$
 quant_lstm_2_while_placeholder_35
1quant_lstm_2_while_quant_lstm_2_strided_slice_1_0q
mquant_lstm_2_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_2_tensorarrayunstack_tensorlistfromtensor_0T
Aquant_lstm_2_while_lstm_cell_140_matmul_readvariableop_resource_0:	?c
_quant_lstm_2_while_lstm_cell_140_matmul_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_0Q
Bquant_lstm_2_while_lstm_cell_140_biasadd_readvariableop_resource_0:	?
quant_lstm_2_while_identity!
quant_lstm_2_while_identity_1!
quant_lstm_2_while_identity_2!
quant_lstm_2_while_identity_3!
quant_lstm_2_while_identity_4!
quant_lstm_2_while_identity_53
/quant_lstm_2_while_quant_lstm_2_strided_slice_1o
kquant_lstm_2_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_2_tensorarrayunstack_tensorlistfromtensorR
?quant_lstm_2_while_lstm_cell_140_matmul_readvariableop_resource:	?a
]quant_lstm_2_while_lstm_cell_140_matmul_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvarsO
@quant_lstm_2_while_lstm_cell_140_biasadd_readvariableop_resource:	???7quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp?6quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp?
Dquant_lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2F
Dquant_lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape?
6quant_lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmquant_lstm_2_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_2_tensorarrayunstack_tensorlistfromtensor_0quant_lstm_2_while_placeholderMquant_lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype028
6quant_lstm_2/while/TensorArrayV2Read/TensorListGetItem?
0quant_lstm_2/while/lstm_cell_140/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0quant_lstm_2/while/lstm_cell_140/ones_like/Shape?
0quant_lstm_2/while/lstm_cell_140/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0quant_lstm_2/while/lstm_cell_140/ones_like/Const?
*quant_lstm_2/while/lstm_cell_140/ones_likeFill9quant_lstm_2/while/lstm_cell_140/ones_like/Shape:output:09quant_lstm_2/while/lstm_cell_140/ones_like/Const:output:0*
T0*
_output_shapes

:2,
*quant_lstm_2/while/lstm_cell_140/ones_like?
.quant_lstm_2/while/lstm_cell_140/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??20
.quant_lstm_2/while/lstm_cell_140/dropout/Const?
,quant_lstm_2/while/lstm_cell_140/dropout/MulMul3quant_lstm_2/while/lstm_cell_140/ones_like:output:07quant_lstm_2/while/lstm_cell_140/dropout/Const:output:0*
T0*
_output_shapes

:2.
,quant_lstm_2/while/lstm_cell_140/dropout/Mul?
.quant_lstm_2/while/lstm_cell_140/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      20
.quant_lstm_2/while/lstm_cell_140/dropout/Shape?
Equant_lstm_2/while/lstm_cell_140/dropout/random_uniform/RandomUniformRandomUniform7quant_lstm_2/while/lstm_cell_140/dropout/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2G
Equant_lstm_2/while/lstm_cell_140/dropout/random_uniform/RandomUniform?
7quant_lstm_2/while/lstm_cell_140/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=29
7quant_lstm_2/while/lstm_cell_140/dropout/GreaterEqual/y?
5quant_lstm_2/while/lstm_cell_140/dropout/GreaterEqualGreaterEqualNquant_lstm_2/while/lstm_cell_140/dropout/random_uniform/RandomUniform:output:0@quant_lstm_2/while/lstm_cell_140/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

:27
5quant_lstm_2/while/lstm_cell_140/dropout/GreaterEqual?
-quant_lstm_2/while/lstm_cell_140/dropout/CastCast9quant_lstm_2/while/lstm_cell_140/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2/
-quant_lstm_2/while/lstm_cell_140/dropout/Cast?
.quant_lstm_2/while/lstm_cell_140/dropout/Mul_1Mul0quant_lstm_2/while/lstm_cell_140/dropout/Mul:z:01quant_lstm_2/while/lstm_cell_140/dropout/Cast:y:0*
T0*
_output_shapes

:20
.quant_lstm_2/while/lstm_cell_140/dropout/Mul_1?
0quant_lstm_2/while/lstm_cell_140/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??22
0quant_lstm_2/while/lstm_cell_140/dropout_1/Const?
.quant_lstm_2/while/lstm_cell_140/dropout_1/MulMul3quant_lstm_2/while/lstm_cell_140/ones_like:output:09quant_lstm_2/while/lstm_cell_140/dropout_1/Const:output:0*
T0*
_output_shapes

:20
.quant_lstm_2/while/lstm_cell_140/dropout_1/Mul?
0quant_lstm_2/while/lstm_cell_140/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0quant_lstm_2/while/lstm_cell_140/dropout_1/Shape?
Gquant_lstm_2/while/lstm_cell_140/dropout_1/random_uniform/RandomUniformRandomUniform9quant_lstm_2/while/lstm_cell_140/dropout_1/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2姪2I
Gquant_lstm_2/while/lstm_cell_140/dropout_1/random_uniform/RandomUniform?
9quant_lstm_2/while/lstm_cell_140/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2;
9quant_lstm_2/while/lstm_cell_140/dropout_1/GreaterEqual/y?
7quant_lstm_2/while/lstm_cell_140/dropout_1/GreaterEqualGreaterEqualPquant_lstm_2/while/lstm_cell_140/dropout_1/random_uniform/RandomUniform:output:0Bquant_lstm_2/while/lstm_cell_140/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

:29
7quant_lstm_2/while/lstm_cell_140/dropout_1/GreaterEqual?
/quant_lstm_2/while/lstm_cell_140/dropout_1/CastCast;quant_lstm_2/while/lstm_cell_140/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:21
/quant_lstm_2/while/lstm_cell_140/dropout_1/Cast?
0quant_lstm_2/while/lstm_cell_140/dropout_1/Mul_1Mul2quant_lstm_2/while/lstm_cell_140/dropout_1/Mul:z:03quant_lstm_2/while/lstm_cell_140/dropout_1/Cast:y:0*
T0*
_output_shapes

:22
0quant_lstm_2/while/lstm_cell_140/dropout_1/Mul_1?
0quant_lstm_2/while/lstm_cell_140/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??22
0quant_lstm_2/while/lstm_cell_140/dropout_2/Const?
.quant_lstm_2/while/lstm_cell_140/dropout_2/MulMul3quant_lstm_2/while/lstm_cell_140/ones_like:output:09quant_lstm_2/while/lstm_cell_140/dropout_2/Const:output:0*
T0*
_output_shapes

:20
.quant_lstm_2/while/lstm_cell_140/dropout_2/Mul?
0quant_lstm_2/while/lstm_cell_140/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0quant_lstm_2/while/lstm_cell_140/dropout_2/Shape?
Gquant_lstm_2/while/lstm_cell_140/dropout_2/random_uniform/RandomUniformRandomUniform9quant_lstm_2/while/lstm_cell_140/dropout_2/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2I
Gquant_lstm_2/while/lstm_cell_140/dropout_2/random_uniform/RandomUniform?
9quant_lstm_2/while/lstm_cell_140/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2;
9quant_lstm_2/while/lstm_cell_140/dropout_2/GreaterEqual/y?
7quant_lstm_2/while/lstm_cell_140/dropout_2/GreaterEqualGreaterEqualPquant_lstm_2/while/lstm_cell_140/dropout_2/random_uniform/RandomUniform:output:0Bquant_lstm_2/while/lstm_cell_140/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

:29
7quant_lstm_2/while/lstm_cell_140/dropout_2/GreaterEqual?
/quant_lstm_2/while/lstm_cell_140/dropout_2/CastCast;quant_lstm_2/while/lstm_cell_140/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:21
/quant_lstm_2/while/lstm_cell_140/dropout_2/Cast?
0quant_lstm_2/while/lstm_cell_140/dropout_2/Mul_1Mul2quant_lstm_2/while/lstm_cell_140/dropout_2/Mul:z:03quant_lstm_2/while/lstm_cell_140/dropout_2/Cast:y:0*
T0*
_output_shapes

:22
0quant_lstm_2/while/lstm_cell_140/dropout_2/Mul_1?
0quant_lstm_2/while/lstm_cell_140/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??22
0quant_lstm_2/while/lstm_cell_140/dropout_3/Const?
.quant_lstm_2/while/lstm_cell_140/dropout_3/MulMul3quant_lstm_2/while/lstm_cell_140/ones_like:output:09quant_lstm_2/while/lstm_cell_140/dropout_3/Const:output:0*
T0*
_output_shapes

:20
.quant_lstm_2/while/lstm_cell_140/dropout_3/Mul?
0quant_lstm_2/while/lstm_cell_140/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0quant_lstm_2/while/lstm_cell_140/dropout_3/Shape?
Gquant_lstm_2/while/lstm_cell_140/dropout_3/random_uniform/RandomUniformRandomUniform9quant_lstm_2/while/lstm_cell_140/dropout_3/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2I
Gquant_lstm_2/while/lstm_cell_140/dropout_3/random_uniform/RandomUniform?
9quant_lstm_2/while/lstm_cell_140/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2;
9quant_lstm_2/while/lstm_cell_140/dropout_3/GreaterEqual/y?
7quant_lstm_2/while/lstm_cell_140/dropout_3/GreaterEqualGreaterEqualPquant_lstm_2/while/lstm_cell_140/dropout_3/random_uniform/RandomUniform:output:0Bquant_lstm_2/while/lstm_cell_140/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

:29
7quant_lstm_2/while/lstm_cell_140/dropout_3/GreaterEqual?
/quant_lstm_2/while/lstm_cell_140/dropout_3/CastCast;quant_lstm_2/while/lstm_cell_140/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:21
/quant_lstm_2/while/lstm_cell_140/dropout_3/Cast?
0quant_lstm_2/while/lstm_cell_140/dropout_3/Mul_1Mul2quant_lstm_2/while/lstm_cell_140/dropout_3/Mul:z:03quant_lstm_2/while/lstm_cell_140/dropout_3/Cast:y:0*
T0*
_output_shapes

:22
0quant_lstm_2/while/lstm_cell_140/dropout_3/Mul_1?
$quant_lstm_2/while/lstm_cell_140/mulMul=quant_lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:02quant_lstm_2/while/lstm_cell_140/dropout/Mul_1:z:0*
T0*
_output_shapes

:2&
$quant_lstm_2/while/lstm_cell_140/mul?
6quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOpAquant_lstm_2_while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype028
6quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp?
'quant_lstm_2/while/lstm_cell_140/MatMulMatMul(quant_lstm_2/while/lstm_cell_140/mul:z:0>quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2)
'quant_lstm_2/while/lstm_cell_140/MatMul?
)quant_lstm_2/while/lstm_cell_140/MatMul_1MatMul quant_lstm_2_while_placeholder_2_quant_lstm_2_while_lstm_cell_140_matmul_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_0*
T0*
_output_shapes
:	?2+
)quant_lstm_2/while/lstm_cell_140/MatMul_1?
$quant_lstm_2/while/lstm_cell_140/addAddV21quant_lstm_2/while/lstm_cell_140/MatMul:product:03quant_lstm_2/while/lstm_cell_140/MatMul_1:product:0*
T0*
_output_shapes
:	?2&
$quant_lstm_2/while/lstm_cell_140/add?
7quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOpBquant_lstm_2_while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype029
7quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp?
(quant_lstm_2/while/lstm_cell_140/BiasAddBiasAdd(quant_lstm_2/while/lstm_cell_140/add:z:0?quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2*
(quant_lstm_2/while/lstm_cell_140/BiasAdd?
0quant_lstm_2/while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0quant_lstm_2/while/lstm_cell_140/split/split_dim?
&quant_lstm_2/while/lstm_cell_140/splitSplit9quant_lstm_2/while/lstm_cell_140/split/split_dim:output:01quant_lstm_2/while/lstm_cell_140/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2(
&quant_lstm_2/while/lstm_cell_140/split?
(quant_lstm_2/while/lstm_cell_140/SigmoidSigmoid/quant_lstm_2/while/lstm_cell_140/split:output:0*
T0*
_output_shapes

: 2*
(quant_lstm_2/while/lstm_cell_140/Sigmoid?
*quant_lstm_2/while/lstm_cell_140/Sigmoid_1Sigmoid/quant_lstm_2/while/lstm_cell_140/split:output:1*
T0*
_output_shapes

: 2,
*quant_lstm_2/while/lstm_cell_140/Sigmoid_1?
&quant_lstm_2/while/lstm_cell_140/mul_1Mul.quant_lstm_2/while/lstm_cell_140/Sigmoid_1:y:0 quant_lstm_2_while_placeholder_3*
T0*
_output_shapes

: 2(
&quant_lstm_2/while/lstm_cell_140/mul_1?
%quant_lstm_2/while/lstm_cell_140/ReluRelu/quant_lstm_2/while/lstm_cell_140/split:output:2*
T0*
_output_shapes

: 2'
%quant_lstm_2/while/lstm_cell_140/Relu?
&quant_lstm_2/while/lstm_cell_140/mul_2Mul,quant_lstm_2/while/lstm_cell_140/Sigmoid:y:03quant_lstm_2/while/lstm_cell_140/Relu:activations:0*
T0*
_output_shapes

: 2(
&quant_lstm_2/while/lstm_cell_140/mul_2?
&quant_lstm_2/while/lstm_cell_140/add_1AddV2*quant_lstm_2/while/lstm_cell_140/mul_1:z:0*quant_lstm_2/while/lstm_cell_140/mul_2:z:0*
T0*
_output_shapes

: 2(
&quant_lstm_2/while/lstm_cell_140/add_1?
*quant_lstm_2/while/lstm_cell_140/Sigmoid_2Sigmoid/quant_lstm_2/while/lstm_cell_140/split:output:3*
T0*
_output_shapes

: 2,
*quant_lstm_2/while/lstm_cell_140/Sigmoid_2?
'quant_lstm_2/while/lstm_cell_140/Relu_1Relu*quant_lstm_2/while/lstm_cell_140/add_1:z:0*
T0*
_output_shapes

: 2)
'quant_lstm_2/while/lstm_cell_140/Relu_1?
&quant_lstm_2/while/lstm_cell_140/mul_3Mul.quant_lstm_2/while/lstm_cell_140/Sigmoid_2:y:05quant_lstm_2/while/lstm_cell_140/Relu_1:activations:0*
T0*
_output_shapes

: 2(
&quant_lstm_2/while/lstm_cell_140/mul_3?
7quant_lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem quant_lstm_2_while_placeholder_1quant_lstm_2_while_placeholder*quant_lstm_2/while/lstm_cell_140/mul_3:z:0*
_output_shapes
: *
element_dtype029
7quant_lstm_2/while/TensorArrayV2Write/TensorListSetItemv
quant_lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
quant_lstm_2/while/add/y?
quant_lstm_2/while/addAddV2quant_lstm_2_while_placeholder!quant_lstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_2/while/addz
quant_lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
quant_lstm_2/while/add_1/y?
quant_lstm_2/while/add_1AddV22quant_lstm_2_while_quant_lstm_2_while_loop_counter#quant_lstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_2/while/add_1?
quant_lstm_2/while/IdentityIdentityquant_lstm_2/while/add_1:z:08^quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp7^quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_2/while/Identity?
quant_lstm_2/while/Identity_1Identity8quant_lstm_2_while_quant_lstm_2_while_maximum_iterations8^quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp7^quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_2/while/Identity_1?
quant_lstm_2/while/Identity_2Identityquant_lstm_2/while/add:z:08^quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp7^quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_2/while/Identity_2?
quant_lstm_2/while/Identity_3IdentityGquant_lstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:08^quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp7^quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_2/while/Identity_3?
quant_lstm_2/while/Identity_4Identity*quant_lstm_2/while/lstm_cell_140/mul_3:z:08^quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp7^quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
quant_lstm_2/while/Identity_4?
quant_lstm_2/while/Identity_5Identity*quant_lstm_2/while/lstm_cell_140/add_1:z:08^quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp7^quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
quant_lstm_2/while/Identity_5"C
quant_lstm_2_while_identity$quant_lstm_2/while/Identity:output:0"G
quant_lstm_2_while_identity_1&quant_lstm_2/while/Identity_1:output:0"G
quant_lstm_2_while_identity_2&quant_lstm_2/while/Identity_2:output:0"G
quant_lstm_2_while_identity_3&quant_lstm_2/while/Identity_3:output:0"G
quant_lstm_2_while_identity_4&quant_lstm_2/while/Identity_4:output:0"G
quant_lstm_2_while_identity_5&quant_lstm_2/while/Identity_5:output:0"?
@quant_lstm_2_while_lstm_cell_140_biasadd_readvariableop_resourceBquant_lstm_2_while_lstm_cell_140_biasadd_readvariableop_resource_0"?
]quant_lstm_2_while_lstm_cell_140_matmul_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_quant_lstm_2_while_lstm_cell_140_matmul_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_0"?
?quant_lstm_2_while_lstm_cell_140_matmul_readvariableop_resourceAquant_lstm_2_while_lstm_cell_140_matmul_readvariableop_resource_0"d
/quant_lstm_2_while_quant_lstm_2_strided_slice_11quant_lstm_2_while_quant_lstm_2_strided_slice_1_0"?
kquant_lstm_2_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_2_tensorarrayunstack_tensorlistfromtensormquant_lstm_2_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/: : : : : : : : : :	 ?: 2r
7quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp7quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp2p
6quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp6quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp: 
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
: :%	!

_output_shapes
:	 ?
?
?
M__inference_quantize_layer_32_layer_call_and_return_conditional_losses_350127

inputsK
Aallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: M
Callvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCallvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*"
_output_shapes
:2+
)AllValuesQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:09^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*"
_output_shapes
:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:J F
"
_output_shapes
:
 
_user_specified_nameinputs
??
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_349591

inputs]
Squantize_layer_32_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: _
Uquantize_layer_32_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: ^
Kquant_lstm_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	 ?W
Mquant_lstm_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: W
Mquant_lstm_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: L
9quant_lstm_2_lstm_cell_140_matmul_readvariableop_resource:	?I
:quant_lstm_2_lstm_cell_140_biasadd_readvariableop_resource:	?^
Kquant_lstm_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	 ?W
Mquant_lstm_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: W
Mquant_lstm_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: L
9quant_lstm_3_lstm_cell_141_matmul_readvariableop_resource:	 ?I
:quant_lstm_3_lstm_cell_141_biasadd_readvariableop_resource:	?8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?Bquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?1quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp?0quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp?quant_lstm_2/while?Bquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?1quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp?0quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp?quant_lstm_3/while?Jquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Lquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Jquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpSquantize_layer_32_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02L
Jquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Lquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpUquantize_layer_32_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02N
Lquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
;quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputsRquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Tquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*"
_output_shapes
:2=
;quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars?
Bquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpKquant_lstm_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	 ?*
dtype02D
Bquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpMquant_lstm_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02F
Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpMquant_lstm_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02F
Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
3quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsJquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Lquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Lquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	 ?25
3quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars}
quant_lstm_2/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
quant_lstm_2/Shape?
 quant_lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 quant_lstm_2/strided_slice/stack?
"quant_lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"quant_lstm_2/strided_slice/stack_1?
"quant_lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"quant_lstm_2/strided_slice/stack_2?
quant_lstm_2/strided_sliceStridedSlicequant_lstm_2/Shape:output:0)quant_lstm_2/strided_slice/stack:output:0+quant_lstm_2/strided_slice/stack_1:output:0+quant_lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
quant_lstm_2/strided_slicev
quant_lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_2/zeros/mul/y?
quant_lstm_2/zeros/mulMul#quant_lstm_2/strided_slice:output:0!quant_lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_2/zeros/muly
quant_lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
quant_lstm_2/zeros/Less/y?
quant_lstm_2/zeros/LessLessquant_lstm_2/zeros/mul:z:0"quant_lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_2/zeros/Less|
quant_lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_2/zeros/packed/1?
quant_lstm_2/zeros/packedPack#quant_lstm_2/strided_slice:output:0$quant_lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
quant_lstm_2/zeros/packedy
quant_lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
quant_lstm_2/zeros/Const?
quant_lstm_2/zerosFill"quant_lstm_2/zeros/packed:output:0!quant_lstm_2/zeros/Const:output:0*
T0*
_output_shapes

: 2
quant_lstm_2/zerosz
quant_lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_2/zeros_1/mul/y?
quant_lstm_2/zeros_1/mulMul#quant_lstm_2/strided_slice:output:0#quant_lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_2/zeros_1/mul}
quant_lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
quant_lstm_2/zeros_1/Less/y?
quant_lstm_2/zeros_1/LessLessquant_lstm_2/zeros_1/mul:z:0$quant_lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_2/zeros_1/Less?
quant_lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_2/zeros_1/packed/1?
quant_lstm_2/zeros_1/packedPack#quant_lstm_2/strided_slice:output:0&quant_lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
quant_lstm_2/zeros_1/packed}
quant_lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
quant_lstm_2/zeros_1/Const?
quant_lstm_2/zeros_1Fill$quant_lstm_2/zeros_1/packed:output:0#quant_lstm_2/zeros_1/Const:output:0*
T0*
_output_shapes

: 2
quant_lstm_2/zeros_1?
quant_lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
quant_lstm_2/transpose/perm?
quant_lstm_2/transpose	TransposeEquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0$quant_lstm_2/transpose/perm:output:0*
T0*"
_output_shapes
:2
quant_lstm_2/transpose?
quant_lstm_2/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         2
quant_lstm_2/Shape_1?
"quant_lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"quant_lstm_2/strided_slice_1/stack?
$quant_lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_2/strided_slice_1/stack_1?
$quant_lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_2/strided_slice_1/stack_2?
quant_lstm_2/strided_slice_1StridedSlicequant_lstm_2/Shape_1:output:0+quant_lstm_2/strided_slice_1/stack:output:0-quant_lstm_2/strided_slice_1/stack_1:output:0-quant_lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
quant_lstm_2/strided_slice_1?
(quant_lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(quant_lstm_2/TensorArrayV2/element_shape?
quant_lstm_2/TensorArrayV2TensorListReserve1quant_lstm_2/TensorArrayV2/element_shape:output:0%quant_lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
quant_lstm_2/TensorArrayV2?
Bquant_lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2D
Bquant_lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape?
4quant_lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorquant_lstm_2/transpose:y:0Kquant_lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4quant_lstm_2/TensorArrayUnstack/TensorListFromTensor?
"quant_lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"quant_lstm_2/strided_slice_2/stack?
$quant_lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_2/strided_slice_2/stack_1?
$quant_lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_2/strided_slice_2/stack_2?
quant_lstm_2/strided_slice_2StridedSlicequant_lstm_2/transpose:y:0+quant_lstm_2/strided_slice_2/stack:output:0-quant_lstm_2/strided_slice_2/stack_1:output:0-quant_lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
quant_lstm_2/strided_slice_2?
*quant_lstm_2/lstm_cell_140/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*quant_lstm_2/lstm_cell_140/ones_like/Shape?
*quant_lstm_2/lstm_cell_140/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*quant_lstm_2/lstm_cell_140/ones_like/Const?
$quant_lstm_2/lstm_cell_140/ones_likeFill3quant_lstm_2/lstm_cell_140/ones_like/Shape:output:03quant_lstm_2/lstm_cell_140/ones_like/Const:output:0*
T0*
_output_shapes

:2&
$quant_lstm_2/lstm_cell_140/ones_like?
quant_lstm_2/lstm_cell_140/mulMul%quant_lstm_2/strided_slice_2:output:0-quant_lstm_2/lstm_cell_140/ones_like:output:0*
T0*
_output_shapes

:2 
quant_lstm_2/lstm_cell_140/mul?
0quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp9quant_lstm_2_lstm_cell_140_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype022
0quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp?
!quant_lstm_2/lstm_cell_140/MatMulMatMul"quant_lstm_2/lstm_cell_140/mul:z:08quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!quant_lstm_2/lstm_cell_140/MatMul?
#quant_lstm_2/lstm_cell_140/MatMul_1MatMulquant_lstm_2/zeros:output:0=quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes
:	?2%
#quant_lstm_2/lstm_cell_140/MatMul_1?
quant_lstm_2/lstm_cell_140/addAddV2+quant_lstm_2/lstm_cell_140/MatMul:product:0-quant_lstm_2/lstm_cell_140/MatMul_1:product:0*
T0*
_output_shapes
:	?2 
quant_lstm_2/lstm_cell_140/add?
1quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp:quant_lstm_2_lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp?
"quant_lstm_2/lstm_cell_140/BiasAddBiasAdd"quant_lstm_2/lstm_cell_140/add:z:09quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2$
"quant_lstm_2/lstm_cell_140/BiasAdd?
*quant_lstm_2/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*quant_lstm_2/lstm_cell_140/split/split_dim?
 quant_lstm_2/lstm_cell_140/splitSplit3quant_lstm_2/lstm_cell_140/split/split_dim:output:0+quant_lstm_2/lstm_cell_140/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 quant_lstm_2/lstm_cell_140/split?
"quant_lstm_2/lstm_cell_140/SigmoidSigmoid)quant_lstm_2/lstm_cell_140/split:output:0*
T0*
_output_shapes

: 2$
"quant_lstm_2/lstm_cell_140/Sigmoid?
$quant_lstm_2/lstm_cell_140/Sigmoid_1Sigmoid)quant_lstm_2/lstm_cell_140/split:output:1*
T0*
_output_shapes

: 2&
$quant_lstm_2/lstm_cell_140/Sigmoid_1?
 quant_lstm_2/lstm_cell_140/mul_1Mul(quant_lstm_2/lstm_cell_140/Sigmoid_1:y:0quant_lstm_2/zeros_1:output:0*
T0*
_output_shapes

: 2"
 quant_lstm_2/lstm_cell_140/mul_1?
quant_lstm_2/lstm_cell_140/ReluRelu)quant_lstm_2/lstm_cell_140/split:output:2*
T0*
_output_shapes

: 2!
quant_lstm_2/lstm_cell_140/Relu?
 quant_lstm_2/lstm_cell_140/mul_2Mul&quant_lstm_2/lstm_cell_140/Sigmoid:y:0-quant_lstm_2/lstm_cell_140/Relu:activations:0*
T0*
_output_shapes

: 2"
 quant_lstm_2/lstm_cell_140/mul_2?
 quant_lstm_2/lstm_cell_140/add_1AddV2$quant_lstm_2/lstm_cell_140/mul_1:z:0$quant_lstm_2/lstm_cell_140/mul_2:z:0*
T0*
_output_shapes

: 2"
 quant_lstm_2/lstm_cell_140/add_1?
$quant_lstm_2/lstm_cell_140/Sigmoid_2Sigmoid)quant_lstm_2/lstm_cell_140/split:output:3*
T0*
_output_shapes

: 2&
$quant_lstm_2/lstm_cell_140/Sigmoid_2?
!quant_lstm_2/lstm_cell_140/Relu_1Relu$quant_lstm_2/lstm_cell_140/add_1:z:0*
T0*
_output_shapes

: 2#
!quant_lstm_2/lstm_cell_140/Relu_1?
 quant_lstm_2/lstm_cell_140/mul_3Mul(quant_lstm_2/lstm_cell_140/Sigmoid_2:y:0/quant_lstm_2/lstm_cell_140/Relu_1:activations:0*
T0*
_output_shapes

: 2"
 quant_lstm_2/lstm_cell_140/mul_3?
*quant_lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2,
*quant_lstm_2/TensorArrayV2_1/element_shape?
quant_lstm_2/TensorArrayV2_1TensorListReserve3quant_lstm_2/TensorArrayV2_1/element_shape:output:0%quant_lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
quant_lstm_2/TensorArrayV2_1h
quant_lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_2/time?
%quant_lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%quant_lstm_2/while/maximum_iterations?
quant_lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
quant_lstm_2/while/loop_counter?
quant_lstm_2/whileWhile(quant_lstm_2/while/loop_counter:output:0.quant_lstm_2/while/maximum_iterations:output:0quant_lstm_2/time:output:0%quant_lstm_2/TensorArrayV2_1:handle:0quant_lstm_2/zeros:output:0quant_lstm_2/zeros_1:output:0%quant_lstm_2/strided_slice_1:output:0Dquant_lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:09quant_lstm_2_lstm_cell_140_matmul_readvariableop_resource=quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0:quant_lstm_2_lstm_cell_140_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*C
_output_shapes1
/: : : : : : : : : :	 ?: *$
_read_only_resource_inputs

**
body"R 
quant_lstm_2_while_body_349339**
cond"R 
quant_lstm_2_while_cond_349338*B
output_shapes1
/: : : : : : : : : :	 ?: *
parallel_iterations 2
quant_lstm_2/while?
=quant_lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2?
=quant_lstm_2/TensorArrayV2Stack/TensorListStack/element_shape?
/quant_lstm_2/TensorArrayV2Stack/TensorListStackTensorListStackquant_lstm_2/while:output:3Fquant_lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype021
/quant_lstm_2/TensorArrayV2Stack/TensorListStack?
"quant_lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"quant_lstm_2/strided_slice_3/stack?
$quant_lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$quant_lstm_2/strided_slice_3/stack_1?
$quant_lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_2/strided_slice_3/stack_2?
quant_lstm_2/strided_slice_3StridedSlice8quant_lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0+quant_lstm_2/strided_slice_3/stack:output:0-quant_lstm_2/strided_slice_3/stack_1:output:0-quant_lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
quant_lstm_2/strided_slice_3?
quant_lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
quant_lstm_2/transpose_1/perm?
quant_lstm_2/transpose_1	Transpose8quant_lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0&quant_lstm_2/transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
quant_lstm_2/transpose_1?
quant_lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
quant_lstm_2/runtime?
Bquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpKquant_lstm_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	 ?*
dtype02D
Bquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpMquant_lstm_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02F
Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpMquant_lstm_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02F
Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
3quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsJquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Lquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Lquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	 ?25
3quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars}
quant_lstm_3/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
quant_lstm_3/Shape?
 quant_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 quant_lstm_3/strided_slice/stack?
"quant_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"quant_lstm_3/strided_slice/stack_1?
"quant_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"quant_lstm_3/strided_slice/stack_2?
quant_lstm_3/strided_sliceStridedSlicequant_lstm_3/Shape:output:0)quant_lstm_3/strided_slice/stack:output:0+quant_lstm_3/strided_slice/stack_1:output:0+quant_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
quant_lstm_3/strided_slicev
quant_lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_3/zeros/mul/y?
quant_lstm_3/zeros/mulMul#quant_lstm_3/strided_slice:output:0!quant_lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_3/zeros/muly
quant_lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
quant_lstm_3/zeros/Less/y?
quant_lstm_3/zeros/LessLessquant_lstm_3/zeros/mul:z:0"quant_lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_3/zeros/Less|
quant_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_3/zeros/packed/1?
quant_lstm_3/zeros/packedPack#quant_lstm_3/strided_slice:output:0$quant_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
quant_lstm_3/zeros/packedy
quant_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
quant_lstm_3/zeros/Const?
quant_lstm_3/zerosFill"quant_lstm_3/zeros/packed:output:0!quant_lstm_3/zeros/Const:output:0*
T0*
_output_shapes

: 2
quant_lstm_3/zerosz
quant_lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_3/zeros_1/mul/y?
quant_lstm_3/zeros_1/mulMul#quant_lstm_3/strided_slice:output:0#quant_lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_3/zeros_1/mul}
quant_lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
quant_lstm_3/zeros_1/Less/y?
quant_lstm_3/zeros_1/LessLessquant_lstm_3/zeros_1/mul:z:0$quant_lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_3/zeros_1/Less?
quant_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_3/zeros_1/packed/1?
quant_lstm_3/zeros_1/packedPack#quant_lstm_3/strided_slice:output:0&quant_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
quant_lstm_3/zeros_1/packed}
quant_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
quant_lstm_3/zeros_1/Const?
quant_lstm_3/zeros_1Fill$quant_lstm_3/zeros_1/packed:output:0#quant_lstm_3/zeros_1/Const:output:0*
T0*
_output_shapes

: 2
quant_lstm_3/zeros_1?
quant_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
quant_lstm_3/transpose/perm?
quant_lstm_3/transpose	Transposequant_lstm_2/transpose_1:y:0$quant_lstm_3/transpose/perm:output:0*
T0*"
_output_shapes
: 2
quant_lstm_3/transpose?
quant_lstm_3/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"          2
quant_lstm_3/Shape_1?
"quant_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"quant_lstm_3/strided_slice_1/stack?
$quant_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_3/strided_slice_1/stack_1?
$quant_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_3/strided_slice_1/stack_2?
quant_lstm_3/strided_slice_1StridedSlicequant_lstm_3/Shape_1:output:0+quant_lstm_3/strided_slice_1/stack:output:0-quant_lstm_3/strided_slice_1/stack_1:output:0-quant_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
quant_lstm_3/strided_slice_1?
(quant_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(quant_lstm_3/TensorArrayV2/element_shape?
quant_lstm_3/TensorArrayV2TensorListReserve1quant_lstm_3/TensorArrayV2/element_shape:output:0%quant_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
quant_lstm_3/TensorArrayV2?
Bquant_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2D
Bquant_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape?
4quant_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorquant_lstm_3/transpose:y:0Kquant_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4quant_lstm_3/TensorArrayUnstack/TensorListFromTensor?
"quant_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"quant_lstm_3/strided_slice_2/stack?
$quant_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_3/strided_slice_2/stack_1?
$quant_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_3/strided_slice_2/stack_2?
quant_lstm_3/strided_slice_2StridedSlicequant_lstm_3/transpose:y:0+quant_lstm_3/strided_slice_2/stack:output:0-quant_lstm_3/strided_slice_2/stack_1:output:0-quant_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
quant_lstm_3/strided_slice_2?
*quant_lstm_3/lstm_cell_141/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2,
*quant_lstm_3/lstm_cell_141/ones_like/Shape?
*quant_lstm_3/lstm_cell_141/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*quant_lstm_3/lstm_cell_141/ones_like/Const?
$quant_lstm_3/lstm_cell_141/ones_likeFill3quant_lstm_3/lstm_cell_141/ones_like/Shape:output:03quant_lstm_3/lstm_cell_141/ones_like/Const:output:0*
T0*
_output_shapes

: 2&
$quant_lstm_3/lstm_cell_141/ones_like?
quant_lstm_3/lstm_cell_141/mulMul%quant_lstm_3/strided_slice_2:output:0-quant_lstm_3/lstm_cell_141/ones_like:output:0*
T0*
_output_shapes

: 2 
quant_lstm_3/lstm_cell_141/mul?
0quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp9quant_lstm_3_lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype022
0quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp?
!quant_lstm_3/lstm_cell_141/MatMulMatMul"quant_lstm_3/lstm_cell_141/mul:z:08quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!quant_lstm_3/lstm_cell_141/MatMul?
#quant_lstm_3/lstm_cell_141/MatMul_1MatMulquant_lstm_3/zeros:output:0=quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes
:	?2%
#quant_lstm_3/lstm_cell_141/MatMul_1?
quant_lstm_3/lstm_cell_141/addAddV2+quant_lstm_3/lstm_cell_141/MatMul:product:0-quant_lstm_3/lstm_cell_141/MatMul_1:product:0*
T0*
_output_shapes
:	?2 
quant_lstm_3/lstm_cell_141/add?
1quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp:quant_lstm_3_lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp?
"quant_lstm_3/lstm_cell_141/BiasAddBiasAdd"quant_lstm_3/lstm_cell_141/add:z:09quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2$
"quant_lstm_3/lstm_cell_141/BiasAdd?
*quant_lstm_3/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*quant_lstm_3/lstm_cell_141/split/split_dim?
 quant_lstm_3/lstm_cell_141/splitSplit3quant_lstm_3/lstm_cell_141/split/split_dim:output:0+quant_lstm_3/lstm_cell_141/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 quant_lstm_3/lstm_cell_141/split?
"quant_lstm_3/lstm_cell_141/SigmoidSigmoid)quant_lstm_3/lstm_cell_141/split:output:0*
T0*
_output_shapes

: 2$
"quant_lstm_3/lstm_cell_141/Sigmoid?
$quant_lstm_3/lstm_cell_141/Sigmoid_1Sigmoid)quant_lstm_3/lstm_cell_141/split:output:1*
T0*
_output_shapes

: 2&
$quant_lstm_3/lstm_cell_141/Sigmoid_1?
 quant_lstm_3/lstm_cell_141/mul_1Mul(quant_lstm_3/lstm_cell_141/Sigmoid_1:y:0quant_lstm_3/zeros_1:output:0*
T0*
_output_shapes

: 2"
 quant_lstm_3/lstm_cell_141/mul_1?
quant_lstm_3/lstm_cell_141/ReluRelu)quant_lstm_3/lstm_cell_141/split:output:2*
T0*
_output_shapes

: 2!
quant_lstm_3/lstm_cell_141/Relu?
 quant_lstm_3/lstm_cell_141/mul_2Mul&quant_lstm_3/lstm_cell_141/Sigmoid:y:0-quant_lstm_3/lstm_cell_141/Relu:activations:0*
T0*
_output_shapes

: 2"
 quant_lstm_3/lstm_cell_141/mul_2?
 quant_lstm_3/lstm_cell_141/add_1AddV2$quant_lstm_3/lstm_cell_141/mul_1:z:0$quant_lstm_3/lstm_cell_141/mul_2:z:0*
T0*
_output_shapes

: 2"
 quant_lstm_3/lstm_cell_141/add_1?
$quant_lstm_3/lstm_cell_141/Sigmoid_2Sigmoid)quant_lstm_3/lstm_cell_141/split:output:3*
T0*
_output_shapes

: 2&
$quant_lstm_3/lstm_cell_141/Sigmoid_2?
!quant_lstm_3/lstm_cell_141/Relu_1Relu$quant_lstm_3/lstm_cell_141/add_1:z:0*
T0*
_output_shapes

: 2#
!quant_lstm_3/lstm_cell_141/Relu_1?
 quant_lstm_3/lstm_cell_141/mul_3Mul(quant_lstm_3/lstm_cell_141/Sigmoid_2:y:0/quant_lstm_3/lstm_cell_141/Relu_1:activations:0*
T0*
_output_shapes

: 2"
 quant_lstm_3/lstm_cell_141/mul_3?
*quant_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2,
*quant_lstm_3/TensorArrayV2_1/element_shape?
quant_lstm_3/TensorArrayV2_1TensorListReserve3quant_lstm_3/TensorArrayV2_1/element_shape:output:0%quant_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
quant_lstm_3/TensorArrayV2_1h
quant_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_3/time?
%quant_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%quant_lstm_3/while/maximum_iterations?
quant_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
quant_lstm_3/while/loop_counter?
quant_lstm_3/whileWhile(quant_lstm_3/while/loop_counter:output:0.quant_lstm_3/while/maximum_iterations:output:0quant_lstm_3/time:output:0%quant_lstm_3/TensorArrayV2_1:handle:0quant_lstm_3/zeros:output:0quant_lstm_3/zeros_1:output:0%quant_lstm_3/strided_slice_1:output:0Dquant_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:09quant_lstm_3_lstm_cell_141_matmul_readvariableop_resource=quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0:quant_lstm_3_lstm_cell_141_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*C
_output_shapes1
/: : : : : : : : : :	 ?: *$
_read_only_resource_inputs

**
body"R 
quant_lstm_3_while_body_349498**
cond"R 
quant_lstm_3_while_cond_349497*B
output_shapes1
/: : : : : : : : : :	 ?: *
parallel_iterations 2
quant_lstm_3/while?
=quant_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2?
=quant_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape?
/quant_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackquant_lstm_3/while:output:3Fquant_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype021
/quant_lstm_3/TensorArrayV2Stack/TensorListStack?
"quant_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"quant_lstm_3/strided_slice_3/stack?
$quant_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$quant_lstm_3/strided_slice_3/stack_1?
$quant_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_3/strided_slice_3/stack_2?
quant_lstm_3/strided_slice_3StridedSlice8quant_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0+quant_lstm_3/strided_slice_3/stack:output:0-quant_lstm_3/strided_slice_3/stack_1:output:0-quant_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
quant_lstm_3/strided_slice_3?
quant_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
quant_lstm_3/transpose_1/perm?
quant_lstm_3/transpose_1	Transpose8quant_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0&quant_lstm_3/transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
quant_lstm_3/transpose_1?
quant_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
quant_lstm_3/runtime?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMul%quant_lstm_3/strided_slice_3:output:0%dense_1/MatMul/ReadVariableOp:value:0*
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
dense_1/BiasAdd?
IdentityIdentitydense_1/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOpC^quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpE^quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1E^quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22^quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp1^quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp^quant_lstm_2/whileC^quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpE^quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1E^quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22^quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp1^quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp^quant_lstm_3/whileK^quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpM^quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:: : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2?
Bquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpBquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22f
1quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp1quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp2d
0quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp0quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp2(
quant_lstm_2/whilequant_lstm_2/while2?
Bquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpBquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22f
1quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp1quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp2d
0quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp0quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp2(
quant_lstm_3/whilequant_lstm_3/while2?
Jquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpJquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Lquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Lquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_349157
input_2"
quantize_layer_32_349124: "
quantize_layer_32_349126: &
quant_lstm_2_349129:	 ?
quant_lstm_2_349131: 
quant_lstm_2_349133: &
quant_lstm_2_349135:	?"
quant_lstm_2_349137:	?&
quant_lstm_3_349140:	 ?
quant_lstm_3_349142: 
quant_lstm_3_349144: &
quant_lstm_3_349146:	 ?"
quant_lstm_3_349148:	? 
dense_1_349151: 
dense_1_349153:
identity??dense_1/StatefulPartitionedCall?$quant_lstm_2/StatefulPartitionedCall?$quant_lstm_3/StatefulPartitionedCall?)quantize_layer_32/StatefulPartitionedCall?
)quantize_layer_32/StatefulPartitionedCallStatefulPartitionedCallinput_2quantize_layer_32_349124quantize_layer_32_349126*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_quantize_layer_32_layer_call_and_return_conditional_losses_3489432+
)quantize_layer_32/StatefulPartitionedCall?
$quant_lstm_2/StatefulPartitionedCallStatefulPartitionedCall2quantize_layer_32/StatefulPartitionedCall:output:0quant_lstm_2_349129quant_lstm_2_349131quant_lstm_2_349133quant_lstm_2_349135quant_lstm_2_349137*
Tin

2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_quant_lstm_2_layer_call_and_return_conditional_losses_3488972&
$quant_lstm_2/StatefulPartitionedCall?
$quant_lstm_3/StatefulPartitionedCallStatefulPartitionedCall-quant_lstm_2/StatefulPartitionedCall:output:0quant_lstm_3_349140quant_lstm_3_349142quant_lstm_3_349144quant_lstm_3_349146quant_lstm_3_349148*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_quant_lstm_3_layer_call_and_return_conditional_losses_3486212&
$quant_lstm_3/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall-quant_lstm_3/StatefulPartitionedCall:output:0dense_1_349151dense_1_349153*
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
GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3483102!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall%^quant_lstm_2/StatefulPartitionedCall%^quant_lstm_3/StatefulPartitionedCall*^quantize_layer_32/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:: : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$quant_lstm_2/StatefulPartitionedCall$quant_lstm_2/StatefulPartitionedCall2L
$quant_lstm_3/StatefulPartitionedCall$quant_lstm_3/StatefulPartitionedCall2V
)quantize_layer_32/StatefulPartitionedCall)quantize_layer_32/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_2
?j
?
H__inference_quant_lstm_3_layer_call_and_return_conditional_losses_350779

inputsQ
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	 ?J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: ?
,lstm_cell_141_matmul_readvariableop_resource:	 ?<
-lstm_cell_141_biasadd_readvariableop_resource:	?
identity??5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?$lstm_cell_141/BiasAdd/ReadVariableOp?#lstm_cell_141/MatMul/ReadVariableOp?while?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	 ?*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	 ?2(
&LastValueQuant/FakeQuantWithMinMaxVarsc
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
lstm_cell_141/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_141/ones_like/Shape?
lstm_cell_141/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_141/ones_like/Const?
lstm_cell_141/ones_likeFill&lstm_cell_141/ones_like/Shape:output:0&lstm_cell_141/ones_like/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/ones_like?
lstm_cell_141/mulMulstrided_slice_2:output:0 lstm_cell_141/ones_like:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul?
#lstm_cell_141/MatMul/ReadVariableOpReadVariableOp,lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_141/MatMul/ReadVariableOp?
lstm_cell_141/MatMulMatMullstm_cell_141/mul:z:0+lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_141/MatMul?
lstm_cell_141/MatMul_1MatMulzeros:output:00LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes
:	?2
lstm_cell_141/MatMul_1?
lstm_cell_141/addAddV2lstm_cell_141/MatMul:product:0 lstm_cell_141/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_141/add?
$lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_141/BiasAdd/ReadVariableOp?
lstm_cell_141/BiasAddBiasAddlstm_cell_141/add:z:0,lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_141/BiasAdd?
lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_141/split/split_dim?
lstm_cell_141/splitSplit&lstm_cell_141/split/split_dim:output:0lstm_cell_141/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_141/split?
lstm_cell_141/SigmoidSigmoidlstm_cell_141/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/Sigmoid?
lstm_cell_141/Sigmoid_1Sigmoidlstm_cell_141/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_141/Sigmoid_1?
lstm_cell_141/mul_1Mullstm_cell_141/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul_1w
lstm_cell_141/ReluRelulstm_cell_141/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_141/Relu?
lstm_cell_141/mul_2Mullstm_cell_141/Sigmoid:y:0 lstm_cell_141/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul_2?
lstm_cell_141/add_1AddV2lstm_cell_141/mul_1:z:0lstm_cell_141/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_141/add_1?
lstm_cell_141/Sigmoid_2Sigmoidlstm_cell_141/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_141/Sigmoid_2v
lstm_cell_141/Relu_1Relulstm_cell_141/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_141/Relu_1?
lstm_cell_141/mul_3Mullstm_cell_141/Sigmoid_2:y:0"lstm_cell_141/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_141_matmul_readvariableop_resource0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0-lstm_cell_141_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*C
_output_shapes1
/: : : : : : : : : :	 ?: *$
_read_only_resource_inputs

*
bodyR
while_body_350692*
condR
while_cond_350691*B
output_shapes1
/: : : : : : : : : :	 ?: *
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
runtime?
IdentityIdentitystrided_slice_3:output:06^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2%^lstm_cell_141/BiasAdd/ReadVariableOp$^lstm_cell_141/MatMul/ReadVariableOp^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
: : : : : : 2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22L
$lstm_cell_141/BiasAdd/ReadVariableOp$lstm_cell_141/BiasAdd/ReadVariableOp2J
#lstm_cell_141/MatMul/ReadVariableOp#lstm_cell_141/MatMul/ReadVariableOp2
whilewhile:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
?u
?
while_body_350905
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_141_matmul_readvariableop_resource_0:	 ?I
Ewhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvars_0D
5while_lstm_cell_141_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_141_matmul_readvariableop_resource:	 ?G
Cwhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvarsB
3while_lstm_cell_141_biasadd_readvariableop_resource:	???*while/lstm_cell_141/BiasAdd/ReadVariableOp?)while/lstm_cell_141/MatMul/ReadVariableOp?
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
#while/lstm_cell_141/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#while/lstm_cell_141/ones_like/Shape?
#while/lstm_cell_141/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#while/lstm_cell_141/ones_like/Const?
while/lstm_cell_141/ones_likeFill,while/lstm_cell_141/ones_like/Shape:output:0,while/lstm_cell_141/ones_like/Const:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/ones_like?
!while/lstm_cell_141/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_141/dropout/Const?
while/lstm_cell_141/dropout/MulMul&while/lstm_cell_141/ones_like:output:0*while/lstm_cell_141/dropout/Const:output:0*
T0*
_output_shapes

: 2!
while/lstm_cell_141/dropout/Mul?
!while/lstm_cell_141/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!while/lstm_cell_141/dropout/Shape?
8while/lstm_cell_141/dropout/random_uniform/RandomUniformRandomUniform*while/lstm_cell_141/dropout/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2:
8while/lstm_cell_141/dropout/random_uniform/RandomUniform?
*while/lstm_cell_141/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_141/dropout/GreaterEqual/y?
(while/lstm_cell_141/dropout/GreaterEqualGreaterEqualAwhile/lstm_cell_141/dropout/random_uniform/RandomUniform:output:03while/lstm_cell_141/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2*
(while/lstm_cell_141/dropout/GreaterEqual?
 while/lstm_cell_141/dropout/CastCast,while/lstm_cell_141/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2"
 while/lstm_cell_141/dropout/Cast?
!while/lstm_cell_141/dropout/Mul_1Mul#while/lstm_cell_141/dropout/Mul:z:0$while/lstm_cell_141/dropout/Cast:y:0*
T0*
_output_shapes

: 2#
!while/lstm_cell_141/dropout/Mul_1?
#while/lstm_cell_141/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2%
#while/lstm_cell_141/dropout_1/Const?
!while/lstm_cell_141/dropout_1/MulMul&while/lstm_cell_141/ones_like:output:0,while/lstm_cell_141/dropout_1/Const:output:0*
T0*
_output_shapes

: 2#
!while/lstm_cell_141/dropout_1/Mul?
#while/lstm_cell_141/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#while/lstm_cell_141/dropout_1/Shape?
:while/lstm_cell_141/dropout_1/random_uniform/RandomUniformRandomUniform,while/lstm_cell_141/dropout_1/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2<
:while/lstm_cell_141/dropout_1/random_uniform/RandomUniform?
,while/lstm_cell_141/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2.
,while/lstm_cell_141/dropout_1/GreaterEqual/y?
*while/lstm_cell_141/dropout_1/GreaterEqualGreaterEqualCwhile/lstm_cell_141/dropout_1/random_uniform/RandomUniform:output:05while/lstm_cell_141/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2,
*while/lstm_cell_141/dropout_1/GreaterEqual?
"while/lstm_cell_141/dropout_1/CastCast.while/lstm_cell_141/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2$
"while/lstm_cell_141/dropout_1/Cast?
#while/lstm_cell_141/dropout_1/Mul_1Mul%while/lstm_cell_141/dropout_1/Mul:z:0&while/lstm_cell_141/dropout_1/Cast:y:0*
T0*
_output_shapes

: 2%
#while/lstm_cell_141/dropout_1/Mul_1?
#while/lstm_cell_141/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2%
#while/lstm_cell_141/dropout_2/Const?
!while/lstm_cell_141/dropout_2/MulMul&while/lstm_cell_141/ones_like:output:0,while/lstm_cell_141/dropout_2/Const:output:0*
T0*
_output_shapes

: 2#
!while/lstm_cell_141/dropout_2/Mul?
#while/lstm_cell_141/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#while/lstm_cell_141/dropout_2/Shape?
:while/lstm_cell_141/dropout_2/random_uniform/RandomUniformRandomUniform,while/lstm_cell_141/dropout_2/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2<
:while/lstm_cell_141/dropout_2/random_uniform/RandomUniform?
,while/lstm_cell_141/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2.
,while/lstm_cell_141/dropout_2/GreaterEqual/y?
*while/lstm_cell_141/dropout_2/GreaterEqualGreaterEqualCwhile/lstm_cell_141/dropout_2/random_uniform/RandomUniform:output:05while/lstm_cell_141/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2,
*while/lstm_cell_141/dropout_2/GreaterEqual?
"while/lstm_cell_141/dropout_2/CastCast.while/lstm_cell_141/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2$
"while/lstm_cell_141/dropout_2/Cast?
#while/lstm_cell_141/dropout_2/Mul_1Mul%while/lstm_cell_141/dropout_2/Mul:z:0&while/lstm_cell_141/dropout_2/Cast:y:0*
T0*
_output_shapes

: 2%
#while/lstm_cell_141/dropout_2/Mul_1?
#while/lstm_cell_141/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2%
#while/lstm_cell_141/dropout_3/Const?
!while/lstm_cell_141/dropout_3/MulMul&while/lstm_cell_141/ones_like:output:0,while/lstm_cell_141/dropout_3/Const:output:0*
T0*
_output_shapes

: 2#
!while/lstm_cell_141/dropout_3/Mul?
#while/lstm_cell_141/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#while/lstm_cell_141/dropout_3/Shape?
:while/lstm_cell_141/dropout_3/random_uniform/RandomUniformRandomUniform,while/lstm_cell_141/dropout_3/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2<
:while/lstm_cell_141/dropout_3/random_uniform/RandomUniform?
,while/lstm_cell_141/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2.
,while/lstm_cell_141/dropout_3/GreaterEqual/y?
*while/lstm_cell_141/dropout_3/GreaterEqualGreaterEqualCwhile/lstm_cell_141/dropout_3/random_uniform/RandomUniform:output:05while/lstm_cell_141/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2,
*while/lstm_cell_141/dropout_3/GreaterEqual?
"while/lstm_cell_141/dropout_3/CastCast.while/lstm_cell_141/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2$
"while/lstm_cell_141/dropout_3/Cast?
#while/lstm_cell_141/dropout_3/Mul_1Mul%while/lstm_cell_141/dropout_3/Mul:z:0&while/lstm_cell_141/dropout_3/Cast:y:0*
T0*
_output_shapes

: 2%
#while/lstm_cell_141/dropout_3/Mul_1?
while/lstm_cell_141/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_141/dropout/Mul_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul?
)while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_141/MatMul/ReadVariableOp?
while/lstm_cell_141/MatMulMatMulwhile/lstm_cell_141/mul:z:01while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/MatMul?
while/lstm_cell_141/MatMul_1MatMulwhile_placeholder_2Ewhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvars_0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/MatMul_1?
while/lstm_cell_141/addAddV2$while/lstm_cell_141/MatMul:product:0&while/lstm_cell_141/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/add?
*while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_141/BiasAdd/ReadVariableOp?
while/lstm_cell_141/BiasAddBiasAddwhile/lstm_cell_141/add:z:02while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/BiasAdd?
#while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_141/split/split_dim?
while/lstm_cell_141/splitSplit,while/lstm_cell_141/split/split_dim:output:0$while/lstm_cell_141/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_141/split?
while/lstm_cell_141/SigmoidSigmoid"while/lstm_cell_141/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/Sigmoid?
while/lstm_cell_141/Sigmoid_1Sigmoid"while/lstm_cell_141/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_141/Sigmoid_1?
while/lstm_cell_141/mul_1Mul!while/lstm_cell_141/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul_1?
while/lstm_cell_141/ReluRelu"while/lstm_cell_141/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_141/Relu?
while/lstm_cell_141/mul_2Mulwhile/lstm_cell_141/Sigmoid:y:0&while/lstm_cell_141/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul_2?
while/lstm_cell_141/add_1AddV2while/lstm_cell_141/mul_1:z:0while/lstm_cell_141/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/add_1?
while/lstm_cell_141/Sigmoid_2Sigmoid"while/lstm_cell_141/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_141/Sigmoid_2?
while/lstm_cell_141/Relu_1Reluwhile/lstm_cell_141/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/Relu_1?
while/lstm_cell_141/mul_3Mul!while/lstm_cell_141/Sigmoid_2:y:0(while/lstm_cell_141/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_141/mul_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_141/mul_3:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_141/add_1:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_141_biasadd_readvariableop_resource5while_lstm_cell_141_biasadd_readvariableop_resource_0"?
Cwhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvarsEwhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvars_0"j
2while_lstm_cell_141_matmul_readvariableop_resource4while_lstm_cell_141_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/: : : : : : : : : :	 ?: 2X
*while/lstm_cell_141/BiasAdd/ReadVariableOp*while/lstm_cell_141/BiasAdd/ReadVariableOp2V
)while/lstm_cell_141/MatMul/ReadVariableOp)while/lstm_cell_141/MatMul/ReadVariableOp: 
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
: :%	!

_output_shapes
:	 ?
?
?
quant_lstm_2_while_cond_3493386
2quant_lstm_2_while_quant_lstm_2_while_loop_counter<
8quant_lstm_2_while_quant_lstm_2_while_maximum_iterations"
quant_lstm_2_while_placeholder$
 quant_lstm_2_while_placeholder_1$
 quant_lstm_2_while_placeholder_2$
 quant_lstm_2_while_placeholder_38
4quant_lstm_2_while_less_quant_lstm_2_strided_slice_1N
Jquant_lstm_2_while_quant_lstm_2_while_cond_349338___redundant_placeholder0N
Jquant_lstm_2_while_quant_lstm_2_while_cond_349338___redundant_placeholder1N
Jquant_lstm_2_while_quant_lstm_2_while_cond_349338___redundant_placeholder2N
Jquant_lstm_2_while_quant_lstm_2_while_cond_349338___redundant_placeholder3
quant_lstm_2_while_identity
?
quant_lstm_2/while/LessLessquant_lstm_2_while_placeholder4quant_lstm_2_while_less_quant_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2
quant_lstm_2/while/Less?
quant_lstm_2/while/IdentityIdentityquant_lstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2
quant_lstm_2/while/Identity"C
quant_lstm_2_while_identity$quant_lstm_2/while/Identity:output:0*(
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
::	

_output_shapes
:
?
?
(__inference_dense_1_layer_call_fn_351033

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
GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3483102
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
??
?
H__inference_quant_lstm_3_layer_call_and_return_conditional_losses_348621

inputs>
+lastvaluequant_rank_readvariableop_resource:	 ?/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: ?
,lstm_cell_141_matmul_readvariableop_resource:	 ?<
-lstm_cell_141_biasadd_readvariableop_resource:	?
identity??LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?$lstm_cell_141/BiasAdd/ReadVariableOp?#lstm_cell_141/MatMul/ReadVariableOp?while?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02$
"LastValueQuant/Rank/ReadVariableOpl
LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rankz
LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range/startz
LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range/delta?
LastValueQuant/rangeRange#LastValueQuant/range/start:output:0LastValueQuant/Rank:output:0#LastValueQuant/range/delta:output:0*
_output_shapes
:2
LastValueQuant/range?
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02&
$LastValueQuant/Rank_1/ReadVariableOpp
LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rank_1~
LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range_1/start~
LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range_1/delta?
LastValueQuant/range_1Range%LastValueQuant/range_1/start:output:0LastValueQuant/Rank_1:output:0%LastValueQuant/range_1/delta:output:0*
_output_shapes
:2
LastValueQuant/range_1?
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
LastValueQuant/Minimum/y?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0!LastValueQuant/Minimum/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumy
LastValueQuant/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
LastValueQuant/Maximum/y?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0!LastValueQuant/Maximum/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/Maximum?
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast?
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	 ?2(
&LastValueQuant/FakeQuantWithMinMaxVarsc
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
lstm_cell_141/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_141/ones_like/Shape?
lstm_cell_141/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_141/ones_like/Const?
lstm_cell_141/ones_likeFill&lstm_cell_141/ones_like/Shape:output:0&lstm_cell_141/ones_like/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/ones_like
lstm_cell_141/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_141/dropout/Const?
lstm_cell_141/dropout/MulMul lstm_cell_141/ones_like:output:0$lstm_cell_141/dropout/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout/Mul?
lstm_cell_141/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_141/dropout/Shape?
2lstm_cell_141/dropout/random_uniform/RandomUniformRandomUniform$lstm_cell_141/dropout/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???24
2lstm_cell_141/dropout/random_uniform/RandomUniform?
$lstm_cell_141/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_141/dropout/GreaterEqual/y?
"lstm_cell_141/dropout/GreaterEqualGreaterEqual;lstm_cell_141/dropout/random_uniform/RandomUniform:output:0-lstm_cell_141/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2$
"lstm_cell_141/dropout/GreaterEqual?
lstm_cell_141/dropout/CastCast&lstm_cell_141/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_141/dropout/Cast?
lstm_cell_141/dropout/Mul_1Mullstm_cell_141/dropout/Mul:z:0lstm_cell_141/dropout/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout/Mul_1?
lstm_cell_141/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_141/dropout_1/Const?
lstm_cell_141/dropout_1/MulMul lstm_cell_141/ones_like:output:0&lstm_cell_141/dropout_1/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout_1/Mul?
lstm_cell_141/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_141/dropout_1/Shape?
4lstm_cell_141/dropout_1/random_uniform/RandomUniformRandomUniform&lstm_cell_141/dropout_1/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2ܙ?26
4lstm_cell_141/dropout_1/random_uniform/RandomUniform?
&lstm_cell_141/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&lstm_cell_141/dropout_1/GreaterEqual/y?
$lstm_cell_141/dropout_1/GreaterEqualGreaterEqual=lstm_cell_141/dropout_1/random_uniform/RandomUniform:output:0/lstm_cell_141/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2&
$lstm_cell_141/dropout_1/GreaterEqual?
lstm_cell_141/dropout_1/CastCast(lstm_cell_141/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_141/dropout_1/Cast?
lstm_cell_141/dropout_1/Mul_1Mullstm_cell_141/dropout_1/Mul:z:0 lstm_cell_141/dropout_1/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout_1/Mul_1?
lstm_cell_141/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_141/dropout_2/Const?
lstm_cell_141/dropout_2/MulMul lstm_cell_141/ones_like:output:0&lstm_cell_141/dropout_2/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout_2/Mul?
lstm_cell_141/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_141/dropout_2/Shape?
4lstm_cell_141/dropout_2/random_uniform/RandomUniformRandomUniform&lstm_cell_141/dropout_2/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???26
4lstm_cell_141/dropout_2/random_uniform/RandomUniform?
&lstm_cell_141/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&lstm_cell_141/dropout_2/GreaterEqual/y?
$lstm_cell_141/dropout_2/GreaterEqualGreaterEqual=lstm_cell_141/dropout_2/random_uniform/RandomUniform:output:0/lstm_cell_141/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2&
$lstm_cell_141/dropout_2/GreaterEqual?
lstm_cell_141/dropout_2/CastCast(lstm_cell_141/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_141/dropout_2/Cast?
lstm_cell_141/dropout_2/Mul_1Mullstm_cell_141/dropout_2/Mul:z:0 lstm_cell_141/dropout_2/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout_2/Mul_1?
lstm_cell_141/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_141/dropout_3/Const?
lstm_cell_141/dropout_3/MulMul lstm_cell_141/ones_like:output:0&lstm_cell_141/dropout_3/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout_3/Mul?
lstm_cell_141/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_141/dropout_3/Shape?
4lstm_cell_141/dropout_3/random_uniform/RandomUniformRandomUniform&lstm_cell_141/dropout_3/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???26
4lstm_cell_141/dropout_3/random_uniform/RandomUniform?
&lstm_cell_141/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&lstm_cell_141/dropout_3/GreaterEqual/y?
$lstm_cell_141/dropout_3/GreaterEqualGreaterEqual=lstm_cell_141/dropout_3/random_uniform/RandomUniform:output:0/lstm_cell_141/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2&
$lstm_cell_141/dropout_3/GreaterEqual?
lstm_cell_141/dropout_3/CastCast(lstm_cell_141/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_141/dropout_3/Cast?
lstm_cell_141/dropout_3/Mul_1Mullstm_cell_141/dropout_3/Mul:z:0 lstm_cell_141/dropout_3/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout_3/Mul_1?
lstm_cell_141/mulMulstrided_slice_2:output:0lstm_cell_141/dropout/Mul_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul?
#lstm_cell_141/MatMul/ReadVariableOpReadVariableOp,lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_141/MatMul/ReadVariableOp?
lstm_cell_141/MatMulMatMullstm_cell_141/mul:z:0+lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_141/MatMul?
lstm_cell_141/MatMul_1MatMulzeros:output:00LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes
:	?2
lstm_cell_141/MatMul_1?
lstm_cell_141/addAddV2lstm_cell_141/MatMul:product:0 lstm_cell_141/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_141/add?
$lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_141/BiasAdd/ReadVariableOp?
lstm_cell_141/BiasAddBiasAddlstm_cell_141/add:z:0,lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_141/BiasAdd?
lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_141/split/split_dim?
lstm_cell_141/splitSplit&lstm_cell_141/split/split_dim:output:0lstm_cell_141/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_141/split?
lstm_cell_141/SigmoidSigmoidlstm_cell_141/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/Sigmoid?
lstm_cell_141/Sigmoid_1Sigmoidlstm_cell_141/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_141/Sigmoid_1?
lstm_cell_141/mul_1Mullstm_cell_141/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul_1w
lstm_cell_141/ReluRelulstm_cell_141/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_141/Relu?
lstm_cell_141/mul_2Mullstm_cell_141/Sigmoid:y:0 lstm_cell_141/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul_2?
lstm_cell_141/add_1AddV2lstm_cell_141/mul_1:z:0lstm_cell_141/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_141/add_1?
lstm_cell_141/Sigmoid_2Sigmoidlstm_cell_141/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_141/Sigmoid_2v
lstm_cell_141/Relu_1Relulstm_cell_141/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_141/Relu_1?
lstm_cell_141/mul_3Mullstm_cell_141/Sigmoid_2:y:0"lstm_cell_141/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_141_matmul_readvariableop_resource0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0-lstm_cell_141_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*C
_output_shapes1
/: : : : : : : : : :	 ?: *$
_read_only_resource_inputs

*
bodyR
while_body_348502*
condR
while_cond_348501*B
output_shapes1
/: : : : : : : : : :	 ?: *
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
runtime?
IdentityIdentitystrided_slice_3:output:0^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2%^lstm_cell_141/BiasAdd/ReadVariableOp$^lstm_cell_141/MatMul/ReadVariableOp^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
: : : : : : 2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22L
$lstm_cell_141/BiasAdd/ReadVariableOp$lstm_cell_141/BiasAdd/ReadVariableOp2J
#lstm_cell_141/MatMul/ReadVariableOp#lstm_cell_141/MatMul/ReadVariableOp2
whilewhile:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
?
?
while_cond_348200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_348200___redundant_placeholder04
0while_while_cond_348200___redundant_placeholder14
0while_while_cond_348200___redundant_placeholder24
0while_while_cond_348200___redundant_placeholder3
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
::	

_output_shapes
:
?
?
while_cond_348777
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_348777___redundant_placeholder04
0while_while_cond_348777___redundant_placeholder14
0while_while_cond_348777___redundant_placeholder24
0while_while_cond_348777___redundant_placeholder3
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
::	

_output_shapes
:
?j
?
+sequential_1_quant_lstm_2_while_body_346368P
Lsequential_1_quant_lstm_2_while_sequential_1_quant_lstm_2_while_loop_counterV
Rsequential_1_quant_lstm_2_while_sequential_1_quant_lstm_2_while_maximum_iterations/
+sequential_1_quant_lstm_2_while_placeholder1
-sequential_1_quant_lstm_2_while_placeholder_11
-sequential_1_quant_lstm_2_while_placeholder_21
-sequential_1_quant_lstm_2_while_placeholder_3O
Ksequential_1_quant_lstm_2_while_sequential_1_quant_lstm_2_strided_slice_1_0?
?sequential_1_quant_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_quant_lstm_2_tensorarrayunstack_tensorlistfromtensor_0a
Nsequential_1_quant_lstm_2_while_lstm_cell_140_matmul_readvariableop_resource_0:	?}
ysequential_1_quant_lstm_2_while_lstm_cell_140_matmul_1_sequential_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_0^
Osequential_1_quant_lstm_2_while_lstm_cell_140_biasadd_readvariableop_resource_0:	?,
(sequential_1_quant_lstm_2_while_identity.
*sequential_1_quant_lstm_2_while_identity_1.
*sequential_1_quant_lstm_2_while_identity_2.
*sequential_1_quant_lstm_2_while_identity_3.
*sequential_1_quant_lstm_2_while_identity_4.
*sequential_1_quant_lstm_2_while_identity_5M
Isequential_1_quant_lstm_2_while_sequential_1_quant_lstm_2_strided_slice_1?
?sequential_1_quant_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_quant_lstm_2_tensorarrayunstack_tensorlistfromtensor_
Lsequential_1_quant_lstm_2_while_lstm_cell_140_matmul_readvariableop_resource:	?{
wsequential_1_quant_lstm_2_while_lstm_cell_140_matmul_1_sequential_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars\
Msequential_1_quant_lstm_2_while_lstm_cell_140_biasadd_readvariableop_resource:	???Dsequential_1/quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp?Csequential_1/quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp?
Qsequential_1/quant_lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2S
Qsequential_1/quant_lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape?
Csequential_1/quant_lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_1_quant_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_quant_lstm_2_tensorarrayunstack_tensorlistfromtensor_0+sequential_1_quant_lstm_2_while_placeholderZsequential_1/quant_lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02E
Csequential_1/quant_lstm_2/while/TensorArrayV2Read/TensorListGetItem?
=sequential_1/quant_lstm_2/while/lstm_cell_140/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_1/quant_lstm_2/while/lstm_cell_140/ones_like/Shape?
=sequential_1/quant_lstm_2/while/lstm_cell_140/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2?
=sequential_1/quant_lstm_2/while/lstm_cell_140/ones_like/Const?
7sequential_1/quant_lstm_2/while/lstm_cell_140/ones_likeFillFsequential_1/quant_lstm_2/while/lstm_cell_140/ones_like/Shape:output:0Fsequential_1/quant_lstm_2/while/lstm_cell_140/ones_like/Const:output:0*
T0*
_output_shapes

:29
7sequential_1/quant_lstm_2/while/lstm_cell_140/ones_like?
1sequential_1/quant_lstm_2/while/lstm_cell_140/mulMulJsequential_1/quant_lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0@sequential_1/quant_lstm_2/while/lstm_cell_140/ones_like:output:0*
T0*
_output_shapes

:23
1sequential_1/quant_lstm_2/while/lstm_cell_140/mul?
Csequential_1/quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOpNsequential_1_quant_lstm_2_while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02E
Csequential_1/quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp?
4sequential_1/quant_lstm_2/while/lstm_cell_140/MatMulMatMul5sequential_1/quant_lstm_2/while/lstm_cell_140/mul:z:0Ksequential_1/quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?26
4sequential_1/quant_lstm_2/while/lstm_cell_140/MatMul?
6sequential_1/quant_lstm_2/while/lstm_cell_140/MatMul_1MatMul-sequential_1_quant_lstm_2_while_placeholder_2ysequential_1_quant_lstm_2_while_lstm_cell_140_matmul_1_sequential_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_0*
T0*
_output_shapes
:	?28
6sequential_1/quant_lstm_2/while/lstm_cell_140/MatMul_1?
1sequential_1/quant_lstm_2/while/lstm_cell_140/addAddV2>sequential_1/quant_lstm_2/while/lstm_cell_140/MatMul:product:0@sequential_1/quant_lstm_2/while/lstm_cell_140/MatMul_1:product:0*
T0*
_output_shapes
:	?23
1sequential_1/quant_lstm_2/while/lstm_cell_140/add?
Dsequential_1/quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOpOsequential_1_quant_lstm_2_while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02F
Dsequential_1/quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp?
5sequential_1/quant_lstm_2/while/lstm_cell_140/BiasAddBiasAdd5sequential_1/quant_lstm_2/while/lstm_cell_140/add:z:0Lsequential_1/quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?27
5sequential_1/quant_lstm_2/while/lstm_cell_140/BiasAdd?
=sequential_1/quant_lstm_2/while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2?
=sequential_1/quant_lstm_2/while/lstm_cell_140/split/split_dim?
3sequential_1/quant_lstm_2/while/lstm_cell_140/splitSplitFsequential_1/quant_lstm_2/while/lstm_cell_140/split/split_dim:output:0>sequential_1/quant_lstm_2/while/lstm_cell_140/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split25
3sequential_1/quant_lstm_2/while/lstm_cell_140/split?
5sequential_1/quant_lstm_2/while/lstm_cell_140/SigmoidSigmoid<sequential_1/quant_lstm_2/while/lstm_cell_140/split:output:0*
T0*
_output_shapes

: 27
5sequential_1/quant_lstm_2/while/lstm_cell_140/Sigmoid?
7sequential_1/quant_lstm_2/while/lstm_cell_140/Sigmoid_1Sigmoid<sequential_1/quant_lstm_2/while/lstm_cell_140/split:output:1*
T0*
_output_shapes

: 29
7sequential_1/quant_lstm_2/while/lstm_cell_140/Sigmoid_1?
3sequential_1/quant_lstm_2/while/lstm_cell_140/mul_1Mul;sequential_1/quant_lstm_2/while/lstm_cell_140/Sigmoid_1:y:0-sequential_1_quant_lstm_2_while_placeholder_3*
T0*
_output_shapes

: 25
3sequential_1/quant_lstm_2/while/lstm_cell_140/mul_1?
2sequential_1/quant_lstm_2/while/lstm_cell_140/ReluRelu<sequential_1/quant_lstm_2/while/lstm_cell_140/split:output:2*
T0*
_output_shapes

: 24
2sequential_1/quant_lstm_2/while/lstm_cell_140/Relu?
3sequential_1/quant_lstm_2/while/lstm_cell_140/mul_2Mul9sequential_1/quant_lstm_2/while/lstm_cell_140/Sigmoid:y:0@sequential_1/quant_lstm_2/while/lstm_cell_140/Relu:activations:0*
T0*
_output_shapes

: 25
3sequential_1/quant_lstm_2/while/lstm_cell_140/mul_2?
3sequential_1/quant_lstm_2/while/lstm_cell_140/add_1AddV27sequential_1/quant_lstm_2/while/lstm_cell_140/mul_1:z:07sequential_1/quant_lstm_2/while/lstm_cell_140/mul_2:z:0*
T0*
_output_shapes

: 25
3sequential_1/quant_lstm_2/while/lstm_cell_140/add_1?
7sequential_1/quant_lstm_2/while/lstm_cell_140/Sigmoid_2Sigmoid<sequential_1/quant_lstm_2/while/lstm_cell_140/split:output:3*
T0*
_output_shapes

: 29
7sequential_1/quant_lstm_2/while/lstm_cell_140/Sigmoid_2?
4sequential_1/quant_lstm_2/while/lstm_cell_140/Relu_1Relu7sequential_1/quant_lstm_2/while/lstm_cell_140/add_1:z:0*
T0*
_output_shapes

: 26
4sequential_1/quant_lstm_2/while/lstm_cell_140/Relu_1?
3sequential_1/quant_lstm_2/while/lstm_cell_140/mul_3Mul;sequential_1/quant_lstm_2/while/lstm_cell_140/Sigmoid_2:y:0Bsequential_1/quant_lstm_2/while/lstm_cell_140/Relu_1:activations:0*
T0*
_output_shapes

: 25
3sequential_1/quant_lstm_2/while/lstm_cell_140/mul_3?
Dsequential_1/quant_lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_1_quant_lstm_2_while_placeholder_1+sequential_1_quant_lstm_2_while_placeholder7sequential_1/quant_lstm_2/while/lstm_cell_140/mul_3:z:0*
_output_shapes
: *
element_dtype02F
Dsequential_1/quant_lstm_2/while/TensorArrayV2Write/TensorListSetItem?
%sequential_1/quant_lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/quant_lstm_2/while/add/y?
#sequential_1/quant_lstm_2/while/addAddV2+sequential_1_quant_lstm_2_while_placeholder.sequential_1/quant_lstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2%
#sequential_1/quant_lstm_2/while/add?
'sequential_1/quant_lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/quant_lstm_2/while/add_1/y?
%sequential_1/quant_lstm_2/while/add_1AddV2Lsequential_1_quant_lstm_2_while_sequential_1_quant_lstm_2_while_loop_counter0sequential_1/quant_lstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2'
%sequential_1/quant_lstm_2/while/add_1?
(sequential_1/quant_lstm_2/while/IdentityIdentity)sequential_1/quant_lstm_2/while/add_1:z:0E^sequential_1/quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOpD^sequential_1/quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential_1/quant_lstm_2/while/Identity?
*sequential_1/quant_lstm_2/while/Identity_1IdentityRsequential_1_quant_lstm_2_while_sequential_1_quant_lstm_2_while_maximum_iterationsE^sequential_1/quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOpD^sequential_1/quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_1/quant_lstm_2/while/Identity_1?
*sequential_1/quant_lstm_2/while/Identity_2Identity'sequential_1/quant_lstm_2/while/add:z:0E^sequential_1/quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOpD^sequential_1/quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_1/quant_lstm_2/while/Identity_2?
*sequential_1/quant_lstm_2/while/Identity_3IdentityTsequential_1/quant_lstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0E^sequential_1/quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOpD^sequential_1/quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_1/quant_lstm_2/while/Identity_3?
*sequential_1/quant_lstm_2/while/Identity_4Identity7sequential_1/quant_lstm_2/while/lstm_cell_140/mul_3:z:0E^sequential_1/quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOpD^sequential_1/quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2,
*sequential_1/quant_lstm_2/while/Identity_4?
*sequential_1/quant_lstm_2/while/Identity_5Identity7sequential_1/quant_lstm_2/while/lstm_cell_140/add_1:z:0E^sequential_1/quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOpD^sequential_1/quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2,
*sequential_1/quant_lstm_2/while/Identity_5"]
(sequential_1_quant_lstm_2_while_identity1sequential_1/quant_lstm_2/while/Identity:output:0"a
*sequential_1_quant_lstm_2_while_identity_13sequential_1/quant_lstm_2/while/Identity_1:output:0"a
*sequential_1_quant_lstm_2_while_identity_23sequential_1/quant_lstm_2/while/Identity_2:output:0"a
*sequential_1_quant_lstm_2_while_identity_33sequential_1/quant_lstm_2/while/Identity_3:output:0"a
*sequential_1_quant_lstm_2_while_identity_43sequential_1/quant_lstm_2/while/Identity_4:output:0"a
*sequential_1_quant_lstm_2_while_identity_53sequential_1/quant_lstm_2/while/Identity_5:output:0"?
Msequential_1_quant_lstm_2_while_lstm_cell_140_biasadd_readvariableop_resourceOsequential_1_quant_lstm_2_while_lstm_cell_140_biasadd_readvariableop_resource_0"?
wsequential_1_quant_lstm_2_while_lstm_cell_140_matmul_1_sequential_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvarsysequential_1_quant_lstm_2_while_lstm_cell_140_matmul_1_sequential_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_0"?
Lsequential_1_quant_lstm_2_while_lstm_cell_140_matmul_readvariableop_resourceNsequential_1_quant_lstm_2_while_lstm_cell_140_matmul_readvariableop_resource_0"?
Isequential_1_quant_lstm_2_while_sequential_1_quant_lstm_2_strided_slice_1Ksequential_1_quant_lstm_2_while_sequential_1_quant_lstm_2_strided_slice_1_0"?
?sequential_1_quant_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_quant_lstm_2_tensorarrayunstack_tensorlistfromtensor?sequential_1_quant_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_quant_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/: : : : : : : : : :	 ?: 2?
Dsequential_1/quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOpDsequential_1/quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp2?
Csequential_1/quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOpCsequential_1/quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp: 
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
: :%	!

_output_shapes
:	 ?
?
?
quant_lstm_3_while_cond_3499746
2quant_lstm_3_while_quant_lstm_3_while_loop_counter<
8quant_lstm_3_while_quant_lstm_3_while_maximum_iterations"
quant_lstm_3_while_placeholder$
 quant_lstm_3_while_placeholder_1$
 quant_lstm_3_while_placeholder_2$
 quant_lstm_3_while_placeholder_38
4quant_lstm_3_while_less_quant_lstm_3_strided_slice_1N
Jquant_lstm_3_while_quant_lstm_3_while_cond_349974___redundant_placeholder0N
Jquant_lstm_3_while_quant_lstm_3_while_cond_349974___redundant_placeholder1N
Jquant_lstm_3_while_quant_lstm_3_while_cond_349974___redundant_placeholder2N
Jquant_lstm_3_while_quant_lstm_3_while_cond_349974___redundant_placeholder3
quant_lstm_3_while_identity
?
quant_lstm_3/while/LessLessquant_lstm_3_while_placeholder4quant_lstm_3_while_less_quant_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2
quant_lstm_3/while/Less?
quant_lstm_3/while/IdentityIdentityquant_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
quant_lstm_3/while/Identity"C
quant_lstm_3_while_identity$quant_lstm_3/while/Identity:output:0*(
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
::	

_output_shapes
:
?
?
+sequential_1_quant_lstm_2_while_cond_346367P
Lsequential_1_quant_lstm_2_while_sequential_1_quant_lstm_2_while_loop_counterV
Rsequential_1_quant_lstm_2_while_sequential_1_quant_lstm_2_while_maximum_iterations/
+sequential_1_quant_lstm_2_while_placeholder1
-sequential_1_quant_lstm_2_while_placeholder_11
-sequential_1_quant_lstm_2_while_placeholder_21
-sequential_1_quant_lstm_2_while_placeholder_3R
Nsequential_1_quant_lstm_2_while_less_sequential_1_quant_lstm_2_strided_slice_1h
dsequential_1_quant_lstm_2_while_sequential_1_quant_lstm_2_while_cond_346367___redundant_placeholder0h
dsequential_1_quant_lstm_2_while_sequential_1_quant_lstm_2_while_cond_346367___redundant_placeholder1h
dsequential_1_quant_lstm_2_while_sequential_1_quant_lstm_2_while_cond_346367___redundant_placeholder2h
dsequential_1_quant_lstm_2_while_sequential_1_quant_lstm_2_while_cond_346367___redundant_placeholder3,
(sequential_1_quant_lstm_2_while_identity
?
$sequential_1/quant_lstm_2/while/LessLess+sequential_1_quant_lstm_2_while_placeholderNsequential_1_quant_lstm_2_while_less_sequential_1_quant_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2&
$sequential_1/quant_lstm_2/while/Less?
(sequential_1/quant_lstm_2/while/IdentityIdentity(sequential_1/quant_lstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2*
(sequential_1/quant_lstm_2/while/Identity"]
(sequential_1_quant_lstm_2_while_identity1sequential_1/quant_lstm_2/while/Identity:output:0*(
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
::	

_output_shapes
:
Ғ
?
quant_lstm_3_while_body_3499756
2quant_lstm_3_while_quant_lstm_3_while_loop_counter<
8quant_lstm_3_while_quant_lstm_3_while_maximum_iterations"
quant_lstm_3_while_placeholder$
 quant_lstm_3_while_placeholder_1$
 quant_lstm_3_while_placeholder_2$
 quant_lstm_3_while_placeholder_35
1quant_lstm_3_while_quant_lstm_3_strided_slice_1_0q
mquant_lstm_3_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_3_tensorarrayunstack_tensorlistfromtensor_0T
Aquant_lstm_3_while_lstm_cell_141_matmul_readvariableop_resource_0:	 ?c
_quant_lstm_3_while_lstm_cell_141_matmul_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_0Q
Bquant_lstm_3_while_lstm_cell_141_biasadd_readvariableop_resource_0:	?
quant_lstm_3_while_identity!
quant_lstm_3_while_identity_1!
quant_lstm_3_while_identity_2!
quant_lstm_3_while_identity_3!
quant_lstm_3_while_identity_4!
quant_lstm_3_while_identity_53
/quant_lstm_3_while_quant_lstm_3_strided_slice_1o
kquant_lstm_3_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_3_tensorarrayunstack_tensorlistfromtensorR
?quant_lstm_3_while_lstm_cell_141_matmul_readvariableop_resource:	 ?a
]quant_lstm_3_while_lstm_cell_141_matmul_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvarsO
@quant_lstm_3_while_lstm_cell_141_biasadd_readvariableop_resource:	???7quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp?6quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp?
Dquant_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2F
Dquant_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape?
6quant_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmquant_lstm_3_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_3_tensorarrayunstack_tensorlistfromtensor_0quant_lstm_3_while_placeholderMquant_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

: *
element_dtype028
6quant_lstm_3/while/TensorArrayV2Read/TensorListGetItem?
0quant_lstm_3/while/lstm_cell_141/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0quant_lstm_3/while/lstm_cell_141/ones_like/Shape?
0quant_lstm_3/while/lstm_cell_141/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0quant_lstm_3/while/lstm_cell_141/ones_like/Const?
*quant_lstm_3/while/lstm_cell_141/ones_likeFill9quant_lstm_3/while/lstm_cell_141/ones_like/Shape:output:09quant_lstm_3/while/lstm_cell_141/ones_like/Const:output:0*
T0*
_output_shapes

: 2,
*quant_lstm_3/while/lstm_cell_141/ones_like?
.quant_lstm_3/while/lstm_cell_141/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??20
.quant_lstm_3/while/lstm_cell_141/dropout/Const?
,quant_lstm_3/while/lstm_cell_141/dropout/MulMul3quant_lstm_3/while/lstm_cell_141/ones_like:output:07quant_lstm_3/while/lstm_cell_141/dropout/Const:output:0*
T0*
_output_shapes

: 2.
,quant_lstm_3/while/lstm_cell_141/dropout/Mul?
.quant_lstm_3/while/lstm_cell_141/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       20
.quant_lstm_3/while/lstm_cell_141/dropout/Shape?
Equant_lstm_3/while/lstm_cell_141/dropout/random_uniform/RandomUniformRandomUniform7quant_lstm_3/while/lstm_cell_141/dropout/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2??o2G
Equant_lstm_3/while/lstm_cell_141/dropout/random_uniform/RandomUniform?
7quant_lstm_3/while/lstm_cell_141/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=29
7quant_lstm_3/while/lstm_cell_141/dropout/GreaterEqual/y?
5quant_lstm_3/while/lstm_cell_141/dropout/GreaterEqualGreaterEqualNquant_lstm_3/while/lstm_cell_141/dropout/random_uniform/RandomUniform:output:0@quant_lstm_3/while/lstm_cell_141/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

: 27
5quant_lstm_3/while/lstm_cell_141/dropout/GreaterEqual?
-quant_lstm_3/while/lstm_cell_141/dropout/CastCast9quant_lstm_3/while/lstm_cell_141/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2/
-quant_lstm_3/while/lstm_cell_141/dropout/Cast?
.quant_lstm_3/while/lstm_cell_141/dropout/Mul_1Mul0quant_lstm_3/while/lstm_cell_141/dropout/Mul:z:01quant_lstm_3/while/lstm_cell_141/dropout/Cast:y:0*
T0*
_output_shapes

: 20
.quant_lstm_3/while/lstm_cell_141/dropout/Mul_1?
0quant_lstm_3/while/lstm_cell_141/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??22
0quant_lstm_3/while/lstm_cell_141/dropout_1/Const?
.quant_lstm_3/while/lstm_cell_141/dropout_1/MulMul3quant_lstm_3/while/lstm_cell_141/ones_like:output:09quant_lstm_3/while/lstm_cell_141/dropout_1/Const:output:0*
T0*
_output_shapes

: 20
.quant_lstm_3/while/lstm_cell_141/dropout_1/Mul?
0quant_lstm_3/while/lstm_cell_141/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0quant_lstm_3/while/lstm_cell_141/dropout_1/Shape?
Gquant_lstm_3/while/lstm_cell_141/dropout_1/random_uniform/RandomUniformRandomUniform9quant_lstm_3/while/lstm_cell_141/dropout_1/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2?ӄ2I
Gquant_lstm_3/while/lstm_cell_141/dropout_1/random_uniform/RandomUniform?
9quant_lstm_3/while/lstm_cell_141/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2;
9quant_lstm_3/while/lstm_cell_141/dropout_1/GreaterEqual/y?
7quant_lstm_3/while/lstm_cell_141/dropout_1/GreaterEqualGreaterEqualPquant_lstm_3/while/lstm_cell_141/dropout_1/random_uniform/RandomUniform:output:0Bquant_lstm_3/while/lstm_cell_141/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

: 29
7quant_lstm_3/while/lstm_cell_141/dropout_1/GreaterEqual?
/quant_lstm_3/while/lstm_cell_141/dropout_1/CastCast;quant_lstm_3/while/lstm_cell_141/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 21
/quant_lstm_3/while/lstm_cell_141/dropout_1/Cast?
0quant_lstm_3/while/lstm_cell_141/dropout_1/Mul_1Mul2quant_lstm_3/while/lstm_cell_141/dropout_1/Mul:z:03quant_lstm_3/while/lstm_cell_141/dropout_1/Cast:y:0*
T0*
_output_shapes

: 22
0quant_lstm_3/while/lstm_cell_141/dropout_1/Mul_1?
0quant_lstm_3/while/lstm_cell_141/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??22
0quant_lstm_3/while/lstm_cell_141/dropout_2/Const?
.quant_lstm_3/while/lstm_cell_141/dropout_2/MulMul3quant_lstm_3/while/lstm_cell_141/ones_like:output:09quant_lstm_3/while/lstm_cell_141/dropout_2/Const:output:0*
T0*
_output_shapes

: 20
.quant_lstm_3/while/lstm_cell_141/dropout_2/Mul?
0quant_lstm_3/while/lstm_cell_141/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0quant_lstm_3/while/lstm_cell_141/dropout_2/Shape?
Gquant_lstm_3/while/lstm_cell_141/dropout_2/random_uniform/RandomUniformRandomUniform9quant_lstm_3/while/lstm_cell_141/dropout_2/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2??V2I
Gquant_lstm_3/while/lstm_cell_141/dropout_2/random_uniform/RandomUniform?
9quant_lstm_3/while/lstm_cell_141/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2;
9quant_lstm_3/while/lstm_cell_141/dropout_2/GreaterEqual/y?
7quant_lstm_3/while/lstm_cell_141/dropout_2/GreaterEqualGreaterEqualPquant_lstm_3/while/lstm_cell_141/dropout_2/random_uniform/RandomUniform:output:0Bquant_lstm_3/while/lstm_cell_141/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

: 29
7quant_lstm_3/while/lstm_cell_141/dropout_2/GreaterEqual?
/quant_lstm_3/while/lstm_cell_141/dropout_2/CastCast;quant_lstm_3/while/lstm_cell_141/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 21
/quant_lstm_3/while/lstm_cell_141/dropout_2/Cast?
0quant_lstm_3/while/lstm_cell_141/dropout_2/Mul_1Mul2quant_lstm_3/while/lstm_cell_141/dropout_2/Mul:z:03quant_lstm_3/while/lstm_cell_141/dropout_2/Cast:y:0*
T0*
_output_shapes

: 22
0quant_lstm_3/while/lstm_cell_141/dropout_2/Mul_1?
0quant_lstm_3/while/lstm_cell_141/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??22
0quant_lstm_3/while/lstm_cell_141/dropout_3/Const?
.quant_lstm_3/while/lstm_cell_141/dropout_3/MulMul3quant_lstm_3/while/lstm_cell_141/ones_like:output:09quant_lstm_3/while/lstm_cell_141/dropout_3/Const:output:0*
T0*
_output_shapes

: 20
.quant_lstm_3/while/lstm_cell_141/dropout_3/Mul?
0quant_lstm_3/while/lstm_cell_141/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0quant_lstm_3/while/lstm_cell_141/dropout_3/Shape?
Gquant_lstm_3/while/lstm_cell_141/dropout_3/random_uniform/RandomUniformRandomUniform9quant_lstm_3/while/lstm_cell_141/dropout_3/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2I
Gquant_lstm_3/while/lstm_cell_141/dropout_3/random_uniform/RandomUniform?
9quant_lstm_3/while/lstm_cell_141/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2;
9quant_lstm_3/while/lstm_cell_141/dropout_3/GreaterEqual/y?
7quant_lstm_3/while/lstm_cell_141/dropout_3/GreaterEqualGreaterEqualPquant_lstm_3/while/lstm_cell_141/dropout_3/random_uniform/RandomUniform:output:0Bquant_lstm_3/while/lstm_cell_141/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

: 29
7quant_lstm_3/while/lstm_cell_141/dropout_3/GreaterEqual?
/quant_lstm_3/while/lstm_cell_141/dropout_3/CastCast;quant_lstm_3/while/lstm_cell_141/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 21
/quant_lstm_3/while/lstm_cell_141/dropout_3/Cast?
0quant_lstm_3/while/lstm_cell_141/dropout_3/Mul_1Mul2quant_lstm_3/while/lstm_cell_141/dropout_3/Mul:z:03quant_lstm_3/while/lstm_cell_141/dropout_3/Cast:y:0*
T0*
_output_shapes

: 22
0quant_lstm_3/while/lstm_cell_141/dropout_3/Mul_1?
$quant_lstm_3/while/lstm_cell_141/mulMul=quant_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:02quant_lstm_3/while/lstm_cell_141/dropout/Mul_1:z:0*
T0*
_output_shapes

: 2&
$quant_lstm_3/while/lstm_cell_141/mul?
6quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOpAquant_lstm_3_while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype028
6quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp?
'quant_lstm_3/while/lstm_cell_141/MatMulMatMul(quant_lstm_3/while/lstm_cell_141/mul:z:0>quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2)
'quant_lstm_3/while/lstm_cell_141/MatMul?
)quant_lstm_3/while/lstm_cell_141/MatMul_1MatMul quant_lstm_3_while_placeholder_2_quant_lstm_3_while_lstm_cell_141_matmul_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_0*
T0*
_output_shapes
:	?2+
)quant_lstm_3/while/lstm_cell_141/MatMul_1?
$quant_lstm_3/while/lstm_cell_141/addAddV21quant_lstm_3/while/lstm_cell_141/MatMul:product:03quant_lstm_3/while/lstm_cell_141/MatMul_1:product:0*
T0*
_output_shapes
:	?2&
$quant_lstm_3/while/lstm_cell_141/add?
7quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOpBquant_lstm_3_while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype029
7quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp?
(quant_lstm_3/while/lstm_cell_141/BiasAddBiasAdd(quant_lstm_3/while/lstm_cell_141/add:z:0?quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2*
(quant_lstm_3/while/lstm_cell_141/BiasAdd?
0quant_lstm_3/while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0quant_lstm_3/while/lstm_cell_141/split/split_dim?
&quant_lstm_3/while/lstm_cell_141/splitSplit9quant_lstm_3/while/lstm_cell_141/split/split_dim:output:01quant_lstm_3/while/lstm_cell_141/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2(
&quant_lstm_3/while/lstm_cell_141/split?
(quant_lstm_3/while/lstm_cell_141/SigmoidSigmoid/quant_lstm_3/while/lstm_cell_141/split:output:0*
T0*
_output_shapes

: 2*
(quant_lstm_3/while/lstm_cell_141/Sigmoid?
*quant_lstm_3/while/lstm_cell_141/Sigmoid_1Sigmoid/quant_lstm_3/while/lstm_cell_141/split:output:1*
T0*
_output_shapes

: 2,
*quant_lstm_3/while/lstm_cell_141/Sigmoid_1?
&quant_lstm_3/while/lstm_cell_141/mul_1Mul.quant_lstm_3/while/lstm_cell_141/Sigmoid_1:y:0 quant_lstm_3_while_placeholder_3*
T0*
_output_shapes

: 2(
&quant_lstm_3/while/lstm_cell_141/mul_1?
%quant_lstm_3/while/lstm_cell_141/ReluRelu/quant_lstm_3/while/lstm_cell_141/split:output:2*
T0*
_output_shapes

: 2'
%quant_lstm_3/while/lstm_cell_141/Relu?
&quant_lstm_3/while/lstm_cell_141/mul_2Mul,quant_lstm_3/while/lstm_cell_141/Sigmoid:y:03quant_lstm_3/while/lstm_cell_141/Relu:activations:0*
T0*
_output_shapes

: 2(
&quant_lstm_3/while/lstm_cell_141/mul_2?
&quant_lstm_3/while/lstm_cell_141/add_1AddV2*quant_lstm_3/while/lstm_cell_141/mul_1:z:0*quant_lstm_3/while/lstm_cell_141/mul_2:z:0*
T0*
_output_shapes

: 2(
&quant_lstm_3/while/lstm_cell_141/add_1?
*quant_lstm_3/while/lstm_cell_141/Sigmoid_2Sigmoid/quant_lstm_3/while/lstm_cell_141/split:output:3*
T0*
_output_shapes

: 2,
*quant_lstm_3/while/lstm_cell_141/Sigmoid_2?
'quant_lstm_3/while/lstm_cell_141/Relu_1Relu*quant_lstm_3/while/lstm_cell_141/add_1:z:0*
T0*
_output_shapes

: 2)
'quant_lstm_3/while/lstm_cell_141/Relu_1?
&quant_lstm_3/while/lstm_cell_141/mul_3Mul.quant_lstm_3/while/lstm_cell_141/Sigmoid_2:y:05quant_lstm_3/while/lstm_cell_141/Relu_1:activations:0*
T0*
_output_shapes

: 2(
&quant_lstm_3/while/lstm_cell_141/mul_3?
7quant_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem quant_lstm_3_while_placeholder_1quant_lstm_3_while_placeholder*quant_lstm_3/while/lstm_cell_141/mul_3:z:0*
_output_shapes
: *
element_dtype029
7quant_lstm_3/while/TensorArrayV2Write/TensorListSetItemv
quant_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
quant_lstm_3/while/add/y?
quant_lstm_3/while/addAddV2quant_lstm_3_while_placeholder!quant_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_3/while/addz
quant_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
quant_lstm_3/while/add_1/y?
quant_lstm_3/while/add_1AddV22quant_lstm_3_while_quant_lstm_3_while_loop_counter#quant_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_3/while/add_1?
quant_lstm_3/while/IdentityIdentityquant_lstm_3/while/add_1:z:08^quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp7^quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_3/while/Identity?
quant_lstm_3/while/Identity_1Identity8quant_lstm_3_while_quant_lstm_3_while_maximum_iterations8^quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp7^quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_3/while/Identity_1?
quant_lstm_3/while/Identity_2Identityquant_lstm_3/while/add:z:08^quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp7^quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_3/while/Identity_2?
quant_lstm_3/while/Identity_3IdentityGquant_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:08^quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp7^quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_3/while/Identity_3?
quant_lstm_3/while/Identity_4Identity*quant_lstm_3/while/lstm_cell_141/mul_3:z:08^quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp7^quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
quant_lstm_3/while/Identity_4?
quant_lstm_3/while/Identity_5Identity*quant_lstm_3/while/lstm_cell_141/add_1:z:08^quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp7^quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
quant_lstm_3/while/Identity_5"C
quant_lstm_3_while_identity$quant_lstm_3/while/Identity:output:0"G
quant_lstm_3_while_identity_1&quant_lstm_3/while/Identity_1:output:0"G
quant_lstm_3_while_identity_2&quant_lstm_3/while/Identity_2:output:0"G
quant_lstm_3_while_identity_3&quant_lstm_3/while/Identity_3:output:0"G
quant_lstm_3_while_identity_4&quant_lstm_3/while/Identity_4:output:0"G
quant_lstm_3_while_identity_5&quant_lstm_3/while/Identity_5:output:0"?
@quant_lstm_3_while_lstm_cell_141_biasadd_readvariableop_resourceBquant_lstm_3_while_lstm_cell_141_biasadd_readvariableop_resource_0"?
]quant_lstm_3_while_lstm_cell_141_matmul_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_quant_lstm_3_while_lstm_cell_141_matmul_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_0"?
?quant_lstm_3_while_lstm_cell_141_matmul_readvariableop_resourceAquant_lstm_3_while_lstm_cell_141_matmul_readvariableop_resource_0"d
/quant_lstm_3_while_quant_lstm_3_strided_slice_11quant_lstm_3_while_quant_lstm_3_strided_slice_1_0"?
kquant_lstm_3_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_3_tensorarrayunstack_tensorlistfromtensormquant_lstm_3_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/: : : : : : : : : :	 ?: 2r
7quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp7quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp2p
6quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp6quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp: 
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
: :%	!

_output_shapes
:	 ?
?
?
M__inference_quantize_layer_32_layer_call_and_return_conditional_losses_347944

inputsK
Aallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: M
Callvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCallvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*"
_output_shapes
:2+
)AllValuesQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:09^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*"
_output_shapes
:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?j
?
+sequential_1_quant_lstm_3_while_body_346527P
Lsequential_1_quant_lstm_3_while_sequential_1_quant_lstm_3_while_loop_counterV
Rsequential_1_quant_lstm_3_while_sequential_1_quant_lstm_3_while_maximum_iterations/
+sequential_1_quant_lstm_3_while_placeholder1
-sequential_1_quant_lstm_3_while_placeholder_11
-sequential_1_quant_lstm_3_while_placeholder_21
-sequential_1_quant_lstm_3_while_placeholder_3O
Ksequential_1_quant_lstm_3_while_sequential_1_quant_lstm_3_strided_slice_1_0?
?sequential_1_quant_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_quant_lstm_3_tensorarrayunstack_tensorlistfromtensor_0a
Nsequential_1_quant_lstm_3_while_lstm_cell_141_matmul_readvariableop_resource_0:	 ?}
ysequential_1_quant_lstm_3_while_lstm_cell_141_matmul_1_sequential_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_0^
Osequential_1_quant_lstm_3_while_lstm_cell_141_biasadd_readvariableop_resource_0:	?,
(sequential_1_quant_lstm_3_while_identity.
*sequential_1_quant_lstm_3_while_identity_1.
*sequential_1_quant_lstm_3_while_identity_2.
*sequential_1_quant_lstm_3_while_identity_3.
*sequential_1_quant_lstm_3_while_identity_4.
*sequential_1_quant_lstm_3_while_identity_5M
Isequential_1_quant_lstm_3_while_sequential_1_quant_lstm_3_strided_slice_1?
?sequential_1_quant_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_quant_lstm_3_tensorarrayunstack_tensorlistfromtensor_
Lsequential_1_quant_lstm_3_while_lstm_cell_141_matmul_readvariableop_resource:	 ?{
wsequential_1_quant_lstm_3_while_lstm_cell_141_matmul_1_sequential_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars\
Msequential_1_quant_lstm_3_while_lstm_cell_141_biasadd_readvariableop_resource:	???Dsequential_1/quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp?Csequential_1/quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp?
Qsequential_1/quant_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2S
Qsequential_1/quant_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape?
Csequential_1/quant_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_1_quant_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_quant_lstm_3_tensorarrayunstack_tensorlistfromtensor_0+sequential_1_quant_lstm_3_while_placeholderZsequential_1/quant_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

: *
element_dtype02E
Csequential_1/quant_lstm_3/while/TensorArrayV2Read/TensorListGetItem?
=sequential_1/quant_lstm_3/while/lstm_cell_141/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2?
=sequential_1/quant_lstm_3/while/lstm_cell_141/ones_like/Shape?
=sequential_1/quant_lstm_3/while/lstm_cell_141/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2?
=sequential_1/quant_lstm_3/while/lstm_cell_141/ones_like/Const?
7sequential_1/quant_lstm_3/while/lstm_cell_141/ones_likeFillFsequential_1/quant_lstm_3/while/lstm_cell_141/ones_like/Shape:output:0Fsequential_1/quant_lstm_3/while/lstm_cell_141/ones_like/Const:output:0*
T0*
_output_shapes

: 29
7sequential_1/quant_lstm_3/while/lstm_cell_141/ones_like?
1sequential_1/quant_lstm_3/while/lstm_cell_141/mulMulJsequential_1/quant_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0@sequential_1/quant_lstm_3/while/lstm_cell_141/ones_like:output:0*
T0*
_output_shapes

: 23
1sequential_1/quant_lstm_3/while/lstm_cell_141/mul?
Csequential_1/quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOpNsequential_1_quant_lstm_3_while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02E
Csequential_1/quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp?
4sequential_1/quant_lstm_3/while/lstm_cell_141/MatMulMatMul5sequential_1/quant_lstm_3/while/lstm_cell_141/mul:z:0Ksequential_1/quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?26
4sequential_1/quant_lstm_3/while/lstm_cell_141/MatMul?
6sequential_1/quant_lstm_3/while/lstm_cell_141/MatMul_1MatMul-sequential_1_quant_lstm_3_while_placeholder_2ysequential_1_quant_lstm_3_while_lstm_cell_141_matmul_1_sequential_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_0*
T0*
_output_shapes
:	?28
6sequential_1/quant_lstm_3/while/lstm_cell_141/MatMul_1?
1sequential_1/quant_lstm_3/while/lstm_cell_141/addAddV2>sequential_1/quant_lstm_3/while/lstm_cell_141/MatMul:product:0@sequential_1/quant_lstm_3/while/lstm_cell_141/MatMul_1:product:0*
T0*
_output_shapes
:	?23
1sequential_1/quant_lstm_3/while/lstm_cell_141/add?
Dsequential_1/quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOpOsequential_1_quant_lstm_3_while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02F
Dsequential_1/quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp?
5sequential_1/quant_lstm_3/while/lstm_cell_141/BiasAddBiasAdd5sequential_1/quant_lstm_3/while/lstm_cell_141/add:z:0Lsequential_1/quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?27
5sequential_1/quant_lstm_3/while/lstm_cell_141/BiasAdd?
=sequential_1/quant_lstm_3/while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2?
=sequential_1/quant_lstm_3/while/lstm_cell_141/split/split_dim?
3sequential_1/quant_lstm_3/while/lstm_cell_141/splitSplitFsequential_1/quant_lstm_3/while/lstm_cell_141/split/split_dim:output:0>sequential_1/quant_lstm_3/while/lstm_cell_141/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split25
3sequential_1/quant_lstm_3/while/lstm_cell_141/split?
5sequential_1/quant_lstm_3/while/lstm_cell_141/SigmoidSigmoid<sequential_1/quant_lstm_3/while/lstm_cell_141/split:output:0*
T0*
_output_shapes

: 27
5sequential_1/quant_lstm_3/while/lstm_cell_141/Sigmoid?
7sequential_1/quant_lstm_3/while/lstm_cell_141/Sigmoid_1Sigmoid<sequential_1/quant_lstm_3/while/lstm_cell_141/split:output:1*
T0*
_output_shapes

: 29
7sequential_1/quant_lstm_3/while/lstm_cell_141/Sigmoid_1?
3sequential_1/quant_lstm_3/while/lstm_cell_141/mul_1Mul;sequential_1/quant_lstm_3/while/lstm_cell_141/Sigmoid_1:y:0-sequential_1_quant_lstm_3_while_placeholder_3*
T0*
_output_shapes

: 25
3sequential_1/quant_lstm_3/while/lstm_cell_141/mul_1?
2sequential_1/quant_lstm_3/while/lstm_cell_141/ReluRelu<sequential_1/quant_lstm_3/while/lstm_cell_141/split:output:2*
T0*
_output_shapes

: 24
2sequential_1/quant_lstm_3/while/lstm_cell_141/Relu?
3sequential_1/quant_lstm_3/while/lstm_cell_141/mul_2Mul9sequential_1/quant_lstm_3/while/lstm_cell_141/Sigmoid:y:0@sequential_1/quant_lstm_3/while/lstm_cell_141/Relu:activations:0*
T0*
_output_shapes

: 25
3sequential_1/quant_lstm_3/while/lstm_cell_141/mul_2?
3sequential_1/quant_lstm_3/while/lstm_cell_141/add_1AddV27sequential_1/quant_lstm_3/while/lstm_cell_141/mul_1:z:07sequential_1/quant_lstm_3/while/lstm_cell_141/mul_2:z:0*
T0*
_output_shapes

: 25
3sequential_1/quant_lstm_3/while/lstm_cell_141/add_1?
7sequential_1/quant_lstm_3/while/lstm_cell_141/Sigmoid_2Sigmoid<sequential_1/quant_lstm_3/while/lstm_cell_141/split:output:3*
T0*
_output_shapes

: 29
7sequential_1/quant_lstm_3/while/lstm_cell_141/Sigmoid_2?
4sequential_1/quant_lstm_3/while/lstm_cell_141/Relu_1Relu7sequential_1/quant_lstm_3/while/lstm_cell_141/add_1:z:0*
T0*
_output_shapes

: 26
4sequential_1/quant_lstm_3/while/lstm_cell_141/Relu_1?
3sequential_1/quant_lstm_3/while/lstm_cell_141/mul_3Mul;sequential_1/quant_lstm_3/while/lstm_cell_141/Sigmoid_2:y:0Bsequential_1/quant_lstm_3/while/lstm_cell_141/Relu_1:activations:0*
T0*
_output_shapes

: 25
3sequential_1/quant_lstm_3/while/lstm_cell_141/mul_3?
Dsequential_1/quant_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_1_quant_lstm_3_while_placeholder_1+sequential_1_quant_lstm_3_while_placeholder7sequential_1/quant_lstm_3/while/lstm_cell_141/mul_3:z:0*
_output_shapes
: *
element_dtype02F
Dsequential_1/quant_lstm_3/while/TensorArrayV2Write/TensorListSetItem?
%sequential_1/quant_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/quant_lstm_3/while/add/y?
#sequential_1/quant_lstm_3/while/addAddV2+sequential_1_quant_lstm_3_while_placeholder.sequential_1/quant_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2%
#sequential_1/quant_lstm_3/while/add?
'sequential_1/quant_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/quant_lstm_3/while/add_1/y?
%sequential_1/quant_lstm_3/while/add_1AddV2Lsequential_1_quant_lstm_3_while_sequential_1_quant_lstm_3_while_loop_counter0sequential_1/quant_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2'
%sequential_1/quant_lstm_3/while/add_1?
(sequential_1/quant_lstm_3/while/IdentityIdentity)sequential_1/quant_lstm_3/while/add_1:z:0E^sequential_1/quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOpD^sequential_1/quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential_1/quant_lstm_3/while/Identity?
*sequential_1/quant_lstm_3/while/Identity_1IdentityRsequential_1_quant_lstm_3_while_sequential_1_quant_lstm_3_while_maximum_iterationsE^sequential_1/quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOpD^sequential_1/quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_1/quant_lstm_3/while/Identity_1?
*sequential_1/quant_lstm_3/while/Identity_2Identity'sequential_1/quant_lstm_3/while/add:z:0E^sequential_1/quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOpD^sequential_1/quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_1/quant_lstm_3/while/Identity_2?
*sequential_1/quant_lstm_3/while/Identity_3IdentityTsequential_1/quant_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0E^sequential_1/quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOpD^sequential_1/quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_1/quant_lstm_3/while/Identity_3?
*sequential_1/quant_lstm_3/while/Identity_4Identity7sequential_1/quant_lstm_3/while/lstm_cell_141/mul_3:z:0E^sequential_1/quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOpD^sequential_1/quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2,
*sequential_1/quant_lstm_3/while/Identity_4?
*sequential_1/quant_lstm_3/while/Identity_5Identity7sequential_1/quant_lstm_3/while/lstm_cell_141/add_1:z:0E^sequential_1/quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOpD^sequential_1/quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2,
*sequential_1/quant_lstm_3/while/Identity_5"]
(sequential_1_quant_lstm_3_while_identity1sequential_1/quant_lstm_3/while/Identity:output:0"a
*sequential_1_quant_lstm_3_while_identity_13sequential_1/quant_lstm_3/while/Identity_1:output:0"a
*sequential_1_quant_lstm_3_while_identity_23sequential_1/quant_lstm_3/while/Identity_2:output:0"a
*sequential_1_quant_lstm_3_while_identity_33sequential_1/quant_lstm_3/while/Identity_3:output:0"a
*sequential_1_quant_lstm_3_while_identity_43sequential_1/quant_lstm_3/while/Identity_4:output:0"a
*sequential_1_quant_lstm_3_while_identity_53sequential_1/quant_lstm_3/while/Identity_5:output:0"?
Msequential_1_quant_lstm_3_while_lstm_cell_141_biasadd_readvariableop_resourceOsequential_1_quant_lstm_3_while_lstm_cell_141_biasadd_readvariableop_resource_0"?
wsequential_1_quant_lstm_3_while_lstm_cell_141_matmul_1_sequential_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvarsysequential_1_quant_lstm_3_while_lstm_cell_141_matmul_1_sequential_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_0"?
Lsequential_1_quant_lstm_3_while_lstm_cell_141_matmul_readvariableop_resourceNsequential_1_quant_lstm_3_while_lstm_cell_141_matmul_readvariableop_resource_0"?
Isequential_1_quant_lstm_3_while_sequential_1_quant_lstm_3_strided_slice_1Ksequential_1_quant_lstm_3_while_sequential_1_quant_lstm_3_strided_slice_1_0"?
?sequential_1_quant_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_quant_lstm_3_tensorarrayunstack_tensorlistfromtensor?sequential_1_quant_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_quant_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/: : : : : : : : : :	 ?: 2?
Dsequential_1/quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOpDsequential_1/quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp2?
Csequential_1/quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOpCsequential_1/quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp: 
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
: :%	!

_output_shapes
:	 ?
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_349021

inputs"
quantize_layer_32_348988: "
quantize_layer_32_348990: &
quant_lstm_2_348993:	 ?
quant_lstm_2_348995: 
quant_lstm_2_348997: &
quant_lstm_2_348999:	?"
quant_lstm_2_349001:	?&
quant_lstm_3_349004:	 ?
quant_lstm_3_349006: 
quant_lstm_3_349008: &
quant_lstm_3_349010:	 ?"
quant_lstm_3_349012:	? 
dense_1_349015: 
dense_1_349017:
identity??dense_1/StatefulPartitionedCall?$quant_lstm_2/StatefulPartitionedCall?$quant_lstm_3/StatefulPartitionedCall?)quantize_layer_32/StatefulPartitionedCall?
)quantize_layer_32/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_32_348988quantize_layer_32_348990*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_quantize_layer_32_layer_call_and_return_conditional_losses_3489432+
)quantize_layer_32/StatefulPartitionedCall?
$quant_lstm_2/StatefulPartitionedCallStatefulPartitionedCall2quantize_layer_32/StatefulPartitionedCall:output:0quant_lstm_2_348993quant_lstm_2_348995quant_lstm_2_348997quant_lstm_2_348999quant_lstm_2_349001*
Tin

2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_quant_lstm_2_layer_call_and_return_conditional_losses_3488972&
$quant_lstm_2/StatefulPartitionedCall?
$quant_lstm_3/StatefulPartitionedCallStatefulPartitionedCall-quant_lstm_2/StatefulPartitionedCall:output:0quant_lstm_3_349004quant_lstm_3_349006quant_lstm_3_349008quant_lstm_3_349010quant_lstm_3_349012*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_quant_lstm_3_layer_call_and_return_conditional_losses_3486212&
$quant_lstm_3/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall-quant_lstm_3/StatefulPartitionedCall:output:0dense_1_349015dense_1_349017*
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
GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3483102!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall%^quant_lstm_2/StatefulPartitionedCall%^quant_lstm_3/StatefulPartitionedCall*^quantize_layer_32/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:: : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$quant_lstm_2/StatefulPartitionedCall$quant_lstm_2/StatefulPartitionedCall2L
$quant_lstm_3/StatefulPartitionedCall$quant_lstm_3/StatefulPartitionedCall2V
)quantize_layer_32/StatefulPartitionedCall)quantize_layer_32/StatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
?
while_cond_350253
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_350253___redundant_placeholder04
0while_while_cond_350253___redundant_placeholder14
0while_while_cond_350253___redundant_placeholder24
0while_while_cond_350253___redundant_placeholder3
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
::	

_output_shapes
:
?
?
-__inference_quant_lstm_2_layer_call_fn_350178

inputs
unknown:	 ?
	unknown_0: 
	unknown_1: 
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_quant_lstm_2_layer_call_and_return_conditional_losses_3488972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*"
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
?
-__inference_quant_lstm_3_layer_call_fn_350601

inputs
unknown:	 ?
	unknown_0: 
	unknown_1: 
	unknown_2:	 ?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_quant_lstm_3_layer_call_and_return_conditional_losses_3482882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
?
?
2__inference_quantize_layer_32_layer_call_fn_350118

inputs
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_quantize_layer_32_layer_call_and_return_conditional_losses_3489432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*"
_output_shapes
:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?	
?
C__inference_dense_1_layer_call_and_return_conditional_losses_351043

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
??
?
!__inference__wrapped_model_346620
input_2j
`sequential_1_quantize_layer_32_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: l
bsequential_1_quantize_layer_32_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: k
Xsequential_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	 ?d
Zsequential_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: d
Zsequential_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: Y
Fsequential_1_quant_lstm_2_lstm_cell_140_matmul_readvariableop_resource:	?V
Gsequential_1_quant_lstm_2_lstm_cell_140_biasadd_readvariableop_resource:	?k
Xsequential_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	 ?d
Zsequential_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: d
Zsequential_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: Y
Fsequential_1_quant_lstm_3_lstm_cell_141_matmul_readvariableop_resource:	 ?V
Gsequential_1_quant_lstm_3_lstm_cell_141_biasadd_readvariableop_resource:	?E
3sequential_1_dense_1_matmul_readvariableop_resource: B
4sequential_1_dense_1_biasadd_readvariableop_resource:
identity??+sequential_1/dense_1/BiasAdd/ReadVariableOp?*sequential_1/dense_1/MatMul/ReadVariableOp?Osequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Qsequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Qsequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?>sequential_1/quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp?=sequential_1/quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp?sequential_1/quant_lstm_2/while?Osequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Qsequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Qsequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?>sequential_1/quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp?=sequential_1/quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp?sequential_1/quant_lstm_3/while?Wsequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Ysequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Wsequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp`sequential_1_quantize_layer_32_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02Y
Wsequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Ysequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpbsequential_1_quantize_layer_32_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02[
Ysequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Hsequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinput_2_sequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0asequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*"
_output_shapes
:2J
Hsequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars?
Osequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpXsequential_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	 ?*
dtype02Q
Osequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Qsequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpZsequential_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02S
Qsequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Qsequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpZsequential_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02S
Qsequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
@sequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsWsequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Ysequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Ysequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	 ?2B
@sequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars?
sequential_1/quant_lstm_2/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2!
sequential_1/quant_lstm_2/Shape?
-sequential_1/quant_lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_1/quant_lstm_2/strided_slice/stack?
/sequential_1/quant_lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_1/quant_lstm_2/strided_slice/stack_1?
/sequential_1/quant_lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_1/quant_lstm_2/strided_slice/stack_2?
'sequential_1/quant_lstm_2/strided_sliceStridedSlice(sequential_1/quant_lstm_2/Shape:output:06sequential_1/quant_lstm_2/strided_slice/stack:output:08sequential_1/quant_lstm_2/strided_slice/stack_1:output:08sequential_1/quant_lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'sequential_1/quant_lstm_2/strided_slice?
%sequential_1/quant_lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/quant_lstm_2/zeros/mul/y?
#sequential_1/quant_lstm_2/zeros/mulMul0sequential_1/quant_lstm_2/strided_slice:output:0.sequential_1/quant_lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#sequential_1/quant_lstm_2/zeros/mul?
&sequential_1/quant_lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_1/quant_lstm_2/zeros/Less/y?
$sequential_1/quant_lstm_2/zeros/LessLess'sequential_1/quant_lstm_2/zeros/mul:z:0/sequential_1/quant_lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$sequential_1/quant_lstm_2/zeros/Less?
(sequential_1/quant_lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_1/quant_lstm_2/zeros/packed/1?
&sequential_1/quant_lstm_2/zeros/packedPack0sequential_1/quant_lstm_2/strided_slice:output:01sequential_1/quant_lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_1/quant_lstm_2/zeros/packed?
%sequential_1/quant_lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%sequential_1/quant_lstm_2/zeros/Const?
sequential_1/quant_lstm_2/zerosFill/sequential_1/quant_lstm_2/zeros/packed:output:0.sequential_1/quant_lstm_2/zeros/Const:output:0*
T0*
_output_shapes

: 2!
sequential_1/quant_lstm_2/zeros?
'sequential_1/quant_lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/quant_lstm_2/zeros_1/mul/y?
%sequential_1/quant_lstm_2/zeros_1/mulMul0sequential_1/quant_lstm_2/strided_slice:output:00sequential_1/quant_lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%sequential_1/quant_lstm_2/zeros_1/mul?
(sequential_1/quant_lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(sequential_1/quant_lstm_2/zeros_1/Less/y?
&sequential_1/quant_lstm_2/zeros_1/LessLess)sequential_1/quant_lstm_2/zeros_1/mul:z:01sequential_1/quant_lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&sequential_1/quant_lstm_2/zeros_1/Less?
*sequential_1/quant_lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/quant_lstm_2/zeros_1/packed/1?
(sequential_1/quant_lstm_2/zeros_1/packedPack0sequential_1/quant_lstm_2/strided_slice:output:03sequential_1/quant_lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(sequential_1/quant_lstm_2/zeros_1/packed?
'sequential_1/quant_lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'sequential_1/quant_lstm_2/zeros_1/Const?
!sequential_1/quant_lstm_2/zeros_1Fill1sequential_1/quant_lstm_2/zeros_1/packed:output:00sequential_1/quant_lstm_2/zeros_1/Const:output:0*
T0*
_output_shapes

: 2#
!sequential_1/quant_lstm_2/zeros_1?
(sequential_1/quant_lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(sequential_1/quant_lstm_2/transpose/perm?
#sequential_1/quant_lstm_2/transpose	TransposeRsequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:01sequential_1/quant_lstm_2/transpose/perm:output:0*
T0*"
_output_shapes
:2%
#sequential_1/quant_lstm_2/transpose?
!sequential_1/quant_lstm_2/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         2#
!sequential_1/quant_lstm_2/Shape_1?
/sequential_1/quant_lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_1/quant_lstm_2/strided_slice_1/stack?
1sequential_1/quant_lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_1/quant_lstm_2/strided_slice_1/stack_1?
1sequential_1/quant_lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_1/quant_lstm_2/strided_slice_1/stack_2?
)sequential_1/quant_lstm_2/strided_slice_1StridedSlice*sequential_1/quant_lstm_2/Shape_1:output:08sequential_1/quant_lstm_2/strided_slice_1/stack:output:0:sequential_1/quant_lstm_2/strided_slice_1/stack_1:output:0:sequential_1/quant_lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)sequential_1/quant_lstm_2/strided_slice_1?
5sequential_1/quant_lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????27
5sequential_1/quant_lstm_2/TensorArrayV2/element_shape?
'sequential_1/quant_lstm_2/TensorArrayV2TensorListReserve>sequential_1/quant_lstm_2/TensorArrayV2/element_shape:output:02sequential_1/quant_lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'sequential_1/quant_lstm_2/TensorArrayV2?
Osequential_1/quant_lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2Q
Osequential_1/quant_lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape?
Asequential_1/quant_lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_1/quant_lstm_2/transpose:y:0Xsequential_1/quant_lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02C
Asequential_1/quant_lstm_2/TensorArrayUnstack/TensorListFromTensor?
/sequential_1/quant_lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_1/quant_lstm_2/strided_slice_2/stack?
1sequential_1/quant_lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_1/quant_lstm_2/strided_slice_2/stack_1?
1sequential_1/quant_lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_1/quant_lstm_2/strided_slice_2/stack_2?
)sequential_1/quant_lstm_2/strided_slice_2StridedSlice'sequential_1/quant_lstm_2/transpose:y:08sequential_1/quant_lstm_2/strided_slice_2/stack:output:0:sequential_1/quant_lstm_2/strided_slice_2/stack_1:output:0:sequential_1/quant_lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2+
)sequential_1/quant_lstm_2/strided_slice_2?
7sequential_1/quant_lstm_2/lstm_cell_140/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_1/quant_lstm_2/lstm_cell_140/ones_like/Shape?
7sequential_1/quant_lstm_2/lstm_cell_140/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7sequential_1/quant_lstm_2/lstm_cell_140/ones_like/Const?
1sequential_1/quant_lstm_2/lstm_cell_140/ones_likeFill@sequential_1/quant_lstm_2/lstm_cell_140/ones_like/Shape:output:0@sequential_1/quant_lstm_2/lstm_cell_140/ones_like/Const:output:0*
T0*
_output_shapes

:23
1sequential_1/quant_lstm_2/lstm_cell_140/ones_like?
+sequential_1/quant_lstm_2/lstm_cell_140/mulMul2sequential_1/quant_lstm_2/strided_slice_2:output:0:sequential_1/quant_lstm_2/lstm_cell_140/ones_like:output:0*
T0*
_output_shapes

:2-
+sequential_1/quant_lstm_2/lstm_cell_140/mul?
=sequential_1/quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOpReadVariableOpFsequential_1_quant_lstm_2_lstm_cell_140_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=sequential_1/quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp?
.sequential_1/quant_lstm_2/lstm_cell_140/MatMulMatMul/sequential_1/quant_lstm_2/lstm_cell_140/mul:z:0Esequential_1/quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.sequential_1/quant_lstm_2/lstm_cell_140/MatMul?
0sequential_1/quant_lstm_2/lstm_cell_140/MatMul_1MatMul(sequential_1/quant_lstm_2/zeros:output:0Jsequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes
:	?22
0sequential_1/quant_lstm_2/lstm_cell_140/MatMul_1?
+sequential_1/quant_lstm_2/lstm_cell_140/addAddV28sequential_1/quant_lstm_2/lstm_cell_140/MatMul:product:0:sequential_1/quant_lstm_2/lstm_cell_140/MatMul_1:product:0*
T0*
_output_shapes
:	?2-
+sequential_1/quant_lstm_2/lstm_cell_140/add?
>sequential_1/quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_quant_lstm_2_lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>sequential_1/quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp?
/sequential_1/quant_lstm_2/lstm_cell_140/BiasAddBiasAdd/sequential_1/quant_lstm_2/lstm_cell_140/add:z:0Fsequential_1/quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?21
/sequential_1/quant_lstm_2/lstm_cell_140/BiasAdd?
7sequential_1/quant_lstm_2/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_1/quant_lstm_2/lstm_cell_140/split/split_dim?
-sequential_1/quant_lstm_2/lstm_cell_140/splitSplit@sequential_1/quant_lstm_2/lstm_cell_140/split/split_dim:output:08sequential_1/quant_lstm_2/lstm_cell_140/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2/
-sequential_1/quant_lstm_2/lstm_cell_140/split?
/sequential_1/quant_lstm_2/lstm_cell_140/SigmoidSigmoid6sequential_1/quant_lstm_2/lstm_cell_140/split:output:0*
T0*
_output_shapes

: 21
/sequential_1/quant_lstm_2/lstm_cell_140/Sigmoid?
1sequential_1/quant_lstm_2/lstm_cell_140/Sigmoid_1Sigmoid6sequential_1/quant_lstm_2/lstm_cell_140/split:output:1*
T0*
_output_shapes

: 23
1sequential_1/quant_lstm_2/lstm_cell_140/Sigmoid_1?
-sequential_1/quant_lstm_2/lstm_cell_140/mul_1Mul5sequential_1/quant_lstm_2/lstm_cell_140/Sigmoid_1:y:0*sequential_1/quant_lstm_2/zeros_1:output:0*
T0*
_output_shapes

: 2/
-sequential_1/quant_lstm_2/lstm_cell_140/mul_1?
,sequential_1/quant_lstm_2/lstm_cell_140/ReluRelu6sequential_1/quant_lstm_2/lstm_cell_140/split:output:2*
T0*
_output_shapes

: 2.
,sequential_1/quant_lstm_2/lstm_cell_140/Relu?
-sequential_1/quant_lstm_2/lstm_cell_140/mul_2Mul3sequential_1/quant_lstm_2/lstm_cell_140/Sigmoid:y:0:sequential_1/quant_lstm_2/lstm_cell_140/Relu:activations:0*
T0*
_output_shapes

: 2/
-sequential_1/quant_lstm_2/lstm_cell_140/mul_2?
-sequential_1/quant_lstm_2/lstm_cell_140/add_1AddV21sequential_1/quant_lstm_2/lstm_cell_140/mul_1:z:01sequential_1/quant_lstm_2/lstm_cell_140/mul_2:z:0*
T0*
_output_shapes

: 2/
-sequential_1/quant_lstm_2/lstm_cell_140/add_1?
1sequential_1/quant_lstm_2/lstm_cell_140/Sigmoid_2Sigmoid6sequential_1/quant_lstm_2/lstm_cell_140/split:output:3*
T0*
_output_shapes

: 23
1sequential_1/quant_lstm_2/lstm_cell_140/Sigmoid_2?
.sequential_1/quant_lstm_2/lstm_cell_140/Relu_1Relu1sequential_1/quant_lstm_2/lstm_cell_140/add_1:z:0*
T0*
_output_shapes

: 20
.sequential_1/quant_lstm_2/lstm_cell_140/Relu_1?
-sequential_1/quant_lstm_2/lstm_cell_140/mul_3Mul5sequential_1/quant_lstm_2/lstm_cell_140/Sigmoid_2:y:0<sequential_1/quant_lstm_2/lstm_cell_140/Relu_1:activations:0*
T0*
_output_shapes

: 2/
-sequential_1/quant_lstm_2/lstm_cell_140/mul_3?
7sequential_1/quant_lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7sequential_1/quant_lstm_2/TensorArrayV2_1/element_shape?
)sequential_1/quant_lstm_2/TensorArrayV2_1TensorListReserve@sequential_1/quant_lstm_2/TensorArrayV2_1/element_shape:output:02sequential_1/quant_lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02+
)sequential_1/quant_lstm_2/TensorArrayV2_1?
sequential_1/quant_lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2 
sequential_1/quant_lstm_2/time?
2sequential_1/quant_lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2sequential_1/quant_lstm_2/while/maximum_iterations?
,sequential_1/quant_lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/quant_lstm_2/while/loop_counter?
sequential_1/quant_lstm_2/whileWhile5sequential_1/quant_lstm_2/while/loop_counter:output:0;sequential_1/quant_lstm_2/while/maximum_iterations:output:0'sequential_1/quant_lstm_2/time:output:02sequential_1/quant_lstm_2/TensorArrayV2_1:handle:0(sequential_1/quant_lstm_2/zeros:output:0*sequential_1/quant_lstm_2/zeros_1:output:02sequential_1/quant_lstm_2/strided_slice_1:output:0Qsequential_1/quant_lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fsequential_1_quant_lstm_2_lstm_cell_140_matmul_readvariableop_resourceJsequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0Gsequential_1_quant_lstm_2_lstm_cell_140_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*C
_output_shapes1
/: : : : : : : : : :	 ?: *$
_read_only_resource_inputs

*7
body/R-
+sequential_1_quant_lstm_2_while_body_346368*7
cond/R-
+sequential_1_quant_lstm_2_while_cond_346367*B
output_shapes1
/: : : : : : : : : :	 ?: *
parallel_iterations 2!
sequential_1/quant_lstm_2/while?
Jsequential_1/quant_lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2L
Jsequential_1/quant_lstm_2/TensorArrayV2Stack/TensorListStack/element_shape?
<sequential_1/quant_lstm_2/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_1/quant_lstm_2/while:output:3Ssequential_1/quant_lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02>
<sequential_1/quant_lstm_2/TensorArrayV2Stack/TensorListStack?
/sequential_1/quant_lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????21
/sequential_1/quant_lstm_2/strided_slice_3/stack?
1sequential_1/quant_lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/quant_lstm_2/strided_slice_3/stack_1?
1sequential_1/quant_lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_1/quant_lstm_2/strided_slice_3/stack_2?
)sequential_1/quant_lstm_2/strided_slice_3StridedSliceEsequential_1/quant_lstm_2/TensorArrayV2Stack/TensorListStack:tensor:08sequential_1/quant_lstm_2/strided_slice_3/stack:output:0:sequential_1/quant_lstm_2/strided_slice_3/stack_1:output:0:sequential_1/quant_lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2+
)sequential_1/quant_lstm_2/strided_slice_3?
*sequential_1/quant_lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2,
*sequential_1/quant_lstm_2/transpose_1/perm?
%sequential_1/quant_lstm_2/transpose_1	TransposeEsequential_1/quant_lstm_2/TensorArrayV2Stack/TensorListStack:tensor:03sequential_1/quant_lstm_2/transpose_1/perm:output:0*
T0*"
_output_shapes
: 2'
%sequential_1/quant_lstm_2/transpose_1?
!sequential_1/quant_lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/quant_lstm_2/runtime?
Osequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpXsequential_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	 ?*
dtype02Q
Osequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Qsequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpZsequential_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02S
Qsequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Qsequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpZsequential_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02S
Qsequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
@sequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsWsequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Ysequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Ysequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	 ?2B
@sequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars?
sequential_1/quant_lstm_3/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          2!
sequential_1/quant_lstm_3/Shape?
-sequential_1/quant_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_1/quant_lstm_3/strided_slice/stack?
/sequential_1/quant_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_1/quant_lstm_3/strided_slice/stack_1?
/sequential_1/quant_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_1/quant_lstm_3/strided_slice/stack_2?
'sequential_1/quant_lstm_3/strided_sliceStridedSlice(sequential_1/quant_lstm_3/Shape:output:06sequential_1/quant_lstm_3/strided_slice/stack:output:08sequential_1/quant_lstm_3/strided_slice/stack_1:output:08sequential_1/quant_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'sequential_1/quant_lstm_3/strided_slice?
%sequential_1/quant_lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/quant_lstm_3/zeros/mul/y?
#sequential_1/quant_lstm_3/zeros/mulMul0sequential_1/quant_lstm_3/strided_slice:output:0.sequential_1/quant_lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#sequential_1/quant_lstm_3/zeros/mul?
&sequential_1/quant_lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_1/quant_lstm_3/zeros/Less/y?
$sequential_1/quant_lstm_3/zeros/LessLess'sequential_1/quant_lstm_3/zeros/mul:z:0/sequential_1/quant_lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$sequential_1/quant_lstm_3/zeros/Less?
(sequential_1/quant_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_1/quant_lstm_3/zeros/packed/1?
&sequential_1/quant_lstm_3/zeros/packedPack0sequential_1/quant_lstm_3/strided_slice:output:01sequential_1/quant_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_1/quant_lstm_3/zeros/packed?
%sequential_1/quant_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%sequential_1/quant_lstm_3/zeros/Const?
sequential_1/quant_lstm_3/zerosFill/sequential_1/quant_lstm_3/zeros/packed:output:0.sequential_1/quant_lstm_3/zeros/Const:output:0*
T0*
_output_shapes

: 2!
sequential_1/quant_lstm_3/zeros?
'sequential_1/quant_lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/quant_lstm_3/zeros_1/mul/y?
%sequential_1/quant_lstm_3/zeros_1/mulMul0sequential_1/quant_lstm_3/strided_slice:output:00sequential_1/quant_lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%sequential_1/quant_lstm_3/zeros_1/mul?
(sequential_1/quant_lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(sequential_1/quant_lstm_3/zeros_1/Less/y?
&sequential_1/quant_lstm_3/zeros_1/LessLess)sequential_1/quant_lstm_3/zeros_1/mul:z:01sequential_1/quant_lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&sequential_1/quant_lstm_3/zeros_1/Less?
*sequential_1/quant_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/quant_lstm_3/zeros_1/packed/1?
(sequential_1/quant_lstm_3/zeros_1/packedPack0sequential_1/quant_lstm_3/strided_slice:output:03sequential_1/quant_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(sequential_1/quant_lstm_3/zeros_1/packed?
'sequential_1/quant_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'sequential_1/quant_lstm_3/zeros_1/Const?
!sequential_1/quant_lstm_3/zeros_1Fill1sequential_1/quant_lstm_3/zeros_1/packed:output:00sequential_1/quant_lstm_3/zeros_1/Const:output:0*
T0*
_output_shapes

: 2#
!sequential_1/quant_lstm_3/zeros_1?
(sequential_1/quant_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(sequential_1/quant_lstm_3/transpose/perm?
#sequential_1/quant_lstm_3/transpose	Transpose)sequential_1/quant_lstm_2/transpose_1:y:01sequential_1/quant_lstm_3/transpose/perm:output:0*
T0*"
_output_shapes
: 2%
#sequential_1/quant_lstm_3/transpose?
!sequential_1/quant_lstm_3/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"          2#
!sequential_1/quant_lstm_3/Shape_1?
/sequential_1/quant_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_1/quant_lstm_3/strided_slice_1/stack?
1sequential_1/quant_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_1/quant_lstm_3/strided_slice_1/stack_1?
1sequential_1/quant_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_1/quant_lstm_3/strided_slice_1/stack_2?
)sequential_1/quant_lstm_3/strided_slice_1StridedSlice*sequential_1/quant_lstm_3/Shape_1:output:08sequential_1/quant_lstm_3/strided_slice_1/stack:output:0:sequential_1/quant_lstm_3/strided_slice_1/stack_1:output:0:sequential_1/quant_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)sequential_1/quant_lstm_3/strided_slice_1?
5sequential_1/quant_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????27
5sequential_1/quant_lstm_3/TensorArrayV2/element_shape?
'sequential_1/quant_lstm_3/TensorArrayV2TensorListReserve>sequential_1/quant_lstm_3/TensorArrayV2/element_shape:output:02sequential_1/quant_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'sequential_1/quant_lstm_3/TensorArrayV2?
Osequential_1/quant_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2Q
Osequential_1/quant_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape?
Asequential_1/quant_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_1/quant_lstm_3/transpose:y:0Xsequential_1/quant_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02C
Asequential_1/quant_lstm_3/TensorArrayUnstack/TensorListFromTensor?
/sequential_1/quant_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_1/quant_lstm_3/strided_slice_2/stack?
1sequential_1/quant_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_1/quant_lstm_3/strided_slice_2/stack_1?
1sequential_1/quant_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_1/quant_lstm_3/strided_slice_2/stack_2?
)sequential_1/quant_lstm_3/strided_slice_2StridedSlice'sequential_1/quant_lstm_3/transpose:y:08sequential_1/quant_lstm_3/strided_slice_2/stack:output:0:sequential_1/quant_lstm_3/strided_slice_2/stack_1:output:0:sequential_1/quant_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2+
)sequential_1/quant_lstm_3/strided_slice_2?
7sequential_1/quant_lstm_3/lstm_cell_141/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7sequential_1/quant_lstm_3/lstm_cell_141/ones_like/Shape?
7sequential_1/quant_lstm_3/lstm_cell_141/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7sequential_1/quant_lstm_3/lstm_cell_141/ones_like/Const?
1sequential_1/quant_lstm_3/lstm_cell_141/ones_likeFill@sequential_1/quant_lstm_3/lstm_cell_141/ones_like/Shape:output:0@sequential_1/quant_lstm_3/lstm_cell_141/ones_like/Const:output:0*
T0*
_output_shapes

: 23
1sequential_1/quant_lstm_3/lstm_cell_141/ones_like?
+sequential_1/quant_lstm_3/lstm_cell_141/mulMul2sequential_1/quant_lstm_3/strided_slice_2:output:0:sequential_1/quant_lstm_3/lstm_cell_141/ones_like:output:0*
T0*
_output_shapes

: 2-
+sequential_1/quant_lstm_3/lstm_cell_141/mul?
=sequential_1/quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOpReadVariableOpFsequential_1_quant_lstm_3_lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02?
=sequential_1/quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp?
.sequential_1/quant_lstm_3/lstm_cell_141/MatMulMatMul/sequential_1/quant_lstm_3/lstm_cell_141/mul:z:0Esequential_1/quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.sequential_1/quant_lstm_3/lstm_cell_141/MatMul?
0sequential_1/quant_lstm_3/lstm_cell_141/MatMul_1MatMul(sequential_1/quant_lstm_3/zeros:output:0Jsequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes
:	?22
0sequential_1/quant_lstm_3/lstm_cell_141/MatMul_1?
+sequential_1/quant_lstm_3/lstm_cell_141/addAddV28sequential_1/quant_lstm_3/lstm_cell_141/MatMul:product:0:sequential_1/quant_lstm_3/lstm_cell_141/MatMul_1:product:0*
T0*
_output_shapes
:	?2-
+sequential_1/quant_lstm_3/lstm_cell_141/add?
>sequential_1/quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_quant_lstm_3_lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>sequential_1/quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp?
/sequential_1/quant_lstm_3/lstm_cell_141/BiasAddBiasAdd/sequential_1/quant_lstm_3/lstm_cell_141/add:z:0Fsequential_1/quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?21
/sequential_1/quant_lstm_3/lstm_cell_141/BiasAdd?
7sequential_1/quant_lstm_3/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_1/quant_lstm_3/lstm_cell_141/split/split_dim?
-sequential_1/quant_lstm_3/lstm_cell_141/splitSplit@sequential_1/quant_lstm_3/lstm_cell_141/split/split_dim:output:08sequential_1/quant_lstm_3/lstm_cell_141/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2/
-sequential_1/quant_lstm_3/lstm_cell_141/split?
/sequential_1/quant_lstm_3/lstm_cell_141/SigmoidSigmoid6sequential_1/quant_lstm_3/lstm_cell_141/split:output:0*
T0*
_output_shapes

: 21
/sequential_1/quant_lstm_3/lstm_cell_141/Sigmoid?
1sequential_1/quant_lstm_3/lstm_cell_141/Sigmoid_1Sigmoid6sequential_1/quant_lstm_3/lstm_cell_141/split:output:1*
T0*
_output_shapes

: 23
1sequential_1/quant_lstm_3/lstm_cell_141/Sigmoid_1?
-sequential_1/quant_lstm_3/lstm_cell_141/mul_1Mul5sequential_1/quant_lstm_3/lstm_cell_141/Sigmoid_1:y:0*sequential_1/quant_lstm_3/zeros_1:output:0*
T0*
_output_shapes

: 2/
-sequential_1/quant_lstm_3/lstm_cell_141/mul_1?
,sequential_1/quant_lstm_3/lstm_cell_141/ReluRelu6sequential_1/quant_lstm_3/lstm_cell_141/split:output:2*
T0*
_output_shapes

: 2.
,sequential_1/quant_lstm_3/lstm_cell_141/Relu?
-sequential_1/quant_lstm_3/lstm_cell_141/mul_2Mul3sequential_1/quant_lstm_3/lstm_cell_141/Sigmoid:y:0:sequential_1/quant_lstm_3/lstm_cell_141/Relu:activations:0*
T0*
_output_shapes

: 2/
-sequential_1/quant_lstm_3/lstm_cell_141/mul_2?
-sequential_1/quant_lstm_3/lstm_cell_141/add_1AddV21sequential_1/quant_lstm_3/lstm_cell_141/mul_1:z:01sequential_1/quant_lstm_3/lstm_cell_141/mul_2:z:0*
T0*
_output_shapes

: 2/
-sequential_1/quant_lstm_3/lstm_cell_141/add_1?
1sequential_1/quant_lstm_3/lstm_cell_141/Sigmoid_2Sigmoid6sequential_1/quant_lstm_3/lstm_cell_141/split:output:3*
T0*
_output_shapes

: 23
1sequential_1/quant_lstm_3/lstm_cell_141/Sigmoid_2?
.sequential_1/quant_lstm_3/lstm_cell_141/Relu_1Relu1sequential_1/quant_lstm_3/lstm_cell_141/add_1:z:0*
T0*
_output_shapes

: 20
.sequential_1/quant_lstm_3/lstm_cell_141/Relu_1?
-sequential_1/quant_lstm_3/lstm_cell_141/mul_3Mul5sequential_1/quant_lstm_3/lstm_cell_141/Sigmoid_2:y:0<sequential_1/quant_lstm_3/lstm_cell_141/Relu_1:activations:0*
T0*
_output_shapes

: 2/
-sequential_1/quant_lstm_3/lstm_cell_141/mul_3?
7sequential_1/quant_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7sequential_1/quant_lstm_3/TensorArrayV2_1/element_shape?
)sequential_1/quant_lstm_3/TensorArrayV2_1TensorListReserve@sequential_1/quant_lstm_3/TensorArrayV2_1/element_shape:output:02sequential_1/quant_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02+
)sequential_1/quant_lstm_3/TensorArrayV2_1?
sequential_1/quant_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2 
sequential_1/quant_lstm_3/time?
2sequential_1/quant_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2sequential_1/quant_lstm_3/while/maximum_iterations?
,sequential_1/quant_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/quant_lstm_3/while/loop_counter?
sequential_1/quant_lstm_3/whileWhile5sequential_1/quant_lstm_3/while/loop_counter:output:0;sequential_1/quant_lstm_3/while/maximum_iterations:output:0'sequential_1/quant_lstm_3/time:output:02sequential_1/quant_lstm_3/TensorArrayV2_1:handle:0(sequential_1/quant_lstm_3/zeros:output:0*sequential_1/quant_lstm_3/zeros_1:output:02sequential_1/quant_lstm_3/strided_slice_1:output:0Qsequential_1/quant_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fsequential_1_quant_lstm_3_lstm_cell_141_matmul_readvariableop_resourceJsequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0Gsequential_1_quant_lstm_3_lstm_cell_141_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*C
_output_shapes1
/: : : : : : : : : :	 ?: *$
_read_only_resource_inputs

*7
body/R-
+sequential_1_quant_lstm_3_while_body_346527*7
cond/R-
+sequential_1_quant_lstm_3_while_cond_346526*B
output_shapes1
/: : : : : : : : : :	 ?: *
parallel_iterations 2!
sequential_1/quant_lstm_3/while?
Jsequential_1/quant_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2L
Jsequential_1/quant_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape?
<sequential_1/quant_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_1/quant_lstm_3/while:output:3Ssequential_1/quant_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02>
<sequential_1/quant_lstm_3/TensorArrayV2Stack/TensorListStack?
/sequential_1/quant_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????21
/sequential_1/quant_lstm_3/strided_slice_3/stack?
1sequential_1/quant_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/quant_lstm_3/strided_slice_3/stack_1?
1sequential_1/quant_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_1/quant_lstm_3/strided_slice_3/stack_2?
)sequential_1/quant_lstm_3/strided_slice_3StridedSliceEsequential_1/quant_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:08sequential_1/quant_lstm_3/strided_slice_3/stack:output:0:sequential_1/quant_lstm_3/strided_slice_3/stack_1:output:0:sequential_1/quant_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2+
)sequential_1/quant_lstm_3/strided_slice_3?
*sequential_1/quant_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2,
*sequential_1/quant_lstm_3/transpose_1/perm?
%sequential_1/quant_lstm_3/transpose_1	TransposeEsequential_1/quant_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:03sequential_1/quant_lstm_3/transpose_1/perm:output:0*
T0*"
_output_shapes
: 2'
%sequential_1/quant_lstm_3/transpose_1?
!sequential_1/quant_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/quant_lstm_3/runtime?
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp?
sequential_1/dense_1/MatMulMatMul2sequential_1/quant_lstm_3/strided_slice_3:output:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
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
sequential_1/dense_1/BiasAdd?	
IdentityIdentity%sequential_1/dense_1/BiasAdd:output:0,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOpP^sequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpR^sequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1R^sequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?^sequential_1/quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp>^sequential_1/quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp ^sequential_1/quant_lstm_2/whileP^sequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpR^sequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1R^sequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?^sequential_1/quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp>^sequential_1/quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp ^sequential_1/quant_lstm_3/whileX^sequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpZ^sequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:: : : : : : : : : : : : : : 2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp2?
Osequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpOsequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Qsequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Qsequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Qsequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Qsequential_1/quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
>sequential_1/quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp>sequential_1/quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp2~
=sequential_1/quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp=sequential_1/quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp2B
sequential_1/quant_lstm_2/whilesequential_1/quant_lstm_2/while2?
Osequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpOsequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Qsequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Qsequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Qsequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Qsequential_1/quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
>sequential_1/quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp>sequential_1/quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp2~
=sequential_1/quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp=sequential_1/quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp2B
sequential_1/quant_lstm_3/whilesequential_1/quant_lstm_3/while2?
Wsequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpWsequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Ysequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ysequential_1/quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:K G
"
_output_shapes
:
!
_user_specified_name	input_2
?

?
-__inference_sequential_1_layer_call_fn_348348
input_2
unknown: 
	unknown_0: 
	unknown_1:	 ?
	unknown_2: 
	unknown_3: 
	unknown_4:	?
	unknown_5:	?
	unknown_6:	 ?
	unknown_7: 
	unknown_8: 
	unknown_9:	 ?

unknown_10:	?

unknown_11: 

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3483172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_2
?
?
while_cond_348501
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_348501___redundant_placeholder04
0while_while_cond_348501___redundant_placeholder14
0while_while_cond_348501___redundant_placeholder24
0while_while_cond_348501___redundant_placeholder3
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
::	

_output_shapes
:
?

?
-__inference_sequential_1_layer_call_fn_349225

inputs
unknown: 
	unknown_0: 
	unknown_1:	 ?
	unknown_2: 
	unknown_3: 
	unknown_4:	?
	unknown_5:	?
	unknown_6:	 ?
	unknown_7: 
	unknown_8: 
	unknown_9:	 ?

unknown_10:	?

unknown_11: 

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3483172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
??
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_350100

inputsM
Cquantize_layer_32_allvaluesquantize_minimum_readvariableop_resource: M
Cquantize_layer_32_allvaluesquantize_maximum_readvariableop_resource: K
8quant_lstm_2_lastvaluequant_rank_readvariableop_resource:	 ?<
2quant_lstm_2_lastvaluequant_assignminlast_resource: <
2quant_lstm_2_lastvaluequant_assignmaxlast_resource: L
9quant_lstm_2_lstm_cell_140_matmul_readvariableop_resource:	?I
:quant_lstm_2_lstm_cell_140_biasadd_readvariableop_resource:	?K
8quant_lstm_3_lastvaluequant_rank_readvariableop_resource:	 ?<
2quant_lstm_3_lastvaluequant_assignminlast_resource: <
2quant_lstm_3_lastvaluequant_assignmaxlast_resource: L
9quant_lstm_3_lstm_cell_141_matmul_readvariableop_resource:	 ?I
:quant_lstm_3_lstm_cell_141_biasadd_readvariableop_resource:	?8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?)quant_lstm_2/LastValueQuant/AssignMaxLast?)quant_lstm_2/LastValueQuant/AssignMinLast?3quant_lstm_2/LastValueQuant/BatchMax/ReadVariableOp?3quant_lstm_2/LastValueQuant/BatchMin/ReadVariableOp?Bquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?1quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp?0quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp?quant_lstm_2/while?)quant_lstm_3/LastValueQuant/AssignMaxLast?)quant_lstm_3/LastValueQuant/AssignMinLast?3quant_lstm_3/LastValueQuant/BatchMax/ReadVariableOp?3quant_lstm_3/LastValueQuant/BatchMin/ReadVariableOp?Bquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?1quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp?0quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp?quant_lstm_3/while?5quantize_layer_32/AllValuesQuantize/AssignMaxAllValue?5quantize_layer_32/AllValuesQuantize/AssignMinAllValue?Jquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Lquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?:quantize_layer_32/AllValuesQuantize/Maximum/ReadVariableOp?:quantize_layer_32/AllValuesQuantize/Minimum/ReadVariableOp?
)quantize_layer_32/AllValuesQuantize/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)quantize_layer_32/AllValuesQuantize/Const?
,quantize_layer_32/AllValuesQuantize/BatchMinMininputs2quantize_layer_32/AllValuesQuantize/Const:output:0*
T0*
_output_shapes
: 2.
,quantize_layer_32/AllValuesQuantize/BatchMin?
+quantize_layer_32/AllValuesQuantize/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2-
+quantize_layer_32/AllValuesQuantize/Const_1?
,quantize_layer_32/AllValuesQuantize/BatchMaxMaxinputs4quantize_layer_32/AllValuesQuantize/Const_1:output:0*
T0*
_output_shapes
: 2.
,quantize_layer_32/AllValuesQuantize/BatchMax?
:quantize_layer_32/AllValuesQuantize/Minimum/ReadVariableOpReadVariableOpCquantize_layer_32_allvaluesquantize_minimum_readvariableop_resource*
_output_shapes
: *
dtype02<
:quantize_layer_32/AllValuesQuantize/Minimum/ReadVariableOp?
+quantize_layer_32/AllValuesQuantize/MinimumMinimumBquantize_layer_32/AllValuesQuantize/Minimum/ReadVariableOp:value:05quantize_layer_32/AllValuesQuantize/BatchMin:output:0*
T0*
_output_shapes
: 2-
+quantize_layer_32/AllValuesQuantize/Minimum?
/quantize_layer_32/AllValuesQuantize/Minimum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    21
/quantize_layer_32/AllValuesQuantize/Minimum_1/y?
-quantize_layer_32/AllValuesQuantize/Minimum_1Minimum/quantize_layer_32/AllValuesQuantize/Minimum:z:08quantize_layer_32/AllValuesQuantize/Minimum_1/y:output:0*
T0*
_output_shapes
: 2/
-quantize_layer_32/AllValuesQuantize/Minimum_1?
:quantize_layer_32/AllValuesQuantize/Maximum/ReadVariableOpReadVariableOpCquantize_layer_32_allvaluesquantize_maximum_readvariableop_resource*
_output_shapes
: *
dtype02<
:quantize_layer_32/AllValuesQuantize/Maximum/ReadVariableOp?
+quantize_layer_32/AllValuesQuantize/MaximumMaximumBquantize_layer_32/AllValuesQuantize/Maximum/ReadVariableOp:value:05quantize_layer_32/AllValuesQuantize/BatchMax:output:0*
T0*
_output_shapes
: 2-
+quantize_layer_32/AllValuesQuantize/Maximum?
/quantize_layer_32/AllValuesQuantize/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    21
/quantize_layer_32/AllValuesQuantize/Maximum_1/y?
-quantize_layer_32/AllValuesQuantize/Maximum_1Maximum/quantize_layer_32/AllValuesQuantize/Maximum:z:08quantize_layer_32/AllValuesQuantize/Maximum_1/y:output:0*
T0*
_output_shapes
: 2/
-quantize_layer_32/AllValuesQuantize/Maximum_1?
5quantize_layer_32/AllValuesQuantize/AssignMinAllValueAssignVariableOpCquantize_layer_32_allvaluesquantize_minimum_readvariableop_resource1quantize_layer_32/AllValuesQuantize/Minimum_1:z:0;^quantize_layer_32/AllValuesQuantize/Minimum/ReadVariableOp*
_output_shapes
 *
dtype027
5quantize_layer_32/AllValuesQuantize/AssignMinAllValue?
5quantize_layer_32/AllValuesQuantize/AssignMaxAllValueAssignVariableOpCquantize_layer_32_allvaluesquantize_maximum_readvariableop_resource1quantize_layer_32/AllValuesQuantize/Maximum_1:z:0;^quantize_layer_32/AllValuesQuantize/Maximum/ReadVariableOp*
_output_shapes
 *
dtype027
5quantize_layer_32/AllValuesQuantize/AssignMaxAllValue?
Jquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpCquantize_layer_32_allvaluesquantize_minimum_readvariableop_resource6^quantize_layer_32/AllValuesQuantize/AssignMinAllValue*
_output_shapes
: *
dtype02L
Jquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Lquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCquantize_layer_32_allvaluesquantize_maximum_readvariableop_resource6^quantize_layer_32/AllValuesQuantize/AssignMaxAllValue*
_output_shapes
: *
dtype02N
Lquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
;quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputsRquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Tquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*"
_output_shapes
:2=
;quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars?
/quant_lstm_2/LastValueQuant/Rank/ReadVariableOpReadVariableOp8quant_lstm_2_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype021
/quant_lstm_2/LastValueQuant/Rank/ReadVariableOp?
 quant_lstm_2/LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2"
 quant_lstm_2/LastValueQuant/Rank?
'quant_lstm_2/LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2)
'quant_lstm_2/LastValueQuant/range/start?
'quant_lstm_2/LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2)
'quant_lstm_2/LastValueQuant/range/delta?
!quant_lstm_2/LastValueQuant/rangeRange0quant_lstm_2/LastValueQuant/range/start:output:0)quant_lstm_2/LastValueQuant/Rank:output:00quant_lstm_2/LastValueQuant/range/delta:output:0*
_output_shapes
:2#
!quant_lstm_2/LastValueQuant/range?
3quant_lstm_2/LastValueQuant/BatchMin/ReadVariableOpReadVariableOp8quant_lstm_2_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3quant_lstm_2/LastValueQuant/BatchMin/ReadVariableOp?
$quant_lstm_2/LastValueQuant/BatchMinMin;quant_lstm_2/LastValueQuant/BatchMin/ReadVariableOp:value:0*quant_lstm_2/LastValueQuant/range:output:0*
T0*
_output_shapes
: 2&
$quant_lstm_2/LastValueQuant/BatchMin?
1quant_lstm_2/LastValueQuant/Rank_1/ReadVariableOpReadVariableOp8quant_lstm_2_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype023
1quant_lstm_2/LastValueQuant/Rank_1/ReadVariableOp?
"quant_lstm_2/LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2$
"quant_lstm_2/LastValueQuant/Rank_1?
)quant_lstm_2/LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2+
)quant_lstm_2/LastValueQuant/range_1/start?
)quant_lstm_2/LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2+
)quant_lstm_2/LastValueQuant/range_1/delta?
#quant_lstm_2/LastValueQuant/range_1Range2quant_lstm_2/LastValueQuant/range_1/start:output:0+quant_lstm_2/LastValueQuant/Rank_1:output:02quant_lstm_2/LastValueQuant/range_1/delta:output:0*
_output_shapes
:2%
#quant_lstm_2/LastValueQuant/range_1?
3quant_lstm_2/LastValueQuant/BatchMax/ReadVariableOpReadVariableOp8quant_lstm_2_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3quant_lstm_2/LastValueQuant/BatchMax/ReadVariableOp?
$quant_lstm_2/LastValueQuant/BatchMaxMax;quant_lstm_2/LastValueQuant/BatchMax/ReadVariableOp:value:0,quant_lstm_2/LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2&
$quant_lstm_2/LastValueQuant/BatchMax?
%quant_lstm_2/LastValueQuant/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%quant_lstm_2/LastValueQuant/Minimum/y?
#quant_lstm_2/LastValueQuant/MinimumMinimum-quant_lstm_2/LastValueQuant/BatchMin:output:0.quant_lstm_2/LastValueQuant/Minimum/y:output:0*
T0*
_output_shapes
: 2%
#quant_lstm_2/LastValueQuant/Minimum?
%quant_lstm_2/LastValueQuant/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%quant_lstm_2/LastValueQuant/Maximum/y?
#quant_lstm_2/LastValueQuant/MaximumMaximum-quant_lstm_2/LastValueQuant/BatchMax:output:0.quant_lstm_2/LastValueQuant/Maximum/y:output:0*
T0*
_output_shapes
: 2%
#quant_lstm_2/LastValueQuant/Maximum?
)quant_lstm_2/LastValueQuant/AssignMinLastAssignVariableOp2quant_lstm_2_lastvaluequant_assignminlast_resource'quant_lstm_2/LastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02+
)quant_lstm_2/LastValueQuant/AssignMinLast?
)quant_lstm_2/LastValueQuant/AssignMaxLastAssignVariableOp2quant_lstm_2_lastvaluequant_assignmaxlast_resource'quant_lstm_2/LastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02+
)quant_lstm_2/LastValueQuant/AssignMaxLast?
Bquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp8quant_lstm_2_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02D
Bquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp2quant_lstm_2_lastvaluequant_assignminlast_resource*^quant_lstm_2/LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02F
Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp2quant_lstm_2_lastvaluequant_assignmaxlast_resource*^quant_lstm_2/LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02F
Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
3quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsJquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Lquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Lquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	 ?25
3quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars}
quant_lstm_2/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
quant_lstm_2/Shape?
 quant_lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 quant_lstm_2/strided_slice/stack?
"quant_lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"quant_lstm_2/strided_slice/stack_1?
"quant_lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"quant_lstm_2/strided_slice/stack_2?
quant_lstm_2/strided_sliceStridedSlicequant_lstm_2/Shape:output:0)quant_lstm_2/strided_slice/stack:output:0+quant_lstm_2/strided_slice/stack_1:output:0+quant_lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
quant_lstm_2/strided_slicev
quant_lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_2/zeros/mul/y?
quant_lstm_2/zeros/mulMul#quant_lstm_2/strided_slice:output:0!quant_lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_2/zeros/muly
quant_lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
quant_lstm_2/zeros/Less/y?
quant_lstm_2/zeros/LessLessquant_lstm_2/zeros/mul:z:0"quant_lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_2/zeros/Less|
quant_lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_2/zeros/packed/1?
quant_lstm_2/zeros/packedPack#quant_lstm_2/strided_slice:output:0$quant_lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
quant_lstm_2/zeros/packedy
quant_lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
quant_lstm_2/zeros/Const?
quant_lstm_2/zerosFill"quant_lstm_2/zeros/packed:output:0!quant_lstm_2/zeros/Const:output:0*
T0*
_output_shapes

: 2
quant_lstm_2/zerosz
quant_lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_2/zeros_1/mul/y?
quant_lstm_2/zeros_1/mulMul#quant_lstm_2/strided_slice:output:0#quant_lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_2/zeros_1/mul}
quant_lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
quant_lstm_2/zeros_1/Less/y?
quant_lstm_2/zeros_1/LessLessquant_lstm_2/zeros_1/mul:z:0$quant_lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_2/zeros_1/Less?
quant_lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_2/zeros_1/packed/1?
quant_lstm_2/zeros_1/packedPack#quant_lstm_2/strided_slice:output:0&quant_lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
quant_lstm_2/zeros_1/packed}
quant_lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
quant_lstm_2/zeros_1/Const?
quant_lstm_2/zeros_1Fill$quant_lstm_2/zeros_1/packed:output:0#quant_lstm_2/zeros_1/Const:output:0*
T0*
_output_shapes

: 2
quant_lstm_2/zeros_1?
quant_lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
quant_lstm_2/transpose/perm?
quant_lstm_2/transpose	TransposeEquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0$quant_lstm_2/transpose/perm:output:0*
T0*"
_output_shapes
:2
quant_lstm_2/transpose?
quant_lstm_2/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         2
quant_lstm_2/Shape_1?
"quant_lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"quant_lstm_2/strided_slice_1/stack?
$quant_lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_2/strided_slice_1/stack_1?
$quant_lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_2/strided_slice_1/stack_2?
quant_lstm_2/strided_slice_1StridedSlicequant_lstm_2/Shape_1:output:0+quant_lstm_2/strided_slice_1/stack:output:0-quant_lstm_2/strided_slice_1/stack_1:output:0-quant_lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
quant_lstm_2/strided_slice_1?
(quant_lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(quant_lstm_2/TensorArrayV2/element_shape?
quant_lstm_2/TensorArrayV2TensorListReserve1quant_lstm_2/TensorArrayV2/element_shape:output:0%quant_lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
quant_lstm_2/TensorArrayV2?
Bquant_lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2D
Bquant_lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape?
4quant_lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorquant_lstm_2/transpose:y:0Kquant_lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4quant_lstm_2/TensorArrayUnstack/TensorListFromTensor?
"quant_lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"quant_lstm_2/strided_slice_2/stack?
$quant_lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_2/strided_slice_2/stack_1?
$quant_lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_2/strided_slice_2/stack_2?
quant_lstm_2/strided_slice_2StridedSlicequant_lstm_2/transpose:y:0+quant_lstm_2/strided_slice_2/stack:output:0-quant_lstm_2/strided_slice_2/stack_1:output:0-quant_lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
quant_lstm_2/strided_slice_2?
*quant_lstm_2/lstm_cell_140/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*quant_lstm_2/lstm_cell_140/ones_like/Shape?
*quant_lstm_2/lstm_cell_140/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*quant_lstm_2/lstm_cell_140/ones_like/Const?
$quant_lstm_2/lstm_cell_140/ones_likeFill3quant_lstm_2/lstm_cell_140/ones_like/Shape:output:03quant_lstm_2/lstm_cell_140/ones_like/Const:output:0*
T0*
_output_shapes

:2&
$quant_lstm_2/lstm_cell_140/ones_like?
(quant_lstm_2/lstm_cell_140/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2*
(quant_lstm_2/lstm_cell_140/dropout/Const?
&quant_lstm_2/lstm_cell_140/dropout/MulMul-quant_lstm_2/lstm_cell_140/ones_like:output:01quant_lstm_2/lstm_cell_140/dropout/Const:output:0*
T0*
_output_shapes

:2(
&quant_lstm_2/lstm_cell_140/dropout/Mul?
(quant_lstm_2/lstm_cell_140/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2*
(quant_lstm_2/lstm_cell_140/dropout/Shape?
?quant_lstm_2/lstm_cell_140/dropout/random_uniform/RandomUniformRandomUniform1quant_lstm_2/lstm_cell_140/dropout/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2?޶2A
?quant_lstm_2/lstm_cell_140/dropout/random_uniform/RandomUniform?
1quant_lstm_2/lstm_cell_140/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=23
1quant_lstm_2/lstm_cell_140/dropout/GreaterEqual/y?
/quant_lstm_2/lstm_cell_140/dropout/GreaterEqualGreaterEqualHquant_lstm_2/lstm_cell_140/dropout/random_uniform/RandomUniform:output:0:quant_lstm_2/lstm_cell_140/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

:21
/quant_lstm_2/lstm_cell_140/dropout/GreaterEqual?
'quant_lstm_2/lstm_cell_140/dropout/CastCast3quant_lstm_2/lstm_cell_140/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2)
'quant_lstm_2/lstm_cell_140/dropout/Cast?
(quant_lstm_2/lstm_cell_140/dropout/Mul_1Mul*quant_lstm_2/lstm_cell_140/dropout/Mul:z:0+quant_lstm_2/lstm_cell_140/dropout/Cast:y:0*
T0*
_output_shapes

:2*
(quant_lstm_2/lstm_cell_140/dropout/Mul_1?
*quant_lstm_2/lstm_cell_140/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2,
*quant_lstm_2/lstm_cell_140/dropout_1/Const?
(quant_lstm_2/lstm_cell_140/dropout_1/MulMul-quant_lstm_2/lstm_cell_140/ones_like:output:03quant_lstm_2/lstm_cell_140/dropout_1/Const:output:0*
T0*
_output_shapes

:2*
(quant_lstm_2/lstm_cell_140/dropout_1/Mul?
*quant_lstm_2/lstm_cell_140/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*quant_lstm_2/lstm_cell_140/dropout_1/Shape?
Aquant_lstm_2/lstm_cell_140/dropout_1/random_uniform/RandomUniformRandomUniform3quant_lstm_2/lstm_cell_140/dropout_1/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2ұ?2C
Aquant_lstm_2/lstm_cell_140/dropout_1/random_uniform/RandomUniform?
3quant_lstm_2/lstm_cell_140/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=25
3quant_lstm_2/lstm_cell_140/dropout_1/GreaterEqual/y?
1quant_lstm_2/lstm_cell_140/dropout_1/GreaterEqualGreaterEqualJquant_lstm_2/lstm_cell_140/dropout_1/random_uniform/RandomUniform:output:0<quant_lstm_2/lstm_cell_140/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

:23
1quant_lstm_2/lstm_cell_140/dropout_1/GreaterEqual?
)quant_lstm_2/lstm_cell_140/dropout_1/CastCast5quant_lstm_2/lstm_cell_140/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2+
)quant_lstm_2/lstm_cell_140/dropout_1/Cast?
*quant_lstm_2/lstm_cell_140/dropout_1/Mul_1Mul,quant_lstm_2/lstm_cell_140/dropout_1/Mul:z:0-quant_lstm_2/lstm_cell_140/dropout_1/Cast:y:0*
T0*
_output_shapes

:2,
*quant_lstm_2/lstm_cell_140/dropout_1/Mul_1?
*quant_lstm_2/lstm_cell_140/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2,
*quant_lstm_2/lstm_cell_140/dropout_2/Const?
(quant_lstm_2/lstm_cell_140/dropout_2/MulMul-quant_lstm_2/lstm_cell_140/ones_like:output:03quant_lstm_2/lstm_cell_140/dropout_2/Const:output:0*
T0*
_output_shapes

:2*
(quant_lstm_2/lstm_cell_140/dropout_2/Mul?
*quant_lstm_2/lstm_cell_140/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*quant_lstm_2/lstm_cell_140/dropout_2/Shape?
Aquant_lstm_2/lstm_cell_140/dropout_2/random_uniform/RandomUniformRandomUniform3quant_lstm_2/lstm_cell_140/dropout_2/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2??2C
Aquant_lstm_2/lstm_cell_140/dropout_2/random_uniform/RandomUniform?
3quant_lstm_2/lstm_cell_140/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=25
3quant_lstm_2/lstm_cell_140/dropout_2/GreaterEqual/y?
1quant_lstm_2/lstm_cell_140/dropout_2/GreaterEqualGreaterEqualJquant_lstm_2/lstm_cell_140/dropout_2/random_uniform/RandomUniform:output:0<quant_lstm_2/lstm_cell_140/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

:23
1quant_lstm_2/lstm_cell_140/dropout_2/GreaterEqual?
)quant_lstm_2/lstm_cell_140/dropout_2/CastCast5quant_lstm_2/lstm_cell_140/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2+
)quant_lstm_2/lstm_cell_140/dropout_2/Cast?
*quant_lstm_2/lstm_cell_140/dropout_2/Mul_1Mul,quant_lstm_2/lstm_cell_140/dropout_2/Mul:z:0-quant_lstm_2/lstm_cell_140/dropout_2/Cast:y:0*
T0*
_output_shapes

:2,
*quant_lstm_2/lstm_cell_140/dropout_2/Mul_1?
*quant_lstm_2/lstm_cell_140/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2,
*quant_lstm_2/lstm_cell_140/dropout_3/Const?
(quant_lstm_2/lstm_cell_140/dropout_3/MulMul-quant_lstm_2/lstm_cell_140/ones_like:output:03quant_lstm_2/lstm_cell_140/dropout_3/Const:output:0*
T0*
_output_shapes

:2*
(quant_lstm_2/lstm_cell_140/dropout_3/Mul?
*quant_lstm_2/lstm_cell_140/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*quant_lstm_2/lstm_cell_140/dropout_3/Shape?
Aquant_lstm_2/lstm_cell_140/dropout_3/random_uniform/RandomUniformRandomUniform3quant_lstm_2/lstm_cell_140/dropout_3/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2C
Aquant_lstm_2/lstm_cell_140/dropout_3/random_uniform/RandomUniform?
3quant_lstm_2/lstm_cell_140/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=25
3quant_lstm_2/lstm_cell_140/dropout_3/GreaterEqual/y?
1quant_lstm_2/lstm_cell_140/dropout_3/GreaterEqualGreaterEqualJquant_lstm_2/lstm_cell_140/dropout_3/random_uniform/RandomUniform:output:0<quant_lstm_2/lstm_cell_140/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

:23
1quant_lstm_2/lstm_cell_140/dropout_3/GreaterEqual?
)quant_lstm_2/lstm_cell_140/dropout_3/CastCast5quant_lstm_2/lstm_cell_140/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2+
)quant_lstm_2/lstm_cell_140/dropout_3/Cast?
*quant_lstm_2/lstm_cell_140/dropout_3/Mul_1Mul,quant_lstm_2/lstm_cell_140/dropout_3/Mul:z:0-quant_lstm_2/lstm_cell_140/dropout_3/Cast:y:0*
T0*
_output_shapes

:2,
*quant_lstm_2/lstm_cell_140/dropout_3/Mul_1?
quant_lstm_2/lstm_cell_140/mulMul%quant_lstm_2/strided_slice_2:output:0,quant_lstm_2/lstm_cell_140/dropout/Mul_1:z:0*
T0*
_output_shapes

:2 
quant_lstm_2/lstm_cell_140/mul?
0quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp9quant_lstm_2_lstm_cell_140_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype022
0quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp?
!quant_lstm_2/lstm_cell_140/MatMulMatMul"quant_lstm_2/lstm_cell_140/mul:z:08quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!quant_lstm_2/lstm_cell_140/MatMul?
#quant_lstm_2/lstm_cell_140/MatMul_1MatMulquant_lstm_2/zeros:output:0=quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes
:	?2%
#quant_lstm_2/lstm_cell_140/MatMul_1?
quant_lstm_2/lstm_cell_140/addAddV2+quant_lstm_2/lstm_cell_140/MatMul:product:0-quant_lstm_2/lstm_cell_140/MatMul_1:product:0*
T0*
_output_shapes
:	?2 
quant_lstm_2/lstm_cell_140/add?
1quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp:quant_lstm_2_lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp?
"quant_lstm_2/lstm_cell_140/BiasAddBiasAdd"quant_lstm_2/lstm_cell_140/add:z:09quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2$
"quant_lstm_2/lstm_cell_140/BiasAdd?
*quant_lstm_2/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*quant_lstm_2/lstm_cell_140/split/split_dim?
 quant_lstm_2/lstm_cell_140/splitSplit3quant_lstm_2/lstm_cell_140/split/split_dim:output:0+quant_lstm_2/lstm_cell_140/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 quant_lstm_2/lstm_cell_140/split?
"quant_lstm_2/lstm_cell_140/SigmoidSigmoid)quant_lstm_2/lstm_cell_140/split:output:0*
T0*
_output_shapes

: 2$
"quant_lstm_2/lstm_cell_140/Sigmoid?
$quant_lstm_2/lstm_cell_140/Sigmoid_1Sigmoid)quant_lstm_2/lstm_cell_140/split:output:1*
T0*
_output_shapes

: 2&
$quant_lstm_2/lstm_cell_140/Sigmoid_1?
 quant_lstm_2/lstm_cell_140/mul_1Mul(quant_lstm_2/lstm_cell_140/Sigmoid_1:y:0quant_lstm_2/zeros_1:output:0*
T0*
_output_shapes

: 2"
 quant_lstm_2/lstm_cell_140/mul_1?
quant_lstm_2/lstm_cell_140/ReluRelu)quant_lstm_2/lstm_cell_140/split:output:2*
T0*
_output_shapes

: 2!
quant_lstm_2/lstm_cell_140/Relu?
 quant_lstm_2/lstm_cell_140/mul_2Mul&quant_lstm_2/lstm_cell_140/Sigmoid:y:0-quant_lstm_2/lstm_cell_140/Relu:activations:0*
T0*
_output_shapes

: 2"
 quant_lstm_2/lstm_cell_140/mul_2?
 quant_lstm_2/lstm_cell_140/add_1AddV2$quant_lstm_2/lstm_cell_140/mul_1:z:0$quant_lstm_2/lstm_cell_140/mul_2:z:0*
T0*
_output_shapes

: 2"
 quant_lstm_2/lstm_cell_140/add_1?
$quant_lstm_2/lstm_cell_140/Sigmoid_2Sigmoid)quant_lstm_2/lstm_cell_140/split:output:3*
T0*
_output_shapes

: 2&
$quant_lstm_2/lstm_cell_140/Sigmoid_2?
!quant_lstm_2/lstm_cell_140/Relu_1Relu$quant_lstm_2/lstm_cell_140/add_1:z:0*
T0*
_output_shapes

: 2#
!quant_lstm_2/lstm_cell_140/Relu_1?
 quant_lstm_2/lstm_cell_140/mul_3Mul(quant_lstm_2/lstm_cell_140/Sigmoid_2:y:0/quant_lstm_2/lstm_cell_140/Relu_1:activations:0*
T0*
_output_shapes

: 2"
 quant_lstm_2/lstm_cell_140/mul_3?
*quant_lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2,
*quant_lstm_2/TensorArrayV2_1/element_shape?
quant_lstm_2/TensorArrayV2_1TensorListReserve3quant_lstm_2/TensorArrayV2_1/element_shape:output:0%quant_lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
quant_lstm_2/TensorArrayV2_1h
quant_lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_2/time?
%quant_lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%quant_lstm_2/while/maximum_iterations?
quant_lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
quant_lstm_2/while/loop_counter?
quant_lstm_2/whileWhile(quant_lstm_2/while/loop_counter:output:0.quant_lstm_2/while/maximum_iterations:output:0quant_lstm_2/time:output:0%quant_lstm_2/TensorArrayV2_1:handle:0quant_lstm_2/zeros:output:0quant_lstm_2/zeros_1:output:0%quant_lstm_2/strided_slice_1:output:0Dquant_lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:09quant_lstm_2_lstm_cell_140_matmul_readvariableop_resource=quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0:quant_lstm_2_lstm_cell_140_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*C
_output_shapes1
/: : : : : : : : : :	 ?: *$
_read_only_resource_inputs

**
body"R 
quant_lstm_2_while_body_349734**
cond"R 
quant_lstm_2_while_cond_349733*B
output_shapes1
/: : : : : : : : : :	 ?: *
parallel_iterations 2
quant_lstm_2/while?
=quant_lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2?
=quant_lstm_2/TensorArrayV2Stack/TensorListStack/element_shape?
/quant_lstm_2/TensorArrayV2Stack/TensorListStackTensorListStackquant_lstm_2/while:output:3Fquant_lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype021
/quant_lstm_2/TensorArrayV2Stack/TensorListStack?
"quant_lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"quant_lstm_2/strided_slice_3/stack?
$quant_lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$quant_lstm_2/strided_slice_3/stack_1?
$quant_lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_2/strided_slice_3/stack_2?
quant_lstm_2/strided_slice_3StridedSlice8quant_lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0+quant_lstm_2/strided_slice_3/stack:output:0-quant_lstm_2/strided_slice_3/stack_1:output:0-quant_lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
quant_lstm_2/strided_slice_3?
quant_lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
quant_lstm_2/transpose_1/perm?
quant_lstm_2/transpose_1	Transpose8quant_lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0&quant_lstm_2/transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
quant_lstm_2/transpose_1?
quant_lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
quant_lstm_2/runtime?
/quant_lstm_3/LastValueQuant/Rank/ReadVariableOpReadVariableOp8quant_lstm_3_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype021
/quant_lstm_3/LastValueQuant/Rank/ReadVariableOp?
 quant_lstm_3/LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2"
 quant_lstm_3/LastValueQuant/Rank?
'quant_lstm_3/LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2)
'quant_lstm_3/LastValueQuant/range/start?
'quant_lstm_3/LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2)
'quant_lstm_3/LastValueQuant/range/delta?
!quant_lstm_3/LastValueQuant/rangeRange0quant_lstm_3/LastValueQuant/range/start:output:0)quant_lstm_3/LastValueQuant/Rank:output:00quant_lstm_3/LastValueQuant/range/delta:output:0*
_output_shapes
:2#
!quant_lstm_3/LastValueQuant/range?
3quant_lstm_3/LastValueQuant/BatchMin/ReadVariableOpReadVariableOp8quant_lstm_3_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3quant_lstm_3/LastValueQuant/BatchMin/ReadVariableOp?
$quant_lstm_3/LastValueQuant/BatchMinMin;quant_lstm_3/LastValueQuant/BatchMin/ReadVariableOp:value:0*quant_lstm_3/LastValueQuant/range:output:0*
T0*
_output_shapes
: 2&
$quant_lstm_3/LastValueQuant/BatchMin?
1quant_lstm_3/LastValueQuant/Rank_1/ReadVariableOpReadVariableOp8quant_lstm_3_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype023
1quant_lstm_3/LastValueQuant/Rank_1/ReadVariableOp?
"quant_lstm_3/LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2$
"quant_lstm_3/LastValueQuant/Rank_1?
)quant_lstm_3/LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2+
)quant_lstm_3/LastValueQuant/range_1/start?
)quant_lstm_3/LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2+
)quant_lstm_3/LastValueQuant/range_1/delta?
#quant_lstm_3/LastValueQuant/range_1Range2quant_lstm_3/LastValueQuant/range_1/start:output:0+quant_lstm_3/LastValueQuant/Rank_1:output:02quant_lstm_3/LastValueQuant/range_1/delta:output:0*
_output_shapes
:2%
#quant_lstm_3/LastValueQuant/range_1?
3quant_lstm_3/LastValueQuant/BatchMax/ReadVariableOpReadVariableOp8quant_lstm_3_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3quant_lstm_3/LastValueQuant/BatchMax/ReadVariableOp?
$quant_lstm_3/LastValueQuant/BatchMaxMax;quant_lstm_3/LastValueQuant/BatchMax/ReadVariableOp:value:0,quant_lstm_3/LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2&
$quant_lstm_3/LastValueQuant/BatchMax?
%quant_lstm_3/LastValueQuant/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%quant_lstm_3/LastValueQuant/Minimum/y?
#quant_lstm_3/LastValueQuant/MinimumMinimum-quant_lstm_3/LastValueQuant/BatchMin:output:0.quant_lstm_3/LastValueQuant/Minimum/y:output:0*
T0*
_output_shapes
: 2%
#quant_lstm_3/LastValueQuant/Minimum?
%quant_lstm_3/LastValueQuant/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%quant_lstm_3/LastValueQuant/Maximum/y?
#quant_lstm_3/LastValueQuant/MaximumMaximum-quant_lstm_3/LastValueQuant/BatchMax:output:0.quant_lstm_3/LastValueQuant/Maximum/y:output:0*
T0*
_output_shapes
: 2%
#quant_lstm_3/LastValueQuant/Maximum?
)quant_lstm_3/LastValueQuant/AssignMinLastAssignVariableOp2quant_lstm_3_lastvaluequant_assignminlast_resource'quant_lstm_3/LastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02+
)quant_lstm_3/LastValueQuant/AssignMinLast?
)quant_lstm_3/LastValueQuant/AssignMaxLastAssignVariableOp2quant_lstm_3_lastvaluequant_assignmaxlast_resource'quant_lstm_3/LastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02+
)quant_lstm_3/LastValueQuant/AssignMaxLast?
Bquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp8quant_lstm_3_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02D
Bquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp2quant_lstm_3_lastvaluequant_assignminlast_resource*^quant_lstm_3/LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02F
Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp2quant_lstm_3_lastvaluequant_assignmaxlast_resource*^quant_lstm_3/LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02F
Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
3quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsJquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Lquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Lquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	 ?25
3quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars}
quant_lstm_3/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
quant_lstm_3/Shape?
 quant_lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 quant_lstm_3/strided_slice/stack?
"quant_lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"quant_lstm_3/strided_slice/stack_1?
"quant_lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"quant_lstm_3/strided_slice/stack_2?
quant_lstm_3/strided_sliceStridedSlicequant_lstm_3/Shape:output:0)quant_lstm_3/strided_slice/stack:output:0+quant_lstm_3/strided_slice/stack_1:output:0+quant_lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
quant_lstm_3/strided_slicev
quant_lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_3/zeros/mul/y?
quant_lstm_3/zeros/mulMul#quant_lstm_3/strided_slice:output:0!quant_lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_3/zeros/muly
quant_lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
quant_lstm_3/zeros/Less/y?
quant_lstm_3/zeros/LessLessquant_lstm_3/zeros/mul:z:0"quant_lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_3/zeros/Less|
quant_lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_3/zeros/packed/1?
quant_lstm_3/zeros/packedPack#quant_lstm_3/strided_slice:output:0$quant_lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
quant_lstm_3/zeros/packedy
quant_lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
quant_lstm_3/zeros/Const?
quant_lstm_3/zerosFill"quant_lstm_3/zeros/packed:output:0!quant_lstm_3/zeros/Const:output:0*
T0*
_output_shapes

: 2
quant_lstm_3/zerosz
quant_lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_3/zeros_1/mul/y?
quant_lstm_3/zeros_1/mulMul#quant_lstm_3/strided_slice:output:0#quant_lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_3/zeros_1/mul}
quant_lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
quant_lstm_3/zeros_1/Less/y?
quant_lstm_3/zeros_1/LessLessquant_lstm_3/zeros_1/mul:z:0$quant_lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_3/zeros_1/Less?
quant_lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_3/zeros_1/packed/1?
quant_lstm_3/zeros_1/packedPack#quant_lstm_3/strided_slice:output:0&quant_lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
quant_lstm_3/zeros_1/packed}
quant_lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
quant_lstm_3/zeros_1/Const?
quant_lstm_3/zeros_1Fill$quant_lstm_3/zeros_1/packed:output:0#quant_lstm_3/zeros_1/Const:output:0*
T0*
_output_shapes

: 2
quant_lstm_3/zeros_1?
quant_lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
quant_lstm_3/transpose/perm?
quant_lstm_3/transpose	Transposequant_lstm_2/transpose_1:y:0$quant_lstm_3/transpose/perm:output:0*
T0*"
_output_shapes
: 2
quant_lstm_3/transpose?
quant_lstm_3/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"          2
quant_lstm_3/Shape_1?
"quant_lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"quant_lstm_3/strided_slice_1/stack?
$quant_lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_3/strided_slice_1/stack_1?
$quant_lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_3/strided_slice_1/stack_2?
quant_lstm_3/strided_slice_1StridedSlicequant_lstm_3/Shape_1:output:0+quant_lstm_3/strided_slice_1/stack:output:0-quant_lstm_3/strided_slice_1/stack_1:output:0-quant_lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
quant_lstm_3/strided_slice_1?
(quant_lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(quant_lstm_3/TensorArrayV2/element_shape?
quant_lstm_3/TensorArrayV2TensorListReserve1quant_lstm_3/TensorArrayV2/element_shape:output:0%quant_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
quant_lstm_3/TensorArrayV2?
Bquant_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2D
Bquant_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape?
4quant_lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorquant_lstm_3/transpose:y:0Kquant_lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4quant_lstm_3/TensorArrayUnstack/TensorListFromTensor?
"quant_lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"quant_lstm_3/strided_slice_2/stack?
$quant_lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_3/strided_slice_2/stack_1?
$quant_lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_3/strided_slice_2/stack_2?
quant_lstm_3/strided_slice_2StridedSlicequant_lstm_3/transpose:y:0+quant_lstm_3/strided_slice_2/stack:output:0-quant_lstm_3/strided_slice_2/stack_1:output:0-quant_lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
quant_lstm_3/strided_slice_2?
*quant_lstm_3/lstm_cell_141/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2,
*quant_lstm_3/lstm_cell_141/ones_like/Shape?
*quant_lstm_3/lstm_cell_141/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*quant_lstm_3/lstm_cell_141/ones_like/Const?
$quant_lstm_3/lstm_cell_141/ones_likeFill3quant_lstm_3/lstm_cell_141/ones_like/Shape:output:03quant_lstm_3/lstm_cell_141/ones_like/Const:output:0*
T0*
_output_shapes

: 2&
$quant_lstm_3/lstm_cell_141/ones_like?
(quant_lstm_3/lstm_cell_141/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2*
(quant_lstm_3/lstm_cell_141/dropout/Const?
&quant_lstm_3/lstm_cell_141/dropout/MulMul-quant_lstm_3/lstm_cell_141/ones_like:output:01quant_lstm_3/lstm_cell_141/dropout/Const:output:0*
T0*
_output_shapes

: 2(
&quant_lstm_3/lstm_cell_141/dropout/Mul?
(quant_lstm_3/lstm_cell_141/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2*
(quant_lstm_3/lstm_cell_141/dropout/Shape?
?quant_lstm_3/lstm_cell_141/dropout/random_uniform/RandomUniformRandomUniform1quant_lstm_3/lstm_cell_141/dropout/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2A
?quant_lstm_3/lstm_cell_141/dropout/random_uniform/RandomUniform?
1quant_lstm_3/lstm_cell_141/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=23
1quant_lstm_3/lstm_cell_141/dropout/GreaterEqual/y?
/quant_lstm_3/lstm_cell_141/dropout/GreaterEqualGreaterEqualHquant_lstm_3/lstm_cell_141/dropout/random_uniform/RandomUniform:output:0:quant_lstm_3/lstm_cell_141/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

: 21
/quant_lstm_3/lstm_cell_141/dropout/GreaterEqual?
'quant_lstm_3/lstm_cell_141/dropout/CastCast3quant_lstm_3/lstm_cell_141/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2)
'quant_lstm_3/lstm_cell_141/dropout/Cast?
(quant_lstm_3/lstm_cell_141/dropout/Mul_1Mul*quant_lstm_3/lstm_cell_141/dropout/Mul:z:0+quant_lstm_3/lstm_cell_141/dropout/Cast:y:0*
T0*
_output_shapes

: 2*
(quant_lstm_3/lstm_cell_141/dropout/Mul_1?
*quant_lstm_3/lstm_cell_141/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2,
*quant_lstm_3/lstm_cell_141/dropout_1/Const?
(quant_lstm_3/lstm_cell_141/dropout_1/MulMul-quant_lstm_3/lstm_cell_141/ones_like:output:03quant_lstm_3/lstm_cell_141/dropout_1/Const:output:0*
T0*
_output_shapes

: 2*
(quant_lstm_3/lstm_cell_141/dropout_1/Mul?
*quant_lstm_3/lstm_cell_141/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2,
*quant_lstm_3/lstm_cell_141/dropout_1/Shape?
Aquant_lstm_3/lstm_cell_141/dropout_1/random_uniform/RandomUniformRandomUniform3quant_lstm_3/lstm_cell_141/dropout_1/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2ݪ?2C
Aquant_lstm_3/lstm_cell_141/dropout_1/random_uniform/RandomUniform?
3quant_lstm_3/lstm_cell_141/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=25
3quant_lstm_3/lstm_cell_141/dropout_1/GreaterEqual/y?
1quant_lstm_3/lstm_cell_141/dropout_1/GreaterEqualGreaterEqualJquant_lstm_3/lstm_cell_141/dropout_1/random_uniform/RandomUniform:output:0<quant_lstm_3/lstm_cell_141/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

: 23
1quant_lstm_3/lstm_cell_141/dropout_1/GreaterEqual?
)quant_lstm_3/lstm_cell_141/dropout_1/CastCast5quant_lstm_3/lstm_cell_141/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2+
)quant_lstm_3/lstm_cell_141/dropout_1/Cast?
*quant_lstm_3/lstm_cell_141/dropout_1/Mul_1Mul,quant_lstm_3/lstm_cell_141/dropout_1/Mul:z:0-quant_lstm_3/lstm_cell_141/dropout_1/Cast:y:0*
T0*
_output_shapes

: 2,
*quant_lstm_3/lstm_cell_141/dropout_1/Mul_1?
*quant_lstm_3/lstm_cell_141/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2,
*quant_lstm_3/lstm_cell_141/dropout_2/Const?
(quant_lstm_3/lstm_cell_141/dropout_2/MulMul-quant_lstm_3/lstm_cell_141/ones_like:output:03quant_lstm_3/lstm_cell_141/dropout_2/Const:output:0*
T0*
_output_shapes

: 2*
(quant_lstm_3/lstm_cell_141/dropout_2/Mul?
*quant_lstm_3/lstm_cell_141/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2,
*quant_lstm_3/lstm_cell_141/dropout_2/Shape?
Aquant_lstm_3/lstm_cell_141/dropout_2/random_uniform/RandomUniformRandomUniform3quant_lstm_3/lstm_cell_141/dropout_2/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2??2C
Aquant_lstm_3/lstm_cell_141/dropout_2/random_uniform/RandomUniform?
3quant_lstm_3/lstm_cell_141/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=25
3quant_lstm_3/lstm_cell_141/dropout_2/GreaterEqual/y?
1quant_lstm_3/lstm_cell_141/dropout_2/GreaterEqualGreaterEqualJquant_lstm_3/lstm_cell_141/dropout_2/random_uniform/RandomUniform:output:0<quant_lstm_3/lstm_cell_141/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

: 23
1quant_lstm_3/lstm_cell_141/dropout_2/GreaterEqual?
)quant_lstm_3/lstm_cell_141/dropout_2/CastCast5quant_lstm_3/lstm_cell_141/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2+
)quant_lstm_3/lstm_cell_141/dropout_2/Cast?
*quant_lstm_3/lstm_cell_141/dropout_2/Mul_1Mul,quant_lstm_3/lstm_cell_141/dropout_2/Mul:z:0-quant_lstm_3/lstm_cell_141/dropout_2/Cast:y:0*
T0*
_output_shapes

: 2,
*quant_lstm_3/lstm_cell_141/dropout_2/Mul_1?
*quant_lstm_3/lstm_cell_141/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2,
*quant_lstm_3/lstm_cell_141/dropout_3/Const?
(quant_lstm_3/lstm_cell_141/dropout_3/MulMul-quant_lstm_3/lstm_cell_141/ones_like:output:03quant_lstm_3/lstm_cell_141/dropout_3/Const:output:0*
T0*
_output_shapes

: 2*
(quant_lstm_3/lstm_cell_141/dropout_3/Mul?
*quant_lstm_3/lstm_cell_141/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2,
*quant_lstm_3/lstm_cell_141/dropout_3/Shape?
Aquant_lstm_3/lstm_cell_141/dropout_3/random_uniform/RandomUniformRandomUniform3quant_lstm_3/lstm_cell_141/dropout_3/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2C
Aquant_lstm_3/lstm_cell_141/dropout_3/random_uniform/RandomUniform?
3quant_lstm_3/lstm_cell_141/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=25
3quant_lstm_3/lstm_cell_141/dropout_3/GreaterEqual/y?
1quant_lstm_3/lstm_cell_141/dropout_3/GreaterEqualGreaterEqualJquant_lstm_3/lstm_cell_141/dropout_3/random_uniform/RandomUniform:output:0<quant_lstm_3/lstm_cell_141/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

: 23
1quant_lstm_3/lstm_cell_141/dropout_3/GreaterEqual?
)quant_lstm_3/lstm_cell_141/dropout_3/CastCast5quant_lstm_3/lstm_cell_141/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2+
)quant_lstm_3/lstm_cell_141/dropout_3/Cast?
*quant_lstm_3/lstm_cell_141/dropout_3/Mul_1Mul,quant_lstm_3/lstm_cell_141/dropout_3/Mul:z:0-quant_lstm_3/lstm_cell_141/dropout_3/Cast:y:0*
T0*
_output_shapes

: 2,
*quant_lstm_3/lstm_cell_141/dropout_3/Mul_1?
quant_lstm_3/lstm_cell_141/mulMul%quant_lstm_3/strided_slice_2:output:0,quant_lstm_3/lstm_cell_141/dropout/Mul_1:z:0*
T0*
_output_shapes

: 2 
quant_lstm_3/lstm_cell_141/mul?
0quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp9quant_lstm_3_lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype022
0quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp?
!quant_lstm_3/lstm_cell_141/MatMulMatMul"quant_lstm_3/lstm_cell_141/mul:z:08quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!quant_lstm_3/lstm_cell_141/MatMul?
#quant_lstm_3/lstm_cell_141/MatMul_1MatMulquant_lstm_3/zeros:output:0=quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes
:	?2%
#quant_lstm_3/lstm_cell_141/MatMul_1?
quant_lstm_3/lstm_cell_141/addAddV2+quant_lstm_3/lstm_cell_141/MatMul:product:0-quant_lstm_3/lstm_cell_141/MatMul_1:product:0*
T0*
_output_shapes
:	?2 
quant_lstm_3/lstm_cell_141/add?
1quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp:quant_lstm_3_lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp?
"quant_lstm_3/lstm_cell_141/BiasAddBiasAdd"quant_lstm_3/lstm_cell_141/add:z:09quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2$
"quant_lstm_3/lstm_cell_141/BiasAdd?
*quant_lstm_3/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*quant_lstm_3/lstm_cell_141/split/split_dim?
 quant_lstm_3/lstm_cell_141/splitSplit3quant_lstm_3/lstm_cell_141/split/split_dim:output:0+quant_lstm_3/lstm_cell_141/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 quant_lstm_3/lstm_cell_141/split?
"quant_lstm_3/lstm_cell_141/SigmoidSigmoid)quant_lstm_3/lstm_cell_141/split:output:0*
T0*
_output_shapes

: 2$
"quant_lstm_3/lstm_cell_141/Sigmoid?
$quant_lstm_3/lstm_cell_141/Sigmoid_1Sigmoid)quant_lstm_3/lstm_cell_141/split:output:1*
T0*
_output_shapes

: 2&
$quant_lstm_3/lstm_cell_141/Sigmoid_1?
 quant_lstm_3/lstm_cell_141/mul_1Mul(quant_lstm_3/lstm_cell_141/Sigmoid_1:y:0quant_lstm_3/zeros_1:output:0*
T0*
_output_shapes

: 2"
 quant_lstm_3/lstm_cell_141/mul_1?
quant_lstm_3/lstm_cell_141/ReluRelu)quant_lstm_3/lstm_cell_141/split:output:2*
T0*
_output_shapes

: 2!
quant_lstm_3/lstm_cell_141/Relu?
 quant_lstm_3/lstm_cell_141/mul_2Mul&quant_lstm_3/lstm_cell_141/Sigmoid:y:0-quant_lstm_3/lstm_cell_141/Relu:activations:0*
T0*
_output_shapes

: 2"
 quant_lstm_3/lstm_cell_141/mul_2?
 quant_lstm_3/lstm_cell_141/add_1AddV2$quant_lstm_3/lstm_cell_141/mul_1:z:0$quant_lstm_3/lstm_cell_141/mul_2:z:0*
T0*
_output_shapes

: 2"
 quant_lstm_3/lstm_cell_141/add_1?
$quant_lstm_3/lstm_cell_141/Sigmoid_2Sigmoid)quant_lstm_3/lstm_cell_141/split:output:3*
T0*
_output_shapes

: 2&
$quant_lstm_3/lstm_cell_141/Sigmoid_2?
!quant_lstm_3/lstm_cell_141/Relu_1Relu$quant_lstm_3/lstm_cell_141/add_1:z:0*
T0*
_output_shapes

: 2#
!quant_lstm_3/lstm_cell_141/Relu_1?
 quant_lstm_3/lstm_cell_141/mul_3Mul(quant_lstm_3/lstm_cell_141/Sigmoid_2:y:0/quant_lstm_3/lstm_cell_141/Relu_1:activations:0*
T0*
_output_shapes

: 2"
 quant_lstm_3/lstm_cell_141/mul_3?
*quant_lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2,
*quant_lstm_3/TensorArrayV2_1/element_shape?
quant_lstm_3/TensorArrayV2_1TensorListReserve3quant_lstm_3/TensorArrayV2_1/element_shape:output:0%quant_lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
quant_lstm_3/TensorArrayV2_1h
quant_lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
quant_lstm_3/time?
%quant_lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%quant_lstm_3/while/maximum_iterations?
quant_lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
quant_lstm_3/while/loop_counter?
quant_lstm_3/whileWhile(quant_lstm_3/while/loop_counter:output:0.quant_lstm_3/while/maximum_iterations:output:0quant_lstm_3/time:output:0%quant_lstm_3/TensorArrayV2_1:handle:0quant_lstm_3/zeros:output:0quant_lstm_3/zeros_1:output:0%quant_lstm_3/strided_slice_1:output:0Dquant_lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:09quant_lstm_3_lstm_cell_141_matmul_readvariableop_resource=quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0:quant_lstm_3_lstm_cell_141_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*C
_output_shapes1
/: : : : : : : : : :	 ?: *$
_read_only_resource_inputs

**
body"R 
quant_lstm_3_while_body_349975**
cond"R 
quant_lstm_3_while_cond_349974*B
output_shapes1
/: : : : : : : : : :	 ?: *
parallel_iterations 2
quant_lstm_3/while?
=quant_lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2?
=quant_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape?
/quant_lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackquant_lstm_3/while:output:3Fquant_lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype021
/quant_lstm_3/TensorArrayV2Stack/TensorListStack?
"quant_lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"quant_lstm_3/strided_slice_3/stack?
$quant_lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$quant_lstm_3/strided_slice_3/stack_1?
$quant_lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$quant_lstm_3/strided_slice_3/stack_2?
quant_lstm_3/strided_slice_3StridedSlice8quant_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0+quant_lstm_3/strided_slice_3/stack:output:0-quant_lstm_3/strided_slice_3/stack_1:output:0-quant_lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
quant_lstm_3/strided_slice_3?
quant_lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
quant_lstm_3/transpose_1/perm?
quant_lstm_3/transpose_1	Transpose8quant_lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0&quant_lstm_3/transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
quant_lstm_3/transpose_1?
quant_lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
quant_lstm_3/runtime?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMul%quant_lstm_3/strided_slice_3:output:0%dense_1/MatMul/ReadVariableOp:value:0*
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
dense_1/BiasAdd?
IdentityIdentitydense_1/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*^quant_lstm_2/LastValueQuant/AssignMaxLast*^quant_lstm_2/LastValueQuant/AssignMinLast4^quant_lstm_2/LastValueQuant/BatchMax/ReadVariableOp4^quant_lstm_2/LastValueQuant/BatchMin/ReadVariableOpC^quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpE^quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1E^quant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22^quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp1^quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp^quant_lstm_2/while*^quant_lstm_3/LastValueQuant/AssignMaxLast*^quant_lstm_3/LastValueQuant/AssignMinLast4^quant_lstm_3/LastValueQuant/BatchMax/ReadVariableOp4^quant_lstm_3/LastValueQuant/BatchMin/ReadVariableOpC^quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpE^quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1E^quant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22^quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp1^quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp^quant_lstm_3/while6^quantize_layer_32/AllValuesQuantize/AssignMaxAllValue6^quantize_layer_32/AllValuesQuantize/AssignMinAllValueK^quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpM^quantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1;^quantize_layer_32/AllValuesQuantize/Maximum/ReadVariableOp;^quantize_layer_32/AllValuesQuantize/Minimum/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:: : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2V
)quant_lstm_2/LastValueQuant/AssignMaxLast)quant_lstm_2/LastValueQuant/AssignMaxLast2V
)quant_lstm_2/LastValueQuant/AssignMinLast)quant_lstm_2/LastValueQuant/AssignMinLast2j
3quant_lstm_2/LastValueQuant/BatchMax/ReadVariableOp3quant_lstm_2/LastValueQuant/BatchMax/ReadVariableOp2j
3quant_lstm_2/LastValueQuant/BatchMin/ReadVariableOp3quant_lstm_2/LastValueQuant/BatchMin/ReadVariableOp2?
Bquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpBquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Dquant_lstm_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22f
1quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp1quant_lstm_2/lstm_cell_140/BiasAdd/ReadVariableOp2d
0quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp0quant_lstm_2/lstm_cell_140/MatMul/ReadVariableOp2(
quant_lstm_2/whilequant_lstm_2/while2V
)quant_lstm_3/LastValueQuant/AssignMaxLast)quant_lstm_3/LastValueQuant/AssignMaxLast2V
)quant_lstm_3/LastValueQuant/AssignMinLast)quant_lstm_3/LastValueQuant/AssignMinLast2j
3quant_lstm_3/LastValueQuant/BatchMax/ReadVariableOp3quant_lstm_3/LastValueQuant/BatchMax/ReadVariableOp2j
3quant_lstm_3/LastValueQuant/BatchMin/ReadVariableOp3quant_lstm_3/LastValueQuant/BatchMin/ReadVariableOp2?
Bquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpBquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Dquant_lstm_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22f
1quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp1quant_lstm_3/lstm_cell_141/BiasAdd/ReadVariableOp2d
0quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp0quant_lstm_3/lstm_cell_141/MatMul/ReadVariableOp2(
quant_lstm_3/whilequant_lstm_3/while2n
5quantize_layer_32/AllValuesQuantize/AssignMaxAllValue5quantize_layer_32/AllValuesQuantize/AssignMaxAllValue2n
5quantize_layer_32/AllValuesQuantize/AssignMinAllValue5quantize_layer_32/AllValuesQuantize/AssignMinAllValue2?
Jquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpJquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Lquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Lquantize_layer_32/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12x
:quantize_layer_32/AllValuesQuantize/Maximum/ReadVariableOp:quantize_layer_32/AllValuesQuantize/Maximum/ReadVariableOp2x
:quantize_layer_32/AllValuesQuantize/Minimum/ReadVariableOp:quantize_layer_32/AllValuesQuantize/Minimum/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?C
?
while_body_348026
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_140_matmul_readvariableop_resource_0:	?I
Ewhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvars_0D
5while_lstm_cell_140_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_140_matmul_readvariableop_resource:	?G
Cwhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvarsB
3while_lstm_cell_140_biasadd_readvariableop_resource:	???*while/lstm_cell_140/BiasAdd/ReadVariableOp?)while/lstm_cell_140/MatMul/ReadVariableOp?
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
#while/lstm_cell_140/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#while/lstm_cell_140/ones_like/Shape?
#while/lstm_cell_140/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#while/lstm_cell_140/ones_like/Const?
while/lstm_cell_140/ones_likeFill,while/lstm_cell_140/ones_like/Shape:output:0,while/lstm_cell_140/ones_like/Const:output:0*
T0*
_output_shapes

:2
while/lstm_cell_140/ones_like?
while/lstm_cell_140/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_140/ones_like:output:0*
T0*
_output_shapes

:2
while/lstm_cell_140/mul?
)while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_140/MatMul/ReadVariableOp?
while/lstm_cell_140/MatMulMatMulwhile/lstm_cell_140/mul:z:01while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/MatMul?
while/lstm_cell_140/MatMul_1MatMulwhile_placeholder_2Ewhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvars_0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/MatMul_1?
while/lstm_cell_140/addAddV2$while/lstm_cell_140/MatMul:product:0&while/lstm_cell_140/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/add?
*while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_140/BiasAdd/ReadVariableOp?
while/lstm_cell_140/BiasAddBiasAddwhile/lstm_cell_140/add:z:02while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/BiasAdd?
#while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_140/split/split_dim?
while/lstm_cell_140/splitSplit,while/lstm_cell_140/split/split_dim:output:0$while/lstm_cell_140/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_140/split?
while/lstm_cell_140/SigmoidSigmoid"while/lstm_cell_140/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/Sigmoid?
while/lstm_cell_140/Sigmoid_1Sigmoid"while/lstm_cell_140/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_140/Sigmoid_1?
while/lstm_cell_140/mul_1Mul!while/lstm_cell_140/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_140/mul_1?
while/lstm_cell_140/ReluRelu"while/lstm_cell_140/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_140/Relu?
while/lstm_cell_140/mul_2Mulwhile/lstm_cell_140/Sigmoid:y:0&while/lstm_cell_140/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/mul_2?
while/lstm_cell_140/add_1AddV2while/lstm_cell_140/mul_1:z:0while/lstm_cell_140/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/add_1?
while/lstm_cell_140/Sigmoid_2Sigmoid"while/lstm_cell_140/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_140/Sigmoid_2?
while/lstm_cell_140/Relu_1Reluwhile/lstm_cell_140/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/Relu_1?
while/lstm_cell_140/mul_3Mul!while/lstm_cell_140/Sigmoid_2:y:0(while/lstm_cell_140/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_140/mul_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_140/mul_3:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_140/add_1:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_140_biasadd_readvariableop_resource5while_lstm_cell_140_biasadd_readvariableop_resource_0"?
Cwhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvarsEwhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvars_0"j
2while_lstm_cell_140_matmul_readvariableop_resource4while_lstm_cell_140_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/: : : : : : : : : :	 ?: 2X
*while/lstm_cell_140/BiasAdd/ReadVariableOp*while/lstm_cell_140/BiasAdd/ReadVariableOp2V
)while/lstm_cell_140/MatMul/ReadVariableOp)while/lstm_cell_140/MatMul/ReadVariableOp: 
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
: :%	!

_output_shapes
:	 ?
?u
?
while_body_350467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_140_matmul_readvariableop_resource_0:	?I
Ewhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvars_0D
5while_lstm_cell_140_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_140_matmul_readvariableop_resource:	?G
Cwhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvarsB
3while_lstm_cell_140_biasadd_readvariableop_resource:	???*while/lstm_cell_140/BiasAdd/ReadVariableOp?)while/lstm_cell_140/MatMul/ReadVariableOp?
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
#while/lstm_cell_140/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#while/lstm_cell_140/ones_like/Shape?
#while/lstm_cell_140/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#while/lstm_cell_140/ones_like/Const?
while/lstm_cell_140/ones_likeFill,while/lstm_cell_140/ones_like/Shape:output:0,while/lstm_cell_140/ones_like/Const:output:0*
T0*
_output_shapes

:2
while/lstm_cell_140/ones_like?
!while/lstm_cell_140/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_140/dropout/Const?
while/lstm_cell_140/dropout/MulMul&while/lstm_cell_140/ones_like:output:0*while/lstm_cell_140/dropout/Const:output:0*
T0*
_output_shapes

:2!
while/lstm_cell_140/dropout/Mul?
!while/lstm_cell_140/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!while/lstm_cell_140/dropout/Shape?
8while/lstm_cell_140/dropout/random_uniform/RandomUniformRandomUniform*while/lstm_cell_140/dropout/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2:
8while/lstm_cell_140/dropout/random_uniform/RandomUniform?
*while/lstm_cell_140/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_140/dropout/GreaterEqual/y?
(while/lstm_cell_140/dropout/GreaterEqualGreaterEqualAwhile/lstm_cell_140/dropout/random_uniform/RandomUniform:output:03while/lstm_cell_140/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

:2*
(while/lstm_cell_140/dropout/GreaterEqual?
 while/lstm_cell_140/dropout/CastCast,while/lstm_cell_140/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2"
 while/lstm_cell_140/dropout/Cast?
!while/lstm_cell_140/dropout/Mul_1Mul#while/lstm_cell_140/dropout/Mul:z:0$while/lstm_cell_140/dropout/Cast:y:0*
T0*
_output_shapes

:2#
!while/lstm_cell_140/dropout/Mul_1?
#while/lstm_cell_140/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2%
#while/lstm_cell_140/dropout_1/Const?
!while/lstm_cell_140/dropout_1/MulMul&while/lstm_cell_140/ones_like:output:0,while/lstm_cell_140/dropout_1/Const:output:0*
T0*
_output_shapes

:2#
!while/lstm_cell_140/dropout_1/Mul?
#while/lstm_cell_140/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#while/lstm_cell_140/dropout_1/Shape?
:while/lstm_cell_140/dropout_1/random_uniform/RandomUniformRandomUniform,while/lstm_cell_140/dropout_1/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2<
:while/lstm_cell_140/dropout_1/random_uniform/RandomUniform?
,while/lstm_cell_140/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2.
,while/lstm_cell_140/dropout_1/GreaterEqual/y?
*while/lstm_cell_140/dropout_1/GreaterEqualGreaterEqualCwhile/lstm_cell_140/dropout_1/random_uniform/RandomUniform:output:05while/lstm_cell_140/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

:2,
*while/lstm_cell_140/dropout_1/GreaterEqual?
"while/lstm_cell_140/dropout_1/CastCast.while/lstm_cell_140/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2$
"while/lstm_cell_140/dropout_1/Cast?
#while/lstm_cell_140/dropout_1/Mul_1Mul%while/lstm_cell_140/dropout_1/Mul:z:0&while/lstm_cell_140/dropout_1/Cast:y:0*
T0*
_output_shapes

:2%
#while/lstm_cell_140/dropout_1/Mul_1?
#while/lstm_cell_140/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2%
#while/lstm_cell_140/dropout_2/Const?
!while/lstm_cell_140/dropout_2/MulMul&while/lstm_cell_140/ones_like:output:0,while/lstm_cell_140/dropout_2/Const:output:0*
T0*
_output_shapes

:2#
!while/lstm_cell_140/dropout_2/Mul?
#while/lstm_cell_140/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#while/lstm_cell_140/dropout_2/Shape?
:while/lstm_cell_140/dropout_2/random_uniform/RandomUniformRandomUniform,while/lstm_cell_140/dropout_2/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2<
:while/lstm_cell_140/dropout_2/random_uniform/RandomUniform?
,while/lstm_cell_140/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2.
,while/lstm_cell_140/dropout_2/GreaterEqual/y?
*while/lstm_cell_140/dropout_2/GreaterEqualGreaterEqualCwhile/lstm_cell_140/dropout_2/random_uniform/RandomUniform:output:05while/lstm_cell_140/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

:2,
*while/lstm_cell_140/dropout_2/GreaterEqual?
"while/lstm_cell_140/dropout_2/CastCast.while/lstm_cell_140/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2$
"while/lstm_cell_140/dropout_2/Cast?
#while/lstm_cell_140/dropout_2/Mul_1Mul%while/lstm_cell_140/dropout_2/Mul:z:0&while/lstm_cell_140/dropout_2/Cast:y:0*
T0*
_output_shapes

:2%
#while/lstm_cell_140/dropout_2/Mul_1?
#while/lstm_cell_140/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2%
#while/lstm_cell_140/dropout_3/Const?
!while/lstm_cell_140/dropout_3/MulMul&while/lstm_cell_140/ones_like:output:0,while/lstm_cell_140/dropout_3/Const:output:0*
T0*
_output_shapes

:2#
!while/lstm_cell_140/dropout_3/Mul?
#while/lstm_cell_140/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#while/lstm_cell_140/dropout_3/Shape?
:while/lstm_cell_140/dropout_3/random_uniform/RandomUniformRandomUniform,while/lstm_cell_140/dropout_3/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2<
:while/lstm_cell_140/dropout_3/random_uniform/RandomUniform?
,while/lstm_cell_140/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2.
,while/lstm_cell_140/dropout_3/GreaterEqual/y?
*while/lstm_cell_140/dropout_3/GreaterEqualGreaterEqualCwhile/lstm_cell_140/dropout_3/random_uniform/RandomUniform:output:05while/lstm_cell_140/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

:2,
*while/lstm_cell_140/dropout_3/GreaterEqual?
"while/lstm_cell_140/dropout_3/CastCast.while/lstm_cell_140/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2$
"while/lstm_cell_140/dropout_3/Cast?
#while/lstm_cell_140/dropout_3/Mul_1Mul%while/lstm_cell_140/dropout_3/Mul:z:0&while/lstm_cell_140/dropout_3/Cast:y:0*
T0*
_output_shapes

:2%
#while/lstm_cell_140/dropout_3/Mul_1?
while/lstm_cell_140/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_140/dropout/Mul_1:z:0*
T0*
_output_shapes

:2
while/lstm_cell_140/mul?
)while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_140/MatMul/ReadVariableOp?
while/lstm_cell_140/MatMulMatMulwhile/lstm_cell_140/mul:z:01while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/MatMul?
while/lstm_cell_140/MatMul_1MatMulwhile_placeholder_2Ewhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvars_0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/MatMul_1?
while/lstm_cell_140/addAddV2$while/lstm_cell_140/MatMul:product:0&while/lstm_cell_140/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/add?
*while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_140/BiasAdd/ReadVariableOp?
while/lstm_cell_140/BiasAddBiasAddwhile/lstm_cell_140/add:z:02while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/BiasAdd?
#while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_140/split/split_dim?
while/lstm_cell_140/splitSplit,while/lstm_cell_140/split/split_dim:output:0$while/lstm_cell_140/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_140/split?
while/lstm_cell_140/SigmoidSigmoid"while/lstm_cell_140/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/Sigmoid?
while/lstm_cell_140/Sigmoid_1Sigmoid"while/lstm_cell_140/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_140/Sigmoid_1?
while/lstm_cell_140/mul_1Mul!while/lstm_cell_140/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_140/mul_1?
while/lstm_cell_140/ReluRelu"while/lstm_cell_140/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_140/Relu?
while/lstm_cell_140/mul_2Mulwhile/lstm_cell_140/Sigmoid:y:0&while/lstm_cell_140/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/mul_2?
while/lstm_cell_140/add_1AddV2while/lstm_cell_140/mul_1:z:0while/lstm_cell_140/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/add_1?
while/lstm_cell_140/Sigmoid_2Sigmoid"while/lstm_cell_140/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_140/Sigmoid_2?
while/lstm_cell_140/Relu_1Reluwhile/lstm_cell_140/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/Relu_1?
while/lstm_cell_140/mul_3Mul!while/lstm_cell_140/Sigmoid_2:y:0(while/lstm_cell_140/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_140/mul_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_140/mul_3:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_140/add_1:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_140_biasadd_readvariableop_resource5while_lstm_cell_140_biasadd_readvariableop_resource_0"?
Cwhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvarsEwhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvars_0"j
2while_lstm_cell_140_matmul_readvariableop_resource4while_lstm_cell_140_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/: : : : : : : : : :	 ?: 2X
*while/lstm_cell_140/BiasAdd/ReadVariableOp*while/lstm_cell_140/BiasAdd/ReadVariableOp2V
)while/lstm_cell_140/MatMul/ReadVariableOp)while/lstm_cell_140/MatMul/ReadVariableOp: 
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
: :%	!

_output_shapes
:	 ?
?&
?
M__inference_quantize_layer_32_layer_call_and_return_conditional_losses_348943

inputs;
1allvaluesquantize_minimum_readvariableop_resource: ;
1allvaluesquantize_maximum_readvariableop_resource: 
identity??#AllValuesQuantize/AssignMaxAllValue?#AllValuesQuantize/AssignMinAllValue?8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?(AllValuesQuantize/Maximum/ReadVariableOp?(AllValuesQuantize/Minimum/ReadVariableOp?
AllValuesQuantize/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
AllValuesQuantize/Const?
AllValuesQuantize/BatchMinMininputs AllValuesQuantize/Const:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMin?
AllValuesQuantize/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2
AllValuesQuantize/Const_1?
AllValuesQuantize/BatchMaxMaxinputs"AllValuesQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMax?
(AllValuesQuantize/Minimum/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Minimum/ReadVariableOp?
AllValuesQuantize/MinimumMinimum0AllValuesQuantize/Minimum/ReadVariableOp:value:0#AllValuesQuantize/BatchMin:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum?
AllValuesQuantize/Minimum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Minimum_1/y?
AllValuesQuantize/Minimum_1MinimumAllValuesQuantize/Minimum:z:0&AllValuesQuantize/Minimum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum_1?
(AllValuesQuantize/Maximum/ReadVariableOpReadVariableOp1allvaluesquantize_maximum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Maximum/ReadVariableOp?
AllValuesQuantize/MaximumMaximum0AllValuesQuantize/Maximum/ReadVariableOp:value:0#AllValuesQuantize/BatchMax:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum?
AllValuesQuantize/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Maximum_1/y?
AllValuesQuantize/Maximum_1MaximumAllValuesQuantize/Maximum:z:0&AllValuesQuantize/Maximum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum_1?
#AllValuesQuantize/AssignMinAllValueAssignVariableOp1allvaluesquantize_minimum_readvariableop_resourceAllValuesQuantize/Minimum_1:z:0)^AllValuesQuantize/Minimum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMinAllValue?
#AllValuesQuantize/AssignMaxAllValueAssignVariableOp1allvaluesquantize_maximum_readvariableop_resourceAllValuesQuantize/Maximum_1:z:0)^AllValuesQuantize/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMaxAllValue?
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource$^AllValuesQuantize/AssignMinAllValue*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp1allvaluesquantize_maximum_readvariableop_resource$^AllValuesQuantize/AssignMaxAllValue*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*"
_output_shapes
:2+
)AllValuesQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0$^AllValuesQuantize/AssignMaxAllValue$^AllValuesQuantize/AssignMinAllValue9^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1)^AllValuesQuantize/Maximum/ReadVariableOp)^AllValuesQuantize/Minimum/ReadVariableOp*
T0*"
_output_shapes
:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 2J
#AllValuesQuantize/AssignMaxAllValue#AllValuesQuantize/AssignMaxAllValue2J
#AllValuesQuantize/AssignMinAllValue#AllValuesQuantize/AssignMinAllValue2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12T
(AllValuesQuantize/Maximum/ReadVariableOp(AllValuesQuantize/Maximum/ReadVariableOp2T
(AllValuesQuantize/Minimum/ReadVariableOp(AllValuesQuantize/Minimum/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
??
?
H__inference_quant_lstm_3_layer_call_and_return_conditional_losses_351024

inputs>
+lastvaluequant_rank_readvariableop_resource:	 ?/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: ?
,lstm_cell_141_matmul_readvariableop_resource:	 ?<
-lstm_cell_141_biasadd_readvariableop_resource:	?
identity??LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?$lstm_cell_141/BiasAdd/ReadVariableOp?#lstm_cell_141/MatMul/ReadVariableOp?while?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02$
"LastValueQuant/Rank/ReadVariableOpl
LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rankz
LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range/startz
LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range/delta?
LastValueQuant/rangeRange#LastValueQuant/range/start:output:0LastValueQuant/Rank:output:0#LastValueQuant/range/delta:output:0*
_output_shapes
:2
LastValueQuant/range?
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02&
$LastValueQuant/Rank_1/ReadVariableOpp
LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rank_1~
LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range_1/start~
LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range_1/delta?
LastValueQuant/range_1Range%LastValueQuant/range_1/start:output:0LastValueQuant/Rank_1:output:0%LastValueQuant/range_1/delta:output:0*
_output_shapes
:2
LastValueQuant/range_1?
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
LastValueQuant/Minimum/y?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0!LastValueQuant/Minimum/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumy
LastValueQuant/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
LastValueQuant/Maximum/y?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0!LastValueQuant/Maximum/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/Maximum?
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast?
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	 ?2(
&LastValueQuant/FakeQuantWithMinMaxVarsc
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
lstm_cell_141/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_141/ones_like/Shape?
lstm_cell_141/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_141/ones_like/Const?
lstm_cell_141/ones_likeFill&lstm_cell_141/ones_like/Shape:output:0&lstm_cell_141/ones_like/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/ones_like
lstm_cell_141/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_141/dropout/Const?
lstm_cell_141/dropout/MulMul lstm_cell_141/ones_like:output:0$lstm_cell_141/dropout/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout/Mul?
lstm_cell_141/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_141/dropout/Shape?
2lstm_cell_141/dropout/random_uniform/RandomUniformRandomUniform$lstm_cell_141/dropout/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???24
2lstm_cell_141/dropout/random_uniform/RandomUniform?
$lstm_cell_141/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_141/dropout/GreaterEqual/y?
"lstm_cell_141/dropout/GreaterEqualGreaterEqual;lstm_cell_141/dropout/random_uniform/RandomUniform:output:0-lstm_cell_141/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2$
"lstm_cell_141/dropout/GreaterEqual?
lstm_cell_141/dropout/CastCast&lstm_cell_141/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_141/dropout/Cast?
lstm_cell_141/dropout/Mul_1Mullstm_cell_141/dropout/Mul:z:0lstm_cell_141/dropout/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout/Mul_1?
lstm_cell_141/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_141/dropout_1/Const?
lstm_cell_141/dropout_1/MulMul lstm_cell_141/ones_like:output:0&lstm_cell_141/dropout_1/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout_1/Mul?
lstm_cell_141/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_141/dropout_1/Shape?
4lstm_cell_141/dropout_1/random_uniform/RandomUniformRandomUniform&lstm_cell_141/dropout_1/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2??26
4lstm_cell_141/dropout_1/random_uniform/RandomUniform?
&lstm_cell_141/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&lstm_cell_141/dropout_1/GreaterEqual/y?
$lstm_cell_141/dropout_1/GreaterEqualGreaterEqual=lstm_cell_141/dropout_1/random_uniform/RandomUniform:output:0/lstm_cell_141/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2&
$lstm_cell_141/dropout_1/GreaterEqual?
lstm_cell_141/dropout_1/CastCast(lstm_cell_141/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_141/dropout_1/Cast?
lstm_cell_141/dropout_1/Mul_1Mullstm_cell_141/dropout_1/Mul:z:0 lstm_cell_141/dropout_1/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout_1/Mul_1?
lstm_cell_141/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_141/dropout_2/Const?
lstm_cell_141/dropout_2/MulMul lstm_cell_141/ones_like:output:0&lstm_cell_141/dropout_2/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout_2/Mul?
lstm_cell_141/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_141/dropout_2/Shape?
4lstm_cell_141/dropout_2/random_uniform/RandomUniformRandomUniform&lstm_cell_141/dropout_2/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???26
4lstm_cell_141/dropout_2/random_uniform/RandomUniform?
&lstm_cell_141/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&lstm_cell_141/dropout_2/GreaterEqual/y?
$lstm_cell_141/dropout_2/GreaterEqualGreaterEqual=lstm_cell_141/dropout_2/random_uniform/RandomUniform:output:0/lstm_cell_141/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2&
$lstm_cell_141/dropout_2/GreaterEqual?
lstm_cell_141/dropout_2/CastCast(lstm_cell_141/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_141/dropout_2/Cast?
lstm_cell_141/dropout_2/Mul_1Mullstm_cell_141/dropout_2/Mul:z:0 lstm_cell_141/dropout_2/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout_2/Mul_1?
lstm_cell_141/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_141/dropout_3/Const?
lstm_cell_141/dropout_3/MulMul lstm_cell_141/ones_like:output:0&lstm_cell_141/dropout_3/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout_3/Mul?
lstm_cell_141/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_141/dropout_3/Shape?
4lstm_cell_141/dropout_3/random_uniform/RandomUniformRandomUniform&lstm_cell_141/dropout_3/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2ڏ?26
4lstm_cell_141/dropout_3/random_uniform/RandomUniform?
&lstm_cell_141/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&lstm_cell_141/dropout_3/GreaterEqual/y?
$lstm_cell_141/dropout_3/GreaterEqualGreaterEqual=lstm_cell_141/dropout_3/random_uniform/RandomUniform:output:0/lstm_cell_141/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2&
$lstm_cell_141/dropout_3/GreaterEqual?
lstm_cell_141/dropout_3/CastCast(lstm_cell_141/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2
lstm_cell_141/dropout_3/Cast?
lstm_cell_141/dropout_3/Mul_1Mullstm_cell_141/dropout_3/Mul:z:0 lstm_cell_141/dropout_3/Cast:y:0*
T0*
_output_shapes

: 2
lstm_cell_141/dropout_3/Mul_1?
lstm_cell_141/mulMulstrided_slice_2:output:0lstm_cell_141/dropout/Mul_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul?
#lstm_cell_141/MatMul/ReadVariableOpReadVariableOp,lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_141/MatMul/ReadVariableOp?
lstm_cell_141/MatMulMatMullstm_cell_141/mul:z:0+lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_141/MatMul?
lstm_cell_141/MatMul_1MatMulzeros:output:00LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes
:	?2
lstm_cell_141/MatMul_1?
lstm_cell_141/addAddV2lstm_cell_141/MatMul:product:0 lstm_cell_141/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_141/add?
$lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_141/BiasAdd/ReadVariableOp?
lstm_cell_141/BiasAddBiasAddlstm_cell_141/add:z:0,lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_141/BiasAdd?
lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_141/split/split_dim?
lstm_cell_141/splitSplit&lstm_cell_141/split/split_dim:output:0lstm_cell_141/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_141/split?
lstm_cell_141/SigmoidSigmoidlstm_cell_141/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/Sigmoid?
lstm_cell_141/Sigmoid_1Sigmoidlstm_cell_141/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_141/Sigmoid_1?
lstm_cell_141/mul_1Mullstm_cell_141/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul_1w
lstm_cell_141/ReluRelulstm_cell_141/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_141/Relu?
lstm_cell_141/mul_2Mullstm_cell_141/Sigmoid:y:0 lstm_cell_141/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul_2?
lstm_cell_141/add_1AddV2lstm_cell_141/mul_1:z:0lstm_cell_141/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_141/add_1?
lstm_cell_141/Sigmoid_2Sigmoidlstm_cell_141/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_141/Sigmoid_2v
lstm_cell_141/Relu_1Relulstm_cell_141/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_141/Relu_1?
lstm_cell_141/mul_3Mullstm_cell_141/Sigmoid_2:y:0"lstm_cell_141/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_141_matmul_readvariableop_resource0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0-lstm_cell_141_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*C
_output_shapes1
/: : : : : : : : : :	 ?: *$
_read_only_resource_inputs

*
bodyR
while_body_350905*
condR
while_cond_350904*B
output_shapes1
/: : : : : : : : : :	 ?: *
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
runtime?
IdentityIdentitystrided_slice_3:output:0^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2%^lstm_cell_141/BiasAdd/ReadVariableOp$^lstm_cell_141/MatMul/ReadVariableOp^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
: : : : : : 2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22L
$lstm_cell_141/BiasAdd/ReadVariableOp$lstm_cell_141/BiasAdd/ReadVariableOp2J
#lstm_cell_141/MatMul/ReadVariableOp#lstm_cell_141/MatMul/ReadVariableOp2
whilewhile:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
?_
?
"__inference__traced_restore_352266
file_prefixB
8assignvariableop_quantize_layer_32_quantize_layer_32_min: D
:assignvariableop_1_quantize_layer_32_quantize_layer_32_max: =
3assignvariableop_2_quantize_layer_32_optimizer_step: 8
.assignvariableop_3_quant_lstm_2_optimizer_step: >
4assignvariableop_4_quant_lstm_2_recurrent_kernel_min: >
4assignvariableop_5_quant_lstm_2_recurrent_kernel_max: =
3assignvariableop_6_quant_lstm_2_post_activation_min: =
3assignvariableop_7_quant_lstm_2_post_activation_max: 8
.assignvariableop_8_quant_lstm_3_optimizer_step: >
4assignvariableop_9_quant_lstm_3_recurrent_kernel_min: ?
5assignvariableop_10_quant_lstm_3_recurrent_kernel_max: >
4assignvariableop_11_quant_lstm_3_post_activation_min: >
4assignvariableop_12_quant_lstm_3_post_activation_max: 4
"assignvariableop_13_dense_1_kernel: .
 assignvariableop_14_dense_1_bias:B
/assignvariableop_15_lstm_2_lstm_cell_140_kernel:	?L
9assignvariableop_16_lstm_2_lstm_cell_140_recurrent_kernel:	 ?<
-assignvariableop_17_lstm_2_lstm_cell_140_bias:	?B
/assignvariableop_18_lstm_3_lstm_cell_141_kernel:	 ?L
9assignvariableop_19_lstm_3_lstm_cell_141_recurrent_kernel:	 ?<
-assignvariableop_20_lstm_3_lstm_cell_141_bias:	?
identity_22??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
BElayer_with_weights-0/quantize_layer_32_min/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-0/quantize_layer_32_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-1/recurrent_kernel_min/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-1/recurrent_kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-2/recurrent_kernel_min/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-2/recurrent_kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp8assignvariableop_quantize_layer_32_quantize_layer_32_minIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp:assignvariableop_1_quantize_layer_32_quantize_layer_32_maxIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp3assignvariableop_2_quantize_layer_32_optimizer_stepIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_quant_lstm_2_optimizer_stepIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp4assignvariableop_4_quant_lstm_2_recurrent_kernel_minIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp4assignvariableop_5_quant_lstm_2_recurrent_kernel_maxIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp3assignvariableop_6_quant_lstm_2_post_activation_minIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp3assignvariableop_7_quant_lstm_2_post_activation_maxIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp.assignvariableop_8_quant_lstm_3_optimizer_stepIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp4assignvariableop_9_quant_lstm_3_recurrent_kernel_minIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp5assignvariableop_10_quant_lstm_3_recurrent_kernel_maxIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp4assignvariableop_11_quant_lstm_3_post_activation_minIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp4assignvariableop_12_quant_lstm_3_post_activation_maxIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_dense_1_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp assignvariableop_14_dense_1_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_2_lstm_cell_140_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp9assignvariableop_16_lstm_2_lstm_cell_140_recurrent_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp-assignvariableop_17_lstm_2_lstm_cell_140_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp/assignvariableop_18_lstm_3_lstm_cell_141_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp9assignvariableop_19_lstm_3_lstm_cell_141_recurrent_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp-assignvariableop_20_lstm_3_lstm_cell_141_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21?
Identity_22IdentityIdentity_21:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_22"#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?u
?
while_body_348502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_141_matmul_readvariableop_resource_0:	 ?I
Ewhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvars_0D
5while_lstm_cell_141_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_141_matmul_readvariableop_resource:	 ?G
Cwhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvarsB
3while_lstm_cell_141_biasadd_readvariableop_resource:	???*while/lstm_cell_141/BiasAdd/ReadVariableOp?)while/lstm_cell_141/MatMul/ReadVariableOp?
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
#while/lstm_cell_141/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#while/lstm_cell_141/ones_like/Shape?
#while/lstm_cell_141/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#while/lstm_cell_141/ones_like/Const?
while/lstm_cell_141/ones_likeFill,while/lstm_cell_141/ones_like/Shape:output:0,while/lstm_cell_141/ones_like/Const:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/ones_like?
!while/lstm_cell_141/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_141/dropout/Const?
while/lstm_cell_141/dropout/MulMul&while/lstm_cell_141/ones_like:output:0*while/lstm_cell_141/dropout/Const:output:0*
T0*
_output_shapes

: 2!
while/lstm_cell_141/dropout/Mul?
!while/lstm_cell_141/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!while/lstm_cell_141/dropout/Shape?
8while/lstm_cell_141/dropout/random_uniform/RandomUniformRandomUniform*while/lstm_cell_141/dropout/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2Ϣ?2:
8while/lstm_cell_141/dropout/random_uniform/RandomUniform?
*while/lstm_cell_141/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_141/dropout/GreaterEqual/y?
(while/lstm_cell_141/dropout/GreaterEqualGreaterEqualAwhile/lstm_cell_141/dropout/random_uniform/RandomUniform:output:03while/lstm_cell_141/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2*
(while/lstm_cell_141/dropout/GreaterEqual?
 while/lstm_cell_141/dropout/CastCast,while/lstm_cell_141/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2"
 while/lstm_cell_141/dropout/Cast?
!while/lstm_cell_141/dropout/Mul_1Mul#while/lstm_cell_141/dropout/Mul:z:0$while/lstm_cell_141/dropout/Cast:y:0*
T0*
_output_shapes

: 2#
!while/lstm_cell_141/dropout/Mul_1?
#while/lstm_cell_141/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2%
#while/lstm_cell_141/dropout_1/Const?
!while/lstm_cell_141/dropout_1/MulMul&while/lstm_cell_141/ones_like:output:0,while/lstm_cell_141/dropout_1/Const:output:0*
T0*
_output_shapes

: 2#
!while/lstm_cell_141/dropout_1/Mul?
#while/lstm_cell_141/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#while/lstm_cell_141/dropout_1/Shape?
:while/lstm_cell_141/dropout_1/random_uniform/RandomUniformRandomUniform,while/lstm_cell_141/dropout_1/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2?ם2<
:while/lstm_cell_141/dropout_1/random_uniform/RandomUniform?
,while/lstm_cell_141/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2.
,while/lstm_cell_141/dropout_1/GreaterEqual/y?
*while/lstm_cell_141/dropout_1/GreaterEqualGreaterEqualCwhile/lstm_cell_141/dropout_1/random_uniform/RandomUniform:output:05while/lstm_cell_141/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2,
*while/lstm_cell_141/dropout_1/GreaterEqual?
"while/lstm_cell_141/dropout_1/CastCast.while/lstm_cell_141/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2$
"while/lstm_cell_141/dropout_1/Cast?
#while/lstm_cell_141/dropout_1/Mul_1Mul%while/lstm_cell_141/dropout_1/Mul:z:0&while/lstm_cell_141/dropout_1/Cast:y:0*
T0*
_output_shapes

: 2%
#while/lstm_cell_141/dropout_1/Mul_1?
#while/lstm_cell_141/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2%
#while/lstm_cell_141/dropout_2/Const?
!while/lstm_cell_141/dropout_2/MulMul&while/lstm_cell_141/ones_like:output:0,while/lstm_cell_141/dropout_2/Const:output:0*
T0*
_output_shapes

: 2#
!while/lstm_cell_141/dropout_2/Mul?
#while/lstm_cell_141/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#while/lstm_cell_141/dropout_2/Shape?
:while/lstm_cell_141/dropout_2/random_uniform/RandomUniformRandomUniform,while/lstm_cell_141/dropout_2/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2<
:while/lstm_cell_141/dropout_2/random_uniform/RandomUniform?
,while/lstm_cell_141/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2.
,while/lstm_cell_141/dropout_2/GreaterEqual/y?
*while/lstm_cell_141/dropout_2/GreaterEqualGreaterEqualCwhile/lstm_cell_141/dropout_2/random_uniform/RandomUniform:output:05while/lstm_cell_141/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2,
*while/lstm_cell_141/dropout_2/GreaterEqual?
"while/lstm_cell_141/dropout_2/CastCast.while/lstm_cell_141/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2$
"while/lstm_cell_141/dropout_2/Cast?
#while/lstm_cell_141/dropout_2/Mul_1Mul%while/lstm_cell_141/dropout_2/Mul:z:0&while/lstm_cell_141/dropout_2/Cast:y:0*
T0*
_output_shapes

: 2%
#while/lstm_cell_141/dropout_2/Mul_1?
#while/lstm_cell_141/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2%
#while/lstm_cell_141/dropout_3/Const?
!while/lstm_cell_141/dropout_3/MulMul&while/lstm_cell_141/ones_like:output:0,while/lstm_cell_141/dropout_3/Const:output:0*
T0*
_output_shapes

: 2#
!while/lstm_cell_141/dropout_3/Mul?
#while/lstm_cell_141/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#while/lstm_cell_141/dropout_3/Shape?
:while/lstm_cell_141/dropout_3/random_uniform/RandomUniformRandomUniform,while/lstm_cell_141/dropout_3/Shape:output:0*
T0*
_output_shapes

: *
dtype0*

seed**
seed2???2<
:while/lstm_cell_141/dropout_3/random_uniform/RandomUniform?
,while/lstm_cell_141/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2.
,while/lstm_cell_141/dropout_3/GreaterEqual/y?
*while/lstm_cell_141/dropout_3/GreaterEqualGreaterEqualCwhile/lstm_cell_141/dropout_3/random_uniform/RandomUniform:output:05while/lstm_cell_141/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

: 2,
*while/lstm_cell_141/dropout_3/GreaterEqual?
"while/lstm_cell_141/dropout_3/CastCast.while/lstm_cell_141/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

: 2$
"while/lstm_cell_141/dropout_3/Cast?
#while/lstm_cell_141/dropout_3/Mul_1Mul%while/lstm_cell_141/dropout_3/Mul:z:0&while/lstm_cell_141/dropout_3/Cast:y:0*
T0*
_output_shapes

: 2%
#while/lstm_cell_141/dropout_3/Mul_1?
while/lstm_cell_141/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_141/dropout/Mul_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul?
)while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_141/MatMul/ReadVariableOp?
while/lstm_cell_141/MatMulMatMulwhile/lstm_cell_141/mul:z:01while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/MatMul?
while/lstm_cell_141/MatMul_1MatMulwhile_placeholder_2Ewhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvars_0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/MatMul_1?
while/lstm_cell_141/addAddV2$while/lstm_cell_141/MatMul:product:0&while/lstm_cell_141/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/add?
*while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_141/BiasAdd/ReadVariableOp?
while/lstm_cell_141/BiasAddBiasAddwhile/lstm_cell_141/add:z:02while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/BiasAdd?
#while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_141/split/split_dim?
while/lstm_cell_141/splitSplit,while/lstm_cell_141/split/split_dim:output:0$while/lstm_cell_141/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_141/split?
while/lstm_cell_141/SigmoidSigmoid"while/lstm_cell_141/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/Sigmoid?
while/lstm_cell_141/Sigmoid_1Sigmoid"while/lstm_cell_141/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_141/Sigmoid_1?
while/lstm_cell_141/mul_1Mul!while/lstm_cell_141/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul_1?
while/lstm_cell_141/ReluRelu"while/lstm_cell_141/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_141/Relu?
while/lstm_cell_141/mul_2Mulwhile/lstm_cell_141/Sigmoid:y:0&while/lstm_cell_141/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul_2?
while/lstm_cell_141/add_1AddV2while/lstm_cell_141/mul_1:z:0while/lstm_cell_141/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/add_1?
while/lstm_cell_141/Sigmoid_2Sigmoid"while/lstm_cell_141/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_141/Sigmoid_2?
while/lstm_cell_141/Relu_1Reluwhile/lstm_cell_141/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/Relu_1?
while/lstm_cell_141/mul_3Mul!while/lstm_cell_141/Sigmoid_2:y:0(while/lstm_cell_141/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_141/mul_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_141/mul_3:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_141/add_1:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_141_biasadd_readvariableop_resource5while_lstm_cell_141_biasadd_readvariableop_resource_0"?
Cwhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvarsEwhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvars_0"j
2while_lstm_cell_141_matmul_readvariableop_resource4while_lstm_cell_141_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/: : : : : : : : : :	 ?: 2X
*while/lstm_cell_141/BiasAdd/ReadVariableOp*while/lstm_cell_141/BiasAdd/ReadVariableOp2V
)while/lstm_cell_141/MatMul/ReadVariableOp)while/lstm_cell_141/MatMul/ReadVariableOp: 
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
: :%	!

_output_shapes
:	 ?
?	
?
C__inference_dense_1_layer_call_and_return_conditional_losses_348310

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
?
?
while_cond_348025
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_348025___redundant_placeholder04
0while_while_cond_348025___redundant_placeholder14
0while_while_cond_348025___redundant_placeholder24
0while_while_cond_348025___redundant_placeholder3
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
::	

_output_shapes
:
?
?
-__inference_quant_lstm_3_layer_call_fn_350616

inputs
unknown:	 ?
	unknown_0: 
	unknown_1: 
	unknown_2:	 ?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_quant_lstm_3_layer_call_and_return_conditional_losses_3486212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
?u
?
while_body_348778
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_140_matmul_readvariableop_resource_0:	?I
Ewhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvars_0D
5while_lstm_cell_140_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_140_matmul_readvariableop_resource:	?G
Cwhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvarsB
3while_lstm_cell_140_biasadd_readvariableop_resource:	???*while/lstm_cell_140/BiasAdd/ReadVariableOp?)while/lstm_cell_140/MatMul/ReadVariableOp?
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
#while/lstm_cell_140/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#while/lstm_cell_140/ones_like/Shape?
#while/lstm_cell_140/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#while/lstm_cell_140/ones_like/Const?
while/lstm_cell_140/ones_likeFill,while/lstm_cell_140/ones_like/Shape:output:0,while/lstm_cell_140/ones_like/Const:output:0*
T0*
_output_shapes

:2
while/lstm_cell_140/ones_like?
!while/lstm_cell_140/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2#
!while/lstm_cell_140/dropout/Const?
while/lstm_cell_140/dropout/MulMul&while/lstm_cell_140/ones_like:output:0*while/lstm_cell_140/dropout/Const:output:0*
T0*
_output_shapes

:2!
while/lstm_cell_140/dropout/Mul?
!while/lstm_cell_140/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!while/lstm_cell_140/dropout/Shape?
8while/lstm_cell_140/dropout/random_uniform/RandomUniformRandomUniform*while/lstm_cell_140/dropout/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2:
8while/lstm_cell_140/dropout/random_uniform/RandomUniform?
*while/lstm_cell_140/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*while/lstm_cell_140/dropout/GreaterEqual/y?
(while/lstm_cell_140/dropout/GreaterEqualGreaterEqualAwhile/lstm_cell_140/dropout/random_uniform/RandomUniform:output:03while/lstm_cell_140/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

:2*
(while/lstm_cell_140/dropout/GreaterEqual?
 while/lstm_cell_140/dropout/CastCast,while/lstm_cell_140/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2"
 while/lstm_cell_140/dropout/Cast?
!while/lstm_cell_140/dropout/Mul_1Mul#while/lstm_cell_140/dropout/Mul:z:0$while/lstm_cell_140/dropout/Cast:y:0*
T0*
_output_shapes

:2#
!while/lstm_cell_140/dropout/Mul_1?
#while/lstm_cell_140/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2%
#while/lstm_cell_140/dropout_1/Const?
!while/lstm_cell_140/dropout_1/MulMul&while/lstm_cell_140/ones_like:output:0,while/lstm_cell_140/dropout_1/Const:output:0*
T0*
_output_shapes

:2#
!while/lstm_cell_140/dropout_1/Mul?
#while/lstm_cell_140/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#while/lstm_cell_140/dropout_1/Shape?
:while/lstm_cell_140/dropout_1/random_uniform/RandomUniformRandomUniform,while/lstm_cell_140/dropout_1/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2??K2<
:while/lstm_cell_140/dropout_1/random_uniform/RandomUniform?
,while/lstm_cell_140/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2.
,while/lstm_cell_140/dropout_1/GreaterEqual/y?
*while/lstm_cell_140/dropout_1/GreaterEqualGreaterEqualCwhile/lstm_cell_140/dropout_1/random_uniform/RandomUniform:output:05while/lstm_cell_140/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

:2,
*while/lstm_cell_140/dropout_1/GreaterEqual?
"while/lstm_cell_140/dropout_1/CastCast.while/lstm_cell_140/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2$
"while/lstm_cell_140/dropout_1/Cast?
#while/lstm_cell_140/dropout_1/Mul_1Mul%while/lstm_cell_140/dropout_1/Mul:z:0&while/lstm_cell_140/dropout_1/Cast:y:0*
T0*
_output_shapes

:2%
#while/lstm_cell_140/dropout_1/Mul_1?
#while/lstm_cell_140/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2%
#while/lstm_cell_140/dropout_2/Const?
!while/lstm_cell_140/dropout_2/MulMul&while/lstm_cell_140/ones_like:output:0,while/lstm_cell_140/dropout_2/Const:output:0*
T0*
_output_shapes

:2#
!while/lstm_cell_140/dropout_2/Mul?
#while/lstm_cell_140/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#while/lstm_cell_140/dropout_2/Shape?
:while/lstm_cell_140/dropout_2/random_uniform/RandomUniformRandomUniform,while/lstm_cell_140/dropout_2/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2<
:while/lstm_cell_140/dropout_2/random_uniform/RandomUniform?
,while/lstm_cell_140/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2.
,while/lstm_cell_140/dropout_2/GreaterEqual/y?
*while/lstm_cell_140/dropout_2/GreaterEqualGreaterEqualCwhile/lstm_cell_140/dropout_2/random_uniform/RandomUniform:output:05while/lstm_cell_140/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

:2,
*while/lstm_cell_140/dropout_2/GreaterEqual?
"while/lstm_cell_140/dropout_2/CastCast.while/lstm_cell_140/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2$
"while/lstm_cell_140/dropout_2/Cast?
#while/lstm_cell_140/dropout_2/Mul_1Mul%while/lstm_cell_140/dropout_2/Mul:z:0&while/lstm_cell_140/dropout_2/Cast:y:0*
T0*
_output_shapes

:2%
#while/lstm_cell_140/dropout_2/Mul_1?
#while/lstm_cell_140/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2%
#while/lstm_cell_140/dropout_3/Const?
!while/lstm_cell_140/dropout_3/MulMul&while/lstm_cell_140/ones_like:output:0,while/lstm_cell_140/dropout_3/Const:output:0*
T0*
_output_shapes

:2#
!while/lstm_cell_140/dropout_3/Mul?
#while/lstm_cell_140/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#while/lstm_cell_140/dropout_3/Shape?
:while/lstm_cell_140/dropout_3/random_uniform/RandomUniformRandomUniform,while/lstm_cell_140/dropout_3/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???2<
:while/lstm_cell_140/dropout_3/random_uniform/RandomUniform?
,while/lstm_cell_140/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2.
,while/lstm_cell_140/dropout_3/GreaterEqual/y?
*while/lstm_cell_140/dropout_3/GreaterEqualGreaterEqualCwhile/lstm_cell_140/dropout_3/random_uniform/RandomUniform:output:05while/lstm_cell_140/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

:2,
*while/lstm_cell_140/dropout_3/GreaterEqual?
"while/lstm_cell_140/dropout_3/CastCast.while/lstm_cell_140/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2$
"while/lstm_cell_140/dropout_3/Cast?
#while/lstm_cell_140/dropout_3/Mul_1Mul%while/lstm_cell_140/dropout_3/Mul:z:0&while/lstm_cell_140/dropout_3/Cast:y:0*
T0*
_output_shapes

:2%
#while/lstm_cell_140/dropout_3/Mul_1?
while/lstm_cell_140/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_140/dropout/Mul_1:z:0*
T0*
_output_shapes

:2
while/lstm_cell_140/mul?
)while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_140/MatMul/ReadVariableOp?
while/lstm_cell_140/MatMulMatMulwhile/lstm_cell_140/mul:z:01while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/MatMul?
while/lstm_cell_140/MatMul_1MatMulwhile_placeholder_2Ewhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvars_0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/MatMul_1?
while/lstm_cell_140/addAddV2$while/lstm_cell_140/MatMul:product:0&while/lstm_cell_140/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/add?
*while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_140/BiasAdd/ReadVariableOp?
while/lstm_cell_140/BiasAddBiasAddwhile/lstm_cell_140/add:z:02while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/BiasAdd?
#while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_140/split/split_dim?
while/lstm_cell_140/splitSplit,while/lstm_cell_140/split/split_dim:output:0$while/lstm_cell_140/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_140/split?
while/lstm_cell_140/SigmoidSigmoid"while/lstm_cell_140/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/Sigmoid?
while/lstm_cell_140/Sigmoid_1Sigmoid"while/lstm_cell_140/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_140/Sigmoid_1?
while/lstm_cell_140/mul_1Mul!while/lstm_cell_140/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_140/mul_1?
while/lstm_cell_140/ReluRelu"while/lstm_cell_140/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_140/Relu?
while/lstm_cell_140/mul_2Mulwhile/lstm_cell_140/Sigmoid:y:0&while/lstm_cell_140/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/mul_2?
while/lstm_cell_140/add_1AddV2while/lstm_cell_140/mul_1:z:0while/lstm_cell_140/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/add_1?
while/lstm_cell_140/Sigmoid_2Sigmoid"while/lstm_cell_140/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_140/Sigmoid_2?
while/lstm_cell_140/Relu_1Reluwhile/lstm_cell_140/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/Relu_1?
while/lstm_cell_140/mul_3Mul!while/lstm_cell_140/Sigmoid_2:y:0(while/lstm_cell_140/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_140/mul_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_140/mul_3:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_140/add_1:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_140_biasadd_readvariableop_resource5while_lstm_cell_140_biasadd_readvariableop_resource_0"?
Cwhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvarsEwhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvars_0"j
2while_lstm_cell_140_matmul_readvariableop_resource4while_lstm_cell_140_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/: : : : : : : : : :	 ?: 2X
*while/lstm_cell_140/BiasAdd/ReadVariableOp*while/lstm_cell_140/BiasAdd/ReadVariableOp2V
)while/lstm_cell_140/MatMul/ReadVariableOp)while/lstm_cell_140/MatMul/ReadVariableOp: 
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
: :%	!

_output_shapes
:	 ?
?
?
quant_lstm_3_while_cond_3494976
2quant_lstm_3_while_quant_lstm_3_while_loop_counter<
8quant_lstm_3_while_quant_lstm_3_while_maximum_iterations"
quant_lstm_3_while_placeholder$
 quant_lstm_3_while_placeholder_1$
 quant_lstm_3_while_placeholder_2$
 quant_lstm_3_while_placeholder_38
4quant_lstm_3_while_less_quant_lstm_3_strided_slice_1N
Jquant_lstm_3_while_quant_lstm_3_while_cond_349497___redundant_placeholder0N
Jquant_lstm_3_while_quant_lstm_3_while_cond_349497___redundant_placeholder1N
Jquant_lstm_3_while_quant_lstm_3_while_cond_349497___redundant_placeholder2N
Jquant_lstm_3_while_quant_lstm_3_while_cond_349497___redundant_placeholder3
quant_lstm_3_while_identity
?
quant_lstm_3/while/LessLessquant_lstm_3_while_placeholder4quant_lstm_3_while_less_quant_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2
quant_lstm_3/while/Less?
quant_lstm_3/while/IdentityIdentityquant_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
quant_lstm_3/while/Identity"C
quant_lstm_3_while_identity$quant_lstm_3/while/Identity:output:0*(
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
::	

_output_shapes
:
?

?
$__inference_signature_wrapper_349192
input_2
unknown: 
	unknown_0: 
	unknown_1:	 ?
	unknown_2: 
	unknown_3: 
	unknown_4:	?
	unknown_5:	?
	unknown_6:	 ?
	unknown_7: 
	unknown_8: 
	unknown_9:	 ?

unknown_10:	?

unknown_11: 

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_3466202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_2
ߴ
?
H__inference_quant_lstm_2_layer_call_and_return_conditional_losses_350586

inputs>
+lastvaluequant_rank_readvariableop_resource:	 ?/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: ?
,lstm_cell_140_matmul_readvariableop_resource:	?<
-lstm_cell_140_biasadd_readvariableop_resource:	?
identity??LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?$lstm_cell_140/BiasAdd/ReadVariableOp?#lstm_cell_140/MatMul/ReadVariableOp?while?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02$
"LastValueQuant/Rank/ReadVariableOpl
LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rankz
LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range/startz
LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range/delta?
LastValueQuant/rangeRange#LastValueQuant/range/start:output:0LastValueQuant/Rank:output:0#LastValueQuant/range/delta:output:0*
_output_shapes
:2
LastValueQuant/range?
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02&
$LastValueQuant/Rank_1/ReadVariableOpp
LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rank_1~
LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range_1/start~
LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range_1/delta?
LastValueQuant/range_1Range%LastValueQuant/range_1/start:output:0LastValueQuant/Rank_1:output:0%LastValueQuant/range_1/delta:output:0*
_output_shapes
:2
LastValueQuant/range_1?
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
LastValueQuant/Minimum/y?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0!LastValueQuant/Minimum/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumy
LastValueQuant/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
LastValueQuant/Maximum/y?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0!LastValueQuant/Maximum/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/Maximum?
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast?
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	 ?2(
&LastValueQuant/FakeQuantWithMinMaxVarsc
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
lstm_cell_140/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_140/ones_like/Shape?
lstm_cell_140/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_140/ones_like/Const?
lstm_cell_140/ones_likeFill&lstm_cell_140/ones_like/Shape:output:0&lstm_cell_140/ones_like/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_140/ones_like
lstm_cell_140/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_140/dropout/Const?
lstm_cell_140/dropout/MulMul lstm_cell_140/ones_like:output:0$lstm_cell_140/dropout/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout/Mul?
lstm_cell_140/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_140/dropout/Shape?
2lstm_cell_140/dropout/random_uniform/RandomUniformRandomUniform$lstm_cell_140/dropout/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2??24
2lstm_cell_140/dropout/random_uniform/RandomUniform?
$lstm_cell_140/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_140/dropout/GreaterEqual/y?
"lstm_cell_140/dropout/GreaterEqualGreaterEqual;lstm_cell_140/dropout/random_uniform/RandomUniform:output:0-lstm_cell_140/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

:2$
"lstm_cell_140/dropout/GreaterEqual?
lstm_cell_140/dropout/CastCast&lstm_cell_140/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_140/dropout/Cast?
lstm_cell_140/dropout/Mul_1Mullstm_cell_140/dropout/Mul:z:0lstm_cell_140/dropout/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout/Mul_1?
lstm_cell_140/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_140/dropout_1/Const?
lstm_cell_140/dropout_1/MulMul lstm_cell_140/ones_like:output:0&lstm_cell_140/dropout_1/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout_1/Mul?
lstm_cell_140/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_140/dropout_1/Shape?
4lstm_cell_140/dropout_1/random_uniform/RandomUniformRandomUniform&lstm_cell_140/dropout_1/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???26
4lstm_cell_140/dropout_1/random_uniform/RandomUniform?
&lstm_cell_140/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&lstm_cell_140/dropout_1/GreaterEqual/y?
$lstm_cell_140/dropout_1/GreaterEqualGreaterEqual=lstm_cell_140/dropout_1/random_uniform/RandomUniform:output:0/lstm_cell_140/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

:2&
$lstm_cell_140/dropout_1/GreaterEqual?
lstm_cell_140/dropout_1/CastCast(lstm_cell_140/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_140/dropout_1/Cast?
lstm_cell_140/dropout_1/Mul_1Mullstm_cell_140/dropout_1/Mul:z:0 lstm_cell_140/dropout_1/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout_1/Mul_1?
lstm_cell_140/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_140/dropout_2/Const?
lstm_cell_140/dropout_2/MulMul lstm_cell_140/ones_like:output:0&lstm_cell_140/dropout_2/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout_2/Mul?
lstm_cell_140/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_140/dropout_2/Shape?
4lstm_cell_140/dropout_2/random_uniform/RandomUniformRandomUniform&lstm_cell_140/dropout_2/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2?Ù26
4lstm_cell_140/dropout_2/random_uniform/RandomUniform?
&lstm_cell_140/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&lstm_cell_140/dropout_2/GreaterEqual/y?
$lstm_cell_140/dropout_2/GreaterEqualGreaterEqual=lstm_cell_140/dropout_2/random_uniform/RandomUniform:output:0/lstm_cell_140/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

:2&
$lstm_cell_140/dropout_2/GreaterEqual?
lstm_cell_140/dropout_2/CastCast(lstm_cell_140/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_140/dropout_2/Cast?
lstm_cell_140/dropout_2/Mul_1Mullstm_cell_140/dropout_2/Mul:z:0 lstm_cell_140/dropout_2/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout_2/Mul_1?
lstm_cell_140/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_140/dropout_3/Const?
lstm_cell_140/dropout_3/MulMul lstm_cell_140/ones_like:output:0&lstm_cell_140/dropout_3/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout_3/Mul?
lstm_cell_140/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_140/dropout_3/Shape?
4lstm_cell_140/dropout_3/random_uniform/RandomUniformRandomUniform&lstm_cell_140/dropout_3/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???26
4lstm_cell_140/dropout_3/random_uniform/RandomUniform?
&lstm_cell_140/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&lstm_cell_140/dropout_3/GreaterEqual/y?
$lstm_cell_140/dropout_3/GreaterEqualGreaterEqual=lstm_cell_140/dropout_3/random_uniform/RandomUniform:output:0/lstm_cell_140/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

:2&
$lstm_cell_140/dropout_3/GreaterEqual?
lstm_cell_140/dropout_3/CastCast(lstm_cell_140/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_140/dropout_3/Cast?
lstm_cell_140/dropout_3/Mul_1Mullstm_cell_140/dropout_3/Mul:z:0 lstm_cell_140/dropout_3/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout_3/Mul_1?
lstm_cell_140/mulMulstrided_slice_2:output:0lstm_cell_140/dropout/Mul_1:z:0*
T0*
_output_shapes

:2
lstm_cell_140/mul?
#lstm_cell_140/MatMul/ReadVariableOpReadVariableOp,lstm_cell_140_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_140/MatMul/ReadVariableOp?
lstm_cell_140/MatMulMatMullstm_cell_140/mul:z:0+lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_140/MatMul?
lstm_cell_140/MatMul_1MatMulzeros:output:00LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes
:	?2
lstm_cell_140/MatMul_1?
lstm_cell_140/addAddV2lstm_cell_140/MatMul:product:0 lstm_cell_140/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_140/add?
$lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_140/BiasAdd/ReadVariableOp?
lstm_cell_140/BiasAddBiasAddlstm_cell_140/add:z:0,lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_140/BiasAdd?
lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_140/split/split_dim?
lstm_cell_140/splitSplit&lstm_cell_140/split/split_dim:output:0lstm_cell_140/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_140/split?
lstm_cell_140/SigmoidSigmoidlstm_cell_140/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_140/Sigmoid?
lstm_cell_140/Sigmoid_1Sigmoidlstm_cell_140/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_140/Sigmoid_1?
lstm_cell_140/mul_1Mullstm_cell_140/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_140/mul_1w
lstm_cell_140/ReluRelulstm_cell_140/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_140/Relu?
lstm_cell_140/mul_2Mullstm_cell_140/Sigmoid:y:0 lstm_cell_140/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_140/mul_2?
lstm_cell_140/add_1AddV2lstm_cell_140/mul_1:z:0lstm_cell_140/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_140/add_1?
lstm_cell_140/Sigmoid_2Sigmoidlstm_cell_140/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_140/Sigmoid_2v
lstm_cell_140/Relu_1Relulstm_cell_140/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_140/Relu_1?
lstm_cell_140/mul_3Mullstm_cell_140/Sigmoid_2:y:0"lstm_cell_140/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_140/mul_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_140_matmul_readvariableop_resource0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0-lstm_cell_140_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*C
_output_shapes1
/: : : : : : : : : :	 ?: *$
_read_only_resource_inputs

*
bodyR
while_body_350467*
condR
while_cond_350466*B
output_shapes1
/: : : : : : : : : :	 ?: *
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
runtime?
IdentityIdentitytranspose_1:y:0^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2%^lstm_cell_140/BiasAdd/ReadVariableOp$^lstm_cell_140/MatMul/ReadVariableOp^while*
T0*"
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22L
$lstm_cell_140/BiasAdd/ReadVariableOp$lstm_cell_140/BiasAdd/ReadVariableOp2J
#lstm_cell_140/MatMul/ReadVariableOp#lstm_cell_140/MatMul/ReadVariableOp2
whilewhile:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?j
?
H__inference_quant_lstm_2_layer_call_and_return_conditional_losses_348113

inputsQ
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	 ?J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: ?
,lstm_cell_140_matmul_readvariableop_resource:	?<
-lstm_cell_140_biasadd_readvariableop_resource:	?
identity??5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?$lstm_cell_140/BiasAdd/ReadVariableOp?#lstm_cell_140/MatMul/ReadVariableOp?while?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	 ?*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	 ?2(
&LastValueQuant/FakeQuantWithMinMaxVarsc
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
lstm_cell_140/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_140/ones_like/Shape?
lstm_cell_140/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_140/ones_like/Const?
lstm_cell_140/ones_likeFill&lstm_cell_140/ones_like/Shape:output:0&lstm_cell_140/ones_like/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_140/ones_like?
lstm_cell_140/mulMulstrided_slice_2:output:0 lstm_cell_140/ones_like:output:0*
T0*
_output_shapes

:2
lstm_cell_140/mul?
#lstm_cell_140/MatMul/ReadVariableOpReadVariableOp,lstm_cell_140_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_140/MatMul/ReadVariableOp?
lstm_cell_140/MatMulMatMullstm_cell_140/mul:z:0+lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_140/MatMul?
lstm_cell_140/MatMul_1MatMulzeros:output:00LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes
:	?2
lstm_cell_140/MatMul_1?
lstm_cell_140/addAddV2lstm_cell_140/MatMul:product:0 lstm_cell_140/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_140/add?
$lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_140/BiasAdd/ReadVariableOp?
lstm_cell_140/BiasAddBiasAddlstm_cell_140/add:z:0,lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_140/BiasAdd?
lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_140/split/split_dim?
lstm_cell_140/splitSplit&lstm_cell_140/split/split_dim:output:0lstm_cell_140/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_140/split?
lstm_cell_140/SigmoidSigmoidlstm_cell_140/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_140/Sigmoid?
lstm_cell_140/Sigmoid_1Sigmoidlstm_cell_140/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_140/Sigmoid_1?
lstm_cell_140/mul_1Mullstm_cell_140/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_140/mul_1w
lstm_cell_140/ReluRelulstm_cell_140/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_140/Relu?
lstm_cell_140/mul_2Mullstm_cell_140/Sigmoid:y:0 lstm_cell_140/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_140/mul_2?
lstm_cell_140/add_1AddV2lstm_cell_140/mul_1:z:0lstm_cell_140/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_140/add_1?
lstm_cell_140/Sigmoid_2Sigmoidlstm_cell_140/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_140/Sigmoid_2v
lstm_cell_140/Relu_1Relulstm_cell_140/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_140/Relu_1?
lstm_cell_140/mul_3Mullstm_cell_140/Sigmoid_2:y:0"lstm_cell_140/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_140/mul_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_140_matmul_readvariableop_resource0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0-lstm_cell_140_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*C
_output_shapes1
/: : : : : : : : : :	 ?: *$
_read_only_resource_inputs

*
bodyR
while_body_348026*
condR
while_cond_348025*B
output_shapes1
/: : : : : : : : : :	 ?: *
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
runtime?
IdentityIdentitytranspose_1:y:06^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2%^lstm_cell_140/BiasAdd/ReadVariableOp$^lstm_cell_140/MatMul/ReadVariableOp^while*
T0*"
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22L
$lstm_cell_140/BiasAdd/ReadVariableOp$lstm_cell_140/BiasAdd/ReadVariableOp2J
#lstm_cell_140/MatMul/ReadVariableOp#lstm_cell_140/MatMul/ReadVariableOp2
whilewhile:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?C
?
while_body_350692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_141_matmul_readvariableop_resource_0:	 ?I
Ewhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvars_0D
5while_lstm_cell_141_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_141_matmul_readvariableop_resource:	 ?G
Cwhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvarsB
3while_lstm_cell_141_biasadd_readvariableop_resource:	???*while/lstm_cell_141/BiasAdd/ReadVariableOp?)while/lstm_cell_141/MatMul/ReadVariableOp?
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
#while/lstm_cell_141/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#while/lstm_cell_141/ones_like/Shape?
#while/lstm_cell_141/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#while/lstm_cell_141/ones_like/Const?
while/lstm_cell_141/ones_likeFill,while/lstm_cell_141/ones_like/Shape:output:0,while/lstm_cell_141/ones_like/Const:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/ones_like?
while/lstm_cell_141/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_141/ones_like:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul?
)while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_141/MatMul/ReadVariableOp?
while/lstm_cell_141/MatMulMatMulwhile/lstm_cell_141/mul:z:01while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/MatMul?
while/lstm_cell_141/MatMul_1MatMulwhile_placeholder_2Ewhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvars_0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/MatMul_1?
while/lstm_cell_141/addAddV2$while/lstm_cell_141/MatMul:product:0&while/lstm_cell_141/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/add?
*while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_141/BiasAdd/ReadVariableOp?
while/lstm_cell_141/BiasAddBiasAddwhile/lstm_cell_141/add:z:02while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/BiasAdd?
#while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_141/split/split_dim?
while/lstm_cell_141/splitSplit,while/lstm_cell_141/split/split_dim:output:0$while/lstm_cell_141/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_141/split?
while/lstm_cell_141/SigmoidSigmoid"while/lstm_cell_141/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/Sigmoid?
while/lstm_cell_141/Sigmoid_1Sigmoid"while/lstm_cell_141/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_141/Sigmoid_1?
while/lstm_cell_141/mul_1Mul!while/lstm_cell_141/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul_1?
while/lstm_cell_141/ReluRelu"while/lstm_cell_141/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_141/Relu?
while/lstm_cell_141/mul_2Mulwhile/lstm_cell_141/Sigmoid:y:0&while/lstm_cell_141/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul_2?
while/lstm_cell_141/add_1AddV2while/lstm_cell_141/mul_1:z:0while/lstm_cell_141/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/add_1?
while/lstm_cell_141/Sigmoid_2Sigmoid"while/lstm_cell_141/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_141/Sigmoid_2?
while/lstm_cell_141/Relu_1Reluwhile/lstm_cell_141/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/Relu_1?
while/lstm_cell_141/mul_3Mul!while/lstm_cell_141/Sigmoid_2:y:0(while/lstm_cell_141/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_141/mul_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_141/mul_3:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_141/add_1:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_141_biasadd_readvariableop_resource5while_lstm_cell_141_biasadd_readvariableop_resource_0"?
Cwhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvarsEwhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvars_0"j
2while_lstm_cell_141_matmul_readvariableop_resource4while_lstm_cell_141_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/: : : : : : : : : :	 ?: 2X
*while/lstm_cell_141/BiasAdd/ReadVariableOp*while/lstm_cell_141/BiasAdd/ReadVariableOp2V
)while/lstm_cell_141/MatMul/ReadVariableOp)while/lstm_cell_141/MatMul/ReadVariableOp: 
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
: :%	!

_output_shapes
:	 ?
?

?
-__inference_sequential_1_layer_call_fn_349258

inputs
unknown: 
	unknown_0: 
	unknown_1:	 ?
	unknown_2: 
	unknown_3: 
	unknown_4:	?
	unknown_5:	?
	unknown_6:	 ?
	unknown_7: 
	unknown_8: 
	unknown_9:	 ?

unknown_10:	?

unknown_11: 

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3490212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
?
while_cond_350466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_350466___redundant_placeholder04
0while_while_cond_350466___redundant_placeholder14
0while_while_cond_350466___redundant_placeholder24
0while_while_cond_350466___redundant_placeholder3
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
::	

_output_shapes
:
?&
?
M__inference_quantize_layer_32_layer_call_and_return_conditional_losses_350148

inputs;
1allvaluesquantize_minimum_readvariableop_resource: ;
1allvaluesquantize_maximum_readvariableop_resource: 
identity??#AllValuesQuantize/AssignMaxAllValue?#AllValuesQuantize/AssignMinAllValue?8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?(AllValuesQuantize/Maximum/ReadVariableOp?(AllValuesQuantize/Minimum/ReadVariableOp?
AllValuesQuantize/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
AllValuesQuantize/Const?
AllValuesQuantize/BatchMinMininputs AllValuesQuantize/Const:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMin?
AllValuesQuantize/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2
AllValuesQuantize/Const_1?
AllValuesQuantize/BatchMaxMaxinputs"AllValuesQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMax?
(AllValuesQuantize/Minimum/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Minimum/ReadVariableOp?
AllValuesQuantize/MinimumMinimum0AllValuesQuantize/Minimum/ReadVariableOp:value:0#AllValuesQuantize/BatchMin:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum?
AllValuesQuantize/Minimum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Minimum_1/y?
AllValuesQuantize/Minimum_1MinimumAllValuesQuantize/Minimum:z:0&AllValuesQuantize/Minimum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum_1?
(AllValuesQuantize/Maximum/ReadVariableOpReadVariableOp1allvaluesquantize_maximum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Maximum/ReadVariableOp?
AllValuesQuantize/MaximumMaximum0AllValuesQuantize/Maximum/ReadVariableOp:value:0#AllValuesQuantize/BatchMax:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum?
AllValuesQuantize/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Maximum_1/y?
AllValuesQuantize/Maximum_1MaximumAllValuesQuantize/Maximum:z:0&AllValuesQuantize/Maximum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum_1?
#AllValuesQuantize/AssignMinAllValueAssignVariableOp1allvaluesquantize_minimum_readvariableop_resourceAllValuesQuantize/Minimum_1:z:0)^AllValuesQuantize/Minimum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMinAllValue?
#AllValuesQuantize/AssignMaxAllValueAssignVariableOp1allvaluesquantize_maximum_readvariableop_resourceAllValuesQuantize/Maximum_1:z:0)^AllValuesQuantize/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMaxAllValue?
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource$^AllValuesQuantize/AssignMinAllValue*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp1allvaluesquantize_maximum_readvariableop_resource$^AllValuesQuantize/AssignMaxAllValue*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*"
_output_shapes
:2+
)AllValuesQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0$^AllValuesQuantize/AssignMaxAllValue$^AllValuesQuantize/AssignMinAllValue9^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1)^AllValuesQuantize/Maximum/ReadVariableOp)^AllValuesQuantize/Minimum/ReadVariableOp*
T0*"
_output_shapes
:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 2J
#AllValuesQuantize/AssignMaxAllValue#AllValuesQuantize/AssignMaxAllValue2J
#AllValuesQuantize/AssignMinAllValue#AllValuesQuantize/AssignMinAllValue2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12T
(AllValuesQuantize/Maximum/ReadVariableOp(AllValuesQuantize/Maximum/ReadVariableOp2T
(AllValuesQuantize/Minimum/ReadVariableOp(AllValuesQuantize/Minimum/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?W
?
quant_lstm_3_while_body_3494986
2quant_lstm_3_while_quant_lstm_3_while_loop_counter<
8quant_lstm_3_while_quant_lstm_3_while_maximum_iterations"
quant_lstm_3_while_placeholder$
 quant_lstm_3_while_placeholder_1$
 quant_lstm_3_while_placeholder_2$
 quant_lstm_3_while_placeholder_35
1quant_lstm_3_while_quant_lstm_3_strided_slice_1_0q
mquant_lstm_3_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_3_tensorarrayunstack_tensorlistfromtensor_0T
Aquant_lstm_3_while_lstm_cell_141_matmul_readvariableop_resource_0:	 ?c
_quant_lstm_3_while_lstm_cell_141_matmul_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_0Q
Bquant_lstm_3_while_lstm_cell_141_biasadd_readvariableop_resource_0:	?
quant_lstm_3_while_identity!
quant_lstm_3_while_identity_1!
quant_lstm_3_while_identity_2!
quant_lstm_3_while_identity_3!
quant_lstm_3_while_identity_4!
quant_lstm_3_while_identity_53
/quant_lstm_3_while_quant_lstm_3_strided_slice_1o
kquant_lstm_3_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_3_tensorarrayunstack_tensorlistfromtensorR
?quant_lstm_3_while_lstm_cell_141_matmul_readvariableop_resource:	 ?a
]quant_lstm_3_while_lstm_cell_141_matmul_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvarsO
@quant_lstm_3_while_lstm_cell_141_biasadd_readvariableop_resource:	???7quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp?6quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp?
Dquant_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2F
Dquant_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape?
6quant_lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmquant_lstm_3_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_3_tensorarrayunstack_tensorlistfromtensor_0quant_lstm_3_while_placeholderMquant_lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

: *
element_dtype028
6quant_lstm_3/while/TensorArrayV2Read/TensorListGetItem?
0quant_lstm_3/while/lstm_cell_141/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0quant_lstm_3/while/lstm_cell_141/ones_like/Shape?
0quant_lstm_3/while/lstm_cell_141/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0quant_lstm_3/while/lstm_cell_141/ones_like/Const?
*quant_lstm_3/while/lstm_cell_141/ones_likeFill9quant_lstm_3/while/lstm_cell_141/ones_like/Shape:output:09quant_lstm_3/while/lstm_cell_141/ones_like/Const:output:0*
T0*
_output_shapes

: 2,
*quant_lstm_3/while/lstm_cell_141/ones_like?
$quant_lstm_3/while/lstm_cell_141/mulMul=quant_lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:03quant_lstm_3/while/lstm_cell_141/ones_like:output:0*
T0*
_output_shapes

: 2&
$quant_lstm_3/while/lstm_cell_141/mul?
6quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOpAquant_lstm_3_while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype028
6quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp?
'quant_lstm_3/while/lstm_cell_141/MatMulMatMul(quant_lstm_3/while/lstm_cell_141/mul:z:0>quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2)
'quant_lstm_3/while/lstm_cell_141/MatMul?
)quant_lstm_3/while/lstm_cell_141/MatMul_1MatMul quant_lstm_3_while_placeholder_2_quant_lstm_3_while_lstm_cell_141_matmul_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_0*
T0*
_output_shapes
:	?2+
)quant_lstm_3/while/lstm_cell_141/MatMul_1?
$quant_lstm_3/while/lstm_cell_141/addAddV21quant_lstm_3/while/lstm_cell_141/MatMul:product:03quant_lstm_3/while/lstm_cell_141/MatMul_1:product:0*
T0*
_output_shapes
:	?2&
$quant_lstm_3/while/lstm_cell_141/add?
7quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOpBquant_lstm_3_while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype029
7quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp?
(quant_lstm_3/while/lstm_cell_141/BiasAddBiasAdd(quant_lstm_3/while/lstm_cell_141/add:z:0?quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2*
(quant_lstm_3/while/lstm_cell_141/BiasAdd?
0quant_lstm_3/while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0quant_lstm_3/while/lstm_cell_141/split/split_dim?
&quant_lstm_3/while/lstm_cell_141/splitSplit9quant_lstm_3/while/lstm_cell_141/split/split_dim:output:01quant_lstm_3/while/lstm_cell_141/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2(
&quant_lstm_3/while/lstm_cell_141/split?
(quant_lstm_3/while/lstm_cell_141/SigmoidSigmoid/quant_lstm_3/while/lstm_cell_141/split:output:0*
T0*
_output_shapes

: 2*
(quant_lstm_3/while/lstm_cell_141/Sigmoid?
*quant_lstm_3/while/lstm_cell_141/Sigmoid_1Sigmoid/quant_lstm_3/while/lstm_cell_141/split:output:1*
T0*
_output_shapes

: 2,
*quant_lstm_3/while/lstm_cell_141/Sigmoid_1?
&quant_lstm_3/while/lstm_cell_141/mul_1Mul.quant_lstm_3/while/lstm_cell_141/Sigmoid_1:y:0 quant_lstm_3_while_placeholder_3*
T0*
_output_shapes

: 2(
&quant_lstm_3/while/lstm_cell_141/mul_1?
%quant_lstm_3/while/lstm_cell_141/ReluRelu/quant_lstm_3/while/lstm_cell_141/split:output:2*
T0*
_output_shapes

: 2'
%quant_lstm_3/while/lstm_cell_141/Relu?
&quant_lstm_3/while/lstm_cell_141/mul_2Mul,quant_lstm_3/while/lstm_cell_141/Sigmoid:y:03quant_lstm_3/while/lstm_cell_141/Relu:activations:0*
T0*
_output_shapes

: 2(
&quant_lstm_3/while/lstm_cell_141/mul_2?
&quant_lstm_3/while/lstm_cell_141/add_1AddV2*quant_lstm_3/while/lstm_cell_141/mul_1:z:0*quant_lstm_3/while/lstm_cell_141/mul_2:z:0*
T0*
_output_shapes

: 2(
&quant_lstm_3/while/lstm_cell_141/add_1?
*quant_lstm_3/while/lstm_cell_141/Sigmoid_2Sigmoid/quant_lstm_3/while/lstm_cell_141/split:output:3*
T0*
_output_shapes

: 2,
*quant_lstm_3/while/lstm_cell_141/Sigmoid_2?
'quant_lstm_3/while/lstm_cell_141/Relu_1Relu*quant_lstm_3/while/lstm_cell_141/add_1:z:0*
T0*
_output_shapes

: 2)
'quant_lstm_3/while/lstm_cell_141/Relu_1?
&quant_lstm_3/while/lstm_cell_141/mul_3Mul.quant_lstm_3/while/lstm_cell_141/Sigmoid_2:y:05quant_lstm_3/while/lstm_cell_141/Relu_1:activations:0*
T0*
_output_shapes

: 2(
&quant_lstm_3/while/lstm_cell_141/mul_3?
7quant_lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem quant_lstm_3_while_placeholder_1quant_lstm_3_while_placeholder*quant_lstm_3/while/lstm_cell_141/mul_3:z:0*
_output_shapes
: *
element_dtype029
7quant_lstm_3/while/TensorArrayV2Write/TensorListSetItemv
quant_lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
quant_lstm_3/while/add/y?
quant_lstm_3/while/addAddV2quant_lstm_3_while_placeholder!quant_lstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_3/while/addz
quant_lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
quant_lstm_3/while/add_1/y?
quant_lstm_3/while/add_1AddV22quant_lstm_3_while_quant_lstm_3_while_loop_counter#quant_lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_3/while/add_1?
quant_lstm_3/while/IdentityIdentityquant_lstm_3/while/add_1:z:08^quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp7^quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_3/while/Identity?
quant_lstm_3/while/Identity_1Identity8quant_lstm_3_while_quant_lstm_3_while_maximum_iterations8^quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp7^quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_3/while/Identity_1?
quant_lstm_3/while/Identity_2Identityquant_lstm_3/while/add:z:08^quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp7^quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_3/while/Identity_2?
quant_lstm_3/while/Identity_3IdentityGquant_lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:08^quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp7^quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_3/while/Identity_3?
quant_lstm_3/while/Identity_4Identity*quant_lstm_3/while/lstm_cell_141/mul_3:z:08^quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp7^quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
quant_lstm_3/while/Identity_4?
quant_lstm_3/while/Identity_5Identity*quant_lstm_3/while/lstm_cell_141/add_1:z:08^quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp7^quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
quant_lstm_3/while/Identity_5"C
quant_lstm_3_while_identity$quant_lstm_3/while/Identity:output:0"G
quant_lstm_3_while_identity_1&quant_lstm_3/while/Identity_1:output:0"G
quant_lstm_3_while_identity_2&quant_lstm_3/while/Identity_2:output:0"G
quant_lstm_3_while_identity_3&quant_lstm_3/while/Identity_3:output:0"G
quant_lstm_3_while_identity_4&quant_lstm_3/while/Identity_4:output:0"G
quant_lstm_3_while_identity_5&quant_lstm_3/while/Identity_5:output:0"?
@quant_lstm_3_while_lstm_cell_141_biasadd_readvariableop_resourceBquant_lstm_3_while_lstm_cell_141_biasadd_readvariableop_resource_0"?
]quant_lstm_3_while_lstm_cell_141_matmul_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_quant_lstm_3_while_lstm_cell_141_matmul_1_quant_lstm_3_lastvaluequant_fakequantwithminmaxvars_0"?
?quant_lstm_3_while_lstm_cell_141_matmul_readvariableop_resourceAquant_lstm_3_while_lstm_cell_141_matmul_readvariableop_resource_0"d
/quant_lstm_3_while_quant_lstm_3_strided_slice_11quant_lstm_3_while_quant_lstm_3_strided_slice_1_0"?
kquant_lstm_3_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_3_tensorarrayunstack_tensorlistfromtensormquant_lstm_3_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/: : : : : : : : : :	 ?: 2r
7quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp7quant_lstm_3/while/lstm_cell_141/BiasAdd/ReadVariableOp2p
6quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp6quant_lstm_3/while/lstm_cell_141/MatMul/ReadVariableOp: 
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
: :%	!

_output_shapes
:	 ?
?
?
+sequential_1_quant_lstm_3_while_cond_346526P
Lsequential_1_quant_lstm_3_while_sequential_1_quant_lstm_3_while_loop_counterV
Rsequential_1_quant_lstm_3_while_sequential_1_quant_lstm_3_while_maximum_iterations/
+sequential_1_quant_lstm_3_while_placeholder1
-sequential_1_quant_lstm_3_while_placeholder_11
-sequential_1_quant_lstm_3_while_placeholder_21
-sequential_1_quant_lstm_3_while_placeholder_3R
Nsequential_1_quant_lstm_3_while_less_sequential_1_quant_lstm_3_strided_slice_1h
dsequential_1_quant_lstm_3_while_sequential_1_quant_lstm_3_while_cond_346526___redundant_placeholder0h
dsequential_1_quant_lstm_3_while_sequential_1_quant_lstm_3_while_cond_346526___redundant_placeholder1h
dsequential_1_quant_lstm_3_while_sequential_1_quant_lstm_3_while_cond_346526___redundant_placeholder2h
dsequential_1_quant_lstm_3_while_sequential_1_quant_lstm_3_while_cond_346526___redundant_placeholder3,
(sequential_1_quant_lstm_3_while_identity
?
$sequential_1/quant_lstm_3/while/LessLess+sequential_1_quant_lstm_3_while_placeholderNsequential_1_quant_lstm_3_while_less_sequential_1_quant_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2&
$sequential_1/quant_lstm_3/while/Less?
(sequential_1/quant_lstm_3/while/IdentityIdentity(sequential_1/quant_lstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2*
(sequential_1/quant_lstm_3/while/Identity"]
(sequential_1_quant_lstm_3_while_identity1sequential_1/quant_lstm_3/while/Identity:output:0*(
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
::	

_output_shapes
:
?
?
2__inference_quantize_layer_32_layer_call_fn_350109

inputs
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_quantize_layer_32_layer_call_and_return_conditional_losses_3479442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*"
_output_shapes
:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?j
?
H__inference_quant_lstm_3_layer_call_and_return_conditional_losses_348288

inputsQ
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	 ?J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: ?
,lstm_cell_141_matmul_readvariableop_resource:	 ?<
-lstm_cell_141_biasadd_readvariableop_resource:	?
identity??5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?$lstm_cell_141/BiasAdd/ReadVariableOp?#lstm_cell_141/MatMul/ReadVariableOp?while?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	 ?*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	 ?2(
&LastValueQuant/FakeQuantWithMinMaxVarsc
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
lstm_cell_141/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2
lstm_cell_141/ones_like/Shape?
lstm_cell_141/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_141/ones_like/Const?
lstm_cell_141/ones_likeFill&lstm_cell_141/ones_like/Shape:output:0&lstm_cell_141/ones_like/Const:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/ones_like?
lstm_cell_141/mulMulstrided_slice_2:output:0 lstm_cell_141/ones_like:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul?
#lstm_cell_141/MatMul/ReadVariableOpReadVariableOp,lstm_cell_141_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_cell_141/MatMul/ReadVariableOp?
lstm_cell_141/MatMulMatMullstm_cell_141/mul:z:0+lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_141/MatMul?
lstm_cell_141/MatMul_1MatMulzeros:output:00LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes
:	?2
lstm_cell_141/MatMul_1?
lstm_cell_141/addAddV2lstm_cell_141/MatMul:product:0 lstm_cell_141/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_141/add?
$lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_141_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_141/BiasAdd/ReadVariableOp?
lstm_cell_141/BiasAddBiasAddlstm_cell_141/add:z:0,lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_141/BiasAdd?
lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_141/split/split_dim?
lstm_cell_141/splitSplit&lstm_cell_141/split/split_dim:output:0lstm_cell_141/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_141/split?
lstm_cell_141/SigmoidSigmoidlstm_cell_141/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/Sigmoid?
lstm_cell_141/Sigmoid_1Sigmoidlstm_cell_141/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_141/Sigmoid_1?
lstm_cell_141/mul_1Mullstm_cell_141/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul_1w
lstm_cell_141/ReluRelulstm_cell_141/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_141/Relu?
lstm_cell_141/mul_2Mullstm_cell_141/Sigmoid:y:0 lstm_cell_141/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul_2?
lstm_cell_141/add_1AddV2lstm_cell_141/mul_1:z:0lstm_cell_141/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_141/add_1?
lstm_cell_141/Sigmoid_2Sigmoidlstm_cell_141/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_141/Sigmoid_2v
lstm_cell_141/Relu_1Relulstm_cell_141/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_141/Relu_1?
lstm_cell_141/mul_3Mullstm_cell_141/Sigmoid_2:y:0"lstm_cell_141/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_141/mul_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_141_matmul_readvariableop_resource0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0-lstm_cell_141_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*C
_output_shapes1
/: : : : : : : : : :	 ?: *$
_read_only_resource_inputs

*
bodyR
while_body_348201*
condR
while_cond_348200*B
output_shapes1
/: : : : : : : : : :	 ?: *
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
runtime?
IdentityIdentitystrided_slice_3:output:06^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2%^lstm_cell_141/BiasAdd/ReadVariableOp$^lstm_cell_141/MatMul/ReadVariableOp^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
: : : : : : 2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22L
$lstm_cell_141/BiasAdd/ReadVariableOp$lstm_cell_141/BiasAdd/ReadVariableOp2J
#lstm_cell_141/MatMul/ReadVariableOp#lstm_cell_141/MatMul/ReadVariableOp2
whilewhile:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
?
?
while_cond_350904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_350904___redundant_placeholder04
0while_while_cond_350904___redundant_placeholder14
0while_while_cond_350904___redundant_placeholder24
0while_while_cond_350904___redundant_placeholder3
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
::	

_output_shapes
:
?
?
while_cond_350691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_350691___redundant_placeholder04
0while_while_cond_350691___redundant_placeholder14
0while_while_cond_350691___redundant_placeholder24
0while_while_cond_350691___redundant_placeholder3
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
::	

_output_shapes
:
?C
?
while_body_350254
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_140_matmul_readvariableop_resource_0:	?I
Ewhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvars_0D
5while_lstm_cell_140_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_140_matmul_readvariableop_resource:	?G
Cwhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvarsB
3while_lstm_cell_140_biasadd_readvariableop_resource:	???*while/lstm_cell_140/BiasAdd/ReadVariableOp?)while/lstm_cell_140/MatMul/ReadVariableOp?
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
#while/lstm_cell_140/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#while/lstm_cell_140/ones_like/Shape?
#while/lstm_cell_140/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#while/lstm_cell_140/ones_like/Const?
while/lstm_cell_140/ones_likeFill,while/lstm_cell_140/ones_like/Shape:output:0,while/lstm_cell_140/ones_like/Const:output:0*
T0*
_output_shapes

:2
while/lstm_cell_140/ones_like?
while/lstm_cell_140/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_140/ones_like:output:0*
T0*
_output_shapes

:2
while/lstm_cell_140/mul?
)while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_140/MatMul/ReadVariableOp?
while/lstm_cell_140/MatMulMatMulwhile/lstm_cell_140/mul:z:01while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/MatMul?
while/lstm_cell_140/MatMul_1MatMulwhile_placeholder_2Ewhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvars_0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/MatMul_1?
while/lstm_cell_140/addAddV2$while/lstm_cell_140/MatMul:product:0&while/lstm_cell_140/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/add?
*while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_140/BiasAdd/ReadVariableOp?
while/lstm_cell_140/BiasAddBiasAddwhile/lstm_cell_140/add:z:02while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_140/BiasAdd?
#while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_140/split/split_dim?
while/lstm_cell_140/splitSplit,while/lstm_cell_140/split/split_dim:output:0$while/lstm_cell_140/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_140/split?
while/lstm_cell_140/SigmoidSigmoid"while/lstm_cell_140/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/Sigmoid?
while/lstm_cell_140/Sigmoid_1Sigmoid"while/lstm_cell_140/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_140/Sigmoid_1?
while/lstm_cell_140/mul_1Mul!while/lstm_cell_140/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_140/mul_1?
while/lstm_cell_140/ReluRelu"while/lstm_cell_140/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_140/Relu?
while/lstm_cell_140/mul_2Mulwhile/lstm_cell_140/Sigmoid:y:0&while/lstm_cell_140/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/mul_2?
while/lstm_cell_140/add_1AddV2while/lstm_cell_140/mul_1:z:0while/lstm_cell_140/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/add_1?
while/lstm_cell_140/Sigmoid_2Sigmoid"while/lstm_cell_140/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_140/Sigmoid_2?
while/lstm_cell_140/Relu_1Reluwhile/lstm_cell_140/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/Relu_1?
while/lstm_cell_140/mul_3Mul!while/lstm_cell_140/Sigmoid_2:y:0(while/lstm_cell_140/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_140/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_140/mul_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_140/mul_3:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_140/add_1:z:0+^while/lstm_cell_140/BiasAdd/ReadVariableOp*^while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_140_biasadd_readvariableop_resource5while_lstm_cell_140_biasadd_readvariableop_resource_0"?
Cwhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvarsEwhile_lstm_cell_140_matmul_1_lastvaluequant_fakequantwithminmaxvars_0"j
2while_lstm_cell_140_matmul_readvariableop_resource4while_lstm_cell_140_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/: : : : : : : : : :	 ?: 2X
*while/lstm_cell_140/BiasAdd/ReadVariableOp*while/lstm_cell_140/BiasAdd/ReadVariableOp2V
)while/lstm_cell_140/MatMul/ReadVariableOp)while/lstm_cell_140/MatMul/ReadVariableOp: 
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
: :%	!

_output_shapes
:	 ?
?

?
-__inference_sequential_1_layer_call_fn_349085
input_2
unknown: 
	unknown_0: 
	unknown_1:	 ?
	unknown_2: 
	unknown_3: 
	unknown_4:	?
	unknown_5:	?
	unknown_6:	 ?
	unknown_7: 
	unknown_8: 
	unknown_9:	 ?

unknown_10:	?

unknown_11: 

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3490212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_2
?W
?
quant_lstm_2_while_body_3493396
2quant_lstm_2_while_quant_lstm_2_while_loop_counter<
8quant_lstm_2_while_quant_lstm_2_while_maximum_iterations"
quant_lstm_2_while_placeholder$
 quant_lstm_2_while_placeholder_1$
 quant_lstm_2_while_placeholder_2$
 quant_lstm_2_while_placeholder_35
1quant_lstm_2_while_quant_lstm_2_strided_slice_1_0q
mquant_lstm_2_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_2_tensorarrayunstack_tensorlistfromtensor_0T
Aquant_lstm_2_while_lstm_cell_140_matmul_readvariableop_resource_0:	?c
_quant_lstm_2_while_lstm_cell_140_matmul_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_0Q
Bquant_lstm_2_while_lstm_cell_140_biasadd_readvariableop_resource_0:	?
quant_lstm_2_while_identity!
quant_lstm_2_while_identity_1!
quant_lstm_2_while_identity_2!
quant_lstm_2_while_identity_3!
quant_lstm_2_while_identity_4!
quant_lstm_2_while_identity_53
/quant_lstm_2_while_quant_lstm_2_strided_slice_1o
kquant_lstm_2_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_2_tensorarrayunstack_tensorlistfromtensorR
?quant_lstm_2_while_lstm_cell_140_matmul_readvariableop_resource:	?a
]quant_lstm_2_while_lstm_cell_140_matmul_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvarsO
@quant_lstm_2_while_lstm_cell_140_biasadd_readvariableop_resource:	???7quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp?6quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp?
Dquant_lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2F
Dquant_lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape?
6quant_lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmquant_lstm_2_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_2_tensorarrayunstack_tensorlistfromtensor_0quant_lstm_2_while_placeholderMquant_lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype028
6quant_lstm_2/while/TensorArrayV2Read/TensorListGetItem?
0quant_lstm_2/while/lstm_cell_140/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0quant_lstm_2/while/lstm_cell_140/ones_like/Shape?
0quant_lstm_2/while/lstm_cell_140/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0quant_lstm_2/while/lstm_cell_140/ones_like/Const?
*quant_lstm_2/while/lstm_cell_140/ones_likeFill9quant_lstm_2/while/lstm_cell_140/ones_like/Shape:output:09quant_lstm_2/while/lstm_cell_140/ones_like/Const:output:0*
T0*
_output_shapes

:2,
*quant_lstm_2/while/lstm_cell_140/ones_like?
$quant_lstm_2/while/lstm_cell_140/mulMul=quant_lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:03quant_lstm_2/while/lstm_cell_140/ones_like:output:0*
T0*
_output_shapes

:2&
$quant_lstm_2/while/lstm_cell_140/mul?
6quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOpReadVariableOpAquant_lstm_2_while_lstm_cell_140_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype028
6quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp?
'quant_lstm_2/while/lstm_cell_140/MatMulMatMul(quant_lstm_2/while/lstm_cell_140/mul:z:0>quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2)
'quant_lstm_2/while/lstm_cell_140/MatMul?
)quant_lstm_2/while/lstm_cell_140/MatMul_1MatMul quant_lstm_2_while_placeholder_2_quant_lstm_2_while_lstm_cell_140_matmul_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_0*
T0*
_output_shapes
:	?2+
)quant_lstm_2/while/lstm_cell_140/MatMul_1?
$quant_lstm_2/while/lstm_cell_140/addAddV21quant_lstm_2/while/lstm_cell_140/MatMul:product:03quant_lstm_2/while/lstm_cell_140/MatMul_1:product:0*
T0*
_output_shapes
:	?2&
$quant_lstm_2/while/lstm_cell_140/add?
7quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOpBquant_lstm_2_while_lstm_cell_140_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype029
7quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp?
(quant_lstm_2/while/lstm_cell_140/BiasAddBiasAdd(quant_lstm_2/while/lstm_cell_140/add:z:0?quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2*
(quant_lstm_2/while/lstm_cell_140/BiasAdd?
0quant_lstm_2/while/lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0quant_lstm_2/while/lstm_cell_140/split/split_dim?
&quant_lstm_2/while/lstm_cell_140/splitSplit9quant_lstm_2/while/lstm_cell_140/split/split_dim:output:01quant_lstm_2/while/lstm_cell_140/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2(
&quant_lstm_2/while/lstm_cell_140/split?
(quant_lstm_2/while/lstm_cell_140/SigmoidSigmoid/quant_lstm_2/while/lstm_cell_140/split:output:0*
T0*
_output_shapes

: 2*
(quant_lstm_2/while/lstm_cell_140/Sigmoid?
*quant_lstm_2/while/lstm_cell_140/Sigmoid_1Sigmoid/quant_lstm_2/while/lstm_cell_140/split:output:1*
T0*
_output_shapes

: 2,
*quant_lstm_2/while/lstm_cell_140/Sigmoid_1?
&quant_lstm_2/while/lstm_cell_140/mul_1Mul.quant_lstm_2/while/lstm_cell_140/Sigmoid_1:y:0 quant_lstm_2_while_placeholder_3*
T0*
_output_shapes

: 2(
&quant_lstm_2/while/lstm_cell_140/mul_1?
%quant_lstm_2/while/lstm_cell_140/ReluRelu/quant_lstm_2/while/lstm_cell_140/split:output:2*
T0*
_output_shapes

: 2'
%quant_lstm_2/while/lstm_cell_140/Relu?
&quant_lstm_2/while/lstm_cell_140/mul_2Mul,quant_lstm_2/while/lstm_cell_140/Sigmoid:y:03quant_lstm_2/while/lstm_cell_140/Relu:activations:0*
T0*
_output_shapes

: 2(
&quant_lstm_2/while/lstm_cell_140/mul_2?
&quant_lstm_2/while/lstm_cell_140/add_1AddV2*quant_lstm_2/while/lstm_cell_140/mul_1:z:0*quant_lstm_2/while/lstm_cell_140/mul_2:z:0*
T0*
_output_shapes

: 2(
&quant_lstm_2/while/lstm_cell_140/add_1?
*quant_lstm_2/while/lstm_cell_140/Sigmoid_2Sigmoid/quant_lstm_2/while/lstm_cell_140/split:output:3*
T0*
_output_shapes

: 2,
*quant_lstm_2/while/lstm_cell_140/Sigmoid_2?
'quant_lstm_2/while/lstm_cell_140/Relu_1Relu*quant_lstm_2/while/lstm_cell_140/add_1:z:0*
T0*
_output_shapes

: 2)
'quant_lstm_2/while/lstm_cell_140/Relu_1?
&quant_lstm_2/while/lstm_cell_140/mul_3Mul.quant_lstm_2/while/lstm_cell_140/Sigmoid_2:y:05quant_lstm_2/while/lstm_cell_140/Relu_1:activations:0*
T0*
_output_shapes

: 2(
&quant_lstm_2/while/lstm_cell_140/mul_3?
7quant_lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem quant_lstm_2_while_placeholder_1quant_lstm_2_while_placeholder*quant_lstm_2/while/lstm_cell_140/mul_3:z:0*
_output_shapes
: *
element_dtype029
7quant_lstm_2/while/TensorArrayV2Write/TensorListSetItemv
quant_lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
quant_lstm_2/while/add/y?
quant_lstm_2/while/addAddV2quant_lstm_2_while_placeholder!quant_lstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_2/while/addz
quant_lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
quant_lstm_2/while/add_1/y?
quant_lstm_2/while/add_1AddV22quant_lstm_2_while_quant_lstm_2_while_loop_counter#quant_lstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
quant_lstm_2/while/add_1?
quant_lstm_2/while/IdentityIdentityquant_lstm_2/while/add_1:z:08^quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp7^quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_2/while/Identity?
quant_lstm_2/while/Identity_1Identity8quant_lstm_2_while_quant_lstm_2_while_maximum_iterations8^quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp7^quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_2/while/Identity_1?
quant_lstm_2/while/Identity_2Identityquant_lstm_2/while/add:z:08^quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp7^quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_2/while/Identity_2?
quant_lstm_2/while/Identity_3IdentityGquant_lstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:08^quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp7^quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
quant_lstm_2/while/Identity_3?
quant_lstm_2/while/Identity_4Identity*quant_lstm_2/while/lstm_cell_140/mul_3:z:08^quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp7^quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
quant_lstm_2/while/Identity_4?
quant_lstm_2/while/Identity_5Identity*quant_lstm_2/while/lstm_cell_140/add_1:z:08^quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp7^quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
quant_lstm_2/while/Identity_5"C
quant_lstm_2_while_identity$quant_lstm_2/while/Identity:output:0"G
quant_lstm_2_while_identity_1&quant_lstm_2/while/Identity_1:output:0"G
quant_lstm_2_while_identity_2&quant_lstm_2/while/Identity_2:output:0"G
quant_lstm_2_while_identity_3&quant_lstm_2/while/Identity_3:output:0"G
quant_lstm_2_while_identity_4&quant_lstm_2/while/Identity_4:output:0"G
quant_lstm_2_while_identity_5&quant_lstm_2/while/Identity_5:output:0"?
@quant_lstm_2_while_lstm_cell_140_biasadd_readvariableop_resourceBquant_lstm_2_while_lstm_cell_140_biasadd_readvariableop_resource_0"?
]quant_lstm_2_while_lstm_cell_140_matmul_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_quant_lstm_2_while_lstm_cell_140_matmul_1_quant_lstm_2_lastvaluequant_fakequantwithminmaxvars_0"?
?quant_lstm_2_while_lstm_cell_140_matmul_readvariableop_resourceAquant_lstm_2_while_lstm_cell_140_matmul_readvariableop_resource_0"d
/quant_lstm_2_while_quant_lstm_2_strided_slice_11quant_lstm_2_while_quant_lstm_2_strided_slice_1_0"?
kquant_lstm_2_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_2_tensorarrayunstack_tensorlistfromtensormquant_lstm_2_while_tensorarrayv2read_tensorlistgetitem_quant_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/: : : : : : : : : :	 ?: 2r
7quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp7quant_lstm_2/while/lstm_cell_140/BiasAdd/ReadVariableOp2p
6quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp6quant_lstm_2/while/lstm_cell_140/MatMul/ReadVariableOp: 
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
: :%	!

_output_shapes
:	 ?
?j
?
H__inference_quant_lstm_2_layer_call_and_return_conditional_losses_350341

inputsQ
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	 ?J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: ?
,lstm_cell_140_matmul_readvariableop_resource:	?<
-lstm_cell_140_biasadd_readvariableop_resource:	?
identity??5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?$lstm_cell_140/BiasAdd/ReadVariableOp?#lstm_cell_140/MatMul/ReadVariableOp?while?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	 ?*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	 ?2(
&LastValueQuant/FakeQuantWithMinMaxVarsc
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
lstm_cell_140/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_140/ones_like/Shape?
lstm_cell_140/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_140/ones_like/Const?
lstm_cell_140/ones_likeFill&lstm_cell_140/ones_like/Shape:output:0&lstm_cell_140/ones_like/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_140/ones_like?
lstm_cell_140/mulMulstrided_slice_2:output:0 lstm_cell_140/ones_like:output:0*
T0*
_output_shapes

:2
lstm_cell_140/mul?
#lstm_cell_140/MatMul/ReadVariableOpReadVariableOp,lstm_cell_140_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_140/MatMul/ReadVariableOp?
lstm_cell_140/MatMulMatMullstm_cell_140/mul:z:0+lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_140/MatMul?
lstm_cell_140/MatMul_1MatMulzeros:output:00LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes
:	?2
lstm_cell_140/MatMul_1?
lstm_cell_140/addAddV2lstm_cell_140/MatMul:product:0 lstm_cell_140/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_140/add?
$lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_140/BiasAdd/ReadVariableOp?
lstm_cell_140/BiasAddBiasAddlstm_cell_140/add:z:0,lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_140/BiasAdd?
lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_140/split/split_dim?
lstm_cell_140/splitSplit&lstm_cell_140/split/split_dim:output:0lstm_cell_140/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_140/split?
lstm_cell_140/SigmoidSigmoidlstm_cell_140/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_140/Sigmoid?
lstm_cell_140/Sigmoid_1Sigmoidlstm_cell_140/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_140/Sigmoid_1?
lstm_cell_140/mul_1Mullstm_cell_140/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_140/mul_1w
lstm_cell_140/ReluRelulstm_cell_140/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_140/Relu?
lstm_cell_140/mul_2Mullstm_cell_140/Sigmoid:y:0 lstm_cell_140/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_140/mul_2?
lstm_cell_140/add_1AddV2lstm_cell_140/mul_1:z:0lstm_cell_140/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_140/add_1?
lstm_cell_140/Sigmoid_2Sigmoidlstm_cell_140/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_140/Sigmoid_2v
lstm_cell_140/Relu_1Relulstm_cell_140/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_140/Relu_1?
lstm_cell_140/mul_3Mullstm_cell_140/Sigmoid_2:y:0"lstm_cell_140/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_140/mul_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_140_matmul_readvariableop_resource0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0-lstm_cell_140_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*C
_output_shapes1
/: : : : : : : : : :	 ?: *$
_read_only_resource_inputs

*
bodyR
while_body_350254*
condR
while_cond_350253*B
output_shapes1
/: : : : : : : : : :	 ?: *
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
runtime?
IdentityIdentitytranspose_1:y:06^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2%^lstm_cell_140/BiasAdd/ReadVariableOp$^lstm_cell_140/MatMul/ReadVariableOp^while*
T0*"
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22L
$lstm_cell_140/BiasAdd/ReadVariableOp$lstm_cell_140/BiasAdd/ReadVariableOp2J
#lstm_cell_140/MatMul/ReadVariableOp#lstm_cell_140/MatMul/ReadVariableOp2
whilewhile:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
?
-__inference_quant_lstm_2_layer_call_fn_350163

inputs
unknown:	 ?
	unknown_0: 
	unknown_1: 
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_quant_lstm_2_layer_call_and_return_conditional_losses_3481132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*"
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?7
?
__inference__traced_save_352193
file_prefixF
Bsavev2_quantize_layer_32_quantize_layer_32_min_read_readvariableopF
Bsavev2_quantize_layer_32_quantize_layer_32_max_read_readvariableop?
;savev2_quantize_layer_32_optimizer_step_read_readvariableop:
6savev2_quant_lstm_2_optimizer_step_read_readvariableop@
<savev2_quant_lstm_2_recurrent_kernel_min_read_readvariableop@
<savev2_quant_lstm_2_recurrent_kernel_max_read_readvariableop?
;savev2_quant_lstm_2_post_activation_min_read_readvariableop?
;savev2_quant_lstm_2_post_activation_max_read_readvariableop:
6savev2_quant_lstm_3_optimizer_step_read_readvariableop@
<savev2_quant_lstm_3_recurrent_kernel_min_read_readvariableop@
<savev2_quant_lstm_3_recurrent_kernel_max_read_readvariableop?
;savev2_quant_lstm_3_post_activation_min_read_readvariableop?
;savev2_quant_lstm_3_post_activation_max_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop:
6savev2_lstm_2_lstm_cell_140_kernel_read_readvariableopD
@savev2_lstm_2_lstm_cell_140_recurrent_kernel_read_readvariableop8
4savev2_lstm_2_lstm_cell_140_bias_read_readvariableop:
6savev2_lstm_3_lstm_cell_141_kernel_read_readvariableopD
@savev2_lstm_3_lstm_cell_141_recurrent_kernel_read_readvariableop8
4savev2_lstm_3_lstm_cell_141_bias_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
BElayer_with_weights-0/quantize_layer_32_min/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-0/quantize_layer_32_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-1/recurrent_kernel_min/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-1/recurrent_kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-2/recurrent_kernel_min/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-2/recurrent_kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Bsavev2_quantize_layer_32_quantize_layer_32_min_read_readvariableopBsavev2_quantize_layer_32_quantize_layer_32_max_read_readvariableop;savev2_quantize_layer_32_optimizer_step_read_readvariableop6savev2_quant_lstm_2_optimizer_step_read_readvariableop<savev2_quant_lstm_2_recurrent_kernel_min_read_readvariableop<savev2_quant_lstm_2_recurrent_kernel_max_read_readvariableop;savev2_quant_lstm_2_post_activation_min_read_readvariableop;savev2_quant_lstm_2_post_activation_max_read_readvariableop6savev2_quant_lstm_3_optimizer_step_read_readvariableop<savev2_quant_lstm_3_recurrent_kernel_min_read_readvariableop<savev2_quant_lstm_3_recurrent_kernel_max_read_readvariableop;savev2_quant_lstm_3_post_activation_min_read_readvariableop;savev2_quant_lstm_3_post_activation_max_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop6savev2_lstm_2_lstm_cell_140_kernel_read_readvariableop@savev2_lstm_2_lstm_cell_140_recurrent_kernel_read_readvariableop4savev2_lstm_2_lstm_cell_140_bias_read_readvariableop6savev2_lstm_3_lstm_cell_141_kernel_read_readvariableop@savev2_lstm_3_lstm_cell_141_recurrent_kernel_read_readvariableop4savev2_lstm_3_lstm_cell_141_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
22
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

identity_1Identity_1:output:0*{
_input_shapesj
h: : : : : : : : : : : : : : : ::	?:	 ?:?:	 ?:	 ?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:%!

_output_shapes
:	 ?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:

_output_shapes
: 
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_349121
input_2"
quantize_layer_32_349088: "
quantize_layer_32_349090: &
quant_lstm_2_349093:	 ?
quant_lstm_2_349095: 
quant_lstm_2_349097: &
quant_lstm_2_349099:	?"
quant_lstm_2_349101:	?&
quant_lstm_3_349104:	 ?
quant_lstm_3_349106: 
quant_lstm_3_349108: &
quant_lstm_3_349110:	 ?"
quant_lstm_3_349112:	? 
dense_1_349115: 
dense_1_349117:
identity??dense_1/StatefulPartitionedCall?$quant_lstm_2/StatefulPartitionedCall?$quant_lstm_3/StatefulPartitionedCall?)quantize_layer_32/StatefulPartitionedCall?
)quantize_layer_32/StatefulPartitionedCallStatefulPartitionedCallinput_2quantize_layer_32_349088quantize_layer_32_349090*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_quantize_layer_32_layer_call_and_return_conditional_losses_3479442+
)quantize_layer_32/StatefulPartitionedCall?
$quant_lstm_2/StatefulPartitionedCallStatefulPartitionedCall2quantize_layer_32/StatefulPartitionedCall:output:0quant_lstm_2_349093quant_lstm_2_349095quant_lstm_2_349097quant_lstm_2_349099quant_lstm_2_349101*
Tin

2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_quant_lstm_2_layer_call_and_return_conditional_losses_3481132&
$quant_lstm_2/StatefulPartitionedCall?
$quant_lstm_3/StatefulPartitionedCallStatefulPartitionedCall-quant_lstm_2/StatefulPartitionedCall:output:0quant_lstm_3_349104quant_lstm_3_349106quant_lstm_3_349108quant_lstm_3_349110quant_lstm_3_349112*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_quant_lstm_3_layer_call_and_return_conditional_losses_3482882&
$quant_lstm_3/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall-quant_lstm_3/StatefulPartitionedCall:output:0dense_1_349115dense_1_349117*
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
GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3483102!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall%^quant_lstm_2/StatefulPartitionedCall%^quant_lstm_3/StatefulPartitionedCall*^quantize_layer_32/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:: : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$quant_lstm_2/StatefulPartitionedCall$quant_lstm_2/StatefulPartitionedCall2L
$quant_lstm_3/StatefulPartitionedCall$quant_lstm_3/StatefulPartitionedCall2V
)quantize_layer_32/StatefulPartitionedCall)quantize_layer_32/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_2
?
?
quant_lstm_2_while_cond_3497336
2quant_lstm_2_while_quant_lstm_2_while_loop_counter<
8quant_lstm_2_while_quant_lstm_2_while_maximum_iterations"
quant_lstm_2_while_placeholder$
 quant_lstm_2_while_placeholder_1$
 quant_lstm_2_while_placeholder_2$
 quant_lstm_2_while_placeholder_38
4quant_lstm_2_while_less_quant_lstm_2_strided_slice_1N
Jquant_lstm_2_while_quant_lstm_2_while_cond_349733___redundant_placeholder0N
Jquant_lstm_2_while_quant_lstm_2_while_cond_349733___redundant_placeholder1N
Jquant_lstm_2_while_quant_lstm_2_while_cond_349733___redundant_placeholder2N
Jquant_lstm_2_while_quant_lstm_2_while_cond_349733___redundant_placeholder3
quant_lstm_2_while_identity
?
quant_lstm_2/while/LessLessquant_lstm_2_while_placeholder4quant_lstm_2_while_less_quant_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2
quant_lstm_2/while/Less?
quant_lstm_2/while/IdentityIdentityquant_lstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2
quant_lstm_2/while/Identity"C
quant_lstm_2_while_identity$quant_lstm_2/while/Identity:output:0*(
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
::	

_output_shapes
:
?C
?
while_body_348201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_141_matmul_readvariableop_resource_0:	 ?I
Ewhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvars_0D
5while_lstm_cell_141_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_141_matmul_readvariableop_resource:	 ?G
Cwhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvarsB
3while_lstm_cell_141_biasadd_readvariableop_resource:	???*while/lstm_cell_141/BiasAdd/ReadVariableOp?)while/lstm_cell_141/MatMul/ReadVariableOp?
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
#while/lstm_cell_141/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#while/lstm_cell_141/ones_like/Shape?
#while/lstm_cell_141/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#while/lstm_cell_141/ones_like/Const?
while/lstm_cell_141/ones_likeFill,while/lstm_cell_141/ones_like/Shape:output:0,while/lstm_cell_141/ones_like/Const:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/ones_like?
while/lstm_cell_141/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_141/ones_like:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul?
)while/lstm_cell_141/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_141_matmul_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)while/lstm_cell_141/MatMul/ReadVariableOp?
while/lstm_cell_141/MatMulMatMulwhile/lstm_cell_141/mul:z:01while/lstm_cell_141/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/MatMul?
while/lstm_cell_141/MatMul_1MatMulwhile_placeholder_2Ewhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvars_0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/MatMul_1?
while/lstm_cell_141/addAddV2$while/lstm_cell_141/MatMul:product:0&while/lstm_cell_141/MatMul_1:product:0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/add?
*while/lstm_cell_141/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_141_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_141/BiasAdd/ReadVariableOp?
while/lstm_cell_141/BiasAddBiasAddwhile/lstm_cell_141/add:z:02while/lstm_cell_141/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/lstm_cell_141/BiasAdd?
#while/lstm_cell_141/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_141/split/split_dim?
while/lstm_cell_141/splitSplit,while/lstm_cell_141/split/split_dim:output:0$while/lstm_cell_141/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_141/split?
while/lstm_cell_141/SigmoidSigmoid"while/lstm_cell_141/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/Sigmoid?
while/lstm_cell_141/Sigmoid_1Sigmoid"while/lstm_cell_141/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_141/Sigmoid_1?
while/lstm_cell_141/mul_1Mul!while/lstm_cell_141/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul_1?
while/lstm_cell_141/ReluRelu"while/lstm_cell_141/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_141/Relu?
while/lstm_cell_141/mul_2Mulwhile/lstm_cell_141/Sigmoid:y:0&while/lstm_cell_141/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul_2?
while/lstm_cell_141/add_1AddV2while/lstm_cell_141/mul_1:z:0while/lstm_cell_141/mul_2:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/add_1?
while/lstm_cell_141/Sigmoid_2Sigmoid"while/lstm_cell_141/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_141/Sigmoid_2?
while/lstm_cell_141/Relu_1Reluwhile/lstm_cell_141/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/Relu_1?
while/lstm_cell_141/mul_3Mul!while/lstm_cell_141/Sigmoid_2:y:0(while/lstm_cell_141/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_141/mul_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_141/mul_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_141/mul_3:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_141/add_1:z:0+^while/lstm_cell_141/BiasAdd/ReadVariableOp*^while/lstm_cell_141/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_141_biasadd_readvariableop_resource5while_lstm_cell_141_biasadd_readvariableop_resource_0"?
Cwhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvarsEwhile_lstm_cell_141_matmul_1_lastvaluequant_fakequantwithminmaxvars_0"j
2while_lstm_cell_141_matmul_readvariableop_resource4while_lstm_cell_141_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/: : : : : : : : : :	 ?: 2X
*while/lstm_cell_141/BiasAdd/ReadVariableOp*while/lstm_cell_141/BiasAdd/ReadVariableOp2V
)while/lstm_cell_141/MatMul/ReadVariableOp)while/lstm_cell_141/MatMul/ReadVariableOp: 
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
: :%	!

_output_shapes
:	 ?
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_348317

inputs"
quantize_layer_32_347945: "
quantize_layer_32_347947: &
quant_lstm_2_348114:	 ?
quant_lstm_2_348116: 
quant_lstm_2_348118: &
quant_lstm_2_348120:	?"
quant_lstm_2_348122:	?&
quant_lstm_3_348289:	 ?
quant_lstm_3_348291: 
quant_lstm_3_348293: &
quant_lstm_3_348295:	 ?"
quant_lstm_3_348297:	? 
dense_1_348311: 
dense_1_348313:
identity??dense_1/StatefulPartitionedCall?$quant_lstm_2/StatefulPartitionedCall?$quant_lstm_3/StatefulPartitionedCall?)quantize_layer_32/StatefulPartitionedCall?
)quantize_layer_32/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_32_347945quantize_layer_32_347947*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_quantize_layer_32_layer_call_and_return_conditional_losses_3479442+
)quantize_layer_32/StatefulPartitionedCall?
$quant_lstm_2/StatefulPartitionedCallStatefulPartitionedCall2quantize_layer_32/StatefulPartitionedCall:output:0quant_lstm_2_348114quant_lstm_2_348116quant_lstm_2_348118quant_lstm_2_348120quant_lstm_2_348122*
Tin

2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_quant_lstm_2_layer_call_and_return_conditional_losses_3481132&
$quant_lstm_2/StatefulPartitionedCall?
$quant_lstm_3/StatefulPartitionedCallStatefulPartitionedCall-quant_lstm_2/StatefulPartitionedCall:output:0quant_lstm_3_348289quant_lstm_3_348291quant_lstm_3_348293quant_lstm_3_348295quant_lstm_3_348297*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_quant_lstm_3_layer_call_and_return_conditional_losses_3482882&
$quant_lstm_3/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall-quant_lstm_3/StatefulPartitionedCall:output:0dense_1_348311dense_1_348313*
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
GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3483102!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall%^quant_lstm_2/StatefulPartitionedCall%^quant_lstm_3/StatefulPartitionedCall*^quantize_layer_32/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:: : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$quant_lstm_2/StatefulPartitionedCall$quant_lstm_2/StatefulPartitionedCall2L
$quant_lstm_3/StatefulPartitionedCall$quant_lstm_3/StatefulPartitionedCall2V
)quantize_layer_32/StatefulPartitionedCall)quantize_layer_32/StatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
ߴ
?
H__inference_quant_lstm_2_layer_call_and_return_conditional_losses_348897

inputs>
+lastvaluequant_rank_readvariableop_resource:	 ?/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: ?
,lstm_cell_140_matmul_readvariableop_resource:	?<
-lstm_cell_140_biasadd_readvariableop_resource:	?
identity??LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?$lstm_cell_140/BiasAdd/ReadVariableOp?#lstm_cell_140/MatMul/ReadVariableOp?while?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02$
"LastValueQuant/Rank/ReadVariableOpl
LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rankz
LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range/startz
LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range/delta?
LastValueQuant/rangeRange#LastValueQuant/range/start:output:0LastValueQuant/Rank:output:0#LastValueQuant/range/delta:output:0*
_output_shapes
:2
LastValueQuant/range?
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02&
$LastValueQuant/Rank_1/ReadVariableOpp
LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rank_1~
LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range_1/start~
LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range_1/delta?
LastValueQuant/range_1Range%LastValueQuant/range_1/start:output:0LastValueQuant/Rank_1:output:0%LastValueQuant/range_1/delta:output:0*
_output_shapes
:2
LastValueQuant/range_1?
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
LastValueQuant/Minimum/y?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0!LastValueQuant/Minimum/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumy
LastValueQuant/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
LastValueQuant/Maximum/y?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0!LastValueQuant/Maximum/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/Maximum?
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast?
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	 ?*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	 ?2(
&LastValueQuant/FakeQuantWithMinMaxVarsc
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
lstm_cell_140/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_140/ones_like/Shape?
lstm_cell_140/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_140/ones_like/Const?
lstm_cell_140/ones_likeFill&lstm_cell_140/ones_like/Shape:output:0&lstm_cell_140/ones_like/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_140/ones_like
lstm_cell_140/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_140/dropout/Const?
lstm_cell_140/dropout/MulMul lstm_cell_140/ones_like:output:0$lstm_cell_140/dropout/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout/Mul?
lstm_cell_140/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_140/dropout/Shape?
2lstm_cell_140/dropout/random_uniform/RandomUniformRandomUniform$lstm_cell_140/dropout/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???24
2lstm_cell_140/dropout/random_uniform/RandomUniform?
$lstm_cell_140/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$lstm_cell_140/dropout/GreaterEqual/y?
"lstm_cell_140/dropout/GreaterEqualGreaterEqual;lstm_cell_140/dropout/random_uniform/RandomUniform:output:0-lstm_cell_140/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

:2$
"lstm_cell_140/dropout/GreaterEqual?
lstm_cell_140/dropout/CastCast&lstm_cell_140/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_140/dropout/Cast?
lstm_cell_140/dropout/Mul_1Mullstm_cell_140/dropout/Mul:z:0lstm_cell_140/dropout/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout/Mul_1?
lstm_cell_140/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_140/dropout_1/Const?
lstm_cell_140/dropout_1/MulMul lstm_cell_140/ones_like:output:0&lstm_cell_140/dropout_1/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout_1/Mul?
lstm_cell_140/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_140/dropout_1/Shape?
4lstm_cell_140/dropout_1/random_uniform/RandomUniformRandomUniform&lstm_cell_140/dropout_1/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???26
4lstm_cell_140/dropout_1/random_uniform/RandomUniform?
&lstm_cell_140/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&lstm_cell_140/dropout_1/GreaterEqual/y?
$lstm_cell_140/dropout_1/GreaterEqualGreaterEqual=lstm_cell_140/dropout_1/random_uniform/RandomUniform:output:0/lstm_cell_140/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes

:2&
$lstm_cell_140/dropout_1/GreaterEqual?
lstm_cell_140/dropout_1/CastCast(lstm_cell_140/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_140/dropout_1/Cast?
lstm_cell_140/dropout_1/Mul_1Mullstm_cell_140/dropout_1/Mul:z:0 lstm_cell_140/dropout_1/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout_1/Mul_1?
lstm_cell_140/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_140/dropout_2/Const?
lstm_cell_140/dropout_2/MulMul lstm_cell_140/ones_like:output:0&lstm_cell_140/dropout_2/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout_2/Mul?
lstm_cell_140/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_140/dropout_2/Shape?
4lstm_cell_140/dropout_2/random_uniform/RandomUniformRandomUniform&lstm_cell_140/dropout_2/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2???26
4lstm_cell_140/dropout_2/random_uniform/RandomUniform?
&lstm_cell_140/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&lstm_cell_140/dropout_2/GreaterEqual/y?
$lstm_cell_140/dropout_2/GreaterEqualGreaterEqual=lstm_cell_140/dropout_2/random_uniform/RandomUniform:output:0/lstm_cell_140/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes

:2&
$lstm_cell_140/dropout_2/GreaterEqual?
lstm_cell_140/dropout_2/CastCast(lstm_cell_140/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_140/dropout_2/Cast?
lstm_cell_140/dropout_2/Mul_1Mullstm_cell_140/dropout_2/Mul:z:0 lstm_cell_140/dropout_2/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout_2/Mul_1?
lstm_cell_140/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
lstm_cell_140/dropout_3/Const?
lstm_cell_140/dropout_3/MulMul lstm_cell_140/ones_like:output:0&lstm_cell_140/dropout_3/Const:output:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout_3/Mul?
lstm_cell_140/dropout_3/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
lstm_cell_140/dropout_3/Shape?
4lstm_cell_140/dropout_3/random_uniform/RandomUniformRandomUniform&lstm_cell_140/dropout_3/Shape:output:0*
T0*
_output_shapes

:*
dtype0*

seed**
seed2фO26
4lstm_cell_140/dropout_3/random_uniform/RandomUniform?
&lstm_cell_140/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&lstm_cell_140/dropout_3/GreaterEqual/y?
$lstm_cell_140/dropout_3/GreaterEqualGreaterEqual=lstm_cell_140/dropout_3/random_uniform/RandomUniform:output:0/lstm_cell_140/dropout_3/GreaterEqual/y:output:0*
T0*
_output_shapes

:2&
$lstm_cell_140/dropout_3/GreaterEqual?
lstm_cell_140/dropout_3/CastCast(lstm_cell_140/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
lstm_cell_140/dropout_3/Cast?
lstm_cell_140/dropout_3/Mul_1Mullstm_cell_140/dropout_3/Mul:z:0 lstm_cell_140/dropout_3/Cast:y:0*
T0*
_output_shapes

:2
lstm_cell_140/dropout_3/Mul_1?
lstm_cell_140/mulMulstrided_slice_2:output:0lstm_cell_140/dropout/Mul_1:z:0*
T0*
_output_shapes

:2
lstm_cell_140/mul?
#lstm_cell_140/MatMul/ReadVariableOpReadVariableOp,lstm_cell_140_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_140/MatMul/ReadVariableOp?
lstm_cell_140/MatMulMatMullstm_cell_140/mul:z:0+lstm_cell_140/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_140/MatMul?
lstm_cell_140/MatMul_1MatMulzeros:output:00LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes
:	?2
lstm_cell_140/MatMul_1?
lstm_cell_140/addAddV2lstm_cell_140/MatMul:product:0 lstm_cell_140/MatMul_1:product:0*
T0*
_output_shapes
:	?2
lstm_cell_140/add?
$lstm_cell_140/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_140_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_140/BiasAdd/ReadVariableOp?
lstm_cell_140/BiasAddBiasAddlstm_cell_140/add:z:0,lstm_cell_140/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_cell_140/BiasAdd?
lstm_cell_140/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_140/split/split_dim?
lstm_cell_140/splitSplit&lstm_cell_140/split/split_dim:output:0lstm_cell_140/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_140/split?
lstm_cell_140/SigmoidSigmoidlstm_cell_140/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_140/Sigmoid?
lstm_cell_140/Sigmoid_1Sigmoidlstm_cell_140/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_140/Sigmoid_1?
lstm_cell_140/mul_1Mullstm_cell_140/Sigmoid_1:y:0zeros_1:output:0*
T0*
_output_shapes

: 2
lstm_cell_140/mul_1w
lstm_cell_140/ReluRelulstm_cell_140/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_140/Relu?
lstm_cell_140/mul_2Mullstm_cell_140/Sigmoid:y:0 lstm_cell_140/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_140/mul_2?
lstm_cell_140/add_1AddV2lstm_cell_140/mul_1:z:0lstm_cell_140/mul_2:z:0*
T0*
_output_shapes

: 2
lstm_cell_140/add_1?
lstm_cell_140/Sigmoid_2Sigmoidlstm_cell_140/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_140/Sigmoid_2v
lstm_cell_140/Relu_1Relulstm_cell_140/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_140/Relu_1?
lstm_cell_140/mul_3Mullstm_cell_140/Sigmoid_2:y:0"lstm_cell_140/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_140/mul_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_140_matmul_readvariableop_resource0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0-lstm_cell_140_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*C
_output_shapes1
/: : : : : : : : : :	 ?: *$
_read_only_resource_inputs

*
bodyR
while_body_348778*
condR
while_cond_348777*B
output_shapes1
/: : : : : : : : : :	 ?: *
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
runtime?
IdentityIdentitytranspose_1:y:0^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2%^lstm_cell_140/BiasAdd/ReadVariableOp$^lstm_cell_140/MatMul/ReadVariableOp^while*
T0*"
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22L
$lstm_cell_140/BiasAdd/ReadVariableOp$lstm_cell_140/BiasAdd/ReadVariableOp2J
#lstm_cell_140/MatMul/ReadVariableOp#lstm_cell_140/MatMul/ReadVariableOp2
whilewhile:J F
"
_output_shapes
:
 
_user_specified_nameinputs"?L
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
StatefulPartitionedCall:0tensorflow/serving/predict:ۘ
?9
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?6
_tf_keras_sequential?6{"name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [1, 16, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}, {"class_name": "QuantizeLayer", "config": {"name": "quantize_layer_32", "trainable": true, "dtype": "float32", "quantizer": {"class_name": "AllValuesQuantizer", "config": {"num_bits": 8, "per_axis": false, "symmetric": false, "narrow_range": false}}}}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_lstm_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}}, "quantize_config": {"class_name": "Quant_Config", "config": {}}}}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_lstm_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}}, "quantize_config": {"class_name": "Quant_Config", "config": {}}}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 20, "build_input_shape": {"class_name": "TensorShape", "items": [1, 16, 2]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [1, 16, 2]}, "float32", "input_2"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [1, 16, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "shared_object_id": 0}, {"class_name": "QuantizeLayer", "config": {"name": "quantize_layer_32", "trainable": true, "dtype": "float32", "quantizer": {"class_name": "AllValuesQuantizer", "config": {"num_bits": 8, "per_axis": false, "symmetric": false, "narrow_range": false}}}, "shared_object_id": 2}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_lstm_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 7}, "quantize_config": {"class_name": "Quant_Config", "config": {}, "shared_object_id": 8}}, "shared_object_id": 9}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_lstm_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 14}, "quantize_config": {"class_name": "Quant_Config", "config": {}, "shared_object_id": 15}}, "shared_object_id": 16}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19}]}}}
?

quantize_layer_32_min
quantize_layer_32_max
quantizer_vars
optimizer_step
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "quantize_layer_32", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeLayer", "config": {"name": "quantize_layer_32", "trainable": true, "dtype": "float32", "quantizer": {"class_name": "AllValuesQuantizer", "config": {"num_bits": 8, "per_axis": false, "symmetric": false, "narrow_range": false}}}, "shared_object_id": 2, "build_input_shape": {"class_name": "TensorShape", "items": [1, 16, 2]}}
?
	layer
optimizer_step
_weight_vars
recurrent_kernel_min
recurrent_kernel_max
_quantize_activations
post_activation_min
post_activation_max
_output_quantizers
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?
{"name": "quant_lstm_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_lstm_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 7}, "quantize_config": {"class_name": "Quant_Config", "config": {}, "shared_object_id": 8}}, "shared_object_id": 9, "build_input_shape": {"class_name": "TensorShape", "items": [1, 16, 2]}}
?
	layer
 optimizer_step
!_weight_vars
"recurrent_kernel_min
#recurrent_kernel_max
$_quantize_activations
%post_activation_min
&post_activation_max
'_output_quantizers
(regularization_losses
)trainable_variables
*	variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?
{"name": "quant_lstm_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_lstm_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 14}, "quantize_config": {"class_name": "Quant_Config", "config": {}, "shared_object_id": 15}}, "shared_object_id": 16, "build_input_shape": {"class_name": "TensorShape", "items": [1, 16, 32]}}
?

,kernel
-bias
.regularization_losses
/trainable_variables
0	variables
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 32]}}
 "
trackable_list_wrapper
X
20
31
42
53
64
75
,6
-7"
trackable_list_wrapper
?

0
1
2
23
34
45
6
7
8
9
10
511
612
713
 14
"15
#16
%17
&18
,19
-20"
trackable_list_wrapper
?
regularization_losses
trainable_variables

8layers
9layer_regularization_losses
:non_trainable_variables
;metrics
<layer_metrics
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
/:- 2'quantize_layer_32/quantize_layer_32_min
/:- 2'quantize_layer_32/quantize_layer_32_max
:

min_var
max_var"
trackable_dict_wrapper
(:& 2 quantize_layer_32/optimizer_step
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5

0
1
2"
trackable_list_wrapper
?
regularization_losses
trainable_variables
=layer_regularization_losses

>layers
?non_trainable_variables
@metrics
Alayer_metrics
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
Bcell
C
state_spec
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_rnn_layer?
{"name": "lstm_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 7, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 24}], "build_input_shape": {"class_name": "TensorShape", "items": [1, 16, 2]}}
#:! 2quant_lstm_2/optimizer_step
'
H0"
trackable_list_wrapper
):' 2!quant_lstm_2/recurrent_kernel_min
):' 2!quant_lstm_2/recurrent_kernel_max
 "
trackable_list_wrapper
(:& 2 quant_lstm_2/post_activation_min
(:& 2 quant_lstm_2/post_activation_max
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
20
31
42"
trackable_list_wrapper
X
20
31
42
3
4
5
6
7"
trackable_list_wrapper
?
regularization_losses
trainable_variables
Ilayer_regularization_losses

Jlayers
Knon_trainable_variables
Lmetrics
Mlayer_metrics
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
Ncell
O
state_spec
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_rnn_layer?
{"name": "lstm_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 14, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 32]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 25}], "build_input_shape": {"class_name": "TensorShape", "items": [1, 16, 32]}}
#:! 2quant_lstm_3/optimizer_step
'
T0"
trackable_list_wrapper
):' 2!quant_lstm_3/recurrent_kernel_min
):' 2!quant_lstm_3/recurrent_kernel_max
 "
trackable_list_wrapper
(:& 2 quant_lstm_3/post_activation_min
(:& 2 quant_lstm_3/post_activation_max
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
50
61
72"
trackable_list_wrapper
X
50
61
72
 3
"4
#5
%6
&7"
trackable_list_wrapper
?
(regularization_losses
)trainable_variables
Ulayer_regularization_losses

Vlayers
Wnon_trainable_variables
Xmetrics
Ylayer_metrics
*	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 : 2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
?
.regularization_losses
/trainable_variables
Zlayer_regularization_losses

[layers
\non_trainable_variables
]metrics
^layer_metrics
0	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,	?2lstm_2/lstm_cell_140/kernel
8:6	 ?2%lstm_2/lstm_cell_140/recurrent_kernel
(:&?2lstm_2/lstm_cell_140/bias
.:,	 ?2lstm_3/lstm_cell_141/kernel
8:6	 ?2%lstm_3/lstm_cell_141/recurrent_kernel
(:&?2lstm_3/lstm_cell_141/bias
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
~

0
1
2
3
4
5
6
7
 8
"9
#10
%11
&12"
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

0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?	
_
state_size

2kernel
3recurrent_kernel
4bias
`regularization_losses
atrainable_variables
b	variables
c	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "lstm_cell_140", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_140", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 6}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
20
41"
trackable_list_wrapper
.
20
41"
trackable_list_wrapper
?
Dregularization_losses
Etrainable_variables
dlayer_regularization_losses

elayers

fstates
gnon_trainable_variables
hmetrics
ilayer_metrics
F	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/
30
j2"
trackable_tuple_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?	
k
state_size

5kernel
6recurrent_kernel
7bias
lregularization_losses
mtrainable_variables
n	variables
o	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "lstm_cell_141", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_141", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.1, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 13}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
50
71"
trackable_list_wrapper
.
50
71"
trackable_list_wrapper
?
Pregularization_losses
Qtrainable_variables
player_regularization_losses

qlayers

rstates
snon_trainable_variables
tmetrics
ulayer_metrics
R	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/
60
v2"
trackable_tuple_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
C
 0
"1
#2
%3
&4"
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
.
20
41"
trackable_list_wrapper
.
20
41"
trackable_list_wrapper
?
`regularization_losses
atrainable_variables
wlayer_regularization_losses

xlayers
ynon_trainable_variables
zmetrics
{layer_metrics
b	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
B0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:
min_var
max_var"
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
50
71"
trackable_list_wrapper
.
50
71"
trackable_list_wrapper
?
lregularization_losses
mtrainable_variables
|layer_regularization_losses

}layers
~non_trainable_variables
metrics
?layer_metrics
n	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
N0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:
"min_var
#max_var"
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
?2?
-__inference_sequential_1_layer_call_fn_348348
-__inference_sequential_1_layer_call_fn_349225
-__inference_sequential_1_layer_call_fn_349258
-__inference_sequential_1_layer_call_fn_349085?
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
!__inference__wrapped_model_346620?
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
H__inference_sequential_1_layer_call_and_return_conditional_losses_349591
H__inference_sequential_1_layer_call_and_return_conditional_losses_350100
H__inference_sequential_1_layer_call_and_return_conditional_losses_349121
H__inference_sequential_1_layer_call_and_return_conditional_losses_349157?
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
2__inference_quantize_layer_32_layer_call_fn_350109
2__inference_quantize_layer_32_layer_call_fn_350118?
???
FullArgSpec)
args!?
jself
jinputs

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
M__inference_quantize_layer_32_layer_call_and_return_conditional_losses_350127
M__inference_quantize_layer_32_layer_call_and_return_conditional_losses_350148?
???
FullArgSpec)
args!?
jself
jinputs

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
-__inference_quant_lstm_2_layer_call_fn_350163
-__inference_quant_lstm_2_layer_call_fn_350178?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_quant_lstm_2_layer_call_and_return_conditional_losses_350341
H__inference_quant_lstm_2_layer_call_and_return_conditional_losses_350586?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_quant_lstm_3_layer_call_fn_350601
-__inference_quant_lstm_3_layer_call_fn_350616?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_quant_lstm_3_layer_call_and_return_conditional_losses_350779
H__inference_quant_lstm_3_layer_call_and_return_conditional_losses_351024?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_1_layer_call_fn_351033?
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
C__inference_dense_1_layer_call_and_return_conditional_losses_351043?
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
$__inference_signature_wrapper_349192input_2"?
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
'__inference_lstm_2_layer_call_fn_351053
'__inference_lstm_2_layer_call_fn_351063?
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
B__inference_lstm_2_layer_call_and_return_conditional_losses_351220
B__inference_lstm_2_layer_call_and_return_conditional_losses_351441?
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
'__inference_lstm_3_layer_call_fn_351451
'__inference_lstm_3_layer_call_fn_351461?
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
B__inference_lstm_3_layer_call_and_return_conditional_losses_351618
B__inference_lstm_3_layer_call_and_return_conditional_losses_351839?
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
.__inference_lstm_cell_140_layer_call_fn_351855
.__inference_lstm_cell_140_layer_call_fn_351871?
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
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_351906
I__inference_lstm_cell_140_layer_call_and_return_conditional_losses_351973?
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
.__inference_lstm_cell_141_layer_call_fn_351989
.__inference_lstm_cell_141_layer_call_fn_352005?
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
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_352040
I__inference_lstm_cell_141_layer_call_and_return_conditional_losses_352107?
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
!__inference__wrapped_model_346620g
3246"#57,-+?(
!?
?
input_2
? "(?%
#
dense_1?
dense_1?
C__inference_dense_1_layer_call_and_return_conditional_losses_351043J,-&?#
?
?
inputs 
? "?
?
0
? i
(__inference_dense_1_layer_call_fn_351033=,-&?#
?
?
inputs 
? "??
H__inference_quant_lstm_2_layer_call_and_return_conditional_losses_350341Y324.?+
$?!
?
inputs
p 
? " ?
?
0 
? ?
H__inference_quant_lstm_2_layer_call_and_return_conditional_losses_350586Y324.?+
$?!
?
inputs
p
? " ?
?
0 
? }
-__inference_quant_lstm_2_layer_call_fn_350163L324.?+
$?!
?
inputs
p 
? "? }
-__inference_quant_lstm_2_layer_call_fn_350178L324.?+
$?!
?
inputs
p
? "? ?
H__inference_quant_lstm_3_layer_call_and_return_conditional_losses_350779U6"#57.?+
$?!
?
inputs 
p 
? "?
?
0 
? ?
H__inference_quant_lstm_3_layer_call_and_return_conditional_losses_351024U6"#57.?+
$?!
?
inputs 
p
? "?
?
0 
? y
-__inference_quant_lstm_3_layer_call_fn_350601H6"#57.?+
$?!
?
inputs 
p 
? "? y
-__inference_quant_lstm_3_layer_call_fn_350616H6"#57.?+
$?!
?
inputs 
p
? "? ?
M__inference_quantize_layer_32_layer_call_and_return_conditional_losses_350127V
.?+
$?!
?
inputs
p 
? " ?
?
0
? ?
M__inference_quantize_layer_32_layer_call_and_return_conditional_losses_350148V
.?+
$?!
?
inputs
p
? " ?
?
0
? 
2__inference_quantize_layer_32_layer_call_fn_350109I
.?+
$?!
?
inputs
p 
? "?
2__inference_quantize_layer_32_layer_call_fn_350118I
.?+
$?!
?
inputs
p
? "??
H__inference_sequential_1_layer_call_and_return_conditional_losses_349121c
3246"#57,-3?0
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
H__inference_sequential_1_layer_call_and_return_conditional_losses_349157c
3246"#57,-3?0
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
H__inference_sequential_1_layer_call_and_return_conditional_losses_349591b
3246"#57,-2?/
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
H__inference_sequential_1_layer_call_and_return_conditional_losses_350100b
3246"#57,-2?/
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
-__inference_sequential_1_layer_call_fn_348348V
3246"#57,-3?0
)?&
?
input_2
p 

 
? "??
-__inference_sequential_1_layer_call_fn_349085V
3246"#57,-3?0
)?&
?
input_2
p

 
? "??
-__inference_sequential_1_layer_call_fn_349225U
3246"#57,-2?/
(?%
?
inputs
p 

 
? "??
-__inference_sequential_1_layer_call_fn_349258U
3246"#57,-2?/
(?%
?
inputs
p

 
? "??
$__inference_signature_wrapper_349192r
3246"#57,-6?3
? 
,?)
'
input_2?
input_2"(?%
#
dense_1?
dense_1