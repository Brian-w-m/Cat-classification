┴х	
ы╗
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resourceИ
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
░
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48ЧА
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
д
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_1/bias/*
dtype0*
shape:*$
shared_nameAdam/v/dense_1/bias
w
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes
:*
dtype0
д
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_1/bias/*
dtype0*
shape:*$
shared_nameAdam/m/dense_1/bias
w
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes
:*
dtype0
п
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_1/kernel/*
dtype0*
shape:	А*&
shared_nameAdam/v/dense_1/kernel
А
)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes
:	А*
dtype0
п
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_1/kernel/*
dtype0*
shape:	А*&
shared_nameAdam/m/dense_1/kernel
А
)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes
:	А*
dtype0
Я
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *"

debug_nameAdam/v/dense/bias/*
dtype0*
shape:А*"
shared_nameAdam/v/dense/bias
t
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes	
:А*
dtype0
Я
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *"

debug_nameAdam/m/dense/bias/*
dtype0*
shape:А*"
shared_nameAdam/m/dense/bias
t
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes	
:А*
dtype0
к
Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense/kernel/*
dtype0*
shape:
└pА*$
shared_nameAdam/v/dense/kernel
}
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel* 
_output_shapes
:
└pА*
dtype0
к
Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense/kernel/*
dtype0*
shape:
└pА*$
shared_nameAdam/m/dense/kernel
}
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel* 
_output_shapes
:
└pА*
dtype0
з
Adam/v/conv2d_2/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_2/bias/*
dtype0*
shape:*%
shared_nameAdam/v/conv2d_2/bias
y
(Adam/v/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/bias*
_output_shapes
:*
dtype0
з
Adam/m/conv2d_2/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_2/bias/*
dtype0*
shape:*%
shared_nameAdam/m/conv2d_2/bias
y
(Adam/m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/bias*
_output_shapes
:*
dtype0
╣
Adam/v/conv2d_2/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_2/kernel/*
dtype0*
shape: *'
shared_nameAdam/v/conv2d_2/kernel
Й
*Adam/v/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/kernel*&
_output_shapes
: *
dtype0
╣
Adam/m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_2/kernel/*
dtype0*
shape: *'
shared_nameAdam/m/conv2d_2/kernel
Й
*Adam/m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/kernel*&
_output_shapes
: *
dtype0
з
Adam/v/conv2d_1/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_1/bias/*
dtype0*
shape: *%
shared_nameAdam/v/conv2d_1/bias
y
(Adam/v/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/bias*
_output_shapes
: *
dtype0
з
Adam/m/conv2d_1/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_1/bias/*
dtype0*
shape: *%
shared_nameAdam/m/conv2d_1/bias
y
(Adam/m/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/bias*
_output_shapes
: *
dtype0
╣
Adam/v/conv2d_1/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_1/kernel/*
dtype0*
shape: *'
shared_nameAdam/v/conv2d_1/kernel
Й
*Adam/v/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/kernel*&
_output_shapes
: *
dtype0
╣
Adam/m/conv2d_1/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_1/kernel/*
dtype0*
shape: *'
shared_nameAdam/m/conv2d_1/kernel
Й
*Adam/m/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/kernel*&
_output_shapes
: *
dtype0
б
Adam/v/conv2d/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/v/conv2d/bias/*
dtype0*
shape:*#
shared_nameAdam/v/conv2d/bias
u
&Adam/v/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/bias*
_output_shapes
:*
dtype0
б
Adam/m/conv2d/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/m/conv2d/bias/*
dtype0*
shape:*#
shared_nameAdam/m/conv2d/bias
u
&Adam/m/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/bias*
_output_shapes
:*
dtype0
│
Adam/v/conv2d/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d/kernel/*
dtype0*
shape:*%
shared_nameAdam/v/conv2d/kernel
Е
(Adam/v/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/kernel*&
_output_shapes
:*
dtype0
│
Adam/m/conv2d/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d/kernel/*
dtype0*
shape:*%
shared_nameAdam/m/conv2d/kernel
Е
(Adam/m/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/kernel*&
_output_shapes
:*
dtype0
О
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
В
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
П
dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namedense_1/bias/*
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
Ъ
dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape:	А*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	А*
dtype0
К

dense/biasVarHandleOp*
_output_shapes
: *

debug_namedense/bias/*
dtype0*
shape:А*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
Х
dense/kernelVarHandleOp*
_output_shapes
: *

debug_namedense/kernel/*
dtype0*
shape:
└pА*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
└pА*
dtype0
Т
conv2d_2/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_2/bias/*
dtype0*
shape:*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0
д
conv2d_2/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_2/kernel/*
dtype0*
shape: * 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: *
dtype0
Т
conv2d_1/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_1/bias/*
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
д
conv2d_1/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_1/kernel/*
dtype0*
shape: * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
М
conv2d/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d/bias/*
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
Ю
conv2d/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv2d/kernel/*
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
У
serving_default_conv2d_inputPlaceholder*1
_output_shapes
:         АА*
dtype0*&
shape:         АА
▌
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference_signature_wrapper_8696

NoOpNoOp
ЛP
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╞O
value╝OB╣O B▓O
├
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
О
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
╚
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op*
О
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses* 
╚
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op*
О
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 
О
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses* 
ж
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias*
ж
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias*
J
0
1
(2
)3
74
85
L6
M7
T8
U9*
J
0
1
(2
)3
74
85
L6
M7
T8
U9*
* 
░
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

[trace_0
\trace_1* 

]trace_0
^trace_1* 
* 
Б
_
_variables
`_iterations
a_learning_rate
b_index_dict
c
_momentums
d_velocities
e_update_step_xla*

fserving_default* 

0
1*

0
1*
* 
У
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ltrace_0* 

mtrace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
С
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 

strace_0* 

ttrace_0* 

(0
)1*

(0
)1*
* 
У
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

ztrace_0* 

{trace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Т
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
Аlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

Бtrace_0* 

Вtrace_0* 

70
81*

70
81*
* 
Ш
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

Иtrace_0* 

Йtrace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

Пtrace_0* 

Рtrace_0* 
* 
* 
* 
Ц
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 

Цtrace_0* 

Чtrace_0* 

L0
M1*

L0
M1*
* 
Ш
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

Эtrace_0* 

Юtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

T0
U1*

T0
U1*
* 
Ш
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*

дtrace_0* 

еtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

ж0
з1*
* 
* 
* 
* 
* 
* 
╢
`0
и1
й2
к3
л4
м5
н6
о7
п8
░9
▒10
▓11
│12
┤13
╡14
╢15
╖16
╕17
╣18
║19
╗20*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
T
и0
к1
м2
о3
░4
▓5
┤6
╢7
╕8
║9*
T
й0
л1
н2
п3
▒4
│5
╡6
╖7
╣8
╗9*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
╝	variables
╜	keras_api

╛total

┐count*
M
└	variables
┴	keras_api

┬total

├count
─
_fn_kwargs*
_Y
VARIABLE_VALUEAdam/m/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/conv2d/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/conv2d/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_2/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_2/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/dense/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/dense/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_1/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_1/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*

╛0
┐1*

╝	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

┬0
├1*

└	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
┐
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/biasAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/biasAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotal_1count_1totalcountConst*1
Tin*
(2&*
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
GPU 2J 8В *&
f!R
__inference__traced_save_9075
║
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/biasAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/biasAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotal_1count_1totalcount*0
Tin)
'2%*
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
GPU 2J 8В *)
f$R"
 __inference__traced_restore_9192Ё╠
░)
╪
D__inference_sequential_layer_call_and_return_conditional_losses_8568
conv2d_input%
conv2d_8538:
conv2d_8540:'
conv2d_1_8544: 
conv2d_1_8546: '
conv2d_2_8550: 
conv2d_2_8552:

dense_8557:
└pА

dense_8559:	А
dense_1_8562:	А
dense_1_8564:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallЄ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_8538conv2d_8540*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ■■*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_8454щ
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_8416Т
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_8544conv2d_1_8546*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }} *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_8471я
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >> * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_8426Ф
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_8550conv2d_2_8552*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_8488я
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_8436╫
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         └p* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8500∙
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_8557
dense_8559*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8512Ж
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_8562dense_1_8564*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_8528w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╦
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         АА: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:$
 

_user_specified_name8564:$	 

_user_specified_name8562:$ 

_user_specified_name8559:$ 

_user_specified_name8557:$ 

_user_specified_name8552:$ 

_user_specified_name8550:$ 

_user_specified_name8546:$ 

_user_specified_name8544:$ 

_user_specified_name8540:$ 

_user_specified_name8538:_ [
1
_output_shapes
:         АА
&
_user_specified_nameconv2d_input
О
Ь
'__inference_conv2d_2_layer_call_fn_8765

inputs!
unknown: 
	unknown_0:
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_8488w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         <<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >> : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name8761:$ 

_user_specified_name8759:W S
/
_output_shapes
:         >> 
 
_user_specified_nameinputs
╥

є
?__inference_dense_layer_call_and_return_conditional_losses_8817

inputs2
matmul_readvariableop_resource:
└pА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
└pА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         АS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         └p: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         └p
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_8436

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▓
√
B__inference_conv2d_2_layer_call_and_return_conditional_losses_8776

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         <<i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         <<S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >> : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         >> 
 
_user_specified_nameinputs
 @
▓	
__inference__wrapped_model_8411
conv2d_inputJ
0sequential_conv2d_conv2d_readvariableop_resource:?
1sequential_conv2d_biasadd_readvariableop_resource:L
2sequential_conv2d_1_conv2d_readvariableop_resource: A
3sequential_conv2d_1_biasadd_readvariableop_resource: L
2sequential_conv2d_2_conv2d_readvariableop_resource: A
3sequential_conv2d_2_biasadd_readvariableop_resource:C
/sequential_dense_matmul_readvariableop_resource:
└pА?
0sequential_dense_biasadd_readvariableop_resource:	АD
1sequential_dense_1_matmul_readvariableop_resource:	А@
2sequential_dense_1_biasadd_readvariableop_resource:
identityИв(sequential/conv2d/BiasAdd/ReadVariableOpв'sequential/conv2d/Conv2D/ReadVariableOpв*sequential/conv2d_1/BiasAdd/ReadVariableOpв)sequential/conv2d_1/Conv2D/ReadVariableOpв*sequential/conv2d_2/BiasAdd/ReadVariableOpв)sequential/conv2d_2/Conv2D/ReadVariableOpв'sequential/dense/BiasAdd/ReadVariableOpв&sequential/dense/MatMul/ReadVariableOpв)sequential/dense_1/BiasAdd/ReadVariableOpв(sequential/dense_1/MatMul/ReadVariableOpа
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╞
sequential/conv2d/Conv2DConv2Dconv2d_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■*
paddingVALID*
strides
Ц
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╡
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■~
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:         ■■╛
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
д
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0х
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }} *
paddingVALID*
strides
Ъ
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╣
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }} А
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         }} ┬
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*/
_output_shapes
:         >> *
ksize
*
paddingVALID*
strides
д
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ч
sequential/conv2d_2/Conv2DConv2D+sequential/max_pooling2d_1/MaxPool:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<*
paddingVALID*
strides
Ъ
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╣
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<А
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:         <<┬
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_2/Relu:activations:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    @8  и
sequential/flatten/ReshapeReshape+sequential/max_pooling2d_2/MaxPool:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:         └pШ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
└pА*
dtype0й
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0к
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         АЫ
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0м
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ш
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0п
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         |
sequential/dense_1/SigmoidSigmoid#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         m
IdentityIdentitysequential/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ╙
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         АА: : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_ [
1
_output_shapes
:         АА
&
_user_specified_nameconv2d_input
┤
J
.__inference_max_pooling2d_1_layer_call_fn_8751

inputs
identity╫
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_8426Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
├
]
A__inference_flatten_layer_call_and_return_conditional_losses_8797

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    @8  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         └pY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         └p"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╥

є
?__inference_dense_layer_call_and_return_conditional_losses_8512

inputs2
matmul_readvariableop_resource:
└pА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
└pА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         АS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         └p: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         └p
 
_user_specified_nameinputs
╝
∙
@__inference_conv2d_layer_call_and_return_conditional_losses_8716

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ■■k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ■■S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_8426

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▓
√
B__inference_conv2d_2_layer_call_and_return_conditional_losses_8488

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         <<i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         <<S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >> : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         >> 
 
_user_specified_nameinputs
П
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_8416

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_8786

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▓
√
B__inference_conv2d_1_layer_call_and_return_conditional_losses_8746

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }} *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }} X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         }} i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         }} S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╦

є
A__inference_dense_1_layer_call_and_return_conditional_losses_8528

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╝
∙
@__inference_conv2d_layer_call_and_return_conditional_losses_8454

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ■■k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ■■S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
▓
√
B__inference_conv2d_1_layer_call_and_return_conditional_losses_8471

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }} *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }} X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         }} i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         }} S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
м
Р
)__inference_sequential_layer_call_fn_8618
conv2d_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:
└pА
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИвStatefulPartitionedCall╟
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_8568o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         АА: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$
 

_user_specified_name8614:$	 

_user_specified_name8612:$ 

_user_specified_name8610:$ 

_user_specified_name8608:$ 

_user_specified_name8606:$ 

_user_specified_name8604:$ 

_user_specified_name8602:$ 

_user_specified_name8600:$ 

_user_specified_name8598:$ 

_user_specified_name8596:_ [
1
_output_shapes
:         АА
&
_user_specified_nameconv2d_input
ч
Ф
&__inference_dense_1_layer_call_fn_8826

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall╓
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_8528o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name8822:$ 

_user_specified_name8820:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
П
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_8726

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┤
J
.__inference_max_pooling2d_2_layer_call_fn_8781

inputs
identity╫
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_8436Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
й
B
&__inference_flatten_layer_call_fn_8791

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         └p* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8500a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         └p"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
фе
Й
 __inference__traced_restore_9192
file_prefix8
assignvariableop_conv2d_kernel:,
assignvariableop_1_conv2d_bias:<
"assignvariableop_2_conv2d_1_kernel: .
 assignvariableop_3_conv2d_1_bias: <
"assignvariableop_4_conv2d_2_kernel: .
 assignvariableop_5_conv2d_2_bias:3
assignvariableop_6_dense_kernel:
└pА,
assignvariableop_7_dense_bias:	А4
!assignvariableop_8_dense_1_kernel:	А-
assignvariableop_9_dense_1_bias:'
assignvariableop_10_iteration:	 +
!assignvariableop_11_learning_rate: B
(assignvariableop_12_adam_m_conv2d_kernel:B
(assignvariableop_13_adam_v_conv2d_kernel:4
&assignvariableop_14_adam_m_conv2d_bias:4
&assignvariableop_15_adam_v_conv2d_bias:D
*assignvariableop_16_adam_m_conv2d_1_kernel: D
*assignvariableop_17_adam_v_conv2d_1_kernel: 6
(assignvariableop_18_adam_m_conv2d_1_bias: 6
(assignvariableop_19_adam_v_conv2d_1_bias: D
*assignvariableop_20_adam_m_conv2d_2_kernel: D
*assignvariableop_21_adam_v_conv2d_2_kernel: 6
(assignvariableop_22_adam_m_conv2d_2_bias:6
(assignvariableop_23_adam_v_conv2d_2_bias:;
'assignvariableop_24_adam_m_dense_kernel:
└pА;
'assignvariableop_25_adam_v_dense_kernel:
└pА4
%assignvariableop_26_adam_m_dense_bias:	А4
%assignvariableop_27_adam_v_dense_bias:	А<
)assignvariableop_28_adam_m_dense_1_kernel:	А<
)assignvariableop_29_adam_v_dense_1_kernel:	А5
'assignvariableop_30_adam_m_dense_1_bias:5
'assignvariableop_31_adam_v_dense_1_bias:%
assignvariableop_32_total_1: %
assignvariableop_33_count_1: #
assignvariableop_34_total: #
assignvariableop_35_count: 
identity_37ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9∙
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*Я
valueХBТ%B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH║
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ┌
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*к
_output_shapesЧ
Ф:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_1_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_1_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterationIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_12AssignVariableOp(assignvariableop_12_adam_m_conv2d_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_13AssignVariableOp(assignvariableop_13_adam_v_conv2d_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_m_conv2d_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_15AssignVariableOp&assignvariableop_15_adam_v_conv2d_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_m_conv2d_1_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_v_conv2d_1_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_m_conv2d_1_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_v_conv2d_1_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_m_conv2d_2_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_v_conv2d_2_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_m_conv2d_2_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_v_conv2d_2_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_m_dense_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_v_dense_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_26AssignVariableOp%assignvariableop_26_adam_m_dense_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_27AssignVariableOp%assignvariableop_27_adam_v_dense_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_m_dense_1_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_v_dense_1_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_m_dense_1_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_v_dense_1_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_32AssignVariableOpassignvariableop_32_total_1Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_33AssignVariableOpassignvariableop_33_count_1Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_34AssignVariableOpassignvariableop_34_totalIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_35AssignVariableOpassignvariableop_35_countIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ч
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: ░
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_37Identity_37:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%$!

_user_specified_namecount:%#!

_user_specified_nametotal:'"#
!
_user_specified_name	count_1:'!#
!
_user_specified_name	total_1:3 /
-
_user_specified_nameAdam/v/dense_1/bias:3/
-
_user_specified_nameAdam/m/dense_1/bias:51
/
_user_specified_nameAdam/v/dense_1/kernel:51
/
_user_specified_nameAdam/m/dense_1/kernel:1-
+
_user_specified_nameAdam/v/dense/bias:1-
+
_user_specified_nameAdam/m/dense/bias:3/
-
_user_specified_nameAdam/v/dense/kernel:3/
-
_user_specified_nameAdam/m/dense/kernel:40
.
_user_specified_nameAdam/v/conv2d_2/bias:40
.
_user_specified_nameAdam/m/conv2d_2/bias:62
0
_user_specified_nameAdam/v/conv2d_2/kernel:62
0
_user_specified_nameAdam/m/conv2d_2/kernel:40
.
_user_specified_nameAdam/v/conv2d_1/bias:40
.
_user_specified_nameAdam/m/conv2d_1/bias:62
0
_user_specified_nameAdam/v/conv2d_1/kernel:62
0
_user_specified_nameAdam/m/conv2d_1/kernel:2.
,
_user_specified_nameAdam/v/conv2d/bias:2.
,
_user_specified_nameAdam/m/conv2d/bias:40
.
_user_specified_nameAdam/v/conv2d/kernel:40
.
_user_specified_nameAdam/m/conv2d/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,
(
&
_user_specified_namedense_1/bias:.	*
(
_user_specified_namedense_1/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
░
H
,__inference_max_pooling2d_layer_call_fn_8721

inputs
identity╒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_8416Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
м
Р
)__inference_sequential_layer_call_fn_8593
conv2d_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:
└pА
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИвStatefulPartitionedCall╟
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_8535o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         АА: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$
 

_user_specified_name8589:$	 

_user_specified_name8587:$ 

_user_specified_name8585:$ 

_user_specified_name8583:$ 

_user_specified_name8581:$ 

_user_specified_name8579:$ 

_user_specified_name8577:$ 

_user_specified_name8575:$ 

_user_specified_name8573:$ 

_user_specified_name8571:_ [
1
_output_shapes
:         АА
&
_user_specified_nameconv2d_input
ч
Ф
$__inference_dense_layer_call_fn_8806

inputs
unknown:
└pА
	unknown_0:	А
identityИвStatefulPartitionedCall╒
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8512p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         └p: : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name8802:$ 

_user_specified_name8800:P L
(
_output_shapes
:         └p
 
_user_specified_nameinputs
├
]
A__inference_flatten_layer_call_and_return_conditional_losses_8500

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    @8  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         └pY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         └p"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╦

є
A__inference_dense_1_layer_call_and_return_conditional_losses_8837

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
А
Й
"__inference_signature_wrapper_8696
conv2d_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:
└pА
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__wrapped_model_8411o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         АА: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$
 

_user_specified_name8692:$	 

_user_specified_name8690:$ 

_user_specified_name8688:$ 

_user_specified_name8686:$ 

_user_specified_name8684:$ 

_user_specified_name8682:$ 

_user_specified_name8680:$ 

_user_specified_name8678:$ 

_user_specified_name8676:$ 

_user_specified_name8674:_ [
1
_output_shapes
:         АА
&
_user_specified_nameconv2d_input
О
Ь
'__inference_conv2d_1_layer_call_fn_8735

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }} *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_8471w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         }} <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name8731:$ 

_user_specified_name8729:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╦У
╒ 
__inference__traced_save_9075
file_prefix>
$read_disablecopyonread_conv2d_kernel:2
$read_1_disablecopyonread_conv2d_bias:B
(read_2_disablecopyonread_conv2d_1_kernel: 4
&read_3_disablecopyonread_conv2d_1_bias: B
(read_4_disablecopyonread_conv2d_2_kernel: 4
&read_5_disablecopyonread_conv2d_2_bias:9
%read_6_disablecopyonread_dense_kernel:
└pА2
#read_7_disablecopyonread_dense_bias:	А:
'read_8_disablecopyonread_dense_1_kernel:	А3
%read_9_disablecopyonread_dense_1_bias:-
#read_10_disablecopyonread_iteration:	 1
'read_11_disablecopyonread_learning_rate: H
.read_12_disablecopyonread_adam_m_conv2d_kernel:H
.read_13_disablecopyonread_adam_v_conv2d_kernel::
,read_14_disablecopyonread_adam_m_conv2d_bias::
,read_15_disablecopyonread_adam_v_conv2d_bias:J
0read_16_disablecopyonread_adam_m_conv2d_1_kernel: J
0read_17_disablecopyonread_adam_v_conv2d_1_kernel: <
.read_18_disablecopyonread_adam_m_conv2d_1_bias: <
.read_19_disablecopyonread_adam_v_conv2d_1_bias: J
0read_20_disablecopyonread_adam_m_conv2d_2_kernel: J
0read_21_disablecopyonread_adam_v_conv2d_2_kernel: <
.read_22_disablecopyonread_adam_m_conv2d_2_bias:<
.read_23_disablecopyonread_adam_v_conv2d_2_bias:A
-read_24_disablecopyonread_adam_m_dense_kernel:
└pАA
-read_25_disablecopyonread_adam_v_dense_kernel:
└pА:
+read_26_disablecopyonread_adam_m_dense_bias:	А:
+read_27_disablecopyonread_adam_v_dense_bias:	АB
/read_28_disablecopyonread_adam_m_dense_1_kernel:	АB
/read_29_disablecopyonread_adam_v_dense_1_kernel:	А;
-read_30_disablecopyonread_adam_m_dense_1_bias:;
-read_31_disablecopyonread_adam_v_dense_1_bias:+
!read_32_disablecopyonread_total_1: +
!read_33_disablecopyonread_count_1: )
read_34_disablecopyonread_total: )
read_35_disablecopyonread_count: 
savev2_const
identity_73ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_24/DisableCopyOnReadвRead_24/ReadVariableOpвRead_25/DisableCopyOnReadвRead_25/ReadVariableOpвRead_26/DisableCopyOnReadвRead_26/ReadVariableOpвRead_27/DisableCopyOnReadвRead_27/ReadVariableOpвRead_28/DisableCopyOnReadвRead_28/ReadVariableOpвRead_29/DisableCopyOnReadвRead_29/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_30/DisableCopyOnReadвRead_30/ReadVariableOpвRead_31/DisableCopyOnReadвRead_31/ReadVariableOpвRead_32/DisableCopyOnReadвRead_32/ReadVariableOpвRead_33/DisableCopyOnReadвRead_33/ReadVariableOpвRead_34/DisableCopyOnReadвRead_34/ReadVariableOpвRead_35/DisableCopyOnReadвRead_35/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 и
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
 а
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ░
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv2d_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 в
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv2d_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ░
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_conv2d_2_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
: z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 в
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_conv2d_2_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:y
Read_6/DisableCopyOnReadDisableCopyOnRead%read_6_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 з
Read_6/ReadVariableOpReadVariableOp%read_6_disablecopyonread_dense_kernel^Read_6/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
└pА*
dtype0p
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
└pАg
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0* 
_output_shapes
:
└pАw
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 а
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_dense_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:А{
Read_8/DisableCopyOnReadDisableCopyOnRead'read_8_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 и
Read_8/ReadVariableOpReadVariableOp'read_8_disablecopyonread_dense_1_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	Аy
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 б
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_dense_1_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_10/DisableCopyOnReadDisableCopyOnRead#read_10_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_10/ReadVariableOpReadVariableOp#read_10_disablecopyonread_iteration^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 б
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_learning_rate^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_12/DisableCopyOnReadDisableCopyOnRead.read_12_disablecopyonread_adam_m_conv2d_kernel"/device:CPU:0*
_output_shapes
 ╕
Read_12/ReadVariableOpReadVariableOp.read_12_disablecopyonread_adam_m_conv2d_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
:Г
Read_13/DisableCopyOnReadDisableCopyOnRead.read_13_disablecopyonread_adam_v_conv2d_kernel"/device:CPU:0*
_output_shapes
 ╕
Read_13/ReadVariableOpReadVariableOp.read_13_disablecopyonread_adam_v_conv2d_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*&
_output_shapes
:Б
Read_14/DisableCopyOnReadDisableCopyOnRead,read_14_disablecopyonread_adam_m_conv2d_bias"/device:CPU:0*
_output_shapes
 к
Read_14/ReadVariableOpReadVariableOp,read_14_disablecopyonread_adam_m_conv2d_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:Б
Read_15/DisableCopyOnReadDisableCopyOnRead,read_15_disablecopyonread_adam_v_conv2d_bias"/device:CPU:0*
_output_shapes
 к
Read_15/ReadVariableOpReadVariableOp,read_15_disablecopyonread_adam_v_conv2d_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:Е
Read_16/DisableCopyOnReadDisableCopyOnRead0read_16_disablecopyonread_adam_m_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ║
Read_16/ReadVariableOpReadVariableOp0read_16_disablecopyonread_adam_m_conv2d_1_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
: Е
Read_17/DisableCopyOnReadDisableCopyOnRead0read_17_disablecopyonread_adam_v_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ║
Read_17/ReadVariableOpReadVariableOp0read_17_disablecopyonread_adam_v_conv2d_1_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*&
_output_shapes
: Г
Read_18/DisableCopyOnReadDisableCopyOnRead.read_18_disablecopyonread_adam_m_conv2d_1_bias"/device:CPU:0*
_output_shapes
 м
Read_18/ReadVariableOpReadVariableOp.read_18_disablecopyonread_adam_m_conv2d_1_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_19/DisableCopyOnReadDisableCopyOnRead.read_19_disablecopyonread_adam_v_conv2d_1_bias"/device:CPU:0*
_output_shapes
 м
Read_19/ReadVariableOpReadVariableOp.read_19_disablecopyonread_adam_v_conv2d_1_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: Е
Read_20/DisableCopyOnReadDisableCopyOnRead0read_20_disablecopyonread_adam_m_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ║
Read_20/ReadVariableOpReadVariableOp0read_20_disablecopyonread_adam_m_conv2d_2_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
: Е
Read_21/DisableCopyOnReadDisableCopyOnRead0read_21_disablecopyonread_adam_v_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ║
Read_21/ReadVariableOpReadVariableOp0read_21_disablecopyonread_adam_v_conv2d_2_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*&
_output_shapes
: Г
Read_22/DisableCopyOnReadDisableCopyOnRead.read_22_disablecopyonread_adam_m_conv2d_2_bias"/device:CPU:0*
_output_shapes
 м
Read_22/ReadVariableOpReadVariableOp.read_22_disablecopyonread_adam_m_conv2d_2_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:Г
Read_23/DisableCopyOnReadDisableCopyOnRead.read_23_disablecopyonread_adam_v_conv2d_2_bias"/device:CPU:0*
_output_shapes
 м
Read_23/ReadVariableOpReadVariableOp.read_23_disablecopyonread_adam_v_conv2d_2_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:В
Read_24/DisableCopyOnReadDisableCopyOnRead-read_24_disablecopyonread_adam_m_dense_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_24/ReadVariableOpReadVariableOp-read_24_disablecopyonread_adam_m_dense_kernel^Read_24/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
└pА*
dtype0q
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
└pАg
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0* 
_output_shapes
:
└pАВ
Read_25/DisableCopyOnReadDisableCopyOnRead-read_25_disablecopyonread_adam_v_dense_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_25/ReadVariableOpReadVariableOp-read_25_disablecopyonread_adam_v_dense_kernel^Read_25/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
└pА*
dtype0q
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
└pАg
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0* 
_output_shapes
:
└pАА
Read_26/DisableCopyOnReadDisableCopyOnRead+read_26_disablecopyonread_adam_m_dense_bias"/device:CPU:0*
_output_shapes
 к
Read_26/ReadVariableOpReadVariableOp+read_26_disablecopyonread_adam_m_dense_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:АА
Read_27/DisableCopyOnReadDisableCopyOnRead+read_27_disablecopyonread_adam_v_dense_bias"/device:CPU:0*
_output_shapes
 к
Read_27/ReadVariableOpReadVariableOp+read_27_disablecopyonread_adam_v_dense_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:АД
Read_28/DisableCopyOnReadDisableCopyOnRead/read_28_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_28/ReadVariableOpReadVariableOp/read_28_disablecopyonread_adam_m_dense_1_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:	АД
Read_29/DisableCopyOnReadDisableCopyOnRead/read_29_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_29/ReadVariableOpReadVariableOp/read_29_disablecopyonread_adam_v_dense_1_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:	АВ
Read_30/DisableCopyOnReadDisableCopyOnRead-read_30_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 л
Read_30/ReadVariableOpReadVariableOp-read_30_disablecopyonread_adam_m_dense_1_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:В
Read_31/DisableCopyOnReadDisableCopyOnRead-read_31_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 л
Read_31/ReadVariableOpReadVariableOp-read_31_disablecopyonread_adam_v_dense_1_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_32/DisableCopyOnReadDisableCopyOnRead!read_32_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_32/ReadVariableOpReadVariableOp!read_32_disablecopyonread_total_1^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_33/DisableCopyOnReadDisableCopyOnRead!read_33_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_33/ReadVariableOpReadVariableOp!read_33_disablecopyonread_count_1^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_34/DisableCopyOnReadDisableCopyOnReadread_34_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_34/ReadVariableOpReadVariableOpread_34_disablecopyonread_total^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_35/DisableCopyOnReadDisableCopyOnReadread_35_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_35/ReadVariableOpReadVariableOpread_35_disablecopyonread_count^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
: Ў
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*Я
valueХBТ%B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╖
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B П
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *3
dtypes)
'2%	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_72Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_73IdentityIdentity_72:output:0^NoOp*
T0*
_output_shapes
: У
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_73Identity_73:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=%9

_output_shapes
: 

_user_specified_nameConst:%$!

_user_specified_namecount:%#!

_user_specified_nametotal:'"#
!
_user_specified_name	count_1:'!#
!
_user_specified_name	total_1:3 /
-
_user_specified_nameAdam/v/dense_1/bias:3/
-
_user_specified_nameAdam/m/dense_1/bias:51
/
_user_specified_nameAdam/v/dense_1/kernel:51
/
_user_specified_nameAdam/m/dense_1/kernel:1-
+
_user_specified_nameAdam/v/dense/bias:1-
+
_user_specified_nameAdam/m/dense/bias:3/
-
_user_specified_nameAdam/v/dense/kernel:3/
-
_user_specified_nameAdam/m/dense/kernel:40
.
_user_specified_nameAdam/v/conv2d_2/bias:40
.
_user_specified_nameAdam/m/conv2d_2/bias:62
0
_user_specified_nameAdam/v/conv2d_2/kernel:62
0
_user_specified_nameAdam/m/conv2d_2/kernel:40
.
_user_specified_nameAdam/v/conv2d_1/bias:40
.
_user_specified_nameAdam/m/conv2d_1/bias:62
0
_user_specified_nameAdam/v/conv2d_1/kernel:62
0
_user_specified_nameAdam/m/conv2d_1/kernel:2.
,
_user_specified_nameAdam/v/conv2d/bias:2.
,
_user_specified_nameAdam/m/conv2d/bias:40
.
_user_specified_nameAdam/v/conv2d/kernel:40
.
_user_specified_nameAdam/m/conv2d/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,
(
&
_user_specified_namedense_1/bias:.	*
(
_user_specified_namedense_1/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Т
Ъ
%__inference_conv2d_layer_call_fn_8705

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ■■*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_8454y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ■■<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name8701:$ 

_user_specified_name8699:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
░)
╪
D__inference_sequential_layer_call_and_return_conditional_losses_8535
conv2d_input%
conv2d_8455:
conv2d_8457:'
conv2d_1_8472: 
conv2d_1_8474: '
conv2d_2_8489: 
conv2d_2_8491:

dense_8513:
└pА

dense_8515:	А
dense_1_8529:	А
dense_1_8531:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallЄ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_8455conv2d_8457*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ■■*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_8454щ
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_8416Т
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_8472conv2d_1_8474*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }} *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_8471я
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >> * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_8426Ф
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_8489conv2d_2_8491*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_8488я
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_8436╫
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         └p* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8500∙
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_8513
dense_8515*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8512Ж
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_8529dense_1_8531*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_8528w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╦
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         АА: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:$
 

_user_specified_name8531:$	 

_user_specified_name8529:$ 

_user_specified_name8515:$ 

_user_specified_name8513:$ 

_user_specified_name8491:$ 

_user_specified_name8489:$ 

_user_specified_name8474:$ 

_user_specified_name8472:$ 

_user_specified_name8457:$ 

_user_specified_name8455:_ [
1
_output_shapes
:         АА
&
_user_specified_nameconv2d_input
С
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_8756

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs"эL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╛
serving_defaultк
O
conv2d_input?
serving_default_conv2d_input:0         АА;
dense_10
StatefulPartitionedCall:0         tensorflow/serving/predict:─╬
▌
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
▌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op"
_tf_keras_layer
е
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op"
_tf_keras_layer
е
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
е
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias"
_tf_keras_layer
╗
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias"
_tf_keras_layer
f
0
1
(2
)3
74
85
L6
M7
T8
U9"
trackable_list_wrapper
f
0
1
(2
)3
74
85
L6
M7
T8
U9"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
┼
[trace_0
\trace_12О
)__inference_sequential_layer_call_fn_8593
)__inference_sequential_layer_call_fn_8618╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z[trace_0z\trace_1
√
]trace_0
^trace_12─
D__inference_sequential_layer_call_and_return_conditional_losses_8535
D__inference_sequential_layer_call_and_return_conditional_losses_8568╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z]trace_0z^trace_1
╧B╠
__inference__wrapped_model_8411conv2d_input"Ш
С▓Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ь
_
_variables
`_iterations
a_learning_rate
b_index_dict
c
_momentums
d_velocities
e_update_step_xla"
experimentalOptimizer
,
fserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
▀
ltrace_02┬
%__inference_conv2d_layer_call_fn_8705Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zltrace_0
·
mtrace_02▌
@__inference_conv2d_layer_call_and_return_conditional_losses_8716Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zmtrace_0
':%2conv2d/kernel
:2conv2d/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
ц
strace_02╔
,__inference_max_pooling2d_layer_call_fn_8721Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zstrace_0
Б
ttrace_02ф
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_8726Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zttrace_0
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
с
ztrace_02─
'__inference_conv2d_1_layer_call_fn_8735Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zztrace_0
№
{trace_02▀
B__inference_conv2d_1_layer_call_and_return_conditional_losses_8746Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z{trace_0
):' 2conv2d_1/kernel
: 2conv2d_1/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
о
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
Аlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
ъ
Бtrace_02╦
.__inference_max_pooling2d_1_layer_call_fn_8751Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zБtrace_0
Е
Вtrace_02ц
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_8756Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zВtrace_0
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
у
Иtrace_02─
'__inference_conv2d_2_layer_call_fn_8765Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zИtrace_0
■
Йtrace_02▀
B__inference_conv2d_2_layer_call_and_return_conditional_losses_8776Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЙtrace_0
):' 2conv2d_2/kernel
:2conv2d_2/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
ъ
Пtrace_02╦
.__inference_max_pooling2d_2_layer_call_fn_8781Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zПtrace_0
Е
Рtrace_02ц
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_8786Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zРtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
т
Цtrace_02├
&__inference_flatten_layer_call_fn_8791Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЦtrace_0
¤
Чtrace_02▐
A__inference_flatten_layer_call_and_return_conditional_losses_8797Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЧtrace_0
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
р
Эtrace_02┴
$__inference_dense_layer_call_fn_8806Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЭtrace_0
√
Юtrace_02▄
?__inference_dense_layer_call_and_return_conditional_losses_8817Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЮtrace_0
 :
└pА2dense/kernel
:А2
dense/bias
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
т
дtrace_02├
&__inference_dense_1_layer_call_fn_8826Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zдtrace_0
¤
еtrace_02▐
A__inference_dense_1_layer_call_and_return_conditional_losses_8837Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zеtrace_0
!:	А2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
ж0
з1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
эBъ
)__inference_sequential_layer_call_fn_8593conv2d_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
)__inference_sequential_layer_call_fn_8618conv2d_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ИBЕ
D__inference_sequential_layer_call_and_return_conditional_losses_8535conv2d_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ИBЕ
D__inference_sequential_layer_call_and_return_conditional_losses_8568conv2d_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥
`0
и1
й2
к3
л4
м5
н6
о7
п8
░9
▒10
▓11
│12
┤13
╡14
╢15
╖16
╕17
╣18
║19
╗20"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
p
и0
к1
м2
о3
░4
▓5
┤6
╢7
╕8
║9"
trackable_list_wrapper
p
й0
л1
н2
п3
▒4
│5
╡6
╖7
╣8
╗9"
trackable_list_wrapper
╡2▓п
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
╪B╒
"__inference_signature_wrapper_8696conv2d_input"Ю
Ч▓У
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 !

kwonlyargsЪ
jconv2d_input
kwonlydefaults
 
annotationsк *
 
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
╧B╠
%__inference_conv2d_layer_call_fn_8705inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
@__inference_conv2d_layer_call_and_return_conditional_losses_8716inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╓B╙
,__inference_max_pooling2d_layer_call_fn_8721inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ёBю
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_8726inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╤B╬
'__inference_conv2d_1_layer_call_fn_8735inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_1_layer_call_and_return_conditional_losses_8746inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╪B╒
.__inference_max_pooling2d_1_layer_call_fn_8751inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_8756inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╤B╬
'__inference_conv2d_2_layer_call_fn_8765inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_2_layer_call_and_return_conditional_losses_8776inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╪B╒
.__inference_max_pooling2d_2_layer_call_fn_8781inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_8786inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╨B═
&__inference_flatten_layer_call_fn_8791inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ыBш
A__inference_flatten_layer_call_and_return_conditional_losses_8797inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╬B╦
$__inference_dense_layer_call_fn_8806inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
щBц
?__inference_dense_layer_call_and_return_conditional_losses_8817inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╨B═
&__inference_dense_1_layer_call_fn_8826inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ыBш
A__inference_dense_1_layer_call_and_return_conditional_losses_8837inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
╝	variables
╜	keras_api

╛total

┐count"
_tf_keras_metric
c
└	variables
┴	keras_api

┬total

├count
─
_fn_kwargs"
_tf_keras_metric
,:*2Adam/m/conv2d/kernel
,:*2Adam/v/conv2d/kernel
:2Adam/m/conv2d/bias
:2Adam/v/conv2d/bias
.:, 2Adam/m/conv2d_1/kernel
.:, 2Adam/v/conv2d_1/kernel
 : 2Adam/m/conv2d_1/bias
 : 2Adam/v/conv2d_1/bias
.:, 2Adam/m/conv2d_2/kernel
.:, 2Adam/v/conv2d_2/kernel
 :2Adam/m/conv2d_2/bias
 :2Adam/v/conv2d_2/bias
%:#
└pА2Adam/m/dense/kernel
%:#
└pА2Adam/v/dense/kernel
:А2Adam/m/dense/bias
:А2Adam/v/dense/bias
&:$	А2Adam/m/dense_1/kernel
&:$	А2Adam/v/dense_1/kernel
:2Adam/m/dense_1/bias
:2Adam/v/dense_1/bias
0
╛0
┐1"
trackable_list_wrapper
.
╝	variables"
_generic_user_object
:  (2total
:  (2count
0
┬0
├1"
trackable_list_wrapper
.
└	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperд
__inference__wrapped_model_8411А
()78LMTU?в<
5в2
0К-
conv2d_input         АА
к "1к.
,
dense_1!К
dense_1         ╣
B__inference_conv2d_1_layer_call_and_return_conditional_losses_8746s()7в4
-в*
(К%
inputs         
к "4в1
*К'
tensor_0         }} 
Ъ У
'__inference_conv2d_1_layer_call_fn_8735h()7в4
-в*
(К%
inputs         
к ")К&
unknown         }} ╣
B__inference_conv2d_2_layer_call_and_return_conditional_losses_8776s787в4
-в*
(К%
inputs         >> 
к "4в1
*К'
tensor_0         <<
Ъ У
'__inference_conv2d_2_layer_call_fn_8765h787в4
-в*
(К%
inputs         >> 
к ")К&
unknown         <<╗
@__inference_conv2d_layer_call_and_return_conditional_losses_8716w9в6
/в,
*К'
inputs         АА
к "6в3
,К)
tensor_0         ■■
Ъ Х
%__inference_conv2d_layer_call_fn_8705l9в6
/в,
*К'
inputs         АА
к "+К(
unknown         ■■й
A__inference_dense_1_layer_call_and_return_conditional_losses_8837dTU0в-
&в#
!К
inputs         А
к ",в)
"К
tensor_0         
Ъ Г
&__inference_dense_1_layer_call_fn_8826YTU0в-
&в#
!К
inputs         А
к "!К
unknown         и
?__inference_dense_layer_call_and_return_conditional_losses_8817eLM0в-
&в#
!К
inputs         └p
к "-в*
#К 
tensor_0         А
Ъ В
$__inference_dense_layer_call_fn_8806ZLM0в-
&в#
!К
inputs         └p
к ""К
unknown         Ан
A__inference_flatten_layer_call_and_return_conditional_losses_8797h7в4
-в*
(К%
inputs         
к "-в*
#К 
tensor_0         └p
Ъ З
&__inference_flatten_layer_call_fn_8791]7в4
-в*
(К%
inputs         
к ""К
unknown         └pє
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_8756еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ═
.__inference_max_pooling2d_1_layer_call_fn_8751ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    є
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_8786еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ═
.__inference_max_pooling2d_2_layer_call_fn_8781ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ё
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_8726еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╦
,__inference_max_pooling2d_layer_call_fn_8721ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ╠
D__inference_sequential_layer_call_and_return_conditional_losses_8535Г
()78LMTUGвD
=в:
0К-
conv2d_input         АА
p

 
к ",в)
"К
tensor_0         
Ъ ╠
D__inference_sequential_layer_call_and_return_conditional_losses_8568Г
()78LMTUGвD
=в:
0К-
conv2d_input         АА
p 

 
к ",в)
"К
tensor_0         
Ъ е
)__inference_sequential_layer_call_fn_8593x
()78LMTUGвD
=в:
0К-
conv2d_input         АА
p

 
к "!К
unknown         е
)__inference_sequential_layer_call_fn_8618x
()78LMTUGвD
=в:
0К-
conv2d_input         АА
p 

 
к "!К
unknown         ╖
"__inference_signature_wrapper_8696Р
()78LMTUOвL
в 
EкB
@
conv2d_input0К-
conv2d_input         АА"1к.
,
dense_1!К
dense_1         