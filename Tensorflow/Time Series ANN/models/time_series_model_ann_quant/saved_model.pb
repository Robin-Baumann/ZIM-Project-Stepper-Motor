??
??
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
.
Identity

input"T
output"T"	
Ttype
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
?
%quantize_layer_1/quantize_layer_1_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%quantize_layer_1/quantize_layer_1_min
?
9quantize_layer_1/quantize_layer_1_min/Read/ReadVariableOpReadVariableOp%quantize_layer_1/quantize_layer_1_min*
_output_shapes
: *
dtype0
?
%quantize_layer_1/quantize_layer_1_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%quantize_layer_1/quantize_layer_1_max
?
9quantize_layer_1/quantize_layer_1_max/Read/ReadVariableOpReadVariableOp%quantize_layer_1/quantize_layer_1_max*
_output_shapes
: *
dtype0
?
quantize_layer_1/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!quantize_layer_1/optimizer_step
?
3quantize_layer_1/optimizer_step/Read/ReadVariableOpReadVariableOpquantize_layer_1/optimizer_step*
_output_shapes
: *
dtype0
?
quant_flatten_37/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!quant_flatten_37/optimizer_step
?
3quant_flatten_37/optimizer_step/Read/ReadVariableOpReadVariableOpquant_flatten_37/optimizer_step*
_output_shapes
: *
dtype0
?
quant_dense_111/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name quant_dense_111/optimizer_step
?
2quant_dense_111/optimizer_step/Read/ReadVariableOpReadVariableOpquant_dense_111/optimizer_step*
_output_shapes
: *
dtype0
?
quant_dense_111/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namequant_dense_111/kernel_min
?
.quant_dense_111/kernel_min/Read/ReadVariableOpReadVariableOpquant_dense_111/kernel_min*
_output_shapes
: *
dtype0
?
quant_dense_111/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namequant_dense_111/kernel_max
?
.quant_dense_111/kernel_max/Read/ReadVariableOpReadVariableOpquant_dense_111/kernel_max*
_output_shapes
: *
dtype0
?
#quant_dense_111/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#quant_dense_111/post_activation_min
?
7quant_dense_111/post_activation_min/Read/ReadVariableOpReadVariableOp#quant_dense_111/post_activation_min*
_output_shapes
: *
dtype0
?
#quant_dense_111/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#quant_dense_111/post_activation_max
?
7quant_dense_111/post_activation_max/Read/ReadVariableOpReadVariableOp#quant_dense_111/post_activation_max*
_output_shapes
: *
dtype0
?
quant_dense_112/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name quant_dense_112/optimizer_step
?
2quant_dense_112/optimizer_step/Read/ReadVariableOpReadVariableOpquant_dense_112/optimizer_step*
_output_shapes
: *
dtype0
?
quant_dense_112/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namequant_dense_112/kernel_min
?
.quant_dense_112/kernel_min/Read/ReadVariableOpReadVariableOpquant_dense_112/kernel_min*
_output_shapes
: *
dtype0
?
quant_dense_112/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namequant_dense_112/kernel_max
?
.quant_dense_112/kernel_max/Read/ReadVariableOpReadVariableOpquant_dense_112/kernel_max*
_output_shapes
: *
dtype0
?
#quant_dense_112/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#quant_dense_112/post_activation_min
?
7quant_dense_112/post_activation_min/Read/ReadVariableOpReadVariableOp#quant_dense_112/post_activation_min*
_output_shapes
: *
dtype0
?
#quant_dense_112/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#quant_dense_112/post_activation_max
?
7quant_dense_112/post_activation_max/Read/ReadVariableOpReadVariableOp#quant_dense_112/post_activation_max*
_output_shapes
: *
dtype0
?
quant_dense_113/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name quant_dense_113/optimizer_step
?
2quant_dense_113/optimizer_step/Read/ReadVariableOpReadVariableOpquant_dense_113/optimizer_step*
_output_shapes
: *
dtype0
?
quant_dense_113/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namequant_dense_113/kernel_min
?
.quant_dense_113/kernel_min/Read/ReadVariableOpReadVariableOpquant_dense_113/kernel_min*
_output_shapes
: *
dtype0
?
quant_dense_113/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namequant_dense_113/kernel_max
?
.quant_dense_113/kernel_max/Read/ReadVariableOpReadVariableOpquant_dense_113/kernel_max*
_output_shapes
: *
dtype0
?
#quant_dense_113/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#quant_dense_113/post_activation_min
?
7quant_dense_113/post_activation_min/Read/ReadVariableOpReadVariableOp#quant_dense_113/post_activation_min*
_output_shapes
: *
dtype0
?
#quant_dense_113/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#quant_dense_113/post_activation_max
?
7quant_dense_113/post_activation_max/Read/ReadVariableOpReadVariableOp#quant_dense_113/post_activation_max*
_output_shapes
: *
dtype0
|
dense_111/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *!
shared_namedense_111/kernel
u
$dense_111/kernel/Read/ReadVariableOpReadVariableOpdense_111/kernel*
_output_shapes

:  *
dtype0
t
dense_111/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_111/bias
m
"dense_111/bias/Read/ReadVariableOpReadVariableOpdense_111/bias*
_output_shapes
: *
dtype0
|
dense_112/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *!
shared_namedense_112/kernel
u
$dense_112/kernel/Read/ReadVariableOpReadVariableOpdense_112/kernel*
_output_shapes

:  *
dtype0
t
dense_112/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_112/bias
m
"dense_112/bias/Read/ReadVariableOpReadVariableOpdense_112/bias*
_output_shapes
: *
dtype0
|
dense_113/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_113/kernel
u
$dense_113/kernel/Read/ReadVariableOpReadVariableOpdense_113/kernel*
_output_shapes

: *
dtype0
t
dense_113/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_113/bias
m
"dense_113/bias/Read/ReadVariableOpReadVariableOpdense_113/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?<
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?;
value?;B?; B?;
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
regularization_losses
trainable_variables
	variables
		keras_api


signatures
?
quantize_layer_1_min
quantize_layer_1_max
quantizer_vars
optimizer_step
regularization_losses
trainable_variables
	variables
	keras_api
?
	layer
optimizer_step
_weight_vars
_quantize_activations
_output_quantizers
regularization_losses
trainable_variables
	variables
	keras_api
?
	layer
optimizer_step
_weight_vars

kernel_min
 
kernel_max
!_quantize_activations
"post_activation_min
#post_activation_max
$_output_quantizers
%regularization_losses
&trainable_variables
'	variables
(	keras_api
?
	)layer
*optimizer_step
+_weight_vars
,
kernel_min
-
kernel_max
._quantize_activations
/post_activation_min
0post_activation_max
1_output_quantizers
2regularization_losses
3trainable_variables
4	variables
5	keras_api
?
	6layer
7optimizer_step
8_weight_vars
9
kernel_min
:
kernel_max
;_quantize_activations
<post_activation_min
=post_activation_max
>_output_quantizers
?regularization_losses
@trainable_variables
A	variables
B	keras_api
 
*
C0
D1
E2
F3
G4
H5
?
0
1
2
3
C4
D5
6
7
 8
"9
#10
E11
F12
*13
,14
-15
/16
017
G18
H19
720
921
:22
<23
=24
?
Inon_trainable_variables
Jmetrics
Klayer_metrics

Llayers
regularization_losses
trainable_variables
	variables
Mlayer_regularization_losses
 
}
VARIABLE_VALUE%quantize_layer_1/quantize_layer_1_minDlayer_with_weights-0/quantize_layer_1_min/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE%quantize_layer_1/quantize_layer_1_maxDlayer_with_weights-0/quantize_layer_1_max/.ATTRIBUTES/VARIABLE_VALUE

min_var
max_var
sq
VARIABLE_VALUEquantize_layer_1/optimizer_step>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
2
?
Nnon_trainable_variables
Ometrics
Player_metrics

Qlayers
regularization_losses
trainable_variables
	variables
Rlayer_regularization_losses
R
Sregularization_losses
Ttrainable_variables
U	variables
V	keras_api
sq
VARIABLE_VALUEquant_flatten_37/optimizer_step>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 

0
?
Wnon_trainable_variables
Xmetrics
Ylayer_metrics

Zlayers
regularization_losses
trainable_variables
	variables
[layer_regularization_losses
h

Ckernel
Dbias
\regularization_losses
]trainable_variables
^	variables
_	keras_api
rp
VARIABLE_VALUEquant_dense_111/optimizer_step>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

`0
jh
VARIABLE_VALUEquant_dense_111/kernel_min:layer_with_weights-2/kernel_min/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEquant_dense_111/kernel_max:layer_with_weights-2/kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
|z
VARIABLE_VALUE#quant_dense_111/post_activation_minClayer_with_weights-2/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE#quant_dense_111/post_activation_maxClayer_with_weights-2/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
 

C0
D1
1
C0
D1
2
3
 4
"5
#6
?
anon_trainable_variables
bmetrics
clayer_metrics

dlayers
%regularization_losses
&trainable_variables
'	variables
elayer_regularization_losses
h

Ekernel
Fbias
fregularization_losses
gtrainable_variables
h	variables
i	keras_api
rp
VARIABLE_VALUEquant_dense_112/optimizer_step>layer_with_weights-3/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

j0
jh
VARIABLE_VALUEquant_dense_112/kernel_min:layer_with_weights-3/kernel_min/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEquant_dense_112/kernel_max:layer_with_weights-3/kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
|z
VARIABLE_VALUE#quant_dense_112/post_activation_minClayer_with_weights-3/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE#quant_dense_112/post_activation_maxClayer_with_weights-3/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
 

E0
F1
1
E0
F1
*2
,3
-4
/5
06
?
knon_trainable_variables
lmetrics
mlayer_metrics

nlayers
2regularization_losses
3trainable_variables
4	variables
olayer_regularization_losses
h

Gkernel
Hbias
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
rp
VARIABLE_VALUEquant_dense_113/optimizer_step>layer_with_weights-4/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

t0
jh
VARIABLE_VALUEquant_dense_113/kernel_min:layer_with_weights-4/kernel_min/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEquant_dense_113/kernel_max:layer_with_weights-4/kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
|z
VARIABLE_VALUE#quant_dense_113/post_activation_minClayer_with_weights-4/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE#quant_dense_113/post_activation_maxClayer_with_weights-4/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
 

G0
H1
1
G0
H1
72
93
:4
<5
=6
?
unon_trainable_variables
vmetrics
wlayer_metrics

xlayers
?regularization_losses
@trainable_variables
A	variables
ylayer_regularization_losses
VT
VARIABLE_VALUEdense_111/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_111/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_112/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_112/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_113/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_113/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
?
0
1
2
3
4
5
 6
"7
#8
*9
,10
-11
/12
013
714
915
:16
<17
=18
 
 
#
0
1
2
3
4
 

0
1
2
 
 
 
 
 
 
 
?
znon_trainable_variables
{metrics
|layer_metrics

}layers
Sregularization_losses
Ttrainable_variables
U	variables
~layer_regularization_losses

0
 
 

0
 
 

D0

D0
?
non_trainable_variables
?metrics
?layer_metrics
?layers
\regularization_losses
]trainable_variables
^	variables
 ?layer_regularization_losses

C0
?2
#
0
1
 2
"3
#4
 
 

0
 
 

F0

F0
?
?non_trainable_variables
?metrics
?layer_metrics
?layers
fregularization_losses
gtrainable_variables
h	variables
 ?layer_regularization_losses

E0
?2
#
*0
,1
-2
/3
04
 
 

)0
 
 

H0

H0
?
?non_trainable_variables
?metrics
?layer_metrics
?layers
pregularization_losses
qtrainable_variables
r	variables
 ?layer_regularization_losses

G0
?2
#
70
91
:2
<3
=4
 
 

60
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

min_var
 max_var
 
 
 
 
 

,min_var
-max_var
 
 
 
 
 

9min_var
:max_var
y
 serving_default_flatten_37_inputPlaceholder*"
_output_shapes
:*
dtype0*
shape:
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_flatten_37_input%quantize_layer_1/quantize_layer_1_min%quantize_layer_1/quantize_layer_1_maxdense_111/kernelquant_dense_111/kernel_minquant_dense_111/kernel_maxdense_111/bias#quant_dense_111/post_activation_min#quant_dense_111/post_activation_maxdense_112/kernelquant_dense_112/kernel_minquant_dense_112/kernel_maxdense_112/bias#quant_dense_112/post_activation_min#quant_dense_112/post_activation_maxdense_113/kernelquant_dense_113/kernel_minquant_dense_113/kernel_maxdense_113/bias#quant_dense_113/post_activation_min#quant_dense_113/post_activation_max* 
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_691014
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename9quantize_layer_1/quantize_layer_1_min/Read/ReadVariableOp9quantize_layer_1/quantize_layer_1_max/Read/ReadVariableOp3quantize_layer_1/optimizer_step/Read/ReadVariableOp3quant_flatten_37/optimizer_step/Read/ReadVariableOp2quant_dense_111/optimizer_step/Read/ReadVariableOp.quant_dense_111/kernel_min/Read/ReadVariableOp.quant_dense_111/kernel_max/Read/ReadVariableOp7quant_dense_111/post_activation_min/Read/ReadVariableOp7quant_dense_111/post_activation_max/Read/ReadVariableOp2quant_dense_112/optimizer_step/Read/ReadVariableOp.quant_dense_112/kernel_min/Read/ReadVariableOp.quant_dense_112/kernel_max/Read/ReadVariableOp7quant_dense_112/post_activation_min/Read/ReadVariableOp7quant_dense_112/post_activation_max/Read/ReadVariableOp2quant_dense_113/optimizer_step/Read/ReadVariableOp.quant_dense_113/kernel_min/Read/ReadVariableOp.quant_dense_113/kernel_max/Read/ReadVariableOp7quant_dense_113/post_activation_min/Read/ReadVariableOp7quant_dense_113/post_activation_max/Read/ReadVariableOp$dense_111/kernel/Read/ReadVariableOp"dense_111/bias/Read/ReadVariableOp$dense_112/kernel/Read/ReadVariableOp"dense_112/bias/Read/ReadVariableOp$dense_113/kernel/Read/ReadVariableOp"dense_113/bias/Read/ReadVariableOpConst*&
Tin
2*
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
__inference__traced_save_691848
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename%quantize_layer_1/quantize_layer_1_min%quantize_layer_1/quantize_layer_1_maxquantize_layer_1/optimizer_stepquant_flatten_37/optimizer_stepquant_dense_111/optimizer_stepquant_dense_111/kernel_minquant_dense_111/kernel_max#quant_dense_111/post_activation_min#quant_dense_111/post_activation_maxquant_dense_112/optimizer_stepquant_dense_112/kernel_minquant_dense_112/kernel_max#quant_dense_112/post_activation_min#quant_dense_112/post_activation_maxquant_dense_113/optimizer_stepquant_dense_113/kernel_minquant_dense_113/kernel_max#quant_dense_113/post_activation_min#quant_dense_113/post_activation_maxdense_111/kerneldense_111/biasdense_112/kerneldense_112/biasdense_113/kerneldense_113/bias*%
Tin
2*
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
"__inference__traced_restore_691933??
?
h
L__inference_quant_flatten_37_layer_call_and_return_conditional_losses_690203

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2
Const^
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes

: 2	
Reshape[
IdentityIdentityReshape:output:0*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
?
0__inference_quant_dense_112_layer_call_fn_691562

inputs
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_112_layer_call_and_return_conditional_losses_6905212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

: 
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_690175
flatten_37_inputj
`sequential_37_quantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: l
bsequential_37_quantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: n
\sequential_37_quant_dense_111_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:  h
^sequential_37_quant_dense_111_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: h
^sequential_37_quant_dense_111_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: K
=sequential_37_quant_dense_111_biasadd_readvariableop_resource: i
_sequential_37_quant_dense_111_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: k
asequential_37_quant_dense_111_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: n
\sequential_37_quant_dense_112_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:  h
^sequential_37_quant_dense_112_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: h
^sequential_37_quant_dense_112_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: K
=sequential_37_quant_dense_112_biasadd_readvariableop_resource: i
_sequential_37_quant_dense_112_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: k
asequential_37_quant_dense_112_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: n
\sequential_37_quant_dense_113_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource: h
^sequential_37_quant_dense_113_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: h
^sequential_37_quant_dense_113_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: K
=sequential_37_quant_dense_113_biasadd_readvariableop_resource:i
_sequential_37_quant_dense_113_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: k
asequential_37_quant_dense_113_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??4sequential_37/quant_dense_111/BiasAdd/ReadVariableOp?Ssequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Usequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Usequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Vsequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Xsequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?4sequential_37/quant_dense_112/BiasAdd/ReadVariableOp?Ssequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Usequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Usequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Vsequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Xsequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?4sequential_37/quant_dense_113/BiasAdd/ReadVariableOp?Ssequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Usequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Usequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Vsequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Xsequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?Wsequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Ysequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Wsequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp`sequential_37_quantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02Y
Wsequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Ysequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpbsequential_37_quantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02[
Ysequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Hsequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsflatten_37_input_sequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0asequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*"
_output_shapes
:2J
Hsequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars?
$sequential_37/quant_flatten_37/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2&
$sequential_37/quant_flatten_37/Const?
&sequential_37/quant_flatten_37/ReshapeReshapeRsequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0-sequential_37/quant_flatten_37/Const:output:0*
T0*
_output_shapes

: 2(
&sequential_37/quant_flatten_37/Reshape?
Ssequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp\sequential_37_quant_dense_111_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:  *
dtype02U
Ssequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Usequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp^sequential_37_quant_dense_111_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02W
Usequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Usequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp^sequential_37_quant_dense_111_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02W
Usequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
Dsequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars[sequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0]sequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0]sequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:  *
narrow_range(2F
Dsequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars?
$sequential_37/quant_dense_111/MatMulMatMul/sequential_37/quant_flatten_37/Reshape:output:0Nsequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

: 2&
$sequential_37/quant_dense_111/MatMul?
4sequential_37/quant_dense_111/BiasAdd/ReadVariableOpReadVariableOp=sequential_37_quant_dense_111_biasadd_readvariableop_resource*
_output_shapes
: *
dtype026
4sequential_37/quant_dense_111/BiasAdd/ReadVariableOp?
%sequential_37/quant_dense_111/BiasAddBiasAdd.sequential_37/quant_dense_111/MatMul:product:0<sequential_37/quant_dense_111/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 2'
%sequential_37/quant_dense_111/BiasAdd?
"sequential_37/quant_dense_111/ReluRelu.sequential_37/quant_dense_111/BiasAdd:output:0*
T0*
_output_shapes

: 2$
"sequential_37/quant_dense_111/Relu?
Vsequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp_sequential_37_quant_dense_111_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02X
Vsequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Xsequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpasequential_37_quant_dense_111_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02Z
Xsequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Gsequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars0sequential_37/quant_dense_111/Relu:activations:0^sequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0`sequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

: 2I
Gsequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars?
Ssequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp\sequential_37_quant_dense_112_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:  *
dtype02U
Ssequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Usequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp^sequential_37_quant_dense_112_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02W
Usequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Usequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp^sequential_37_quant_dense_112_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02W
Usequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
Dsequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars[sequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0]sequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0]sequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:  *
narrow_range(2F
Dsequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars?
$sequential_37/quant_dense_112/MatMulMatMulQsequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0Nsequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

: 2&
$sequential_37/quant_dense_112/MatMul?
4sequential_37/quant_dense_112/BiasAdd/ReadVariableOpReadVariableOp=sequential_37_quant_dense_112_biasadd_readvariableop_resource*
_output_shapes
: *
dtype026
4sequential_37/quant_dense_112/BiasAdd/ReadVariableOp?
%sequential_37/quant_dense_112/BiasAddBiasAdd.sequential_37/quant_dense_112/MatMul:product:0<sequential_37/quant_dense_112/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 2'
%sequential_37/quant_dense_112/BiasAdd?
"sequential_37/quant_dense_112/ReluRelu.sequential_37/quant_dense_112/BiasAdd:output:0*
T0*
_output_shapes

: 2$
"sequential_37/quant_dense_112/Relu?
Vsequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp_sequential_37_quant_dense_112_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02X
Vsequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Xsequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpasequential_37_quant_dense_112_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02Z
Xsequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Gsequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars0sequential_37/quant_dense_112/Relu:activations:0^sequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0`sequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

: 2I
Gsequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars?
Ssequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp\sequential_37_quant_dense_113_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

: *
dtype02U
Ssequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Usequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp^sequential_37_quant_dense_113_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02W
Usequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Usequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp^sequential_37_quant_dense_113_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02W
Usequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
Dsequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars[sequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0]sequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0]sequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: *
narrow_range(2F
Dsequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars?
$sequential_37/quant_dense_113/MatMulMatMulQsequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0Nsequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

:2&
$sequential_37/quant_dense_113/MatMul?
4sequential_37/quant_dense_113/BiasAdd/ReadVariableOpReadVariableOp=sequential_37_quant_dense_113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4sequential_37/quant_dense_113/BiasAdd/ReadVariableOp?
%sequential_37/quant_dense_113/BiasAddBiasAdd.sequential_37/quant_dense_113/MatMul:product:0<sequential_37/quant_dense_113/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2'
%sequential_37/quant_dense_113/BiasAdd?
Vsequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp_sequential_37_quant_dense_113_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02X
Vsequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Xsequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpasequential_37_quant_dense_113_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02Z
Xsequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Gsequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars.sequential_37/quant_dense_113/BiasAdd:output:0^sequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0`sequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

:2I
Gsequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentityQsequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:05^sequential_37/quant_dense_111/BiasAdd/ReadVariableOpT^sequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpV^sequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1V^sequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2W^sequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpY^sequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_15^sequential_37/quant_dense_112/BiasAdd/ReadVariableOpT^sequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpV^sequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1V^sequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2W^sequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpY^sequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_15^sequential_37/quant_dense_113/BiasAdd/ReadVariableOpT^sequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpV^sequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1V^sequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2W^sequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpY^sequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1X^sequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpZ^sequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:: : : : : : : : : : : : : : : : : : : : 2l
4sequential_37/quant_dense_111/BiasAdd/ReadVariableOp4sequential_37/quant_dense_111/BiasAdd/ReadVariableOp2?
Ssequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpSsequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Usequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Usequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Usequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Usequential_37/quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Vsequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpVsequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Xsequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Xsequential_37/quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12l
4sequential_37/quant_dense_112/BiasAdd/ReadVariableOp4sequential_37/quant_dense_112/BiasAdd/ReadVariableOp2?
Ssequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpSsequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Usequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Usequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Usequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Usequential_37/quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Vsequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpVsequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Xsequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Xsequential_37/quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12l
4sequential_37/quant_dense_113/BiasAdd/ReadVariableOp4sequential_37/quant_dense_113/BiasAdd/ReadVariableOp2?
Ssequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpSsequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Usequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Usequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Usequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Usequential_37/quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Vsequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpVsequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Xsequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Xsequential_37/quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Wsequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpWsequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Ysequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ysequential_37/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:T P
"
_output_shapes
:
*
_user_specified_nameflatten_37_input
?
h
L__inference_quant_flatten_37_layer_call_and_return_conditional_losses_691416

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2
Const^
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes

: 2	
Reshape[
IdentityIdentityReshape:output:0*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
?"
?
K__inference_quant_dense_113_layer_call_and_return_conditional_losses_691694

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource:K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

: *
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

: *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars}
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
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
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

:2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:F B

_output_shapes

: 
 
_user_specified_nameinputs
?
?
.__inference_sequential_37_layer_call_fn_691104

inputs
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16:

unknown_17: 

unknown_18: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_37_layer_call_and_return_conditional_losses_6907812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?"
?
K__inference_quant_dense_111_layer_call_and_return_conditional_losses_691471

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:  J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:  *
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

:  *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars}
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

: 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 2	
BiasAddO
ReluReluBiasAdd:output:0*
T0*
_output_shapes

: 2
Relu?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

: 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:F B

_output_shapes

: 
 
_user_specified_nameinputs
?<
?
__inference__traced_save_691848
file_prefixD
@savev2_quantize_layer_1_quantize_layer_1_min_read_readvariableopD
@savev2_quantize_layer_1_quantize_layer_1_max_read_readvariableop>
:savev2_quantize_layer_1_optimizer_step_read_readvariableop>
:savev2_quant_flatten_37_optimizer_step_read_readvariableop=
9savev2_quant_dense_111_optimizer_step_read_readvariableop9
5savev2_quant_dense_111_kernel_min_read_readvariableop9
5savev2_quant_dense_111_kernel_max_read_readvariableopB
>savev2_quant_dense_111_post_activation_min_read_readvariableopB
>savev2_quant_dense_111_post_activation_max_read_readvariableop=
9savev2_quant_dense_112_optimizer_step_read_readvariableop9
5savev2_quant_dense_112_kernel_min_read_readvariableop9
5savev2_quant_dense_112_kernel_max_read_readvariableopB
>savev2_quant_dense_112_post_activation_min_read_readvariableopB
>savev2_quant_dense_112_post_activation_max_read_readvariableop=
9savev2_quant_dense_113_optimizer_step_read_readvariableop9
5savev2_quant_dense_113_kernel_min_read_readvariableop9
5savev2_quant_dense_113_kernel_max_read_readvariableopB
>savev2_quant_dense_113_post_activation_min_read_readvariableopB
>savev2_quant_dense_113_post_activation_max_read_readvariableop/
+savev2_dense_111_kernel_read_readvariableop-
)savev2_dense_111_bias_read_readvariableop/
+savev2_dense_112_kernel_read_readvariableop-
)savev2_dense_112_bias_read_readvariableop/
+savev2_dense_113_kernel_read_readvariableop-
)savev2_dense_113_bias_read_readvariableop
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
:*
dtype0*?
value?B?BDlayer_with_weights-0/quantize_layer_1_min/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-0/quantize_layer_1_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-3/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-4/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0@savev2_quantize_layer_1_quantize_layer_1_min_read_readvariableop@savev2_quantize_layer_1_quantize_layer_1_max_read_readvariableop:savev2_quantize_layer_1_optimizer_step_read_readvariableop:savev2_quant_flatten_37_optimizer_step_read_readvariableop9savev2_quant_dense_111_optimizer_step_read_readvariableop5savev2_quant_dense_111_kernel_min_read_readvariableop5savev2_quant_dense_111_kernel_max_read_readvariableop>savev2_quant_dense_111_post_activation_min_read_readvariableop>savev2_quant_dense_111_post_activation_max_read_readvariableop9savev2_quant_dense_112_optimizer_step_read_readvariableop5savev2_quant_dense_112_kernel_min_read_readvariableop5savev2_quant_dense_112_kernel_max_read_readvariableop>savev2_quant_dense_112_post_activation_min_read_readvariableop>savev2_quant_dense_112_post_activation_max_read_readvariableop9savev2_quant_dense_113_optimizer_step_read_readvariableop5savev2_quant_dense_113_kernel_min_read_readvariableop5savev2_quant_dense_113_kernel_max_read_readvariableop>savev2_quant_dense_113_post_activation_min_read_readvariableop>savev2_quant_dense_113_post_activation_max_read_readvariableop+savev2_dense_111_kernel_read_readvariableop)savev2_dense_111_bias_read_readvariableop+savev2_dense_112_kernel_read_readvariableop)savev2_dense_112_bias_read_readvariableop+savev2_dense_113_kernel_read_readvariableop)savev2_dense_113_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
22
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

identity_1Identity_1:output:0*m
_input_shapes\
Z: : : : : : : : : : : : : : : : : : : : :  : :  : : :: 2(
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: 
?"
?
I__inference_sequential_37_layer_call_and_return_conditional_losses_690918
flatten_37_input!
quantize_layer_1_690872: !
quantize_layer_1_690874: (
quant_dense_111_690878:   
quant_dense_111_690880:  
quant_dense_111_690882: $
quant_dense_111_690884:  
quant_dense_111_690886:  
quant_dense_111_690888: (
quant_dense_112_690891:   
quant_dense_112_690893:  
quant_dense_112_690895: $
quant_dense_112_690897:  
quant_dense_112_690899:  
quant_dense_112_690901: (
quant_dense_113_690904:  
quant_dense_113_690906:  
quant_dense_113_690908: $
quant_dense_113_690910: 
quant_dense_113_690912:  
quant_dense_113_690914: 
identity??'quant_dense_111/StatefulPartitionedCall?'quant_dense_112/StatefulPartitionedCall?'quant_dense_113/StatefulPartitionedCall?(quantize_layer_1/StatefulPartitionedCall?
(quantize_layer_1/StatefulPartitionedCallStatefulPartitionedCallflatten_37_inputquantize_layer_1_690872quantize_layer_1_690874*
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
GPU 2J 8? *U
fPRN
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_6901912*
(quantize_layer_1/StatefulPartitionedCall?
 quant_flatten_37/PartitionedCallPartitionedCall1quantize_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_quant_flatten_37_layer_call_and_return_conditional_losses_6902032"
 quant_flatten_37/PartitionedCall?
'quant_dense_111/StatefulPartitionedCallStatefulPartitionedCall)quant_flatten_37/PartitionedCall:output:0quant_dense_111_690878quant_dense_111_690880quant_dense_111_690882quant_dense_111_690884quant_dense_111_690886quant_dense_111_690888*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_111_layer_call_and_return_conditional_losses_6902262)
'quant_dense_111/StatefulPartitionedCall?
'quant_dense_112/StatefulPartitionedCallStatefulPartitionedCall0quant_dense_111/StatefulPartitionedCall:output:0quant_dense_112_690891quant_dense_112_690893quant_dense_112_690895quant_dense_112_690897quant_dense_112_690899quant_dense_112_690901*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_112_layer_call_and_return_conditional_losses_6902612)
'quant_dense_112/StatefulPartitionedCall?
'quant_dense_113/StatefulPartitionedCallStatefulPartitionedCall0quant_dense_112/StatefulPartitionedCall:output:0quant_dense_113_690904quant_dense_113_690906quant_dense_113_690908quant_dense_113_690910quant_dense_113_690912quant_dense_113_690914*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_113_layer_call_and_return_conditional_losses_6902952)
'quant_dense_113/StatefulPartitionedCall?
IdentityIdentity0quant_dense_113/StatefulPartitionedCall:output:0(^quant_dense_111/StatefulPartitionedCall(^quant_dense_112/StatefulPartitionedCall(^quant_dense_113/StatefulPartitionedCall)^quantize_layer_1/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:: : : : : : : : : : : : : : : : : : : : 2R
'quant_dense_111/StatefulPartitionedCall'quant_dense_111/StatefulPartitionedCall2R
'quant_dense_112/StatefulPartitionedCall'quant_dense_112/StatefulPartitionedCall2R
'quant_dense_113/StatefulPartitionedCall'quant_dense_113/StatefulPartitionedCall2T
(quantize_layer_1/StatefulPartitionedCall(quantize_layer_1/StatefulPartitionedCall:T P
"
_output_shapes
:
*
_user_specified_nameflatten_37_input
?"
?
K__inference_quant_dense_112_layer_call_and_return_conditional_losses_690261

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:  J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:  *
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

:  *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars}
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

: 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 2	
BiasAddO
ReluReluBiasAdd:output:0*
T0*
_output_shapes

: 2
Relu?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

: 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:F B

_output_shapes

: 
 
_user_specified_nameinputs
?
?
1__inference_quantize_layer_1_layer_call_fn_691355

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
GPU 2J 8? *U
fPRN
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_6901912
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
?b
?
K__inference_quant_dense_111_layer_call_and_return_conditional_losses_690613

inputs=
+lastvaluequant_rank_readvariableop_resource:  /
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
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

:  *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
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

:  *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
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

:  *
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

:  *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars}
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

: 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 2	
BiasAddO
ReluReluBiasAdd:output:0*
T0*
_output_shapes

: 2
Relu?
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

: 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:F B

_output_shapes

: 
 
_user_specified_nameinputs
?b
?
K__inference_quant_dense_112_layer_call_and_return_conditional_losses_691640

inputs=
+lastvaluequant_rank_readvariableop_resource:  /
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
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

:  *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
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

:  *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
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

:  *
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

:  *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars}
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

: 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 2	
BiasAddO
ReluReluBiasAdd:output:0*
T0*
_output_shapes

: 2
Relu?
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

: 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:F B

_output_shapes

: 
 
_user_specified_nameinputs
?"
?
I__inference_sequential_37_layer_call_and_return_conditional_losses_690967
flatten_37_input!
quantize_layer_1_690921: !
quantize_layer_1_690923: (
quant_dense_111_690927:   
quant_dense_111_690929:  
quant_dense_111_690931: $
quant_dense_111_690933:  
quant_dense_111_690935:  
quant_dense_111_690937: (
quant_dense_112_690940:   
quant_dense_112_690942:  
quant_dense_112_690944: $
quant_dense_112_690946:  
quant_dense_112_690948:  
quant_dense_112_690950: (
quant_dense_113_690953:  
quant_dense_113_690955:  
quant_dense_113_690957: $
quant_dense_113_690959: 
quant_dense_113_690961:  
quant_dense_113_690963: 
identity??'quant_dense_111/StatefulPartitionedCall?'quant_dense_112/StatefulPartitionedCall?'quant_dense_113/StatefulPartitionedCall?(quantize_layer_1/StatefulPartitionedCall?
(quantize_layer_1/StatefulPartitionedCallStatefulPartitionedCallflatten_37_inputquantize_layer_1_690921quantize_layer_1_690923*
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
GPU 2J 8? *U
fPRN
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_6906782*
(quantize_layer_1/StatefulPartitionedCall?
 quant_flatten_37/PartitionedCallPartitionedCall1quantize_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_quant_flatten_37_layer_call_and_return_conditional_losses_6906422"
 quant_flatten_37/PartitionedCall?
'quant_dense_111/StatefulPartitionedCallStatefulPartitionedCall)quant_flatten_37/PartitionedCall:output:0quant_dense_111_690927quant_dense_111_690929quant_dense_111_690931quant_dense_111_690933quant_dense_111_690935quant_dense_111_690937*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_111_layer_call_and_return_conditional_losses_6906132)
'quant_dense_111/StatefulPartitionedCall?
'quant_dense_112/StatefulPartitionedCallStatefulPartitionedCall0quant_dense_111/StatefulPartitionedCall:output:0quant_dense_112_690940quant_dense_112_690942quant_dense_112_690944quant_dense_112_690946quant_dense_112_690948quant_dense_112_690950*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_112_layer_call_and_return_conditional_losses_6905212)
'quant_dense_112/StatefulPartitionedCall?
'quant_dense_113/StatefulPartitionedCallStatefulPartitionedCall0quant_dense_112/StatefulPartitionedCall:output:0quant_dense_113_690953quant_dense_113_690955quant_dense_113_690957quant_dense_113_690959quant_dense_113_690961quant_dense_113_690963*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_113_layer_call_and_return_conditional_losses_6904292)
'quant_dense_113/StatefulPartitionedCall?
IdentityIdentity0quant_dense_113/StatefulPartitionedCall:output:0(^quant_dense_111/StatefulPartitionedCall(^quant_dense_112/StatefulPartitionedCall(^quant_dense_113/StatefulPartitionedCall)^quantize_layer_1/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:: : : : : : : : : : : : : : : : : : : : 2R
'quant_dense_111/StatefulPartitionedCall'quant_dense_111/StatefulPartitionedCall2R
'quant_dense_112/StatefulPartitionedCall'quant_dense_112/StatefulPartitionedCall2R
'quant_dense_113/StatefulPartitionedCall'quant_dense_113/StatefulPartitionedCall2T
(quantize_layer_1/StatefulPartitionedCall(quantize_layer_1/StatefulPartitionedCall:T P
"
_output_shapes
:
*
_user_specified_nameflatten_37_input
?
?
0__inference_quant_dense_112_layer_call_fn_691545

inputs
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_112_layer_call_and_return_conditional_losses_6902612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

: 
 
_user_specified_nameinputs
?
M
1__inference_quant_flatten_37_layer_call_fn_691404

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_quant_flatten_37_layer_call_and_return_conditional_losses_6906422
PartitionedCallc
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
?"
?
I__inference_sequential_37_layer_call_and_return_conditional_losses_690781

inputs!
quantize_layer_1_690735: !
quantize_layer_1_690737: (
quant_dense_111_690741:   
quant_dense_111_690743:  
quant_dense_111_690745: $
quant_dense_111_690747:  
quant_dense_111_690749:  
quant_dense_111_690751: (
quant_dense_112_690754:   
quant_dense_112_690756:  
quant_dense_112_690758: $
quant_dense_112_690760:  
quant_dense_112_690762:  
quant_dense_112_690764: (
quant_dense_113_690767:  
quant_dense_113_690769:  
quant_dense_113_690771: $
quant_dense_113_690773: 
quant_dense_113_690775:  
quant_dense_113_690777: 
identity??'quant_dense_111/StatefulPartitionedCall?'quant_dense_112/StatefulPartitionedCall?'quant_dense_113/StatefulPartitionedCall?(quantize_layer_1/StatefulPartitionedCall?
(quantize_layer_1/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_1_690735quantize_layer_1_690737*
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
GPU 2J 8? *U
fPRN
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_6906782*
(quantize_layer_1/StatefulPartitionedCall?
 quant_flatten_37/PartitionedCallPartitionedCall1quantize_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_quant_flatten_37_layer_call_and_return_conditional_losses_6906422"
 quant_flatten_37/PartitionedCall?
'quant_dense_111/StatefulPartitionedCallStatefulPartitionedCall)quant_flatten_37/PartitionedCall:output:0quant_dense_111_690741quant_dense_111_690743quant_dense_111_690745quant_dense_111_690747quant_dense_111_690749quant_dense_111_690751*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_111_layer_call_and_return_conditional_losses_6906132)
'quant_dense_111/StatefulPartitionedCall?
'quant_dense_112/StatefulPartitionedCallStatefulPartitionedCall0quant_dense_111/StatefulPartitionedCall:output:0quant_dense_112_690754quant_dense_112_690756quant_dense_112_690758quant_dense_112_690760quant_dense_112_690762quant_dense_112_690764*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_112_layer_call_and_return_conditional_losses_6905212)
'quant_dense_112/StatefulPartitionedCall?
'quant_dense_113/StatefulPartitionedCallStatefulPartitionedCall0quant_dense_112/StatefulPartitionedCall:output:0quant_dense_113_690767quant_dense_113_690769quant_dense_113_690771quant_dense_113_690773quant_dense_113_690775quant_dense_113_690777*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_113_layer_call_and_return_conditional_losses_6904292)
'quant_dense_113/StatefulPartitionedCall?
IdentityIdentity0quant_dense_113/StatefulPartitionedCall:output:0(^quant_dense_111/StatefulPartitionedCall(^quant_dense_112/StatefulPartitionedCall(^quant_dense_113/StatefulPartitionedCall)^quantize_layer_1/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:: : : : : : : : : : : : : : : : : : : : 2R
'quant_dense_111/StatefulPartitionedCall'quant_dense_111/StatefulPartitionedCall2R
'quant_dense_112/StatefulPartitionedCall'quant_dense_112/StatefulPartitionedCall2R
'quant_dense_113/StatefulPartitionedCall'quant_dense_113/StatefulPartitionedCall2T
(quantize_layer_1/StatefulPartitionedCall(quantize_layer_1/StatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
h
L__inference_quant_flatten_37_layer_call_and_return_conditional_losses_691410

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2
Const^
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes

: 2	
Reshape[
IdentityIdentityReshape:output:0*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
?a
?
K__inference_quant_dense_113_layer_call_and_return_conditional_losses_690429

inputs=
+lastvaluequant_rank_readvariableop_resource: /
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource:@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
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

: *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
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

: *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
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

: *
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

: *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars}
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
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
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinBiasAdd:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxBiasAdd:output:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

:2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:F B

_output_shapes

: 
 
_user_specified_nameinputs
?
?
0__inference_quant_dense_111_layer_call_fn_691450

inputs
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_111_layer_call_and_return_conditional_losses_6906132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

: 
 
_user_specified_nameinputs
?
?
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_691373

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
?"
?
K__inference_quant_dense_113_layer_call_and_return_conditional_losses_690295

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource:K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

: *
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

: *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars}
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
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
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

:2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:F B

_output_shapes

: 
 
_user_specified_nameinputs
?&
?
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_691394

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
?
?
0__inference_quant_dense_111_layer_call_fn_691433

inputs
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_111_layer_call_and_return_conditional_losses_6902262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

: 
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_691014
flatten_37_input
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16:

unknown_17: 

unknown_18: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_37_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_6901752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
"
_output_shapes
:
*
_user_specified_nameflatten_37_input
?"
?
I__inference_sequential_37_layer_call_and_return_conditional_losses_690310

inputs!
quantize_layer_1_690192: !
quantize_layer_1_690194: (
quant_dense_111_690227:   
quant_dense_111_690229:  
quant_dense_111_690231: $
quant_dense_111_690233:  
quant_dense_111_690235:  
quant_dense_111_690237: (
quant_dense_112_690262:   
quant_dense_112_690264:  
quant_dense_112_690266: $
quant_dense_112_690268:  
quant_dense_112_690270:  
quant_dense_112_690272: (
quant_dense_113_690296:  
quant_dense_113_690298:  
quant_dense_113_690300: $
quant_dense_113_690302: 
quant_dense_113_690304:  
quant_dense_113_690306: 
identity??'quant_dense_111/StatefulPartitionedCall?'quant_dense_112/StatefulPartitionedCall?'quant_dense_113/StatefulPartitionedCall?(quantize_layer_1/StatefulPartitionedCall?
(quantize_layer_1/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_1_690192quantize_layer_1_690194*
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
GPU 2J 8? *U
fPRN
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_6901912*
(quantize_layer_1/StatefulPartitionedCall?
 quant_flatten_37/PartitionedCallPartitionedCall1quantize_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_quant_flatten_37_layer_call_and_return_conditional_losses_6902032"
 quant_flatten_37/PartitionedCall?
'quant_dense_111/StatefulPartitionedCallStatefulPartitionedCall)quant_flatten_37/PartitionedCall:output:0quant_dense_111_690227quant_dense_111_690229quant_dense_111_690231quant_dense_111_690233quant_dense_111_690235quant_dense_111_690237*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_111_layer_call_and_return_conditional_losses_6902262)
'quant_dense_111/StatefulPartitionedCall?
'quant_dense_112/StatefulPartitionedCallStatefulPartitionedCall0quant_dense_111/StatefulPartitionedCall:output:0quant_dense_112_690262quant_dense_112_690264quant_dense_112_690266quant_dense_112_690268quant_dense_112_690270quant_dense_112_690272*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_112_layer_call_and_return_conditional_losses_6902612)
'quant_dense_112/StatefulPartitionedCall?
'quant_dense_113/StatefulPartitionedCallStatefulPartitionedCall0quant_dense_112/StatefulPartitionedCall:output:0quant_dense_113_690296quant_dense_113_690298quant_dense_113_690300quant_dense_113_690302quant_dense_113_690304quant_dense_113_690306*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_113_layer_call_and_return_conditional_losses_6902952)
'quant_dense_113/StatefulPartitionedCall?
IdentityIdentity0quant_dense_113/StatefulPartitionedCall:output:0(^quant_dense_111/StatefulPartitionedCall(^quant_dense_112/StatefulPartitionedCall(^quant_dense_113/StatefulPartitionedCall)^quantize_layer_1/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:: : : : : : : : : : : : : : : : : : : : 2R
'quant_dense_111/StatefulPartitionedCall'quant_dense_111/StatefulPartitionedCall2R
'quant_dense_112/StatefulPartitionedCall'quant_dense_112/StatefulPartitionedCall2R
'quant_dense_113/StatefulPartitionedCall'quant_dense_113/StatefulPartitionedCall2T
(quantize_layer_1/StatefulPartitionedCall(quantize_layer_1/StatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
?
0__inference_quant_dense_113_layer_call_fn_691674

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_113_layer_call_and_return_conditional_losses_6904292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

: 
 
_user_specified_nameinputs
?b
?
K__inference_quant_dense_111_layer_call_and_return_conditional_losses_691528

inputs=
+lastvaluequant_rank_readvariableop_resource:  /
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
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

:  *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
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

:  *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
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

:  *
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

:  *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars}
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

: 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 2	
BiasAddO
ReluReluBiasAdd:output:0*
T0*
_output_shapes

: 2
Relu?
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

: 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:F B

_output_shapes

: 
 
_user_specified_nameinputs
?
?
.__inference_sequential_37_layer_call_fn_690353
flatten_37_input
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16:

unknown_17: 

unknown_18: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_37_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_37_layer_call_and_return_conditional_losses_6903102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
"
_output_shapes
:
*
_user_specified_nameflatten_37_input
?b
?
K__inference_quant_dense_112_layer_call_and_return_conditional_losses_690521

inputs=
+lastvaluequant_rank_readvariableop_resource:  /
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
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

:  *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
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

:  *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
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

:  *
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

:  *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars}
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

: 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 2	
BiasAddO
ReluReluBiasAdd:output:0*
T0*
_output_shapes

: 2
Relu?
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

: 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:F B

_output_shapes

: 
 
_user_specified_nameinputs
?a
?
K__inference_quant_dense_113_layer_call_and_return_conditional_losses_691750

inputs=
+lastvaluequant_rank_readvariableop_resource: /
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource:@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
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

: *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
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

: *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
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

: *
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

: *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars}
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
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
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinBiasAdd:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxBiasAdd:output:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

:2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:F B

_output_shapes

: 
 
_user_specified_nameinputs
?
?
1__inference_quantize_layer_1_layer_call_fn_691364

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
GPU 2J 8? *U
fPRN
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_6906782
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
?&
?
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_690678

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
?"
?
K__inference_quant_dense_111_layer_call_and_return_conditional_losses_690226

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:  J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:  *
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

:  *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars}
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

: 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 2	
BiasAddO
ReluReluBiasAdd:output:0*
T0*
_output_shapes

: 2
Relu?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

: 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:F B

_output_shapes

: 
 
_user_specified_nameinputs
?
M
1__inference_quant_flatten_37_layer_call_fn_691399

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_quant_flatten_37_layer_call_and_return_conditional_losses_6902032
PartitionedCallc
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
?
.__inference_sequential_37_layer_call_fn_690869
flatten_37_input
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16:

unknown_17: 

unknown_18: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_37_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_37_layer_call_and_return_conditional_losses_6907812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
"
_output_shapes
:
*
_user_specified_nameflatten_37_input
?
?
.__inference_sequential_37_layer_call_fn_691059

inputs
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16:

unknown_17: 

unknown_18: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_37_layer_call_and_return_conditional_losses_6903102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
??
?$
I__inference_sequential_37_layer_call_and_return_conditional_losses_691346

inputsL
Bquantize_layer_1_allvaluesquantize_minimum_readvariableop_resource: L
Bquantize_layer_1_allvaluesquantize_maximum_readvariableop_resource: M
;quant_dense_111_lastvaluequant_rank_readvariableop_resource:  ?
5quant_dense_111_lastvaluequant_assignminlast_resource: ?
5quant_dense_111_lastvaluequant_assignmaxlast_resource: =
/quant_dense_111_biasadd_readvariableop_resource: P
Fquant_dense_111_movingavgquantize_assignminema_readvariableop_resource: P
Fquant_dense_111_movingavgquantize_assignmaxema_readvariableop_resource: M
;quant_dense_112_lastvaluequant_rank_readvariableop_resource:  ?
5quant_dense_112_lastvaluequant_assignminlast_resource: ?
5quant_dense_112_lastvaluequant_assignmaxlast_resource: =
/quant_dense_112_biasadd_readvariableop_resource: P
Fquant_dense_112_movingavgquantize_assignminema_readvariableop_resource: P
Fquant_dense_112_movingavgquantize_assignmaxema_readvariableop_resource: M
;quant_dense_113_lastvaluequant_rank_readvariableop_resource: ?
5quant_dense_113_lastvaluequant_assignminlast_resource: ?
5quant_dense_113_lastvaluequant_assignmaxlast_resource: =
/quant_dense_113_biasadd_readvariableop_resource:P
Fquant_dense_113_movingavgquantize_assignminema_readvariableop_resource: P
Fquant_dense_113_movingavgquantize_assignmaxema_readvariableop_resource: 
identity??&quant_dense_111/BiasAdd/ReadVariableOp?,quant_dense_111/LastValueQuant/AssignMaxLast?,quant_dense_111/LastValueQuant/AssignMinLast?6quant_dense_111/LastValueQuant/BatchMax/ReadVariableOp?6quant_dense_111/LastValueQuant/BatchMin/ReadVariableOp?Equant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Bquant_dense_111/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?=quant_dense_111/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?Bquant_dense_111/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?=quant_dense_111/MovingAvgQuantize/AssignMinEma/ReadVariableOp?Hquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Jquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?&quant_dense_112/BiasAdd/ReadVariableOp?,quant_dense_112/LastValueQuant/AssignMaxLast?,quant_dense_112/LastValueQuant/AssignMinLast?6quant_dense_112/LastValueQuant/BatchMax/ReadVariableOp?6quant_dense_112/LastValueQuant/BatchMin/ReadVariableOp?Equant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Bquant_dense_112/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?=quant_dense_112/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?Bquant_dense_112/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?=quant_dense_112/MovingAvgQuantize/AssignMinEma/ReadVariableOp?Hquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Jquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?&quant_dense_113/BiasAdd/ReadVariableOp?,quant_dense_113/LastValueQuant/AssignMaxLast?,quant_dense_113/LastValueQuant/AssignMinLast?6quant_dense_113/LastValueQuant/BatchMax/ReadVariableOp?6quant_dense_113/LastValueQuant/BatchMin/ReadVariableOp?Equant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Bquant_dense_113/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?=quant_dense_113/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?Bquant_dense_113/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?=quant_dense_113/MovingAvgQuantize/AssignMinEma/ReadVariableOp?Hquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Jquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?4quantize_layer_1/AllValuesQuantize/AssignMaxAllValue?4quantize_layer_1/AllValuesQuantize/AssignMinAllValue?Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?9quantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOp?9quantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOp?
(quantize_layer_1/AllValuesQuantize/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(quantize_layer_1/AllValuesQuantize/Const?
+quantize_layer_1/AllValuesQuantize/BatchMinMininputs1quantize_layer_1/AllValuesQuantize/Const:output:0*
T0*
_output_shapes
: 2-
+quantize_layer_1/AllValuesQuantize/BatchMin?
*quantize_layer_1/AllValuesQuantize/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2,
*quantize_layer_1/AllValuesQuantize/Const_1?
+quantize_layer_1/AllValuesQuantize/BatchMaxMaxinputs3quantize_layer_1/AllValuesQuantize/Const_1:output:0*
T0*
_output_shapes
: 2-
+quantize_layer_1/AllValuesQuantize/BatchMax?
9quantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOpReadVariableOpBquantize_layer_1_allvaluesquantize_minimum_readvariableop_resource*
_output_shapes
: *
dtype02;
9quantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOp?
*quantize_layer_1/AllValuesQuantize/MinimumMinimumAquantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOp:value:04quantize_layer_1/AllValuesQuantize/BatchMin:output:0*
T0*
_output_shapes
: 2,
*quantize_layer_1/AllValuesQuantize/Minimum?
.quantize_layer_1/AllValuesQuantize/Minimum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.quantize_layer_1/AllValuesQuantize/Minimum_1/y?
,quantize_layer_1/AllValuesQuantize/Minimum_1Minimum.quantize_layer_1/AllValuesQuantize/Minimum:z:07quantize_layer_1/AllValuesQuantize/Minimum_1/y:output:0*
T0*
_output_shapes
: 2.
,quantize_layer_1/AllValuesQuantize/Minimum_1?
9quantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOpReadVariableOpBquantize_layer_1_allvaluesquantize_maximum_readvariableop_resource*
_output_shapes
: *
dtype02;
9quantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOp?
*quantize_layer_1/AllValuesQuantize/MaximumMaximumAquantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOp:value:04quantize_layer_1/AllValuesQuantize/BatchMax:output:0*
T0*
_output_shapes
: 2,
*quantize_layer_1/AllValuesQuantize/Maximum?
.quantize_layer_1/AllValuesQuantize/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.quantize_layer_1/AllValuesQuantize/Maximum_1/y?
,quantize_layer_1/AllValuesQuantize/Maximum_1Maximum.quantize_layer_1/AllValuesQuantize/Maximum:z:07quantize_layer_1/AllValuesQuantize/Maximum_1/y:output:0*
T0*
_output_shapes
: 2.
,quantize_layer_1/AllValuesQuantize/Maximum_1?
4quantize_layer_1/AllValuesQuantize/AssignMinAllValueAssignVariableOpBquantize_layer_1_allvaluesquantize_minimum_readvariableop_resource0quantize_layer_1/AllValuesQuantize/Minimum_1:z:0:^quantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOp*
_output_shapes
 *
dtype026
4quantize_layer_1/AllValuesQuantize/AssignMinAllValue?
4quantize_layer_1/AllValuesQuantize/AssignMaxAllValueAssignVariableOpBquantize_layer_1_allvaluesquantize_maximum_readvariableop_resource0quantize_layer_1/AllValuesQuantize/Maximum_1:z:0:^quantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOp*
_output_shapes
 *
dtype026
4quantize_layer_1/AllValuesQuantize/AssignMaxAllValue?
Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpBquantize_layer_1_allvaluesquantize_minimum_readvariableop_resource5^quantize_layer_1/AllValuesQuantize/AssignMinAllValue*
_output_shapes
: *
dtype02K
Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpBquantize_layer_1_allvaluesquantize_maximum_readvariableop_resource5^quantize_layer_1/AllValuesQuantize/AssignMaxAllValue*
_output_shapes
: *
dtype02M
Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
:quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputsQquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Squantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*"
_output_shapes
:2<
:quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars?
quant_flatten_37/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2
quant_flatten_37/Const?
quant_flatten_37/ReshapeReshapeDquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0quant_flatten_37/Const:output:0*
T0*
_output_shapes

: 2
quant_flatten_37/Reshape?
2quant_dense_111/LastValueQuant/Rank/ReadVariableOpReadVariableOp;quant_dense_111_lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
dtype024
2quant_dense_111/LastValueQuant/Rank/ReadVariableOp?
#quant_dense_111/LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2%
#quant_dense_111/LastValueQuant/Rank?
*quant_dense_111/LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*quant_dense_111/LastValueQuant/range/start?
*quant_dense_111/LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*quant_dense_111/LastValueQuant/range/delta?
$quant_dense_111/LastValueQuant/rangeRange3quant_dense_111/LastValueQuant/range/start:output:0,quant_dense_111/LastValueQuant/Rank:output:03quant_dense_111/LastValueQuant/range/delta:output:0*
_output_shapes
:2&
$quant_dense_111/LastValueQuant/range?
6quant_dense_111/LastValueQuant/BatchMin/ReadVariableOpReadVariableOp;quant_dense_111_lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
dtype028
6quant_dense_111/LastValueQuant/BatchMin/ReadVariableOp?
'quant_dense_111/LastValueQuant/BatchMinMin>quant_dense_111/LastValueQuant/BatchMin/ReadVariableOp:value:0-quant_dense_111/LastValueQuant/range:output:0*
T0*
_output_shapes
: 2)
'quant_dense_111/LastValueQuant/BatchMin?
4quant_dense_111/LastValueQuant/Rank_1/ReadVariableOpReadVariableOp;quant_dense_111_lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
dtype026
4quant_dense_111/LastValueQuant/Rank_1/ReadVariableOp?
%quant_dense_111/LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2'
%quant_dense_111/LastValueQuant/Rank_1?
,quant_dense_111/LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2.
,quant_dense_111/LastValueQuant/range_1/start?
,quant_dense_111/LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2.
,quant_dense_111/LastValueQuant/range_1/delta?
&quant_dense_111/LastValueQuant/range_1Range5quant_dense_111/LastValueQuant/range_1/start:output:0.quant_dense_111/LastValueQuant/Rank_1:output:05quant_dense_111/LastValueQuant/range_1/delta:output:0*
_output_shapes
:2(
&quant_dense_111/LastValueQuant/range_1?
6quant_dense_111/LastValueQuant/BatchMax/ReadVariableOpReadVariableOp;quant_dense_111_lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
dtype028
6quant_dense_111/LastValueQuant/BatchMax/ReadVariableOp?
'quant_dense_111/LastValueQuant/BatchMaxMax>quant_dense_111/LastValueQuant/BatchMax/ReadVariableOp:value:0/quant_dense_111/LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2)
'quant_dense_111/LastValueQuant/BatchMax?
(quant_dense_111/LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(quant_dense_111/LastValueQuant/truediv/y?
&quant_dense_111/LastValueQuant/truedivRealDiv0quant_dense_111/LastValueQuant/BatchMax:output:01quant_dense_111/LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2(
&quant_dense_111/LastValueQuant/truediv?
&quant_dense_111/LastValueQuant/MinimumMinimum0quant_dense_111/LastValueQuant/BatchMin:output:0*quant_dense_111/LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2(
&quant_dense_111/LastValueQuant/Minimum?
$quant_dense_111/LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$quant_dense_111/LastValueQuant/mul/y?
"quant_dense_111/LastValueQuant/mulMul0quant_dense_111/LastValueQuant/BatchMin:output:0-quant_dense_111/LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2$
"quant_dense_111/LastValueQuant/mul?
&quant_dense_111/LastValueQuant/MaximumMaximum0quant_dense_111/LastValueQuant/BatchMax:output:0&quant_dense_111/LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2(
&quant_dense_111/LastValueQuant/Maximum?
,quant_dense_111/LastValueQuant/AssignMinLastAssignVariableOp5quant_dense_111_lastvaluequant_assignminlast_resource*quant_dense_111/LastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02.
,quant_dense_111/LastValueQuant/AssignMinLast?
,quant_dense_111/LastValueQuant/AssignMaxLastAssignVariableOp5quant_dense_111_lastvaluequant_assignmaxlast_resource*quant_dense_111/LastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02.
,quant_dense_111/LastValueQuant/AssignMaxLast?
Equant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp;quant_dense_111_lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
dtype02G
Equant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp5quant_dense_111_lastvaluequant_assignminlast_resource-^quant_dense_111/LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02I
Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp5quant_dense_111_lastvaluequant_assignmaxlast_resource-^quant_dense_111/LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02I
Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
6quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsMquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Oquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Oquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:  *
narrow_range(28
6quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense_111/MatMulMatMul!quant_flatten_37/Reshape:output:0@quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

: 2
quant_dense_111/MatMul?
&quant_dense_111/BiasAdd/ReadVariableOpReadVariableOp/quant_dense_111_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02(
&quant_dense_111/BiasAdd/ReadVariableOp?
quant_dense_111/BiasAddBiasAdd quant_dense_111/MatMul:product:0.quant_dense_111/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 2
quant_dense_111/BiasAdd
quant_dense_111/ReluRelu quant_dense_111/BiasAdd:output:0*
T0*
_output_shapes

: 2
quant_dense_111/Relu?
'quant_dense_111/MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2)
'quant_dense_111/MovingAvgQuantize/Const?
*quant_dense_111/MovingAvgQuantize/BatchMinMin"quant_dense_111/Relu:activations:00quant_dense_111/MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2,
*quant_dense_111/MovingAvgQuantize/BatchMin?
)quant_dense_111/MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)quant_dense_111/MovingAvgQuantize/Const_1?
*quant_dense_111/MovingAvgQuantize/BatchMaxMax"quant_dense_111/Relu:activations:02quant_dense_111/MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2,
*quant_dense_111/MovingAvgQuantize/BatchMax?
+quant_dense_111/MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+quant_dense_111/MovingAvgQuantize/Minimum/y?
)quant_dense_111/MovingAvgQuantize/MinimumMinimum3quant_dense_111/MovingAvgQuantize/BatchMin:output:04quant_dense_111/MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2+
)quant_dense_111/MovingAvgQuantize/Minimum?
+quant_dense_111/MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+quant_dense_111/MovingAvgQuantize/Maximum/y?
)quant_dense_111/MovingAvgQuantize/MaximumMaximum3quant_dense_111/MovingAvgQuantize/BatchMax:output:04quant_dense_111/MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2+
)quant_dense_111/MovingAvgQuantize/Maximum?
4quant_dense_111/MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4quant_dense_111/MovingAvgQuantize/AssignMinEma/decay?
=quant_dense_111/MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOpFquant_dense_111_movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02?
=quant_dense_111/MovingAvgQuantize/AssignMinEma/ReadVariableOp?
2quant_dense_111/MovingAvgQuantize/AssignMinEma/subSubEquant_dense_111/MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0-quant_dense_111/MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 24
2quant_dense_111/MovingAvgQuantize/AssignMinEma/sub?
2quant_dense_111/MovingAvgQuantize/AssignMinEma/mulMul6quant_dense_111/MovingAvgQuantize/AssignMinEma/sub:z:0=quant_dense_111/MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 24
2quant_dense_111/MovingAvgQuantize/AssignMinEma/mul?
Bquant_dense_111/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOpFquant_dense_111_movingavgquantize_assignminema_readvariableop_resource6quant_dense_111/MovingAvgQuantize/AssignMinEma/mul:z:0>^quant_dense_111/MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype02D
Bquant_dense_111/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
4quant_dense_111/MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4quant_dense_111/MovingAvgQuantize/AssignMaxEma/decay?
=quant_dense_111/MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOpFquant_dense_111_movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02?
=quant_dense_111/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
2quant_dense_111/MovingAvgQuantize/AssignMaxEma/subSubEquant_dense_111/MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0-quant_dense_111/MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 24
2quant_dense_111/MovingAvgQuantize/AssignMaxEma/sub?
2quant_dense_111/MovingAvgQuantize/AssignMaxEma/mulMul6quant_dense_111/MovingAvgQuantize/AssignMaxEma/sub:z:0=quant_dense_111/MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 24
2quant_dense_111/MovingAvgQuantize/AssignMaxEma/mul?
Bquant_dense_111/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOpFquant_dense_111_movingavgquantize_assignmaxema_readvariableop_resource6quant_dense_111/MovingAvgQuantize/AssignMaxEma/mul:z:0>^quant_dense_111/MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype02D
Bquant_dense_111/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
Hquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpFquant_dense_111_movingavgquantize_assignminema_readvariableop_resourceC^quant_dense_111/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02J
Hquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Jquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpFquant_dense_111_movingavgquantize_assignmaxema_readvariableop_resourceC^quant_dense_111/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02L
Jquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
9quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars"quant_dense_111/Relu:activations:0Pquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Rquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

: 2;
9quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars?
2quant_dense_112/LastValueQuant/Rank/ReadVariableOpReadVariableOp;quant_dense_112_lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
dtype024
2quant_dense_112/LastValueQuant/Rank/ReadVariableOp?
#quant_dense_112/LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2%
#quant_dense_112/LastValueQuant/Rank?
*quant_dense_112/LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*quant_dense_112/LastValueQuant/range/start?
*quant_dense_112/LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*quant_dense_112/LastValueQuant/range/delta?
$quant_dense_112/LastValueQuant/rangeRange3quant_dense_112/LastValueQuant/range/start:output:0,quant_dense_112/LastValueQuant/Rank:output:03quant_dense_112/LastValueQuant/range/delta:output:0*
_output_shapes
:2&
$quant_dense_112/LastValueQuant/range?
6quant_dense_112/LastValueQuant/BatchMin/ReadVariableOpReadVariableOp;quant_dense_112_lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
dtype028
6quant_dense_112/LastValueQuant/BatchMin/ReadVariableOp?
'quant_dense_112/LastValueQuant/BatchMinMin>quant_dense_112/LastValueQuant/BatchMin/ReadVariableOp:value:0-quant_dense_112/LastValueQuant/range:output:0*
T0*
_output_shapes
: 2)
'quant_dense_112/LastValueQuant/BatchMin?
4quant_dense_112/LastValueQuant/Rank_1/ReadVariableOpReadVariableOp;quant_dense_112_lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
dtype026
4quant_dense_112/LastValueQuant/Rank_1/ReadVariableOp?
%quant_dense_112/LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2'
%quant_dense_112/LastValueQuant/Rank_1?
,quant_dense_112/LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2.
,quant_dense_112/LastValueQuant/range_1/start?
,quant_dense_112/LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2.
,quant_dense_112/LastValueQuant/range_1/delta?
&quant_dense_112/LastValueQuant/range_1Range5quant_dense_112/LastValueQuant/range_1/start:output:0.quant_dense_112/LastValueQuant/Rank_1:output:05quant_dense_112/LastValueQuant/range_1/delta:output:0*
_output_shapes
:2(
&quant_dense_112/LastValueQuant/range_1?
6quant_dense_112/LastValueQuant/BatchMax/ReadVariableOpReadVariableOp;quant_dense_112_lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
dtype028
6quant_dense_112/LastValueQuant/BatchMax/ReadVariableOp?
'quant_dense_112/LastValueQuant/BatchMaxMax>quant_dense_112/LastValueQuant/BatchMax/ReadVariableOp:value:0/quant_dense_112/LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2)
'quant_dense_112/LastValueQuant/BatchMax?
(quant_dense_112/LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(quant_dense_112/LastValueQuant/truediv/y?
&quant_dense_112/LastValueQuant/truedivRealDiv0quant_dense_112/LastValueQuant/BatchMax:output:01quant_dense_112/LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2(
&quant_dense_112/LastValueQuant/truediv?
&quant_dense_112/LastValueQuant/MinimumMinimum0quant_dense_112/LastValueQuant/BatchMin:output:0*quant_dense_112/LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2(
&quant_dense_112/LastValueQuant/Minimum?
$quant_dense_112/LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$quant_dense_112/LastValueQuant/mul/y?
"quant_dense_112/LastValueQuant/mulMul0quant_dense_112/LastValueQuant/BatchMin:output:0-quant_dense_112/LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2$
"quant_dense_112/LastValueQuant/mul?
&quant_dense_112/LastValueQuant/MaximumMaximum0quant_dense_112/LastValueQuant/BatchMax:output:0&quant_dense_112/LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2(
&quant_dense_112/LastValueQuant/Maximum?
,quant_dense_112/LastValueQuant/AssignMinLastAssignVariableOp5quant_dense_112_lastvaluequant_assignminlast_resource*quant_dense_112/LastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02.
,quant_dense_112/LastValueQuant/AssignMinLast?
,quant_dense_112/LastValueQuant/AssignMaxLastAssignVariableOp5quant_dense_112_lastvaluequant_assignmaxlast_resource*quant_dense_112/LastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02.
,quant_dense_112/LastValueQuant/AssignMaxLast?
Equant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp;quant_dense_112_lastvaluequant_rank_readvariableop_resource*
_output_shapes

:  *
dtype02G
Equant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp5quant_dense_112_lastvaluequant_assignminlast_resource-^quant_dense_112/LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02I
Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp5quant_dense_112_lastvaluequant_assignmaxlast_resource-^quant_dense_112/LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02I
Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
6quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsMquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Oquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Oquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:  *
narrow_range(28
6quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense_112/MatMulMatMulCquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0@quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

: 2
quant_dense_112/MatMul?
&quant_dense_112/BiasAdd/ReadVariableOpReadVariableOp/quant_dense_112_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02(
&quant_dense_112/BiasAdd/ReadVariableOp?
quant_dense_112/BiasAddBiasAdd quant_dense_112/MatMul:product:0.quant_dense_112/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 2
quant_dense_112/BiasAdd
quant_dense_112/ReluRelu quant_dense_112/BiasAdd:output:0*
T0*
_output_shapes

: 2
quant_dense_112/Relu?
'quant_dense_112/MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2)
'quant_dense_112/MovingAvgQuantize/Const?
*quant_dense_112/MovingAvgQuantize/BatchMinMin"quant_dense_112/Relu:activations:00quant_dense_112/MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2,
*quant_dense_112/MovingAvgQuantize/BatchMin?
)quant_dense_112/MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)quant_dense_112/MovingAvgQuantize/Const_1?
*quant_dense_112/MovingAvgQuantize/BatchMaxMax"quant_dense_112/Relu:activations:02quant_dense_112/MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2,
*quant_dense_112/MovingAvgQuantize/BatchMax?
+quant_dense_112/MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+quant_dense_112/MovingAvgQuantize/Minimum/y?
)quant_dense_112/MovingAvgQuantize/MinimumMinimum3quant_dense_112/MovingAvgQuantize/BatchMin:output:04quant_dense_112/MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2+
)quant_dense_112/MovingAvgQuantize/Minimum?
+quant_dense_112/MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+quant_dense_112/MovingAvgQuantize/Maximum/y?
)quant_dense_112/MovingAvgQuantize/MaximumMaximum3quant_dense_112/MovingAvgQuantize/BatchMax:output:04quant_dense_112/MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2+
)quant_dense_112/MovingAvgQuantize/Maximum?
4quant_dense_112/MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4quant_dense_112/MovingAvgQuantize/AssignMinEma/decay?
=quant_dense_112/MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOpFquant_dense_112_movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02?
=quant_dense_112/MovingAvgQuantize/AssignMinEma/ReadVariableOp?
2quant_dense_112/MovingAvgQuantize/AssignMinEma/subSubEquant_dense_112/MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0-quant_dense_112/MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 24
2quant_dense_112/MovingAvgQuantize/AssignMinEma/sub?
2quant_dense_112/MovingAvgQuantize/AssignMinEma/mulMul6quant_dense_112/MovingAvgQuantize/AssignMinEma/sub:z:0=quant_dense_112/MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 24
2quant_dense_112/MovingAvgQuantize/AssignMinEma/mul?
Bquant_dense_112/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOpFquant_dense_112_movingavgquantize_assignminema_readvariableop_resource6quant_dense_112/MovingAvgQuantize/AssignMinEma/mul:z:0>^quant_dense_112/MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype02D
Bquant_dense_112/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
4quant_dense_112/MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4quant_dense_112/MovingAvgQuantize/AssignMaxEma/decay?
=quant_dense_112/MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOpFquant_dense_112_movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02?
=quant_dense_112/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
2quant_dense_112/MovingAvgQuantize/AssignMaxEma/subSubEquant_dense_112/MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0-quant_dense_112/MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 24
2quant_dense_112/MovingAvgQuantize/AssignMaxEma/sub?
2quant_dense_112/MovingAvgQuantize/AssignMaxEma/mulMul6quant_dense_112/MovingAvgQuantize/AssignMaxEma/sub:z:0=quant_dense_112/MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 24
2quant_dense_112/MovingAvgQuantize/AssignMaxEma/mul?
Bquant_dense_112/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOpFquant_dense_112_movingavgquantize_assignmaxema_readvariableop_resource6quant_dense_112/MovingAvgQuantize/AssignMaxEma/mul:z:0>^quant_dense_112/MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype02D
Bquant_dense_112/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
Hquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpFquant_dense_112_movingavgquantize_assignminema_readvariableop_resourceC^quant_dense_112/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02J
Hquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Jquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpFquant_dense_112_movingavgquantize_assignmaxema_readvariableop_resourceC^quant_dense_112/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02L
Jquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
9quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars"quant_dense_112/Relu:activations:0Pquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Rquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

: 2;
9quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars?
2quant_dense_113/LastValueQuant/Rank/ReadVariableOpReadVariableOp;quant_dense_113_lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype024
2quant_dense_113/LastValueQuant/Rank/ReadVariableOp?
#quant_dense_113/LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2%
#quant_dense_113/LastValueQuant/Rank?
*quant_dense_113/LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*quant_dense_113/LastValueQuant/range/start?
*quant_dense_113/LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*quant_dense_113/LastValueQuant/range/delta?
$quant_dense_113/LastValueQuant/rangeRange3quant_dense_113/LastValueQuant/range/start:output:0,quant_dense_113/LastValueQuant/Rank:output:03quant_dense_113/LastValueQuant/range/delta:output:0*
_output_shapes
:2&
$quant_dense_113/LastValueQuant/range?
6quant_dense_113/LastValueQuant/BatchMin/ReadVariableOpReadVariableOp;quant_dense_113_lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype028
6quant_dense_113/LastValueQuant/BatchMin/ReadVariableOp?
'quant_dense_113/LastValueQuant/BatchMinMin>quant_dense_113/LastValueQuant/BatchMin/ReadVariableOp:value:0-quant_dense_113/LastValueQuant/range:output:0*
T0*
_output_shapes
: 2)
'quant_dense_113/LastValueQuant/BatchMin?
4quant_dense_113/LastValueQuant/Rank_1/ReadVariableOpReadVariableOp;quant_dense_113_lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype026
4quant_dense_113/LastValueQuant/Rank_1/ReadVariableOp?
%quant_dense_113/LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2'
%quant_dense_113/LastValueQuant/Rank_1?
,quant_dense_113/LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2.
,quant_dense_113/LastValueQuant/range_1/start?
,quant_dense_113/LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2.
,quant_dense_113/LastValueQuant/range_1/delta?
&quant_dense_113/LastValueQuant/range_1Range5quant_dense_113/LastValueQuant/range_1/start:output:0.quant_dense_113/LastValueQuant/Rank_1:output:05quant_dense_113/LastValueQuant/range_1/delta:output:0*
_output_shapes
:2(
&quant_dense_113/LastValueQuant/range_1?
6quant_dense_113/LastValueQuant/BatchMax/ReadVariableOpReadVariableOp;quant_dense_113_lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype028
6quant_dense_113/LastValueQuant/BatchMax/ReadVariableOp?
'quant_dense_113/LastValueQuant/BatchMaxMax>quant_dense_113/LastValueQuant/BatchMax/ReadVariableOp:value:0/quant_dense_113/LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2)
'quant_dense_113/LastValueQuant/BatchMax?
(quant_dense_113/LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(quant_dense_113/LastValueQuant/truediv/y?
&quant_dense_113/LastValueQuant/truedivRealDiv0quant_dense_113/LastValueQuant/BatchMax:output:01quant_dense_113/LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2(
&quant_dense_113/LastValueQuant/truediv?
&quant_dense_113/LastValueQuant/MinimumMinimum0quant_dense_113/LastValueQuant/BatchMin:output:0*quant_dense_113/LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2(
&quant_dense_113/LastValueQuant/Minimum?
$quant_dense_113/LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$quant_dense_113/LastValueQuant/mul/y?
"quant_dense_113/LastValueQuant/mulMul0quant_dense_113/LastValueQuant/BatchMin:output:0-quant_dense_113/LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2$
"quant_dense_113/LastValueQuant/mul?
&quant_dense_113/LastValueQuant/MaximumMaximum0quant_dense_113/LastValueQuant/BatchMax:output:0&quant_dense_113/LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2(
&quant_dense_113/LastValueQuant/Maximum?
,quant_dense_113/LastValueQuant/AssignMinLastAssignVariableOp5quant_dense_113_lastvaluequant_assignminlast_resource*quant_dense_113/LastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02.
,quant_dense_113/LastValueQuant/AssignMinLast?
,quant_dense_113/LastValueQuant/AssignMaxLastAssignVariableOp5quant_dense_113_lastvaluequant_assignmaxlast_resource*quant_dense_113/LastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02.
,quant_dense_113/LastValueQuant/AssignMaxLast?
Equant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp;quant_dense_113_lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype02G
Equant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp5quant_dense_113_lastvaluequant_assignminlast_resource-^quant_dense_113/LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02I
Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp5quant_dense_113_lastvaluequant_assignmaxlast_resource-^quant_dense_113/LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02I
Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
6quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsMquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Oquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Oquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: *
narrow_range(28
6quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense_113/MatMulMatMulCquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0@quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

:2
quant_dense_113/MatMul?
&quant_dense_113/BiasAdd/ReadVariableOpReadVariableOp/quant_dense_113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&quant_dense_113/BiasAdd/ReadVariableOp?
quant_dense_113/BiasAddBiasAdd quant_dense_113/MatMul:product:0.quant_dense_113/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
quant_dense_113/BiasAdd?
'quant_dense_113/MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2)
'quant_dense_113/MovingAvgQuantize/Const?
*quant_dense_113/MovingAvgQuantize/BatchMinMin quant_dense_113/BiasAdd:output:00quant_dense_113/MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2,
*quant_dense_113/MovingAvgQuantize/BatchMin?
)quant_dense_113/MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)quant_dense_113/MovingAvgQuantize/Const_1?
*quant_dense_113/MovingAvgQuantize/BatchMaxMax quant_dense_113/BiasAdd:output:02quant_dense_113/MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2,
*quant_dense_113/MovingAvgQuantize/BatchMax?
+quant_dense_113/MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+quant_dense_113/MovingAvgQuantize/Minimum/y?
)quant_dense_113/MovingAvgQuantize/MinimumMinimum3quant_dense_113/MovingAvgQuantize/BatchMin:output:04quant_dense_113/MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2+
)quant_dense_113/MovingAvgQuantize/Minimum?
+quant_dense_113/MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+quant_dense_113/MovingAvgQuantize/Maximum/y?
)quant_dense_113/MovingAvgQuantize/MaximumMaximum3quant_dense_113/MovingAvgQuantize/BatchMax:output:04quant_dense_113/MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2+
)quant_dense_113/MovingAvgQuantize/Maximum?
4quant_dense_113/MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4quant_dense_113/MovingAvgQuantize/AssignMinEma/decay?
=quant_dense_113/MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOpFquant_dense_113_movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02?
=quant_dense_113/MovingAvgQuantize/AssignMinEma/ReadVariableOp?
2quant_dense_113/MovingAvgQuantize/AssignMinEma/subSubEquant_dense_113/MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0-quant_dense_113/MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 24
2quant_dense_113/MovingAvgQuantize/AssignMinEma/sub?
2quant_dense_113/MovingAvgQuantize/AssignMinEma/mulMul6quant_dense_113/MovingAvgQuantize/AssignMinEma/sub:z:0=quant_dense_113/MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 24
2quant_dense_113/MovingAvgQuantize/AssignMinEma/mul?
Bquant_dense_113/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOpFquant_dense_113_movingavgquantize_assignminema_readvariableop_resource6quant_dense_113/MovingAvgQuantize/AssignMinEma/mul:z:0>^quant_dense_113/MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype02D
Bquant_dense_113/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
4quant_dense_113/MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4quant_dense_113/MovingAvgQuantize/AssignMaxEma/decay?
=quant_dense_113/MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOpFquant_dense_113_movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02?
=quant_dense_113/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
2quant_dense_113/MovingAvgQuantize/AssignMaxEma/subSubEquant_dense_113/MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0-quant_dense_113/MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 24
2quant_dense_113/MovingAvgQuantize/AssignMaxEma/sub?
2quant_dense_113/MovingAvgQuantize/AssignMaxEma/mulMul6quant_dense_113/MovingAvgQuantize/AssignMaxEma/sub:z:0=quant_dense_113/MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 24
2quant_dense_113/MovingAvgQuantize/AssignMaxEma/mul?
Bquant_dense_113/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOpFquant_dense_113_movingavgquantize_assignmaxema_readvariableop_resource6quant_dense_113/MovingAvgQuantize/AssignMaxEma/mul:z:0>^quant_dense_113/MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype02D
Bquant_dense_113/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
Hquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpFquant_dense_113_movingavgquantize_assignminema_readvariableop_resourceC^quant_dense_113/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02J
Hquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Jquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpFquant_dense_113_movingavgquantize_assignmaxema_readvariableop_resourceC^quant_dense_113/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02L
Jquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
9quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars quant_dense_113/BiasAdd:output:0Pquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Rquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

:2;
9quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentityCquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0'^quant_dense_111/BiasAdd/ReadVariableOp-^quant_dense_111/LastValueQuant/AssignMaxLast-^quant_dense_111/LastValueQuant/AssignMinLast7^quant_dense_111/LastValueQuant/BatchMax/ReadVariableOp7^quant_dense_111/LastValueQuant/BatchMin/ReadVariableOpF^quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpH^quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1H^quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2C^quant_dense_111/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp>^quant_dense_111/MovingAvgQuantize/AssignMaxEma/ReadVariableOpC^quant_dense_111/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp>^quant_dense_111/MovingAvgQuantize/AssignMinEma/ReadVariableOpI^quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpK^quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1'^quant_dense_112/BiasAdd/ReadVariableOp-^quant_dense_112/LastValueQuant/AssignMaxLast-^quant_dense_112/LastValueQuant/AssignMinLast7^quant_dense_112/LastValueQuant/BatchMax/ReadVariableOp7^quant_dense_112/LastValueQuant/BatchMin/ReadVariableOpF^quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpH^quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1H^quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2C^quant_dense_112/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp>^quant_dense_112/MovingAvgQuantize/AssignMaxEma/ReadVariableOpC^quant_dense_112/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp>^quant_dense_112/MovingAvgQuantize/AssignMinEma/ReadVariableOpI^quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpK^quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1'^quant_dense_113/BiasAdd/ReadVariableOp-^quant_dense_113/LastValueQuant/AssignMaxLast-^quant_dense_113/LastValueQuant/AssignMinLast7^quant_dense_113/LastValueQuant/BatchMax/ReadVariableOp7^quant_dense_113/LastValueQuant/BatchMin/ReadVariableOpF^quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpH^quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1H^quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2C^quant_dense_113/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp>^quant_dense_113/MovingAvgQuantize/AssignMaxEma/ReadVariableOpC^quant_dense_113/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp>^quant_dense_113/MovingAvgQuantize/AssignMinEma/ReadVariableOpI^quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpK^quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_15^quantize_layer_1/AllValuesQuantize/AssignMaxAllValue5^quantize_layer_1/AllValuesQuantize/AssignMinAllValueJ^quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpL^quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:^quantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOp:^quantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:: : : : : : : : : : : : : : : : : : : : 2P
&quant_dense_111/BiasAdd/ReadVariableOp&quant_dense_111/BiasAdd/ReadVariableOp2\
,quant_dense_111/LastValueQuant/AssignMaxLast,quant_dense_111/LastValueQuant/AssignMaxLast2\
,quant_dense_111/LastValueQuant/AssignMinLast,quant_dense_111/LastValueQuant/AssignMinLast2p
6quant_dense_111/LastValueQuant/BatchMax/ReadVariableOp6quant_dense_111/LastValueQuant/BatchMax/ReadVariableOp2p
6quant_dense_111/LastValueQuant/BatchMin/ReadVariableOp6quant_dense_111/LastValueQuant/BatchMin/ReadVariableOp2?
Equant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpEquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Bquant_dense_111/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpBquant_dense_111/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2~
=quant_dense_111/MovingAvgQuantize/AssignMaxEma/ReadVariableOp=quant_dense_111/MovingAvgQuantize/AssignMaxEma/ReadVariableOp2?
Bquant_dense_111/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpBquant_dense_111/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2~
=quant_dense_111/MovingAvgQuantize/AssignMinEma/ReadVariableOp=quant_dense_111/MovingAvgQuantize/AssignMinEma/ReadVariableOp2?
Hquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpHquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Jquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Jquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12P
&quant_dense_112/BiasAdd/ReadVariableOp&quant_dense_112/BiasAdd/ReadVariableOp2\
,quant_dense_112/LastValueQuant/AssignMaxLast,quant_dense_112/LastValueQuant/AssignMaxLast2\
,quant_dense_112/LastValueQuant/AssignMinLast,quant_dense_112/LastValueQuant/AssignMinLast2p
6quant_dense_112/LastValueQuant/BatchMax/ReadVariableOp6quant_dense_112/LastValueQuant/BatchMax/ReadVariableOp2p
6quant_dense_112/LastValueQuant/BatchMin/ReadVariableOp6quant_dense_112/LastValueQuant/BatchMin/ReadVariableOp2?
Equant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpEquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Bquant_dense_112/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpBquant_dense_112/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2~
=quant_dense_112/MovingAvgQuantize/AssignMaxEma/ReadVariableOp=quant_dense_112/MovingAvgQuantize/AssignMaxEma/ReadVariableOp2?
Bquant_dense_112/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpBquant_dense_112/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2~
=quant_dense_112/MovingAvgQuantize/AssignMinEma/ReadVariableOp=quant_dense_112/MovingAvgQuantize/AssignMinEma/ReadVariableOp2?
Hquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpHquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Jquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Jquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12P
&quant_dense_113/BiasAdd/ReadVariableOp&quant_dense_113/BiasAdd/ReadVariableOp2\
,quant_dense_113/LastValueQuant/AssignMaxLast,quant_dense_113/LastValueQuant/AssignMaxLast2\
,quant_dense_113/LastValueQuant/AssignMinLast,quant_dense_113/LastValueQuant/AssignMinLast2p
6quant_dense_113/LastValueQuant/BatchMax/ReadVariableOp6quant_dense_113/LastValueQuant/BatchMax/ReadVariableOp2p
6quant_dense_113/LastValueQuant/BatchMin/ReadVariableOp6quant_dense_113/LastValueQuant/BatchMin/ReadVariableOp2?
Equant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpEquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Bquant_dense_113/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpBquant_dense_113/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2~
=quant_dense_113/MovingAvgQuantize/AssignMaxEma/ReadVariableOp=quant_dense_113/MovingAvgQuantize/AssignMaxEma/ReadVariableOp2?
Bquant_dense_113/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpBquant_dense_113/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2~
=quant_dense_113/MovingAvgQuantize/AssignMinEma/ReadVariableOp=quant_dense_113/MovingAvgQuantize/AssignMinEma/ReadVariableOp2?
Hquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpHquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Jquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Jquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12l
4quantize_layer_1/AllValuesQuantize/AssignMaxAllValue4quantize_layer_1/AllValuesQuantize/AssignMaxAllValue2l
4quantize_layer_1/AllValuesQuantize/AssignMinAllValue4quantize_layer_1/AllValuesQuantize/AssignMinAllValue2?
Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpIquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12v
9quantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOp9quantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOp2v
9quantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOp9quantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
Ό
?
I__inference_sequential_37_layer_call_and_return_conditional_losses_691165

inputs\
Rquantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: ^
Tquantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: `
Nquant_dense_111_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:  Z
Pquant_dense_111_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: Z
Pquant_dense_111_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: =
/quant_dense_111_biasadd_readvariableop_resource: [
Qquant_dense_111_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: ]
Squant_dense_111_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: `
Nquant_dense_112_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:  Z
Pquant_dense_112_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: Z
Pquant_dense_112_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: =
/quant_dense_112_biasadd_readvariableop_resource: [
Qquant_dense_112_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: ]
Squant_dense_112_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: `
Nquant_dense_113_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource: Z
Pquant_dense_113_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: Z
Pquant_dense_113_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: =
/quant_dense_113_biasadd_readvariableop_resource:[
Qquant_dense_113_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: ]
Squant_dense_113_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??&quant_dense_111/BiasAdd/ReadVariableOp?Equant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Hquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Jquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?&quant_dense_112/BiasAdd/ReadVariableOp?Equant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Hquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Jquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?&quant_dense_113/BiasAdd/ReadVariableOp?Equant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Hquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Jquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpRquantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02K
Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpTquantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02M
Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
:quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputsQquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Squantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*"
_output_shapes
:2<
:quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars?
quant_flatten_37/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2
quant_flatten_37/Const?
quant_flatten_37/ReshapeReshapeDquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0quant_flatten_37/Const:output:0*
T0*
_output_shapes

: 2
quant_flatten_37/Reshape?
Equant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpNquant_dense_111_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:  *
dtype02G
Equant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpPquant_dense_111_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02I
Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpPquant_dense_111_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02I
Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
6quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsMquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Oquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Oquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:  *
narrow_range(28
6quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense_111/MatMulMatMul!quant_flatten_37/Reshape:output:0@quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

: 2
quant_dense_111/MatMul?
&quant_dense_111/BiasAdd/ReadVariableOpReadVariableOp/quant_dense_111_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02(
&quant_dense_111/BiasAdd/ReadVariableOp?
quant_dense_111/BiasAddBiasAdd quant_dense_111/MatMul:product:0.quant_dense_111/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 2
quant_dense_111/BiasAdd
quant_dense_111/ReluRelu quant_dense_111/BiasAdd:output:0*
T0*
_output_shapes

: 2
quant_dense_111/Relu?
Hquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpQquant_dense_111_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02J
Hquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Jquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpSquant_dense_111_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02L
Jquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
9quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars"quant_dense_111/Relu:activations:0Pquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Rquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

: 2;
9quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars?
Equant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpNquant_dense_112_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:  *
dtype02G
Equant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpPquant_dense_112_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02I
Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpPquant_dense_112_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02I
Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
6quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsMquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Oquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Oquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:  *
narrow_range(28
6quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense_112/MatMulMatMulCquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0@quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

: 2
quant_dense_112/MatMul?
&quant_dense_112/BiasAdd/ReadVariableOpReadVariableOp/quant_dense_112_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02(
&quant_dense_112/BiasAdd/ReadVariableOp?
quant_dense_112/BiasAddBiasAdd quant_dense_112/MatMul:product:0.quant_dense_112/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 2
quant_dense_112/BiasAdd
quant_dense_112/ReluRelu quant_dense_112/BiasAdd:output:0*
T0*
_output_shapes

: 2
quant_dense_112/Relu?
Hquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpQquant_dense_112_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02J
Hquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Jquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpSquant_dense_112_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02L
Jquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
9quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars"quant_dense_112/Relu:activations:0Pquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Rquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

: 2;
9quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars?
Equant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpNquant_dense_113_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

: *
dtype02G
Equant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpPquant_dense_113_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02I
Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpPquant_dense_113_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02I
Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
6quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsMquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Oquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Oquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: *
narrow_range(28
6quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense_113/MatMulMatMulCquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0@quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

:2
quant_dense_113/MatMul?
&quant_dense_113/BiasAdd/ReadVariableOpReadVariableOp/quant_dense_113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&quant_dense_113/BiasAdd/ReadVariableOp?
quant_dense_113/BiasAddBiasAdd quant_dense_113/MatMul:product:0.quant_dense_113/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
quant_dense_113/BiasAdd?
Hquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpQquant_dense_113_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02J
Hquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Jquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpSquant_dense_113_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02L
Jquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
9quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars quant_dense_113/BiasAdd:output:0Pquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Rquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

:2;
9quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentityCquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0'^quant_dense_111/BiasAdd/ReadVariableOpF^quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpH^quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1H^quant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2I^quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpK^quant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1'^quant_dense_112/BiasAdd/ReadVariableOpF^quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpH^quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1H^quant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2I^quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpK^quant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1'^quant_dense_113/BiasAdd/ReadVariableOpF^quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpH^quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1H^quant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2I^quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpK^quant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1J^quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpL^quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:: : : : : : : : : : : : : : : : : : : : 2P
&quant_dense_111/BiasAdd/ReadVariableOp&quant_dense_111/BiasAdd/ReadVariableOp2?
Equant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpEquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Gquant_dense_111/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Hquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpHquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Jquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Jquant_dense_111/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12P
&quant_dense_112/BiasAdd/ReadVariableOp&quant_dense_112/BiasAdd/ReadVariableOp2?
Equant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpEquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Gquant_dense_112/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Hquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpHquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Jquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Jquant_dense_112/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12P
&quant_dense_113/BiasAdd/ReadVariableOp&quant_dense_113/BiasAdd/ReadVariableOp2?
Equant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpEquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Gquant_dense_113/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Hquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpHquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Jquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Jquant_dense_113/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpIquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
h
L__inference_quant_flatten_37_layer_call_and_return_conditional_losses_690642

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2
Const^
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes

: 2	
Reshape[
IdentityIdentityReshape:output:0*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
?o
?
"__inference__traced_restore_691933
file_prefix@
6assignvariableop_quantize_layer_1_quantize_layer_1_min: B
8assignvariableop_1_quantize_layer_1_quantize_layer_1_max: <
2assignvariableop_2_quantize_layer_1_optimizer_step: <
2assignvariableop_3_quant_flatten_37_optimizer_step: ;
1assignvariableop_4_quant_dense_111_optimizer_step: 7
-assignvariableop_5_quant_dense_111_kernel_min: 7
-assignvariableop_6_quant_dense_111_kernel_max: @
6assignvariableop_7_quant_dense_111_post_activation_min: @
6assignvariableop_8_quant_dense_111_post_activation_max: ;
1assignvariableop_9_quant_dense_112_optimizer_step: 8
.assignvariableop_10_quant_dense_112_kernel_min: 8
.assignvariableop_11_quant_dense_112_kernel_max: A
7assignvariableop_12_quant_dense_112_post_activation_min: A
7assignvariableop_13_quant_dense_112_post_activation_max: <
2assignvariableop_14_quant_dense_113_optimizer_step: 8
.assignvariableop_15_quant_dense_113_kernel_min: 8
.assignvariableop_16_quant_dense_113_kernel_max: A
7assignvariableop_17_quant_dense_113_post_activation_min: A
7assignvariableop_18_quant_dense_113_post_activation_max: 6
$assignvariableop_19_dense_111_kernel:  0
"assignvariableop_20_dense_111_bias: 6
$assignvariableop_21_dense_112_kernel:  0
"assignvariableop_22_dense_112_bias: 6
$assignvariableop_23_dense_113_kernel: 0
"assignvariableop_24_dense_113_bias:
identity_26??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?BDlayer_with_weights-0/quantize_layer_1_min/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-0/quantize_layer_1_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-3/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-4/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp6assignvariableop_quantize_layer_1_quantize_layer_1_minIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp8assignvariableop_1_quantize_layer_1_quantize_layer_1_maxIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp2assignvariableop_2_quantize_layer_1_optimizer_stepIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp2assignvariableop_3_quant_flatten_37_optimizer_stepIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp1assignvariableop_4_quant_dense_111_optimizer_stepIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp-assignvariableop_5_quant_dense_111_kernel_minIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp-assignvariableop_6_quant_dense_111_kernel_maxIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp6assignvariableop_7_quant_dense_111_post_activation_minIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp6assignvariableop_8_quant_dense_111_post_activation_maxIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp1assignvariableop_9_quant_dense_112_optimizer_stepIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp.assignvariableop_10_quant_dense_112_kernel_minIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp.assignvariableop_11_quant_dense_112_kernel_maxIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp7assignvariableop_12_quant_dense_112_post_activation_minIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp7assignvariableop_13_quant_dense_112_post_activation_maxIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp2assignvariableop_14_quant_dense_113_optimizer_stepIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp.assignvariableop_15_quant_dense_113_kernel_minIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp.assignvariableop_16_quant_dense_113_kernel_maxIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp7assignvariableop_17_quant_dense_113_post_activation_minIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp7assignvariableop_18_quant_dense_113_post_activation_maxIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp$assignvariableop_19_dense_111_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp"assignvariableop_20_dense_111_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp$assignvariableop_21_dense_112_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp"assignvariableop_22_dense_112_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp$assignvariableop_23_dense_113_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp"assignvariableop_24_dense_113_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_249
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_25?
Identity_26IdentityIdentity_25:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_26"#
identity_26Identity_26:output:0*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242(
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
?
?
0__inference_quant_dense_113_layer_call_fn_691657

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_quant_dense_113_layer_call_and_return_conditional_losses_6902952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

: 
 
_user_specified_nameinputs
?"
?
K__inference_quant_dense_112_layer_call_and_return_conditional_losses_691583

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:  J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:  *
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

:  *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars}
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes

: 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 2	
BiasAddO
ReluReluBiasAdd:output:0*
T0*
_output_shapes

: 2
Relu?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*
_output_shapes

: 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:F B

_output_shapes

: 
 
_user_specified_nameinputs
?
?
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_690191

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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
H
flatten_37_input4
"serving_default_flatten_37_input:0:
quant_dense_113'
StatefulPartitionedCall:0tensorflow/serving/predict:??
??
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
regularization_losses
trainable_variables
	variables
		keras_api


signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?<
_tf_keras_sequential?;{"name": "sequential_37", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_37", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [1, 16, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_37_input"}}, {"class_name": "QuantizeLayer", "config": {"name": "quantize_layer_1", "trainable": true, "dtype": "float32", "quantizer": {"class_name": "AllValuesQuantizer", "config": {"num_bits": 8, "per_axis": false, "symmetric": false, "narrow_range": false}}}}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_flatten_37", "trainable": true, "dtype": "float32", "layer": {"class_name": "Flatten", "config": {"name": "flatten_37", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [1, 16, 2]}, "dtype": "float32", "data_format": "channels_last"}}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": [], "activation_attrs": [], "quantize_output": false}}}}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_dense_111", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_111", "trainable": true, "dtype": "float32", "units": 32, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_dense_112", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_112", "trainable": true, "dtype": "float32", "units": 32, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_dense_113", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_113", "trainable": true, "dtype": "float32", "units": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "linear"}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}}]}, "shared_object_id": 24, "build_input_shape": {"class_name": "TensorShape", "items": [1, 16, 2]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [1, 16, 2]}, "float32", "flatten_37_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_37", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [1, 16, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_37_input"}, "shared_object_id": 0}, {"class_name": "QuantizeLayer", "config": {"name": "quantize_layer_1", "trainable": true, "dtype": "float32", "quantizer": {"class_name": "AllValuesQuantizer", "config": {"num_bits": 8, "per_axis": false, "symmetric": false, "narrow_range": false}}}, "shared_object_id": 2}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_flatten_37", "trainable": true, "dtype": "float32", "layer": {"class_name": "Flatten", "config": {"name": "flatten_37", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [1, 16, 2]}, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 3}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": [], "activation_attrs": [], "quantize_output": false}}}, "shared_object_id": 5}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_dense_111", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_111", "trainable": true, "dtype": "float32", "units": 32, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 6}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 11}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_dense_112", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_112", "trainable": true, "dtype": "float32", "units": 32, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 12}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 17}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_dense_113", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_113", "trainable": true, "dtype": "float32", "units": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "linear"}, "shared_object_id": 18}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 21}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 23}]}}}
?
quantize_layer_1_min
quantize_layer_1_max
quantizer_vars
optimizer_step
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "quantize_layer_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeLayer", "config": {"name": "quantize_layer_1", "trainable": true, "dtype": "float32", "quantizer": {"class_name": "AllValuesQuantizer", "config": {"num_bits": 8, "per_axis": false, "symmetric": false, "narrow_range": false}}}, "shared_object_id": 2, "build_input_shape": {"class_name": "TensorShape", "items": [1, 16, 2]}}
?
	layer
optimizer_step
_weight_vars
_quantize_activations
_output_quantizers
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "quant_flatten_37", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_flatten_37", "trainable": true, "dtype": "float32", "layer": {"class_name": "Flatten", "config": {"name": "flatten_37", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [1, 16, 2]}, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 3}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": [], "activation_attrs": [], "quantize_output": false}}}, "shared_object_id": 5, "build_input_shape": {"class_name": "TensorShape", "items": [1, 16, 2]}}
?
	layer
optimizer_step
_weight_vars

kernel_min
 
kernel_max
!_quantize_activations
"post_activation_min
#post_activation_max
$_output_quantizers
%regularization_losses
&trainable_variables
'	variables
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"name": "quant_dense_111", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_dense_111", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_111", "trainable": true, "dtype": "float32", "units": 32, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 6}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 11, "build_input_shape": {"class_name": "TensorShape", "items": [1, 32]}}
?
	)layer
*optimizer_step
+_weight_vars
,
kernel_min
-
kernel_max
._quantize_activations
/post_activation_min
0post_activation_max
1_output_quantizers
2regularization_losses
3trainable_variables
4	variables
5	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"name": "quant_dense_112", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_dense_112", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_112", "trainable": true, "dtype": "float32", "units": 32, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 12}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 17, "build_input_shape": {"class_name": "TensorShape", "items": [1, 32]}}
?
	6layer
7optimizer_step
8_weight_vars
9
kernel_min
:
kernel_max
;_quantize_activations
<post_activation_min
=post_activation_max
>_output_quantizers
?regularization_losses
@trainable_variables
A	variables
B	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"name": "quant_dense_113", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_dense_113", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_113", "trainable": true, "dtype": "float32", "units": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "linear"}, "shared_object_id": 18}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 21}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 23, "build_input_shape": {"class_name": "TensorShape", "items": [1, 32]}}
 "
trackable_list_wrapper
J
C0
D1
E2
F3
G4
H5"
trackable_list_wrapper
?
0
1
2
3
C4
D5
6
7
 8
"9
#10
E11
F12
*13
,14
-15
/16
017
G18
H19
720
921
:22
<23
=24"
trackable_list_wrapper
?
Inon_trainable_variables
Jmetrics
Klayer_metrics

Llayers
regularization_losses
trainable_variables
	variables
Mlayer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
-:+ 2%quantize_layer_1/quantize_layer_1_min
-:+ 2%quantize_layer_1/quantize_layer_1_max
:
min_var
max_var"
trackable_dict_wrapper
':% 2quantize_layer_1/optimizer_step
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
?
Nnon_trainable_variables
Ometrics
Player_metrics

Qlayers
regularization_losses
trainable_variables
	variables
Rlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
Sregularization_losses
Ttrainable_variables
U	variables
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [1, 16, 2]}, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_37", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [1, 16, 2]}, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 35}}
':% 2quant_flatten_37/optimizer_step
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
Wnon_trainable_variables
Xmetrics
Ylayer_metrics

Zlayers
regularization_losses
trainable_variables
	variables
[layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

Ckernel
Dbias
\regularization_losses
]trainable_variables
^	variables
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_111", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_111", "trainable": true, "dtype": "float32", "units": 32, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 6}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 32]}}
&:$ 2quant_dense_111/optimizer_step
'
`0"
trackable_list_wrapper
":  2quant_dense_111/kernel_min
":  2quant_dense_111/kernel_max
 "
trackable_list_wrapper
+:) 2#quant_dense_111/post_activation_min
+:) 2#quant_dense_111/post_activation_max
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
Q
C0
D1
2
3
 4
"5
#6"
trackable_list_wrapper
?
anon_trainable_variables
bmetrics
clayer_metrics

dlayers
%regularization_losses
&trainable_variables
'	variables
elayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

Ekernel
Fbias
fregularization_losses
gtrainable_variables
h	variables
i	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_112", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_112", "trainable": true, "dtype": "float32", "units": 32, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 12}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 32]}}
&:$ 2quant_dense_112/optimizer_step
'
j0"
trackable_list_wrapper
":  2quant_dense_112/kernel_min
":  2quant_dense_112/kernel_max
 "
trackable_list_wrapper
+:) 2#quant_dense_112/post_activation_min
+:) 2#quant_dense_112/post_activation_max
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
Q
E0
F1
*2
,3
-4
/5
06"
trackable_list_wrapper
?
knon_trainable_variables
lmetrics
mlayer_metrics

nlayers
2regularization_losses
3trainable_variables
4	variables
olayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

Gkernel
Hbias
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_113", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_113", "trainable": true, "dtype": "float32", "units": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "linear"}, "shared_object_id": 18}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 32]}}
&:$ 2quant_dense_113/optimizer_step
'
t0"
trackable_list_wrapper
":  2quant_dense_113/kernel_min
":  2quant_dense_113/kernel_max
 "
trackable_list_wrapper
+:) 2#quant_dense_113/post_activation_min
+:) 2#quant_dense_113/post_activation_max
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
Q
G0
H1
72
93
:4
<5
=6"
trackable_list_wrapper
?
unon_trainable_variables
vmetrics
wlayer_metrics

xlayers
?regularization_losses
@trainable_variables
A	variables
ylayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
":   2dense_111/kernel
: 2dense_111/bias
":   2dense_112/kernel
: 2dense_112/bias
":  2dense_113/kernel
:2dense_113/bias
?
0
1
2
3
4
5
 6
"7
#8
*9
,10
-11
/12
013
714
915
:16
<17
=18"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
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
trackable_list_wrapper
?
znon_trainable_variables
{metrics
|layer_metrics

}layers
Sregularization_losses
Ttrainable_variables
U	variables
~layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
D0"
trackable_list_wrapper
'
D0"
trackable_list_wrapper
?
non_trainable_variables
?metrics
?layer_metrics
?layers
\regularization_losses
]trainable_variables
^	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
C0
?2"
trackable_tuple_wrapper
C
0
1
 2
"3
#4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
F0"
trackable_list_wrapper
'
F0"
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?layer_metrics
?layers
fregularization_losses
gtrainable_variables
h	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
E0
?2"
trackable_tuple_wrapper
C
*0
,1
-2
/3
04"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
)0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
H0"
trackable_list_wrapper
'
H0"
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?layer_metrics
?layers
pregularization_losses
qtrainable_variables
r	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
G0
?2"
trackable_tuple_wrapper
C
70
91
:2
<3
=4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
60"
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
:
min_var
 max_var"
trackable_dict_wrapper
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
:
,min_var
-max_var"
trackable_dict_wrapper
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
:
9min_var
:max_var"
trackable_dict_wrapper
?2?
.__inference_sequential_37_layer_call_fn_690353
.__inference_sequential_37_layer_call_fn_691059
.__inference_sequential_37_layer_call_fn_691104
.__inference_sequential_37_layer_call_fn_690869?
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
!__inference__wrapped_model_690175?
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
annotations? **?'
%?"
flatten_37_input
?2?
I__inference_sequential_37_layer_call_and_return_conditional_losses_691165
I__inference_sequential_37_layer_call_and_return_conditional_losses_691346
I__inference_sequential_37_layer_call_and_return_conditional_losses_690918
I__inference_sequential_37_layer_call_and_return_conditional_losses_690967?
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
1__inference_quantize_layer_1_layer_call_fn_691355
1__inference_quantize_layer_1_layer_call_fn_691364?
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
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_691373
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_691394?
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
1__inference_quant_flatten_37_layer_call_fn_691399
1__inference_quant_flatten_37_layer_call_fn_691404?
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
L__inference_quant_flatten_37_layer_call_and_return_conditional_losses_691410
L__inference_quant_flatten_37_layer_call_and_return_conditional_losses_691416?
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
0__inference_quant_dense_111_layer_call_fn_691433
0__inference_quant_dense_111_layer_call_fn_691450?
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
K__inference_quant_dense_111_layer_call_and_return_conditional_losses_691471
K__inference_quant_dense_111_layer_call_and_return_conditional_losses_691528?
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
0__inference_quant_dense_112_layer_call_fn_691545
0__inference_quant_dense_112_layer_call_fn_691562?
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
K__inference_quant_dense_112_layer_call_and_return_conditional_losses_691583
K__inference_quant_dense_112_layer_call_and_return_conditional_losses_691640?
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
0__inference_quant_dense_113_layer_call_fn_691657
0__inference_quant_dense_113_layer_call_fn_691674?
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
K__inference_quant_dense_113_layer_call_and_return_conditional_losses_691694
K__inference_quant_dense_113_layer_call_and_return_conditional_losses_691750?
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
?B?
$__inference_signature_wrapper_691014flatten_37_input"?
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
 ?
!__inference__wrapped_model_690175?C D"#E,-F/0G9:H<=4?1
*?'
%?"
flatten_37_input
? "8?5
3
quant_dense_113 ?
quant_dense_113?
K__inference_quant_dense_111_layer_call_and_return_conditional_losses_691471RC D"#*?'
 ?
?
inputs 
p 
? "?
?
0 
? ?
K__inference_quant_dense_111_layer_call_and_return_conditional_losses_691528RC D"#*?'
 ?
?
inputs 
p
? "?
?
0 
? y
0__inference_quant_dense_111_layer_call_fn_691433EC D"#*?'
 ?
?
inputs 
p 
? "? y
0__inference_quant_dense_111_layer_call_fn_691450EC D"#*?'
 ?
?
inputs 
p
? "? ?
K__inference_quant_dense_112_layer_call_and_return_conditional_losses_691583RE,-F/0*?'
 ?
?
inputs 
p 
? "?
?
0 
? ?
K__inference_quant_dense_112_layer_call_and_return_conditional_losses_691640RE,-F/0*?'
 ?
?
inputs 
p
? "?
?
0 
? y
0__inference_quant_dense_112_layer_call_fn_691545EE,-F/0*?'
 ?
?
inputs 
p 
? "? y
0__inference_quant_dense_112_layer_call_fn_691562EE,-F/0*?'
 ?
?
inputs 
p
? "? ?
K__inference_quant_dense_113_layer_call_and_return_conditional_losses_691694RG9:H<=*?'
 ?
?
inputs 
p 
? "?
?
0
? ?
K__inference_quant_dense_113_layer_call_and_return_conditional_losses_691750RG9:H<=*?'
 ?
?
inputs 
p
? "?
?
0
? y
0__inference_quant_dense_113_layer_call_fn_691657EG9:H<=*?'
 ?
?
inputs 
p 
? "?y
0__inference_quant_dense_113_layer_call_fn_691674EG9:H<=*?'
 ?
?
inputs 
p
? "??
L__inference_quant_flatten_37_layer_call_and_return_conditional_losses_691410N.?+
$?!
?
inputs
p 
? "?
?
0 
? ?
L__inference_quant_flatten_37_layer_call_and_return_conditional_losses_691416N.?+
$?!
?
inputs
p
? "?
?
0 
? v
1__inference_quant_flatten_37_layer_call_fn_691399A.?+
$?!
?
inputs
p 
? "? v
1__inference_quant_flatten_37_layer_call_fn_691404A.?+
$?!
?
inputs
p
? "? ?
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_691373V.?+
$?!
?
inputs
p 
? " ?
?
0
? ?
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_691394V.?+
$?!
?
inputs
p
? " ?
?
0
? ~
1__inference_quantize_layer_1_layer_call_fn_691355I.?+
$?!
?
inputs
p 
? "?~
1__inference_quantize_layer_1_layer_call_fn_691364I.?+
$?!
?
inputs
p
? "??
I__inference_sequential_37_layer_call_and_return_conditional_losses_690918rC D"#E,-F/0G9:H<=<?9
2?/
%?"
flatten_37_input
p 

 
? "?
?
0
? ?
I__inference_sequential_37_layer_call_and_return_conditional_losses_690967rC D"#E,-F/0G9:H<=<?9
2?/
%?"
flatten_37_input
p

 
? "?
?
0
? ?
I__inference_sequential_37_layer_call_and_return_conditional_losses_691165hC D"#E,-F/0G9:H<=2?/
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
I__inference_sequential_37_layer_call_and_return_conditional_losses_691346hC D"#E,-F/0G9:H<=2?/
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
.__inference_sequential_37_layer_call_fn_690353eC D"#E,-F/0G9:H<=<?9
2?/
%?"
flatten_37_input
p 

 
? "??
.__inference_sequential_37_layer_call_fn_690869eC D"#E,-F/0G9:H<=<?9
2?/
%?"
flatten_37_input
p

 
? "??
.__inference_sequential_37_layer_call_fn_691059[C D"#E,-F/0G9:H<=2?/
(?%
?
inputs
p 

 
? "??
.__inference_sequential_37_layer_call_fn_691104[C D"#E,-F/0G9:H<=2?/
(?%
?
inputs
p

 
? "??
$__inference_signature_wrapper_691014?C D"#E,-F/0G9:H<=H?E
? 
>?;
9
flatten_37_input%?"
flatten_37_input"8?5
3
quant_dense_113 ?
quant_dense_113