чР8
GыF
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
И
AsString

input"T

output"
Ttype:
2		
"
	precisionintџџџџџџџџџ"

scientificbool( "
shortestbool( "
widthintџџџџџџџџџ"
fillstring 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW

BoostedTreesBucketize
float_values*num_features#
bucket_boundaries*num_features
buckets*num_features"
num_featuresint(
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Й
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
Ё
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
Щ
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0ўџџџџџџџџ"
value_indexint(0ўџџџџџџџџ"+

vocab_sizeintџџџџџџџџџ(0џџџџџџџџџ"
	delimiterstring	
+
IsNan
x"T
y
"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
.
Log1p
x"T
y"T"
Ttype:

2
$

LogicalAnd
x

y

z



LogicalNot
x

y

#
	LogicalOr
x

y

z

w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
2
LookupTableSizeV2
table_handle
size	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
k
NotEqual
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
я
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
З
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	

SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
М
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
і
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
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"eval*1.15.02v1.15.0-rc3-22-g590d6ee8Зј,

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
_class
loc:@global_step*
dtype0	*
_output_shapes
: *
shape: 

global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
o
input_example_tensorPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
b
ParseExample/ParseExample/namesConst*
valueB *
dtype0*
_output_shapes
: 
o
'ParseExample/ParseExample/sparse_keys_0Const*
valueB Bcompany*
dtype0*
_output_shapes
: 
|
'ParseExample/ParseExample/sparse_keys_1Const*
dtype0*
_output_shapes
: *%
valueB Bdropoff_census_tract
~
'ParseExample/ParseExample/sparse_keys_2Const*'
valueB Bdropoff_community_area*
dtype0*
_output_shapes
: 
x
'ParseExample/ParseExample/sparse_keys_3Const*!
valueB Bdropoff_latitude*
dtype0*
_output_shapes
: 
y
'ParseExample/ParseExample/sparse_keys_4Const*
_output_shapes
: *"
valueB Bdropoff_longitude*
dtype0
l
'ParseExample/ParseExample/sparse_keys_5Const*
_output_shapes
: *
valueB
 Bfare*
dtype0
t
'ParseExample/ParseExample/sparse_keys_6Const*
valueB Bpayment_type*
dtype0*
_output_shapes
: 
{
'ParseExample/ParseExample/sparse_keys_7Const*$
valueB Bpickup_census_tract*
dtype0*
_output_shapes
: 
}
'ParseExample/ParseExample/sparse_keys_8Const*&
valueB Bpickup_community_area*
dtype0*
_output_shapes
: 
w
'ParseExample/ParseExample/sparse_keys_9Const*
_output_shapes
: * 
valueB Bpickup_latitude*
dtype0
y
(ParseExample/ParseExample/sparse_keys_10Const*!
valueB Bpickup_longitude*
dtype0*
_output_shapes
: 
m
(ParseExample/ParseExample/sparse_keys_11Const*
valueB
 Btips*
dtype0*
_output_shapes
: 
s
(ParseExample/ParseExample/sparse_keys_12Const*
valueB B
trip_miles*
dtype0*
_output_shapes
: 
u
(ParseExample/ParseExample/sparse_keys_13Const*
valueB Btrip_seconds*
dtype0*
_output_shapes
: 
w
(ParseExample/ParseExample/sparse_keys_14Const*
valueB Btrip_start_day*
dtype0*
_output_shapes
: 
x
(ParseExample/ParseExample/sparse_keys_15Const* 
valueB Btrip_start_hour*
dtype0*
_output_shapes
: 
y
(ParseExample/ParseExample/sparse_keys_16Const*!
valueB Btrip_start_month*
dtype0*
_output_shapes
: 
}
(ParseExample/ParseExample/sparse_keys_17Const*%
valueB Btrip_start_timestamp*
dtype0*
_output_shapes
: 

ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names'ParseExample/ParseExample/sparse_keys_0'ParseExample/ParseExample/sparse_keys_1'ParseExample/ParseExample/sparse_keys_2'ParseExample/ParseExample/sparse_keys_3'ParseExample/ParseExample/sparse_keys_4'ParseExample/ParseExample/sparse_keys_5'ParseExample/ParseExample/sparse_keys_6'ParseExample/ParseExample/sparse_keys_7'ParseExample/ParseExample/sparse_keys_8'ParseExample/ParseExample/sparse_keys_9(ParseExample/ParseExample/sparse_keys_10(ParseExample/ParseExample/sparse_keys_11(ParseExample/ParseExample/sparse_keys_12(ParseExample/ParseExample/sparse_keys_13(ParseExample/ParseExample/sparse_keys_14(ParseExample/ParseExample/sparse_keys_15(ParseExample/ParseExample/sparse_keys_16(ParseExample/ParseExample/sparse_keys_17*ц
_output_shapesг
а:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::*
Nsparse*
dense_shapes
 *&
sparse_types
2					*
Tdense
 *
Ndense 
х
ConstConst*Џ
valueЅBЂ B/usr/local/google/home/ruoyu/tfx/pipelines/chicago_taxi_beam/Transform/transform_output/4/transform_fn/assets/vocab_compute_and_apply_vocabulary_vocabulary*
dtype0*
_output_shapes
: 
щ
Const_1Const*Б
valueЇBЄ B/usr/local/google/home/ruoyu/tfx/pipelines/chicago_taxi_beam/Transform/transform_output/4/transform_fn/assets/vocab_compute_and_apply_vocabulary_1_vocabulary*
dtype0*
_output_shapes
: 
T
transform/ConstConst*
valueB
 *Uд"I*
dtype0*
_output_shapes
: 
V
transform/Const_1Const*
valueB
 *э?D*
dtype0*
_output_shapes
: 

transform/Const_2Const*=
value4B2
"(U<'Bљo'B['B:'Bs'B'Bж'BеА'BЩ'BЈ№'B*
dtype0*
_output_shapes
:

ј
transform/Const_3Const*Ж
valueЌBЉ BЂ/usr/local/google/home/ruoyu/tfx/pipelines/chicago_taxi_beam/Transform/transform_output/4/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary*
dtype0*
_output_shapes
: 
њ
transform/Const_4Const*
dtype0*
_output_shapes
: *И
valueЎBЋ BЄ/usr/local/google/home/ruoyu/tfx/pipelines/chicago_taxi_beam/Transform/transform_output/4/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary
~
transform/Const_5Const*9
value0B.	"$v@'Bћ~'B#'BN'Bю'B1'BчЏ'BуЦ'Bц'B*
dtype0*
_output_shapes
:	

transform/Const_6Const*E
value<B:"0pqЏТncЏТѕ[ЏТ\WЏТЋSЏТдOЏТчJЏТFЏТїCЏТ@ЏТѓ=ЏТC/ЏТ*
dtype0*
_output_shapes
:

transform/Const_7Const*E
value<B:"0pqЏТ`ЏТТYЏТNUЏТ.RЏТNЏТЖIЏТEЏТїCЏТй@ЏТ>ЏТе=ЏТ*
dtype0*
_output_shapes
:
V
transform/Const_8Const*
valueB
 *ЎB*
dtype0*
_output_shapes
: 
V
transform/Const_9Const*
valueB
 *5/@*
dtype0*
_output_shapes
: 
W
transform/Const_10Const*
valueB
 *ш;A*
dtype0*
_output_shapes
: 
W
transform/Const_11Const*
valueB
 *=?C*
dtype0*
_output_shapes
: 
q
(transform/transform/inputs/company/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

)transform/transform/inputs/company/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

*transform/transform/inputs/company/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
x
/transform/transform/inputs/F_payment_type/shapePlaceholder*
_output_shapes
:*
shape:*
dtype0	

0transform/transform/inputs/F_payment_type/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

1transform/transform/inputs/F_payment_type/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

7transform/transform/inputs/F_dropoff_census_tract/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

8transform/transform/inputs/F_dropoff_census_tract/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

9transform/transform/inputs/F_dropoff_census_tract/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ

9transform/transform/inputs/F_dropoff_community_area/shapePlaceholder*
_output_shapes
:*
shape:*
dtype0	

:transform/transform/inputs/F_dropoff_community_area/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

;transform/transform/inputs/F_dropoff_community_area/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
|
3transform/transform/inputs/F_dropoff_latitude/shapePlaceholder*
_output_shapes
:*
shape:*
dtype0	

4transform/transform/inputs/F_dropoff_latitude/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

5transform/transform/inputs/F_dropoff_latitude/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
}
4transform/transform/inputs/F_dropoff_longitude/shapePlaceholder*
_output_shapes
:*
shape:*
dtype0	

5transform/transform/inputs/F_dropoff_longitude/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

6transform/transform/inputs/F_dropoff_longitude/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
n
%transform/transform/inputs/fare/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

&transform/transform/inputs/fare/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

'transform/transform/inputs/fare/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ

6transform/transform/inputs/F_pickup_census_tract/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

7transform/transform/inputs/F_pickup_census_tract/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0

8transform/transform/inputs/F_pickup_census_tract/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ

8transform/transform/inputs/F_pickup_community_area/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

9transform/transform/inputs/F_pickup_community_area/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*#
_output_shapes
:џџџџџџџџџ

:transform/transform/inputs/F_pickup_community_area/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
{
2transform/transform/inputs/F_pickup_latitude/shapePlaceholder*
_output_shapes
:*
shape:*
dtype0	

3transform/transform/inputs/F_pickup_latitude/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

4transform/transform/inputs/F_pickup_latitude/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
|
3transform/transform/inputs/F_pickup_longitude/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

4transform/transform/inputs/F_pickup_longitude/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

5transform/transform/inputs/F_pickup_longitude/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
n
%transform/transform/inputs/tips/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

&transform/transform/inputs/tips/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

'transform/transform/inputs/tips/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
v
-transform/transform/inputs/F_trip_miles/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

.transform/transform/inputs/F_trip_miles/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

/transform/transform/inputs/F_trip_miles/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
x
/transform/transform/inputs/F_trip_seconds/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

0transform/transform/inputs/F_trip_seconds/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0

1transform/transform/inputs/F_trip_seconds/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
z
1transform/transform/inputs/F_trip_start_day/shapePlaceholder*
_output_shapes
:*
shape:*
dtype0	

2transform/transform/inputs/F_trip_start_day/valuesPlaceholder*
dtype0	*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

3transform/transform/inputs/F_trip_start_day/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
{
2transform/transform/inputs/F_trip_start_hour/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

3transform/transform/inputs/F_trip_start_hour/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0	

4transform/transform/inputs/F_trip_start_hour/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
|
3transform/transform/inputs/F_trip_start_month/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

4transform/transform/inputs/F_trip_start_month/valuesPlaceholder*
dtype0	*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

5transform/transform/inputs/F_trip_start_month/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

7transform/transform/inputs/F_trip_start_timestamp/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

8transform/transform/inputs/F_trip_start_timestamp/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*#
_output_shapes
:џџџџџџџџџ

9transform/transform/inputs/F_trip_start_timestamp/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

6transform/transform/inputs/inputs/company/indices_copyIdentityParseExample/ParseExample*
T0	*'
_output_shapes
:џџџџџџџџџ

5transform/transform/inputs/inputs/company/values_copyIdentityParseExample/ParseExample:18*
T0*#
_output_shapes
:џџџџџџџџџ

4transform/transform/inputs/inputs/company/shape_copyIdentityParseExample/ParseExample:36*
T0	*
_output_shapes
:

=transform/transform/inputs/inputs/F_payment_type/indices_copyIdentityParseExample/ParseExample:6*'
_output_shapes
:џџџџџџџџџ*
T0	

<transform/transform/inputs/inputs/F_payment_type/values_copyIdentityParseExample/ParseExample:24*#
_output_shapes
:џџџџџџџџџ*
T0

;transform/transform/inputs/inputs/F_payment_type/shape_copyIdentityParseExample/ParseExample:42*
T0	*
_output_shapes
:
 
Etransform/transform/inputs/inputs/F_dropoff_census_tract/indices_copyIdentityParseExample/ParseExample:1*
T0	*'
_output_shapes
:џџџџџџџџџ

Dtransform/transform/inputs/inputs/F_dropoff_census_tract/values_copyIdentityParseExample/ParseExample:19*#
_output_shapes
:џџџџџџџџџ*
T0

Ctransform/transform/inputs/inputs/F_dropoff_census_tract/shape_copyIdentityParseExample/ParseExample:37*
T0	*
_output_shapes
:
Ђ
Gtransform/transform/inputs/inputs/F_dropoff_community_area/indices_copyIdentityParseExample/ParseExample:2*'
_output_shapes
:џџџџџџџџџ*
T0	

Ftransform/transform/inputs/inputs/F_dropoff_community_area/values_copyIdentityParseExample/ParseExample:20*#
_output_shapes
:џџџџџџџџџ*
T0

Etransform/transform/inputs/inputs/F_dropoff_community_area/shape_copyIdentityParseExample/ParseExample:38*
_output_shapes
:*
T0	

Atransform/transform/inputs/inputs/F_dropoff_latitude/indices_copyIdentityParseExample/ParseExample:3*'
_output_shapes
:џџџџџџџџџ*
T0	

@transform/transform/inputs/inputs/F_dropoff_latitude/values_copyIdentityParseExample/ParseExample:21*
T0*#
_output_shapes
:џџџџџџџџџ

?transform/transform/inputs/inputs/F_dropoff_latitude/shape_copyIdentityParseExample/ParseExample:39*
T0	*
_output_shapes
:

Btransform/transform/inputs/inputs/F_dropoff_longitude/indices_copyIdentityParseExample/ParseExample:4*
T0	*'
_output_shapes
:џџџџџџџџџ

Atransform/transform/inputs/inputs/F_dropoff_longitude/values_copyIdentityParseExample/ParseExample:22*
T0*#
_output_shapes
:џџџџџџџџџ

@transform/transform/inputs/inputs/F_dropoff_longitude/shape_copyIdentityParseExample/ParseExample:40*
_output_shapes
:*
T0	

3transform/transform/inputs/inputs/fare/indices_copyIdentityParseExample/ParseExample:5*'
_output_shapes
:џџџџџџџџџ*
T0	

2transform/transform/inputs/inputs/fare/values_copyIdentityParseExample/ParseExample:23*#
_output_shapes
:џџџџџџџџџ*
T0

1transform/transform/inputs/inputs/fare/shape_copyIdentityParseExample/ParseExample:41*
T0	*
_output_shapes
:

Dtransform/transform/inputs/inputs/F_pickup_census_tract/indices_copyIdentityParseExample/ParseExample:7*
T0	*'
_output_shapes
:џџџџџџџџџ

Ctransform/transform/inputs/inputs/F_pickup_census_tract/values_copyIdentityParseExample/ParseExample:25*
T0*#
_output_shapes
:џџџџџџџџџ

Btransform/transform/inputs/inputs/F_pickup_census_tract/shape_copyIdentityParseExample/ParseExample:43*
T0	*
_output_shapes
:
Ё
Ftransform/transform/inputs/inputs/F_pickup_community_area/indices_copyIdentityParseExample/ParseExample:8*'
_output_shapes
:џџџџџџџџџ*
T0	

Etransform/transform/inputs/inputs/F_pickup_community_area/values_copyIdentityParseExample/ParseExample:26*
T0	*#
_output_shapes
:џџџџџџџџџ

Dtransform/transform/inputs/inputs/F_pickup_community_area/shape_copyIdentityParseExample/ParseExample:44*
T0	*
_output_shapes
:

@transform/transform/inputs/inputs/F_pickup_latitude/indices_copyIdentityParseExample/ParseExample:9*'
_output_shapes
:џџџџџџџџџ*
T0	

?transform/transform/inputs/inputs/F_pickup_latitude/values_copyIdentityParseExample/ParseExample:27*#
_output_shapes
:џџџџџџџџџ*
T0

>transform/transform/inputs/inputs/F_pickup_latitude/shape_copyIdentityParseExample/ParseExample:45*
_output_shapes
:*
T0	

Atransform/transform/inputs/inputs/F_pickup_longitude/indices_copyIdentityParseExample/ParseExample:10*
T0	*'
_output_shapes
:џџџџџџџџџ

@transform/transform/inputs/inputs/F_pickup_longitude/values_copyIdentityParseExample/ParseExample:28*
T0*#
_output_shapes
:џџџџџџџџџ

?transform/transform/inputs/inputs/F_pickup_longitude/shape_copyIdentityParseExample/ParseExample:46*
T0	*
_output_shapes
:

3transform/transform/inputs/inputs/tips/indices_copyIdentityParseExample/ParseExample:11*'
_output_shapes
:џџџџџџџџџ*
T0	

2transform/transform/inputs/inputs/tips/values_copyIdentityParseExample/ParseExample:29*
T0*#
_output_shapes
:џџџџџџџџџ

1transform/transform/inputs/inputs/tips/shape_copyIdentityParseExample/ParseExample:47*
_output_shapes
:*
T0	

;transform/transform/inputs/inputs/F_trip_miles/indices_copyIdentityParseExample/ParseExample:12*
T0	*'
_output_shapes
:џџџџџџџџџ

:transform/transform/inputs/inputs/F_trip_miles/values_copyIdentityParseExample/ParseExample:30*#
_output_shapes
:џџџџџџџџџ*
T0

9transform/transform/inputs/inputs/F_trip_miles/shape_copyIdentityParseExample/ParseExample:48*
T0	*
_output_shapes
:

=transform/transform/inputs/inputs/F_trip_seconds/indices_copyIdentityParseExample/ParseExample:13*
T0	*'
_output_shapes
:џџџџџџџџџ

<transform/transform/inputs/inputs/F_trip_seconds/values_copyIdentityParseExample/ParseExample:31*
T0*#
_output_shapes
:џџџџџџџџџ

;transform/transform/inputs/inputs/F_trip_seconds/shape_copyIdentityParseExample/ParseExample:49*
T0	*
_output_shapes
:

?transform/transform/inputs/inputs/F_trip_start_day/indices_copyIdentityParseExample/ParseExample:14*'
_output_shapes
:џџџџџџџџџ*
T0	

>transform/transform/inputs/inputs/F_trip_start_day/values_copyIdentityParseExample/ParseExample:32*
T0	*#
_output_shapes
:џџџџџџџџџ

=transform/transform/inputs/inputs/F_trip_start_day/shape_copyIdentityParseExample/ParseExample:50*
T0	*
_output_shapes
:

@transform/transform/inputs/inputs/F_trip_start_hour/indices_copyIdentityParseExample/ParseExample:15*'
_output_shapes
:џџџџџџџџџ*
T0	

?transform/transform/inputs/inputs/F_trip_start_hour/values_copyIdentityParseExample/ParseExample:33*#
_output_shapes
:џџџџџџџџџ*
T0	

>transform/transform/inputs/inputs/F_trip_start_hour/shape_copyIdentityParseExample/ParseExample:51*
T0	*
_output_shapes
:

Atransform/transform/inputs/inputs/F_trip_start_month/indices_copyIdentityParseExample/ParseExample:16*
T0	*'
_output_shapes
:џџџџџџџџџ

@transform/transform/inputs/inputs/F_trip_start_month/values_copyIdentityParseExample/ParseExample:34*
T0	*#
_output_shapes
:џџџџџџџџџ

?transform/transform/inputs/inputs/F_trip_start_month/shape_copyIdentityParseExample/ParseExample:52*
_output_shapes
:*
T0	
Ё
Etransform/transform/inputs/inputs/F_trip_start_timestamp/indices_copyIdentityParseExample/ParseExample:17*
T0	*'
_output_shapes
:џџџџџџџџџ

Dtransform/transform/inputs/inputs/F_trip_start_timestamp/values_copyIdentityParseExample/ParseExample:35*
T0	*#
_output_shapes
:џџџџџџџџџ

Ctransform/transform/inputs/inputs/F_trip_start_timestamp/shape_copyIdentityParseExample/ParseExample:53*
T0	*
_output_shapes
:
q
'transform/transform/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
s
)transform/transform/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)transform/transform/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Б
!transform/transform/strided_sliceStridedSlice9transform/transform/inputs/inputs/F_trip_miles/shape_copy'transform/transform/strided_slice/stack)transform/transform/strided_slice/stack_1)transform/transform/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0	*
Index0
p
.transform/transform/SparseTensor/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Е
,transform/transform/SparseTensor/dense_shapePack!transform/transform/strided_slice.transform/transform/SparseTensor/dense_shape/1*
T0	*
N*
_output_shapes
:
t
/transform/transform/SparseToDense/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ь
!transform/transform/SparseToDenseSparseToDense;transform/transform/inputs/inputs/F_trip_miles/indices_copy,transform/transform/SparseTensor/dense_shape:transform/transform/inputs/inputs/F_trip_miles/values_copy/transform/transform/SparseToDense/default_value*
T0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/SqueezeSqueeze!transform/transform/SparseToDense*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

Otransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SizeSizetransform/transform/Squeeze*
T0*
_output_shapes
: 
и
Otransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/CastCastOtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Size*

SrcT0*
_output_shapes
: *

DstT0

Ptransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/ConstConst*
valueB: *
dtype0*
_output_shapes
:
х
Ntransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SumSumtransform/transform/SqueezePtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Const*
_output_shapes
: *
T0

Rtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/truedivRealDivNtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SumOtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 
є
Ntransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/subSubtransform/transform/SqueezeRtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
й
Qtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SquareSquareNtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/sub*#
_output_shapes
:џџџџџџџџџ*
T0

Rtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

Ptransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Sum_1SumQtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SquareRtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Const_1*
T0*
_output_shapes
: 
Ѓ
Ttransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/truediv_1RealDivPtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Sum_1Otransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 

Ptransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Vtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 

Xtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
І
Atransform/transform/scale_to_z_score/scale_to_z_score_per_key/subSubtransform/transform/Squeezetransform/Const_9*
T0*#
_output_shapes
:џџџџџџџџџ
~
Btransform/transform/scale_to_z_score/scale_to_z_score_per_key/SqrtSqrttransform/Const_8*
_output_shapes
: *
T0

Htransform/transform/scale_to_z_score/scale_to_z_score_per_key/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Ftransform/transform/scale_to_z_score/scale_to_z_score_per_key/NotEqualNotEqualBtransform/transform/scale_to_z_score/scale_to_z_score_per_key/SqrtHtransform/transform/scale_to_z_score/scale_to_z_score_per_key/NotEqual/y*
_output_shapes
: *
T0
Ц
Htransform/transform/scale_to_z_score/scale_to_z_score_per_key/zeros_like	ZerosLikeAtransform/transform/scale_to_z_score/scale_to_z_score_per_key/sub*#
_output_shapes
:џџџџџџџџџ*
T0
Т
Btransform/transform/scale_to_z_score/scale_to_z_score_per_key/CastCastFtransform/transform/scale_to_z_score/scale_to_z_score_per_key/NotEqual*

SrcT0
*
_output_shapes
: *

DstT0

Atransform/transform/scale_to_z_score/scale_to_z_score_per_key/addAddV2Htransform/transform/scale_to_z_score/scale_to_z_score_per_key/zeros_likeBtransform/transform/scale_to_z_score/scale_to_z_score_per_key/Cast*#
_output_shapes
:џџџџџџџџџ*
T0
Ь
Dtransform/transform/scale_to_z_score/scale_to_z_score_per_key/Cast_1CastAtransform/transform/scale_to_z_score/scale_to_z_score_per_key/add*#
_output_shapes
:џџџџџџџџџ*

DstT0
*

SrcT0

Etransform/transform/scale_to_z_score/scale_to_z_score_per_key/truedivRealDivAtransform/transform/scale_to_z_score/scale_to_z_score_per_key/subBtransform/transform/scale_to_z_score/scale_to_z_score_per_key/Sqrt*
T0*#
_output_shapes
:џџџџџџџџџ
Ь
Dtransform/transform/scale_to_z_score/scale_to_z_score_per_key/SelectSelectDtransform/transform/scale_to_z_score/scale_to_z_score_per_key/Cast_1Etransform/transform/scale_to_z_score/scale_to_z_score_per_key/truedivAtransform/transform/scale_to_z_score/scale_to_z_score_per_key/sub*#
_output_shapes
:џџџџџџџџџ*
T0
s
)transform/transform/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
u
+transform/transform/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Б
#transform/transform/strided_slice_1StridedSlice1transform/transform/inputs/inputs/fare/shape_copy)transform/transform/strided_slice_1/stack+transform/transform/strided_slice_1/stack_1+transform/transform/strided_slice_1/stack_2*
shrink_axis_mask*
Index0*
T0	*
_output_shapes
: 
r
0transform/transform/SparseTensor_1/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Л
.transform/transform/SparseTensor_1/dense_shapePack#transform/transform/strided_slice_10transform/transform/SparseTensor_1/dense_shape/1*
T0	*
N*
_output_shapes
:
v
1transform/transform/SparseToDense_1/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Т
#transform/transform/SparseToDense_1SparseToDense3transform/transform/inputs/inputs/fare/indices_copy.transform/transform/SparseTensor_1/dense_shape2transform/transform/inputs/inputs/fare/values_copy1transform/transform/SparseToDense_1/default_value*
Tindices0	*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_1Squeeze#transform/transform/SparseToDense_1*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

Qtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SizeSizetransform/transform/Squeeze_1*
_output_shapes
: *
T0
м
Qtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/CastCastQtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Size*
_output_shapes
: *

DstT0*

SrcT0

Rtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
ы
Ptransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SumSumtransform/transform/Squeeze_1Rtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Const*
T0*
_output_shapes
: 
Ѕ
Ttransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/truedivRealDivPtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SumQtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Cast*
_output_shapes
: *
T0
њ
Ptransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/subSubtransform/transform/Squeeze_1Ttransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
н
Stransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SquareSquarePtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/sub*
T0*#
_output_shapes
:џџџџџџџџџ

Ttransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ѕ
Rtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Sum_1SumStransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SquareTtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Const_1*
T0*
_output_shapes
: 
Љ
Vtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/truediv_1RealDivRtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Sum_1Qtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Cast*
_output_shapes
: *
T0

Rtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Xtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 

Ztransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
Ћ
Ctransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/subSubtransform/transform/Squeeze_1transform/Const_10*#
_output_shapes
:џџџџџџџџџ*
T0

Dtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/SqrtSqrttransform/Const_11*
T0*
_output_shapes
: 

Jtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqual/yConst*
dtype0*
_output_shapes
: *
valueB
 *    

Htransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqualNotEqualDtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/SqrtJtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqual/y*
T0*
_output_shapes
: 
Ъ
Jtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/zeros_like	ZerosLikeCtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/sub*
T0*#
_output_shapes
:џџџџџџџџџ
Ц
Dtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/CastCastHtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqual*

SrcT0
*
_output_shapes
: *

DstT0

Ctransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/addAddV2Jtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/zeros_likeDtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/Cast*#
_output_shapes
:џџџџџџџџџ*
T0
а
Ftransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/Cast_1CastCtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/add*#
_output_shapes
:џџџџџџџџџ*

DstT0
*

SrcT0

Gtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/truedivRealDivCtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/subDtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/Sqrt*
T0*#
_output_shapes
:џџџџџџџџџ
д
Ftransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/SelectSelectFtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/Cast_1Gtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/truedivCtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/sub*#
_output_shapes
:џџџџџџџџџ*
T0
s
)transform/transform/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Л
#transform/transform/strided_slice_2StridedSlice;transform/transform/inputs/inputs/F_trip_seconds/shape_copy)transform/transform/strided_slice_2/stack+transform/transform/strided_slice_2/stack_1+transform/transform/strided_slice_2/stack_2*
shrink_axis_mask*
T0	*
Index0*
_output_shapes
: 
r
0transform/transform/SparseTensor_2/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Л
.transform/transform/SparseTensor_2/dense_shapePack#transform/transform/strided_slice_20transform/transform/SparseTensor_2/dense_shape/1*
T0	*
N*
_output_shapes
:
v
1transform/transform/SparseToDense_2/default_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
ж
#transform/transform/SparseToDense_2SparseToDense=transform/transform/inputs/inputs/F_trip_seconds/indices_copy.transform/transform/SparseTensor_2/dense_shape<transform/transform/inputs/inputs/F_trip_seconds/values_copy1transform/transform/SparseToDense_2/default_value*'
_output_shapes
:џџџџџџџџџ*
Tindices0	*
T0

transform/transform/Squeeze_2Squeeze#transform/transform/SparseToDense_2*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0

Qtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SizeSizetransform/transform/Squeeze_2*
_output_shapes
: *
T0
м
Qtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/CastCastQtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Size*

SrcT0*
_output_shapes
: *

DstT0

Rtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ы
Ptransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SumSumtransform/transform/Squeeze_2Rtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Const*
T0*
_output_shapes
: 
Ѕ
Ttransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/truedivRealDivPtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SumQtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 
њ
Ptransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/subSubtransform/transform/Squeeze_2Ttransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
н
Stransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SquareSquarePtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/sub*#
_output_shapes
:џџџџџџџџџ*
T0

Ttransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ѕ
Rtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Sum_1SumStransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SquareTtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Const_1*
T0*
_output_shapes
: 
Љ
Vtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/truediv_1RealDivRtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Sum_1Qtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast*
_output_shapes
: *
T0

Rtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Xtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 

Ztransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Placeholder_1Placeholder*
shape: *
dtype0*
_output_shapes
: 
Њ
Ctransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/subSubtransform/transform/Squeeze_2transform/Const_1*
T0*#
_output_shapes
:џџџџџџџџџ
~
Dtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/SqrtSqrttransform/Const*
_output_shapes
: *
T0

Jtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Htransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqualNotEqualDtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/SqrtJtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqual/y*
T0*
_output_shapes
: 
Ъ
Jtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/zeros_like	ZerosLikeCtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/sub*
T0*#
_output_shapes
:џџџџџџџџџ
Ц
Dtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/CastCastHtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqual*

SrcT0
*
_output_shapes
: *

DstT0

Ctransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/addAddV2Jtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/zeros_likeDtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast*#
_output_shapes
:џџџџџџџџџ*
T0
а
Ftransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_1CastCtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/add*#
_output_shapes
:џџџџџџџџџ*

DstT0
*

SrcT0

Gtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/truedivRealDivCtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/subDtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Sqrt*#
_output_shapes
:џџџџџџџџџ*
T0
д
Ftransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/SelectSelectFtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_1Gtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/truedivCtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/sub*
T0*#
_output_shapes
:џџџџџџџџџ
s
)transform/transform/strided_slice_3/stackConst*
dtype0*
_output_shapes
:*
valueB: 
u
+transform/transform/strided_slice_3/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
u
+transform/transform/strided_slice_3/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Л
#transform/transform/strided_slice_3StridedSlice;transform/transform/inputs/inputs/F_payment_type/shape_copy)transform/transform/strided_slice_3/stack+transform/transform/strided_slice_3/stack_1+transform/transform/strided_slice_3/stack_2*
T0	*
Index0*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_3/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Л
.transform/transform/SparseTensor_3/dense_shapePack#transform/transform/strided_slice_30transform/transform/SparseTensor_3/dense_shape/1*
N*
_output_shapes
:*
T0	
r
1transform/transform/SparseToDense_3/default_valueConst*
valueB B *
dtype0*
_output_shapes
: 
ж
#transform/transform/SparseToDense_3SparseToDense=transform/transform/inputs/inputs/F_payment_type/indices_copy.transform/transform/SparseTensor_3/dense_shape<transform/transform/inputs/inputs/F_payment_type/values_copy1transform/transform/SparseToDense_3/default_value*'
_output_shapes
:џџџџџџџџџ*
Tindices0	*
T0

transform/transform/Squeeze_3Squeeze#transform/transform/SparseToDense_3*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


Itransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
ц
Ctransform/transform/compute_and_apply_vocabulary/vocabulary/ReshapeReshapetransform/transform/Squeeze_3Itransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shape*
T0*#
_output_shapes
:џџџџџџџџџ

Gtransform/transform/compute_and_apply_vocabulary/vocabulary/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/ConstConst*
valueB	 R
џџџџџџџџџ*
dtype0	*
_output_shapes
: 

Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tableHashTableV2*y
shared_namejhhash_table_Tensor("compute_and_apply_vocabulary/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
value_dtype0	*
	key_dtype0*
_output_shapes
: 

itransform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tableConst*
value_indexџџџџџџџџџ*
	key_indexўџџџџџџџџ
ф
ntransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 

Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/yConst*
value	B	 R
*
dtype0	*
_output_shapes
: 
О
Ptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addAddV2ntransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
Ы
Ztransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFasttransform/transform/Squeeze_3*#
_output_shapes
:џџџџџџџџџ*
num_buckets

я
rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tabletransform/transform/Squeeze_3Btransform/transform/compute_and_apply_vocabulary/apply_vocab/Const*

Tout0	*#
_output_shapes
:џџџџџџџџџ*	
Tin0
ц
ptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
е
Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/AddAddZtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*#
_output_shapes
:џџџџџџџџџ*
T0	
Щ
Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualNotEqualrtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Btransform/transform/compute_and_apply_vocabulary/apply_vocab/Const*
T0	*#
_output_shapes
:џџџџџџџџџ
В
Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2SelectV2Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualrtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/Add*
T0	*#
_output_shapes
:џџџџџџџџџ

Dtransform/transform/compute_and_apply_vocabulary/apply_vocab/Const_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
ў
@transform/transform/compute_and_apply_vocabulary/apply_vocab/subSubPtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addBtransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/y*
T0	*
_output_shapes
: 
s
)transform/transform/strided_slice_4/stackConst*
dtype0*
_output_shapes
:*
valueB: 
u
+transform/transform/strided_slice_4/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Д
#transform/transform/strided_slice_4StridedSlice4transform/transform/inputs/inputs/company/shape_copy)transform/transform/strided_slice_4/stack+transform/transform/strided_slice_4/stack_1+transform/transform/strided_slice_4/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0	
r
0transform/transform/SparseTensor_4/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Л
.transform/transform/SparseTensor_4/dense_shapePack#transform/transform/strided_slice_40transform/transform/SparseTensor_4/dense_shape/1*
T0	*
N*
_output_shapes
:
r
1transform/transform/SparseToDense_4/default_valueConst*
valueB B *
dtype0*
_output_shapes
: 
Ш
#transform/transform/SparseToDense_4SparseToDense6transform/transform/inputs/inputs/company/indices_copy.transform/transform/SparseTensor_4/dense_shape5transform/transform/inputs/inputs/company/values_copy1transform/transform/SparseToDense_4/default_value*
Tindices0	*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_4Squeeze#transform/transform/SparseToDense_4*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0

Ktransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ъ
Etransform/transform/compute_and_apply_vocabulary_1/vocabulary/ReshapeReshapetransform/transform/Squeeze_4Ktransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
T0

Itransform/transform/compute_and_apply_vocabulary_1/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
shape: *
dtype0

Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/ConstConst*
valueB	 R
џџџџџџџџџ*
dtype0	*
_output_shapes
: 

Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableHashTableV2*
	key_dtype0*
value_dtype0	*
_output_shapes
: *{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_1/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1

ktransform/transform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableConst_1*
value_indexџџџџџџџџџ*
	key_indexўџџџџџџџџ
ш
ptransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 

Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/yConst*
value	B	 R
*
dtype0	*
_output_shapes
: 
Ф
Rtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/addAddV2ptransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
Э
\transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFasttransform/transform/Squeeze_4*#
_output_shapes
:џџџџџџџџџ*
num_buckets

ѕ
ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tabletransform/transform/Squeeze_4Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const*#
_output_shapes
:џџџџџџџџџ*	
Tin0*

Tout0	
ъ
rtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 
л
Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/AddAdd\transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_bucketrtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*#
_output_shapes
:џџџџџџџџџ*
T0	
Я
Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualNotEqualttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const*#
_output_shapes
:џџџџџџџџџ*
T0	
К
Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2SelectV2Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/Add*#
_output_shapes
:џџџџџџџџџ*
T0	

Ftransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 

Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 

Btransform/transform/compute_and_apply_vocabulary_1/apply_vocab/subSubRtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/addDtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub/y*
T0	*
_output_shapes
: 
s
)transform/transform/strided_slice_5/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_5/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
О
#transform/transform/strided_slice_5StridedSlice>transform/transform/inputs/inputs/F_pickup_latitude/shape_copy)transform/transform/strided_slice_5/stack+transform/transform/strided_slice_5/stack_1+transform/transform/strided_slice_5/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0	*
Index0
r
0transform/transform/SparseTensor_5/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Л
.transform/transform/SparseTensor_5/dense_shapePack#transform/transform/strided_slice_50transform/transform/SparseTensor_5/dense_shape/1*
T0	*
N*
_output_shapes
:
v
1transform/transform/SparseToDense_5/default_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
м
#transform/transform/SparseToDense_5SparseToDense@transform/transform/inputs/inputs/F_pickup_latitude/indices_copy.transform/transform/SparseTensor_5/dense_shape?transform/transform/inputs/inputs/F_pickup_latitude/values_copy1transform/transform/SparseToDense_5/default_value*
Tindices0	*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_5Squeeze#transform/transform/SparseToDense_5*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

3transform/transform/bucketize/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
|
1transform/transform/bucketize/quantiles/sort/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
o
0transform/transform/bucketize/quantiles/sort/NegNegtransform/Const_5*
_output_shapes
:	*
T0

2transform/transform/bucketize/quantiles/sort/ShapeShape0transform/transform/bucketize/quantiles/sort/Neg*
T0*
_output_shapes
:

@transform/transform/bucketize/quantiles/sort/strided_slice/stackConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

Btransform/transform/bucketize/quantiles/sort/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 

Btransform/transform/bucketize/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

:transform/transform/bucketize/quantiles/sort/strided_sliceStridedSlice2transform/transform/bucketize/quantiles/sort/Shape@transform/transform/bucketize/quantiles/sort/strided_slice/stackBtransform/transform/bucketize/quantiles/sort/strided_slice/stack_1Btransform/transform/bucketize/quantiles/sort/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/bucketize/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
ж
3transform/transform/bucketize/quantiles/sort/TopKV2TopKV20transform/transform/bucketize/quantiles/sort/Neg:transform/transform/bucketize/quantiles/sort/strided_slice* 
_output_shapes
:	:	*
T0

2transform/transform/bucketize/quantiles/sort/Neg_1Neg3transform/transform/bucketize/quantiles/sort/TopKV2*
_output_shapes
:	*
T0
x
6transform/transform/bucketize/quantiles/ExpandDims/dimConst*
_output_shapes
: *
value	B : *
dtype0
е
2transform/transform/bucketize/quantiles/ExpandDims
ExpandDims2transform/transform/bucketize/quantiles/sort/Neg_16transform/transform/bucketize/quantiles/ExpandDims/dim*
_output_shapes

:	*
T0
~
3transform/transform/bucketize/quantiles/sort_1/axisConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

2transform/transform/bucketize/quantiles/sort_1/NegNeg2transform/transform/bucketize/quantiles/ExpandDims*
T0*
_output_shapes

:	

4transform/transform/bucketize/quantiles/sort_1/ShapeShape2transform/transform/bucketize/quantiles/sort_1/Neg*
_output_shapes
:*
T0

Btransform/transform/bucketize/quantiles/sort_1/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Dtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Dtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

<transform/transform/bucketize/quantiles/sort_1/strided_sliceStridedSlice4transform/transform/bucketize/quantiles/sort_1/ShapeBtransform/transform/bucketize/quantiles/sort_1/strided_slice/stackDtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_1Dtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
u
3transform/transform/bucketize/quantiles/sort_1/RankConst*
value	B :*
dtype0*
_output_shapes
: 
ф
5transform/transform/bucketize/quantiles/sort_1/TopKV2TopKV22transform/transform/bucketize/quantiles/sort_1/Neg<transform/transform/bucketize/quantiles/sort_1/strided_slice*(
_output_shapes
:	:	*
T0

4transform/transform/bucketize/quantiles/sort_1/Neg_1Neg5transform/transform/bucketize/quantiles/sort_1/TopKV2*
_output_shapes

:	*
T0
p
.transform/transform/bucketize/assert_rank/rankConst*
dtype0*
_output_shapes
: *
value	B :

/transform/transform/bucketize/assert_rank/ShapeShape4transform/transform/bucketize/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0
`
Xtransform/transform/bucketize/assert_rank/assert_type/statically_determined_correct_typeNoOp
Q
Itransform/transform/bucketize/assert_rank/static_checks_determined_all_okNoOp
О
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
В
htransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Д
jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Д
jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ж
btransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceZtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapehtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackjtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
ѕ
Ytransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastbtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
_output_shapes
: *

DstT0	
О
Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg4transform/transform/bucketize/quantiles/sort_1/Neg_1*
_output_shapes

:	*
T0
Ж
ctransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
г
^transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negctransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:	
Ў
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/transform/Squeeze_5*
T0*#
_output_shapes
:џџџџџџџџџ
Є
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
И
Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxZtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: 
і
ftransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackXtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
T0*
N*
_output_shapes
:

dtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packftransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*
N*
_output_shapes

:
Ћ
`transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
С
[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2^transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2dtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1`transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
T0*
N*
_output_shapes

:

Ў
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/transform/Squeeze_5*
T0*#
_output_shapes
:џџџџџџџџџ
ѓ
\transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
_output_shapes
:
*	
num*
T0
і
jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeZtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2\transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:џџџџџџџџџ*
num_features

[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castjtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*#
_output_shapes
:џџџџџџџџџ*

DstT0	*

SrcT0
Х
Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubYtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
s
1transform/transform/bucketize/apply_buckets/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	

1transform/transform/bucketize/apply_buckets/ShapeShape4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:

?transform/transform/bucketize/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Atransform/transform/bucketize/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Atransform/transform/bucketize/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

9transform/transform/bucketize/apply_buckets/strided_sliceStridedSlice1transform/transform/bucketize/apply_buckets/Shape?transform/transform/bucketize/apply_buckets/strided_slice/stackAtransform/transform/bucketize/apply_buckets/strided_slice/stack_1Atransform/transform/bucketize/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
s
)transform/transform/strided_slice_6/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_6/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
П
#transform/transform/strided_slice_6StridedSlice?transform/transform/inputs/inputs/F_pickup_longitude/shape_copy)transform/transform/strided_slice_6/stack+transform/transform/strided_slice_6/stack_1+transform/transform/strided_slice_6/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0	
r
0transform/transform/SparseTensor_6/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Л
.transform/transform/SparseTensor_6/dense_shapePack#transform/transform/strided_slice_60transform/transform/SparseTensor_6/dense_shape/1*
T0	*
N*
_output_shapes
:
v
1transform/transform/SparseToDense_6/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
о
#transform/transform/SparseToDense_6SparseToDenseAtransform/transform/inputs/inputs/F_pickup_longitude/indices_copy.transform/transform/SparseTensor_6/dense_shape@transform/transform/inputs/inputs/F_pickup_longitude/values_copy1transform/transform/SparseToDense_6/default_value*
T0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_6Squeeze#transform/transform/SparseToDense_6*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0

5transform/transform/bucketize_1/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
~
3transform/transform/bucketize_1/quantiles/sort/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
q
2transform/transform/bucketize_1/quantiles/sort/NegNegtransform/Const_7*
_output_shapes
:*
T0

4transform/transform/bucketize_1/quantiles/sort/ShapeShape2transform/transform/bucketize_1/quantiles/sort/Neg*
_output_shapes
:*
T0

Btransform/transform/bucketize_1/quantiles/sort/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Dtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Dtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

<transform/transform/bucketize_1/quantiles/sort/strided_sliceStridedSlice4transform/transform/bucketize_1/quantiles/sort/ShapeBtransform/transform/bucketize_1/quantiles/sort/strided_slice/stackDtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_1Dtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
u
3transform/transform/bucketize_1/quantiles/sort/RankConst*
dtype0*
_output_shapes
: *
value	B :
м
5transform/transform/bucketize_1/quantiles/sort/TopKV2TopKV22transform/transform/bucketize_1/quantiles/sort/Neg<transform/transform/bucketize_1/quantiles/sort/strided_slice*
T0* 
_output_shapes
::

4transform/transform/bucketize_1/quantiles/sort/Neg_1Neg5transform/transform/bucketize_1/quantiles/sort/TopKV2*
T0*
_output_shapes
:
z
8transform/transform/bucketize_1/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
л
4transform/transform/bucketize_1/quantiles/ExpandDims
ExpandDims4transform/transform/bucketize_1/quantiles/sort/Neg_18transform/transform/bucketize_1/quantiles/ExpandDims/dim*
T0*
_output_shapes

:

5transform/transform/bucketize_1/quantiles/sort_1/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

4transform/transform/bucketize_1/quantiles/sort_1/NegNeg4transform/transform/bucketize_1/quantiles/ExpandDims*
T0*
_output_shapes

:

6transform/transform/bucketize_1/quantiles/sort_1/ShapeShape4transform/transform/bucketize_1/quantiles/sort_1/Neg*
T0*
_output_shapes
:

Dtransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

Ftransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Ftransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ђ
>transform/transform/bucketize_1/quantiles/sort_1/strided_sliceStridedSlice6transform/transform/bucketize_1/quantiles/sort_1/ShapeDtransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stackFtransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1Ftransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
w
5transform/transform/bucketize_1/quantiles/sort_1/RankConst*
value	B :*
dtype0*
_output_shapes
: 
ъ
7transform/transform/bucketize_1/quantiles/sort_1/TopKV2TopKV24transform/transform/bucketize_1/quantiles/sort_1/Neg>transform/transform/bucketize_1/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
::

6transform/transform/bucketize_1/quantiles/sort_1/Neg_1Neg7transform/transform/bucketize_1/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:
r
0transform/transform/bucketize_1/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 

1transform/transform/bucketize_1/assert_rank/ShapeShape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
b
Ztransform/transform/bucketize_1/assert_rank/assert_type/statically_determined_correct_typeNoOp
S
Ktransform/transform/bucketize_1/assert_rank/static_checks_determined_all_okNoOp
Т
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
Д
jtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ж
ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
Ж
ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
р
dtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlice\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapejtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
љ
[transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastdtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
_output_shapes
: *

DstT0	
Т
Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:
И
etransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
й
`transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negetransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
_output_shapes

:*
T0
А
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/transform/Squeeze_6*#
_output_shapes
:џџџџџџџџџ*
T0
І
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
О
Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMax\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
_output_shapes
: *
T0
њ
htransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackZtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
T0*
N*
_output_shapes
:

ftransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packhtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
_output_shapes

:*
T0
­
btransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Щ
]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2`transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2ftransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1btransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
T0*
N*
_output_shapes

:
А
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/transform/Squeeze_6*
T0*#
_output_shapes
:џџџџџџџџџ
ї
^transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*	
num*
T0*
_output_shapes
:
ќ
ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketize\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2^transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:џџџџџџџџџ

]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*#
_output_shapes
:џџџџџџџџџ*

DstT0	*

SrcT0
Ы
Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSub[transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
u
3transform/transform/bucketize_1/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

3transform/transform/bucketize_1/apply_buckets/ShapeShape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:

Atransform/transform/bucketize_1/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

;transform/transform/bucketize_1/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_1/apply_buckets/ShapeAtransform/transform/bucketize_1/apply_buckets/strided_slice/stackCtransform/transform/bucketize_1/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
s
)transform/transform/strided_slice_7/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_7/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
u
+transform/transform/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
П
#transform/transform/strided_slice_7StridedSlice?transform/transform/inputs/inputs/F_dropoff_latitude/shape_copy)transform/transform/strided_slice_7/stack+transform/transform/strided_slice_7/stack_1+transform/transform/strided_slice_7/stack_2*
shrink_axis_mask*
Index0*
T0	*
_output_shapes
: 
r
0transform/transform/SparseTensor_7/dense_shape/1Const*
_output_shapes
: *
value	B	 R*
dtype0	
Л
.transform/transform/SparseTensor_7/dense_shapePack#transform/transform/strided_slice_70transform/transform/SparseTensor_7/dense_shape/1*
T0	*
N*
_output_shapes
:
v
1transform/transform/SparseToDense_7/default_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
о
#transform/transform/SparseToDense_7SparseToDenseAtransform/transform/inputs/inputs/F_dropoff_latitude/indices_copy.transform/transform/SparseTensor_7/dense_shape@transform/transform/inputs/inputs/F_dropoff_latitude/values_copy1transform/transform/SparseToDense_7/default_value*
T0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_7Squeeze#transform/transform/SparseToDense_7*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0

5transform/transform/bucketize_2/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
~
3transform/transform/bucketize_2/quantiles/sort/axisConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0
q
2transform/transform/bucketize_2/quantiles/sort/NegNegtransform/Const_2*
T0*
_output_shapes
:


4transform/transform/bucketize_2/quantiles/sort/ShapeShape2transform/transform/bucketize_2/quantiles/sort/Neg*
T0*
_output_shapes
:

Btransform/transform/bucketize_2/quantiles/sort/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Dtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
valueB: *
dtype0

Dtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

<transform/transform/bucketize_2/quantiles/sort/strided_sliceStridedSlice4transform/transform/bucketize_2/quantiles/sort/ShapeBtransform/transform/bucketize_2/quantiles/sort/strided_slice/stackDtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_1Dtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
u
3transform/transform/bucketize_2/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
м
5transform/transform/bucketize_2/quantiles/sort/TopKV2TopKV22transform/transform/bucketize_2/quantiles/sort/Neg<transform/transform/bucketize_2/quantiles/sort/strided_slice*
T0* 
_output_shapes
:
:


4transform/transform/bucketize_2/quantiles/sort/Neg_1Neg5transform/transform/bucketize_2/quantiles/sort/TopKV2*
T0*
_output_shapes
:

z
8transform/transform/bucketize_2/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
л
4transform/transform/bucketize_2/quantiles/ExpandDims
ExpandDims4transform/transform/bucketize_2/quantiles/sort/Neg_18transform/transform/bucketize_2/quantiles/ExpandDims/dim*
T0*
_output_shapes

:


5transform/transform/bucketize_2/quantiles/sort_1/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

4transform/transform/bucketize_2/quantiles/sort_1/NegNeg4transform/transform/bucketize_2/quantiles/ExpandDims*
T0*
_output_shapes

:


6transform/transform/bucketize_2/quantiles/sort_1/ShapeShape4transform/transform/bucketize_2/quantiles/sort_1/Neg*
T0*
_output_shapes
:

Dtransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Ftransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Ftransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ђ
>transform/transform/bucketize_2/quantiles/sort_1/strided_sliceStridedSlice6transform/transform/bucketize_2/quantiles/sort_1/ShapeDtransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stackFtransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1Ftransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
w
5transform/transform/bucketize_2/quantiles/sort_1/RankConst*
value	B :*
dtype0*
_output_shapes
: 
ъ
7transform/transform/bucketize_2/quantiles/sort_1/TopKV2TopKV24transform/transform/bucketize_2/quantiles/sort_1/Neg>transform/transform/bucketize_2/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
:
:


6transform/transform/bucketize_2/quantiles/sort_1/Neg_1Neg7transform/transform/bucketize_2/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:

r
0transform/transform/bucketize_2/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 

1transform/transform/bucketize_2/assert_rank/ShapeShape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0
b
Ztransform/transform/bucketize_2/assert_rank/assert_type/statically_determined_correct_typeNoOp
S
Ktransform/transform/bucketize_2/assert_rank/static_checks_determined_all_okNoOp
Т
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0
Д
jtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
Ж
ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ж
ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
р
dtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlice\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapejtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
љ
[transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastdtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
_output_shapes
: *

DstT0	
Т
Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:

И
etransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
й
`transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negetransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:

А
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/transform/Squeeze_7*
T0*#
_output_shapes
:џџџџџџџџџ
І
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
О
Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMax\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: 
њ
htransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackZtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
_output_shapes
:*
T0

ftransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packhtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*
N*
_output_shapes

:
­
btransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Щ
]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2`transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2ftransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1btransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
_output_shapes

:*
T0
А
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/transform/Squeeze_7*#
_output_shapes
:џџџџџџџџџ*
T0
ї
^transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*	
num*
T0*
_output_shapes
:
ќ
ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketize\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2^transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:џџџџџџџџџ

]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*#
_output_shapes
:џџџџџџџџџ*

DstT0	*

SrcT0
Ы
Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSub[transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
u
3transform/transform/bucketize_2/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

3transform/transform/bucketize_2/apply_buckets/ShapeShape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0

Atransform/transform/bucketize_2/apply_buckets/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:

Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

;transform/transform/bucketize_2/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_2/apply_buckets/ShapeAtransform/transform/bucketize_2/apply_buckets/strided_slice/stackCtransform/transform/bucketize_2/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
s
)transform/transform/strided_slice_8/stackConst*
_output_shapes
:*
valueB: *
dtype0
u
+transform/transform/strided_slice_8/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
u
+transform/transform/strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Р
#transform/transform/strided_slice_8StridedSlice@transform/transform/inputs/inputs/F_dropoff_longitude/shape_copy)transform/transform/strided_slice_8/stack+transform/transform/strided_slice_8/stack_1+transform/transform/strided_slice_8/stack_2*
shrink_axis_mask*
T0	*
Index0*
_output_shapes
: 
r
0transform/transform/SparseTensor_8/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Л
.transform/transform/SparseTensor_8/dense_shapePack#transform/transform/strided_slice_80transform/transform/SparseTensor_8/dense_shape/1*
N*
_output_shapes
:*
T0	
v
1transform/transform/SparseToDense_8/default_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
р
#transform/transform/SparseToDense_8SparseToDenseBtransform/transform/inputs/inputs/F_dropoff_longitude/indices_copy.transform/transform/SparseTensor_8/dense_shapeAtransform/transform/inputs/inputs/F_dropoff_longitude/values_copy1transform/transform/SparseToDense_8/default_value*'
_output_shapes
:џџџџџџџџџ*
Tindices0	*
T0

transform/transform/Squeeze_8Squeeze#transform/transform/SparseToDense_8*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

5transform/transform/bucketize_3/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
~
3transform/transform/bucketize_3/quantiles/sort/axisConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0
q
2transform/transform/bucketize_3/quantiles/sort/NegNegtransform/Const_6*
_output_shapes
:*
T0

4transform/transform/bucketize_3/quantiles/sort/ShapeShape2transform/transform/bucketize_3/quantiles/sort/Neg*
_output_shapes
:*
T0

Btransform/transform/bucketize_3/quantiles/sort/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Dtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Dtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

<transform/transform/bucketize_3/quantiles/sort/strided_sliceStridedSlice4transform/transform/bucketize_3/quantiles/sort/ShapeBtransform/transform/bucketize_3/quantiles/sort/strided_slice/stackDtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_1Dtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
u
3transform/transform/bucketize_3/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
м
5transform/transform/bucketize_3/quantiles/sort/TopKV2TopKV22transform/transform/bucketize_3/quantiles/sort/Neg<transform/transform/bucketize_3/quantiles/sort/strided_slice*
T0* 
_output_shapes
::

4transform/transform/bucketize_3/quantiles/sort/Neg_1Neg5transform/transform/bucketize_3/quantiles/sort/TopKV2*
_output_shapes
:*
T0
z
8transform/transform/bucketize_3/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
л
4transform/transform/bucketize_3/quantiles/ExpandDims
ExpandDims4transform/transform/bucketize_3/quantiles/sort/Neg_18transform/transform/bucketize_3/quantiles/ExpandDims/dim*
T0*
_output_shapes

:

5transform/transform/bucketize_3/quantiles/sort_1/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

4transform/transform/bucketize_3/quantiles/sort_1/NegNeg4transform/transform/bucketize_3/quantiles/ExpandDims*
T0*
_output_shapes

:

6transform/transform/bucketize_3/quantiles/sort_1/ShapeShape4transform/transform/bucketize_3/quantiles/sort_1/Neg*
T0*
_output_shapes
:

Dtransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Ftransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Ftransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ђ
>transform/transform/bucketize_3/quantiles/sort_1/strided_sliceStridedSlice6transform/transform/bucketize_3/quantiles/sort_1/ShapeDtransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stackFtransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1Ftransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
w
5transform/transform/bucketize_3/quantiles/sort_1/RankConst*
value	B :*
dtype0*
_output_shapes
: 
ъ
7transform/transform/bucketize_3/quantiles/sort_1/TopKV2TopKV24transform/transform/bucketize_3/quantiles/sort_1/Neg>transform/transform/bucketize_3/quantiles/sort_1/strided_slice*(
_output_shapes
::*
T0

6transform/transform/bucketize_3/quantiles/sort_1/Neg_1Neg7transform/transform/bucketize_3/quantiles/sort_1/TopKV2*
_output_shapes

:*
T0
r
0transform/transform/bucketize_3/assert_rank/rankConst*
dtype0*
_output_shapes
: *
value	B :

1transform/transform/bucketize_3/assert_rank/ShapeShape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
b
Ztransform/transform/bucketize_3/assert_rank/assert_type/statically_determined_correct_typeNoOp
S
Ktransform/transform/bucketize_3/assert_rank/static_checks_determined_all_okNoOp
Т
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
Д
jtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ж
ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ж
ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
р
dtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlice\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapejtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
љ
[transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastdtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
_output_shapes
: *

DstT0	
Т
Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
_output_shapes

:*
T0
И
etransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
й
`transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negetransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:
А
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/transform/Squeeze_8*#
_output_shapes
:џџџџџџџџџ*
T0
І
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
О
Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMax\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: 
њ
htransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackZtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
T0*
N*
_output_shapes
:

ftransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packhtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*
N*
_output_shapes

:
­
btransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Щ
]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2`transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2ftransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1btransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
_output_shapes

:*
T0
А
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/transform/Squeeze_8*
T0*#
_output_shapes
:џџџџџџџџџ
ї
^transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*	
num*
T0*
_output_shapes
:
ќ
ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketize\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2^transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:џџџџџџџџџ

]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*#
_output_shapes
:џџџџџџџџџ*

DstT0	*

SrcT0
Ы
Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSub[transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
u
3transform/transform/bucketize_3/apply_buckets/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	

3transform/transform/bucketize_3/apply_buckets/ShapeShape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0

Atransform/transform/bucketize_3/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

;transform/transform/bucketize_3/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_3/apply_buckets/ShapeAtransform/transform/bucketize_3/apply_buckets/strided_slice/stackCtransform/transform/bucketize_3/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
s
)transform/transform/strided_slice_9/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_9/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_9/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
О
#transform/transform/strided_slice_9StridedSlice>transform/transform/inputs/inputs/F_trip_start_hour/shape_copy)transform/transform/strided_slice_9/stack+transform/transform/strided_slice_9/stack_1+transform/transform/strided_slice_9/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_9/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Л
.transform/transform/SparseTensor_9/dense_shapePack#transform/transform/strided_slice_90transform/transform/SparseTensor_9/dense_shape/1*
T0	*
N*
_output_shapes
:
s
1transform/transform/SparseToDense_9/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
м
#transform/transform/SparseToDense_9SparseToDense@transform/transform/inputs/inputs/F_trip_start_hour/indices_copy.transform/transform/SparseTensor_9/dense_shape?transform/transform/inputs/inputs/F_trip_start_hour/values_copy1transform/transform/SparseToDense_9/default_value*
Tindices0	*
T0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_9Squeeze#transform/transform/SparseToDense_9*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_10/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_10/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
С
$transform/transform/strided_slice_10StridedSlice=transform/transform/inputs/inputs/F_trip_start_day/shape_copy*transform/transform/strided_slice_10/stack,transform/transform/strided_slice_10/stack_1,transform/transform/strided_slice_10/stack_2*
shrink_axis_mask*
Index0*
T0	*
_output_shapes
: 
s
1transform/transform/SparseTensor_10/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
О
/transform/transform/SparseTensor_10/dense_shapePack$transform/transform/strided_slice_101transform/transform/SparseTensor_10/dense_shape/1*
N*
_output_shapes
:*
T0	
t
2transform/transform/SparseToDense_10/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
н
$transform/transform/SparseToDense_10SparseToDense?transform/transform/inputs/inputs/F_trip_start_day/indices_copy/transform/transform/SparseTensor_10/dense_shape>transform/transform/inputs/inputs/F_trip_start_day/values_copy2transform/transform/SparseToDense_10/default_value*
T0	*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_10Squeeze$transform/transform/SparseToDense_10*
squeeze_dims
*
T0	*#
_output_shapes
:џџџџџџџџџ
t
*transform/transform/strided_slice_11/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_11/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
v
,transform/transform/strided_slice_11/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
У
$transform/transform/strided_slice_11StridedSlice?transform/transform/inputs/inputs/F_trip_start_month/shape_copy*transform/transform/strided_slice_11/stack,transform/transform/strided_slice_11/stack_1,transform/transform/strided_slice_11/stack_2*
shrink_axis_mask*
T0	*
Index0*
_output_shapes
: 
s
1transform/transform/SparseTensor_11/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
О
/transform/transform/SparseTensor_11/dense_shapePack$transform/transform/strided_slice_111transform/transform/SparseTensor_11/dense_shape/1*
_output_shapes
:*
T0	*
N
t
2transform/transform/SparseToDense_11/default_valueConst*
dtype0	*
_output_shapes
: *
value	B	 R 
с
$transform/transform/SparseToDense_11SparseToDenseAtransform/transform/inputs/inputs/F_trip_start_month/indices_copy/transform/transform/SparseTensor_11/dense_shape@transform/transform/inputs/inputs/F_trip_start_month/values_copy2transform/transform/SparseToDense_11/default_value*
Tindices0	*
T0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_11Squeeze$transform/transform/SparseToDense_11*
squeeze_dims
*
T0	*#
_output_shapes
:џџџџџџџџџ
t
*transform/transform/strided_slice_12/stackConst*
_output_shapes
:*
valueB: *
dtype0
v
,transform/transform/strided_slice_12/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
v
,transform/transform/strided_slice_12/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ц
$transform/transform/strided_slice_12StridedSliceBtransform/transform/inputs/inputs/F_pickup_census_tract/shape_copy*transform/transform/strided_slice_12/stack,transform/transform/strided_slice_12/stack_1,transform/transform/strided_slice_12/stack_2*
shrink_axis_mask*
Index0*
T0	*
_output_shapes
: 
s
1transform/transform/SparseTensor_12/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
О
/transform/transform/SparseTensor_12/dense_shapePack$transform/transform/strided_slice_121transform/transform/SparseTensor_12/dense_shape/1*
N*
_output_shapes
:*
T0	
s
2transform/transform/SparseToDense_12/default_valueConst*
valueB B *
dtype0*
_output_shapes
: 
ч
$transform/transform/SparseToDense_12SparseToDenseDtransform/transform/inputs/inputs/F_pickup_census_tract/indices_copy/transform/transform/SparseTensor_12/dense_shapeCtransform/transform/inputs/inputs/F_pickup_census_tract/values_copy2transform/transform/SparseToDense_12/default_value*'
_output_shapes
:џџџџџџџџџ*
Tindices0	*
T0

transform/transform/Squeeze_12Squeeze$transform/transform/SparseToDense_12*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0
t
*transform/transform/strided_slice_13/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_13/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_13/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ч
$transform/transform/strided_slice_13StridedSliceCtransform/transform/inputs/inputs/F_dropoff_census_tract/shape_copy*transform/transform/strided_slice_13/stack,transform/transform/strided_slice_13/stack_1,transform/transform/strided_slice_13/stack_2*
shrink_axis_mask*
T0	*
Index0*
_output_shapes
: 
s
1transform/transform/SparseTensor_13/dense_shape/1Const*
dtype0	*
_output_shapes
: *
value	B	 R
О
/transform/transform/SparseTensor_13/dense_shapePack$transform/transform/strided_slice_131transform/transform/SparseTensor_13/dense_shape/1*
_output_shapes
:*
T0	*
N
w
2transform/transform/SparseToDense_13/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
щ
$transform/transform/SparseToDense_13SparseToDenseEtransform/transform/inputs/inputs/F_dropoff_census_tract/indices_copy/transform/transform/SparseTensor_13/dense_shapeDtransform/transform/inputs/inputs/F_dropoff_census_tract/values_copy2transform/transform/SparseToDense_13/default_value*
T0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_13Squeeze$transform/transform/SparseToDense_13*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0
t
*transform/transform/strided_slice_14/stackConst*
dtype0*
_output_shapes
:*
valueB: 
v
,transform/transform/strided_slice_14/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_14/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ш
$transform/transform/strided_slice_14StridedSliceDtransform/transform/inputs/inputs/F_pickup_community_area/shape_copy*transform/transform/strided_slice_14/stack,transform/transform/strided_slice_14/stack_1,transform/transform/strided_slice_14/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0	*
Index0
s
1transform/transform/SparseTensor_14/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
О
/transform/transform/SparseTensor_14/dense_shapePack$transform/transform/strided_slice_141transform/transform/SparseTensor_14/dense_shape/1*
T0	*
N*
_output_shapes
:
t
2transform/transform/SparseToDense_14/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ы
$transform/transform/SparseToDense_14SparseToDenseFtransform/transform/inputs/inputs/F_pickup_community_area/indices_copy/transform/transform/SparseTensor_14/dense_shapeEtransform/transform/inputs/inputs/F_pickup_community_area/values_copy2transform/transform/SparseToDense_14/default_value*
Tindices0	*
T0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_14Squeeze$transform/transform/SparseToDense_14*
squeeze_dims
*
T0	*#
_output_shapes
:џџџџџџџџџ
t
*transform/transform/strided_slice_15/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_15/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
v
,transform/transform/strided_slice_15/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Щ
$transform/transform/strided_slice_15StridedSliceEtransform/transform/inputs/inputs/F_dropoff_community_area/shape_copy*transform/transform/strided_slice_15/stack,transform/transform/strided_slice_15/stack_1,transform/transform/strided_slice_15/stack_2*
shrink_axis_mask*
T0	*
Index0*
_output_shapes
: 
s
1transform/transform/SparseTensor_15/dense_shape/1Const*
dtype0	*
_output_shapes
: *
value	B	 R
О
/transform/transform/SparseTensor_15/dense_shapePack$transform/transform/strided_slice_151transform/transform/SparseTensor_15/dense_shape/1*
T0	*
N*
_output_shapes
:
w
2transform/transform/SparseToDense_15/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
э
$transform/transform/SparseToDense_15SparseToDenseGtransform/transform/inputs/inputs/F_dropoff_community_area/indices_copy/transform/transform/SparseTensor_15/dense_shapeFtransform/transform/inputs/inputs/F_dropoff_community_area/values_copy2transform/transform/SparseToDense_15/default_value*
Tindices0	*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_15Squeeze$transform/transform/SparseToDense_15*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
t
*transform/transform/strided_slice_16/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_16/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
v
,transform/transform/strided_slice_16/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Е
$transform/transform/strided_slice_16StridedSlice1transform/transform/inputs/inputs/fare/shape_copy*transform/transform/strided_slice_16/stack,transform/transform/strided_slice_16/stack_1,transform/transform/strided_slice_16/stack_2*
shrink_axis_mask*
T0	*
Index0*
_output_shapes
: 
s
1transform/transform/SparseTensor_16/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
О
/transform/transform/SparseTensor_16/dense_shapePack$transform/transform/strided_slice_161transform/transform/SparseTensor_16/dense_shape/1*
T0	*
N*
_output_shapes
:
w
2transform/transform/SparseToDense_16/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Х
$transform/transform/SparseToDense_16SparseToDense3transform/transform/inputs/inputs/fare/indices_copy/transform/transform/SparseTensor_16/dense_shape2transform/transform/inputs/inputs/fare/values_copy2transform/transform/SparseToDense_16/default_value*
Tindices0	*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_16Squeeze$transform/transform/SparseToDense_16*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
t
*transform/transform/strided_slice_17/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_17/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_17/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Е
$transform/transform/strided_slice_17StridedSlice1transform/transform/inputs/inputs/tips/shape_copy*transform/transform/strided_slice_17/stack,transform/transform/strided_slice_17/stack_1,transform/transform/strided_slice_17/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_17/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
О
/transform/transform/SparseTensor_17/dense_shapePack$transform/transform/strided_slice_171transform/transform/SparseTensor_17/dense_shape/1*
T0	*
N*
_output_shapes
:
w
2transform/transform/SparseToDense_17/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Х
$transform/transform/SparseToDense_17SparseToDense3transform/transform/inputs/inputs/tips/indices_copy/transform/transform/SparseTensor_17/dense_shape2transform/transform/inputs/inputs/tips/values_copy2transform/transform/SparseToDense_17/default_value*
Tindices0	*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_17Squeeze$transform/transform/SparseToDense_17*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0
p
transform/transform/IsNanIsNantransform/transform/Squeeze_16*
T0*#
_output_shapes
:џџџџџџџџџ
y
transform/transform/zeros_like	ZerosLiketransform/transform/Squeeze_16*
T0*#
_output_shapes
:џџџџџџџџџ
}
transform/transform/CastCasttransform/transform/zeros_like*

SrcT0*#
_output_shapes
:џџџџџџџџџ*

DstT0	
^
transform/transform/ConstConst*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 

transform/transform/MulMultransform/transform/Squeeze_16transform/transform/Const*#
_output_shapes
:џџџџџџџџџ*
T0

transform/transform/GreaterGreatertransform/transform/Squeeze_17transform/transform/Mul*#
_output_shapes
:џџџџџџџџџ*
T0
|
transform/transform/Cast_1Casttransform/transform/Greater*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0	
Ѓ
transform/transform/SelectSelecttransform/transform/IsNantransform/transform/Casttransform/transform/Cast_1*#
_output_shapes
:џџџџџџџџџ*
T0	
 
transform/transform/initNoOp
"
transform/transform/init_1NoOp

transform/initNoOp
C
SizeSizeinput_example_tensor*
_output_shapes
: *
T0
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
S
rangeRangerange/startSizerange/delta*#
_output_shapes
:џџџџџџџџџ
N
Const_2Const*
valueB B0.15.0*
dtype0*
_output_shapes
: 
a
IdentityIdentityParseExample/ParseExample*'
_output_shapes
:џџџџџџџџџ*
T0	
b

Identity_1IdentityParseExample/ParseExample:18*#
_output_shapes
:џџџџџџџџџ*
T0
Y

Identity_2IdentityParseExample/ParseExample:36*
T0	*
_output_shapes
:
e

Identity_3IdentityParseExample/ParseExample:1*
T0	*'
_output_shapes
:џџџџџџџџџ
b

Identity_4IdentityParseExample/ParseExample:19*
T0*#
_output_shapes
:џџџџџџџџџ
Y

Identity_5IdentityParseExample/ParseExample:37*
_output_shapes
:*
T0	
e

Identity_6IdentityParseExample/ParseExample:2*
T0	*'
_output_shapes
:џџџџџџџџџ
b

Identity_7IdentityParseExample/ParseExample:20*
T0*#
_output_shapes
:џџџџџџџџџ
Y

Identity_8IdentityParseExample/ParseExample:38*
T0	*
_output_shapes
:
e

Identity_9IdentityParseExample/ParseExample:3*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_10IdentityParseExample/ParseExample:21*
T0*#
_output_shapes
:џџџџџџџџџ
Z
Identity_11IdentityParseExample/ParseExample:39*
T0	*
_output_shapes
:
f
Identity_12IdentityParseExample/ParseExample:4*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_13IdentityParseExample/ParseExample:22*
T0*#
_output_shapes
:џџџџџџџџџ
Z
Identity_14IdentityParseExample/ParseExample:40*
_output_shapes
:*
T0	
f
Identity_15IdentityParseExample/ParseExample:5*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_16IdentityParseExample/ParseExample:23*
T0*#
_output_shapes
:џџџџџџџџџ
Z
Identity_17IdentityParseExample/ParseExample:41*
_output_shapes
:*
T0	
f
Identity_18IdentityParseExample/ParseExample:6*'
_output_shapes
:џџџџџџџџџ*
T0	
c
Identity_19IdentityParseExample/ParseExample:24*#
_output_shapes
:џџџџџџџџџ*
T0
Z
Identity_20IdentityParseExample/ParseExample:42*
_output_shapes
:*
T0	
f
Identity_21IdentityParseExample/ParseExample:7*'
_output_shapes
:џџџџџџџџџ*
T0	
c
Identity_22IdentityParseExample/ParseExample:25*#
_output_shapes
:џџџџџџџџџ*
T0
Z
Identity_23IdentityParseExample/ParseExample:43*
T0	*
_output_shapes
:
f
Identity_24IdentityParseExample/ParseExample:8*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_25IdentityParseExample/ParseExample:26*
T0	*#
_output_shapes
:џџџџџџџџџ
Z
Identity_26IdentityParseExample/ParseExample:44*
_output_shapes
:*
T0	
f
Identity_27IdentityParseExample/ParseExample:9*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_28IdentityParseExample/ParseExample:27*#
_output_shapes
:џџџџџџџџџ*
T0
Z
Identity_29IdentityParseExample/ParseExample:45*
_output_shapes
:*
T0	
g
Identity_30IdentityParseExample/ParseExample:10*'
_output_shapes
:џџџџџџџџџ*
T0	
c
Identity_31IdentityParseExample/ParseExample:28*#
_output_shapes
:џџџџџџџџџ*
T0
Z
Identity_32IdentityParseExample/ParseExample:46*
T0	*
_output_shapes
:
g
Identity_33IdentityParseExample/ParseExample:11*'
_output_shapes
:џџџџџџџџџ*
T0	
c
Identity_34IdentityParseExample/ParseExample:29*
T0*#
_output_shapes
:џџџџџџџџџ
Z
Identity_35IdentityParseExample/ParseExample:47*
T0	*
_output_shapes
:
g
Identity_36IdentityParseExample/ParseExample:12*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_37IdentityParseExample/ParseExample:30*#
_output_shapes
:џџџџџџџџџ*
T0
Z
Identity_38IdentityParseExample/ParseExample:48*
T0	*
_output_shapes
:
g
Identity_39IdentityParseExample/ParseExample:13*'
_output_shapes
:џџџџџџџџџ*
T0	
c
Identity_40IdentityParseExample/ParseExample:31*#
_output_shapes
:џџџџџџџџџ*
T0
Z
Identity_41IdentityParseExample/ParseExample:49*
_output_shapes
:*
T0	
g
Identity_42IdentityParseExample/ParseExample:14*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_43IdentityParseExample/ParseExample:32*
T0	*#
_output_shapes
:џџџџџџџџџ
Z
Identity_44IdentityParseExample/ParseExample:50*
T0	*
_output_shapes
:
g
Identity_45IdentityParseExample/ParseExample:15*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_46IdentityParseExample/ParseExample:33*
T0	*#
_output_shapes
:џџџџџџџџџ
Z
Identity_47IdentityParseExample/ParseExample:51*
T0	*
_output_shapes
:
g
Identity_48IdentityParseExample/ParseExample:16*
T0	*'
_output_shapes
:џџџџџџџџџ
c
Identity_49IdentityParseExample/ParseExample:34*
T0	*#
_output_shapes
:џџџџџџџџџ
Z
Identity_50IdentityParseExample/ParseExample:52*
T0	*
_output_shapes
:
g
Identity_51IdentityParseExample/ParseExample:17*'
_output_shapes
:џџџџџџџџџ*
T0	
c
Identity_52IdentityParseExample/ParseExample:35*
T0	*#
_output_shapes
:џџџџџџџџџ
Z
Identity_53IdentityParseExample/ParseExample:53*
T0	*
_output_shapes
:

Identity_54IdentityXtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*#
_output_shapes
:џџџџџџџџџ
Ё
Identity_55IdentityZtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*#
_output_shapes
:џџџџџџџџџ

Identity_56IdentityFtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/Select*
T0*#
_output_shapes
:џџџџџџџџџ
 
Identity_57IdentityYtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2*#
_output_shapes
:џџџџџџџџџ*
T0	
e
Identity_58Identitytransform/transform/Squeeze_15*
T0*#
_output_shapes
:џџџџџџџџџ
e
Identity_59Identitytransform/transform/Squeeze_13*#
_output_shapes
:џџџџџџџџџ*
T0

Identity_60IdentityWtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
e
Identity_61Identitytransform/transform/Squeeze_14*
T0	*#
_output_shapes
:џџџџџџџџџ
e
Identity_62Identitytransform/transform/Squeeze_11*#
_output_shapes
:џџџџџџџџџ*
T0	
e
Identity_63Identitytransform/transform/Squeeze_10*
T0	*#
_output_shapes
:џџџџџџџџџ
e
Identity_64Identitytransform/transform/Squeeze_12*
T0*#
_output_shapes
:џџџџџџџџџ
d
Identity_65Identitytransform/transform/Squeeze_9*
T0	*#
_output_shapes
:џџџџџџџџџ

Identity_66IdentityDtransform/transform/scale_to_z_score/scale_to_z_score_per_key/Select*
T0*#
_output_shapes
:џџџџџџџџџ

Identity_67IdentityFtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Select*
T0*#
_output_shapes
:џџџџџџџџџ
Ё
Identity_68IdentityZtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*#
_output_shapes
:џџџџџџџџџ*
T0	
Ё
Identity_69IdentityZtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*#
_output_shapes
:џџџџџџџџџ*
T0	
a
Identity_70Identitytransform/transform/Select*#
_output_shapes
:џџџџџџџџџ*
T0	
a
Identity_71Identitytransform/transform/Select*#
_output_shapes
:џџџџџџџџџ*
T0	

Adnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims/dimConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0
Э
=dnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims
ExpandDimsIdentity_56Adnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims/dim*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
8dnn/input_from_feature_columns/input_layer/fare_xf/ShapeShape=dnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims*
T0*
_output_shapes
:

Fdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Hdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Hdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
@dnn/input_from_feature_columns/input_layer/fare_xf/strided_sliceStridedSlice8dnn/input_from_feature_columns/input_layer/fare_xf/ShapeFdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stackHdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_1Hdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0

Bdnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ќ
@dnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shapePack@dnn/input_from_feature_columns/input_layer/fare_xf/strided_sliceBdnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shape/1*
N*
_output_shapes
:*
T0
ј
:dnn/input_from_feature_columns/input_layer/fare_xf/ReshapeReshape=dnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims@dnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

Gdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims/dimConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0
й
Cdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims
ExpandDimsIdentity_66Gdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*
T0
Б
>dnn/input_from_feature_columns/input_layer/trip_miles_xf/ShapeShapeCdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims*
T0*
_output_shapes
:

Ldnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Ndnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0

Ndnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ъ
Fdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_sliceStridedSlice>dnn/input_from_feature_columns/input_layer/trip_miles_xf/ShapeLdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stackNdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_1Ndnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

Hdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Fdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shapePackFdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_sliceHdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shape/1*
T0*
N*
_output_shapes
:

@dnn/input_from_feature_columns/input_layer/trip_miles_xf/ReshapeReshapeCdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDimsFdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

Idnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
н
Ednn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims
ExpandDimsIdentity_67Idnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*
T0
Е
@dnn/input_from_feature_columns/input_layer/trip_seconds_xf/ShapeShapeEdnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims*
T0*
_output_shapes
:

Ndnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
д
Hdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/trip_seconds_xf/ShapeNdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stackPdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

Jdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Hdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_sliceJdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shape/1*
N*
_output_shapes
:*
T0

Bdnn/input_from_feature_columns/input_layer/trip_seconds_xf/ReshapeReshapeEdnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDimsHdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

6dnn/input_from_feature_columns/input_layer/concat/axisConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
ђ
1dnn/input_from_feature_columns/input_layer/concatConcatV2:dnn/input_from_feature_columns/input_layer/fare_xf/Reshape@dnn/input_from_feature_columns/input_layer/trip_miles_xf/ReshapeBdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
N*'
_output_shapes
:џџџџџџџџџ*
T0
Х
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"   d   *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes
:
З
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *о%wО*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes
: 
З
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *о%w>*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes
: 

Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:d*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0

>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*
_output_shapes

:d*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0

:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
_output_shapes

:d*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
Ю
dnn/hiddenlayer_0/kernel/part_0VarHandleOp*0
shared_name!dnn/hiddenlayer_0/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes
: *
shape
:d

@dnn/hiddenlayer_0/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
Є
&dnn/hiddenlayer_0/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*
dtype0

3dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:d
Ў
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*
valueBd*    *0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
:d
Ф
dnn/hiddenlayer_0/bias/part_0VarHandleOp*
_output_shapes
: *
shape:d*.
shared_namednn/hiddenlayer_0/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0

>dnn/hiddenlayer_0/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
: 

$dnn/hiddenlayer_0/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*
dtype0

1dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d*
dtype0

'dnn/hiddenlayer_0/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:d
v
dnn/hiddenlayer_0/kernelIdentity'dnn/hiddenlayer_0/kernel/ReadVariableOp*
T0*
_output_shapes

:d
Ё
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*'
_output_shapes
:џџџџџџџџџd*
T0

%dnn/hiddenlayer_0/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
:d
n
dnn/hiddenlayer_0/biasIdentity%dnn/hiddenlayer_0/bias/ReadVariableOp*
T0*
_output_shapes
:d

dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*
T0*'
_output_shapes
:џџџџџџџџџd
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџd
g
dnn/zero_fraction/SizeSizednn/hiddenlayer_0/Relu*
out_type0	*
_output_shapes
: *
T0
c
dnn/zero_fraction/LessEqual/yConst*
_output_shapes
: *
valueB	 Rџџџџ*
dtype0	

dnn/zero_fraction/LessEqual	LessEqualdnn/zero_fraction/Sizednn/zero_fraction/LessEqual/y*
_output_shapes
: *
T0	

dnn/zero_fraction/cond/SwitchSwitchdnn/zero_fraction/LessEqualdnn/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
m
dnn/zero_fraction/cond/switch_tIdentitydnn/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
k
dnn/zero_fraction/cond/switch_fIdentitydnn/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
h
dnn/zero_fraction/cond/pred_idIdentitydnn/zero_fraction/LessEqual*
T0
*
_output_shapes
: 

*dnn/zero_fraction/cond/count_nonzero/zerosConst ^dnn/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
Я
-dnn/zero_fraction/cond/count_nonzero/NotEqualNotEqual6dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1*dnn/zero_fraction/cond/count_nonzero/zeros*
T0*'
_output_shapes
:џџџџџџџџџd
ц
4dnn/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_0/Reludnn/zero_fraction/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_0/Relu*:
_output_shapes(
&:џџџџџџџџџd:џџџџџџџџџd
Ё
)dnn/zero_fraction/cond/count_nonzero/CastCast-dnn/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*'
_output_shapes
:џџџџџџџџџd*

DstT0

*dnn/zero_fraction/cond/count_nonzero/ConstConst ^dnn/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
Б
2dnn/zero_fraction/cond/count_nonzero/nonzero_countSum)dnn/zero_fraction/cond/count_nonzero/Cast*dnn/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 

dnn/zero_fraction/cond/CastCast2dnn/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	

,dnn/zero_fraction/cond/count_nonzero_1/zerosConst ^dnn/zero_fraction/cond/switch_f*
_output_shapes
: *
valueB
 *    *
dtype0
г
/dnn/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual6dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch,dnn/zero_fraction/cond/count_nonzero_1/zeros*'
_output_shapes
:џџџџџџџџџd*
T0
ш
6dnn/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_0/Reludnn/zero_fraction/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_0/Relu*:
_output_shapes(
&:џџџџџџџџџd:џџџџџџџџџd
Ѕ
+dnn/zero_fraction/cond/count_nonzero_1/CastCast/dnn/zero_fraction/cond/count_nonzero_1/NotEqual*'
_output_shapes
:џџџџџџџџџd*

DstT0	*

SrcT0


,dnn/zero_fraction/cond/count_nonzero_1/ConstConst ^dnn/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
З
4dnn/zero_fraction/cond/count_nonzero_1/nonzero_countSum+dnn/zero_fraction/cond/count_nonzero_1/Cast,dnn/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
Є
dnn/zero_fraction/cond/MergeMerge4dnn/zero_fraction/cond/count_nonzero_1/nonzero_countdnn/zero_fraction/cond/Cast*
N*
_output_shapes
: : *
T0	

(dnn/zero_fraction/counts_to_fraction/subSubdnn/zero_fraction/Sizednn/zero_fraction/cond/Merge*
_output_shapes
: *
T0	

)dnn/zero_fraction/counts_to_fraction/CastCast(dnn/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
{
+dnn/zero_fraction/counts_to_fraction/Cast_1Castdnn/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
А
,dnn/zero_fraction/counts_to_fraction/truedivRealDiv)dnn/zero_fraction/counts_to_fraction/Cast+dnn/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
u
dnn/zero_fraction/fractionIdentity,dnn/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
 
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Џ
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/fraction*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_0/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
dtype0*
_output_shapes
: 

 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: 
Х
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"d   F   *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes
:
З
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *H`@О*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes
: 
З
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *H`@>*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes
: 

Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes

:dF

>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
_output_shapes
: *
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
Ќ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF

:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF
Ю
dnn/hiddenlayer_1/kernel/part_0VarHandleOp*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes
: *
shape
:dF*0
shared_name!dnn/hiddenlayer_1/kernel/part_0

@dnn/hiddenlayer_1/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
Є
&dnn/hiddenlayer_1/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*
dtype0

3dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF*
dtype0
Ў
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*
valueBF*    *0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
:F
Ф
dnn/hiddenlayer_1/bias/part_0VarHandleOp*
dtype0*
_output_shapes
: *
shape:F*.
shared_namednn/hiddenlayer_1/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0

>dnn/hiddenlayer_1/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes
: 

$dnn/hiddenlayer_1/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*
dtype0

1dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes
:F*
dtype0

'dnn/hiddenlayer_1/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes

:dF
v
dnn/hiddenlayer_1/kernelIdentity'dnn/hiddenlayer_1/kernel/ReadVariableOp*
T0*
_output_shapes

:dF

dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Reludnn/hiddenlayer_1/kernel*'
_output_shapes
:џџџџџџџџџF*
T0

%dnn/hiddenlayer_1/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
:F
n
dnn/hiddenlayer_1/biasIdentity%dnn/hiddenlayer_1/bias/ReadVariableOp*
T0*
_output_shapes
:F

dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*'
_output_shapes
:џџџџџџџџџF*
T0
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*'
_output_shapes
:џџџџџџџџџF*
T0
i
dnn/zero_fraction_1/SizeSizednn/hiddenlayer_1/Relu*
T0*
out_type0	*
_output_shapes
: 
e
dnn/zero_fraction_1/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 

dnn/zero_fraction_1/LessEqual	LessEqualdnn/zero_fraction_1/Sizednn/zero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 

dnn/zero_fraction_1/cond/SwitchSwitchdnn/zero_fraction_1/LessEqualdnn/zero_fraction_1/LessEqual*
T0
*
_output_shapes
: : 
q
!dnn/zero_fraction_1/cond/switch_tIdentity!dnn/zero_fraction_1/cond/Switch:1*
T0
*
_output_shapes
: 
o
!dnn/zero_fraction_1/cond/switch_fIdentitydnn/zero_fraction_1/cond/Switch*
_output_shapes
: *
T0

l
 dnn/zero_fraction_1/cond/pred_idIdentitydnn/zero_fraction_1/LessEqual*
_output_shapes
: *
T0


,dnn/zero_fraction_1/cond/count_nonzero/zerosConst"^dnn/zero_fraction_1/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
е
/dnn/zero_fraction_1/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_1/cond/count_nonzero/zeros*
T0*'
_output_shapes
:џџџџџџџџџF
ъ
6dnn/zero_fraction_1/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_1/Relu dnn/zero_fraction_1/cond/pred_id*:
_output_shapes(
&:џџџџџџџџџF:џџџџџџџџџF*
T0*)
_class
loc:@dnn/hiddenlayer_1/Relu
Ѕ
+dnn/zero_fraction_1/cond/count_nonzero/CastCast/dnn/zero_fraction_1/cond/count_nonzero/NotEqual*'
_output_shapes
:џџџџџџџџџF*

DstT0*

SrcT0

Ё
,dnn/zero_fraction_1/cond/count_nonzero/ConstConst"^dnn/zero_fraction_1/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
З
4dnn/zero_fraction_1/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_1/cond/count_nonzero/Cast,dnn/zero_fraction_1/cond/count_nonzero/Const*
_output_shapes
: *
T0

dnn/zero_fraction_1/cond/CastCast4dnn/zero_fraction_1/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	

.dnn/zero_fraction_1/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_1/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
й
1dnn/zero_fraction_1/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_1/cond/count_nonzero_1/zeros*'
_output_shapes
:џџџџџџџџџF*
T0
ь
8dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_1/Relu dnn/zero_fraction_1/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_1/Relu*:
_output_shapes(
&:џџџџџџџџџF:џџџџџџџџџF
Љ
-dnn/zero_fraction_1/cond/count_nonzero_1/CastCast1dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual*

SrcT0
*'
_output_shapes
:џџџџџџџџџF*

DstT0	
Ѓ
.dnn/zero_fraction_1/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_1/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
Н
6dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_1/cond/count_nonzero_1/Cast.dnn/zero_fraction_1/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
Њ
dnn/zero_fraction_1/cond/MergeMerge6dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_1/cond/Cast*
_output_shapes
: : *
T0	*
N

*dnn/zero_fraction_1/counts_to_fraction/subSubdnn/zero_fraction_1/Sizednn/zero_fraction_1/cond/Merge*
_output_shapes
: *
T0	

+dnn/zero_fraction_1/counts_to_fraction/CastCast*dnn/zero_fraction_1/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0

-dnn/zero_fraction_1/counts_to_fraction/Cast_1Castdnn/zero_fraction_1/Size*
_output_shapes
: *

DstT0*

SrcT0	
Ж
.dnn/zero_fraction_1/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_1/counts_to_fraction/Cast-dnn/zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_1/fractionIdentity.dnn/zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 
 
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Б
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/fraction*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_1/activation/tagConst*
dtype0*
_output_shapes
: *1
value(B& B dnn/dnn/hiddenlayer_1/activation

 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
_output_shapes
: 
Х
@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"F   0   *2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes
:
З
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *йчfО*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0
З
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *йчf>*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes
: 

Hdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:F0

>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
_output_shapes
: *
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
Ќ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F0

:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F0
Ю
dnn/hiddenlayer_2/kernel/part_0VarHandleOp*
shape
:F0*0
shared_name!dnn/hiddenlayer_2/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes
: 

@dnn/hiddenlayer_2/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
Є
&dnn/hiddenlayer_2/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_2/kernel/part_0:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform*
dtype0

3dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:F0
Ў
/dnn/hiddenlayer_2/bias/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:0*
valueB0*    *0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0
Ф
dnn/hiddenlayer_2/bias/part_0VarHandleOp*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
: *
shape:0*.
shared_namednn/hiddenlayer_2/bias/part_0

>dnn/hiddenlayer_2/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/bias/part_0*
_output_shapes
: 

$dnn/hiddenlayer_2/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_2/bias/part_0/dnn/hiddenlayer_2/bias/part_0/Initializer/zeros*
dtype0

1dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
:0

'dnn/hiddenlayer_2/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:F0
v
dnn/hiddenlayer_2/kernelIdentity'dnn/hiddenlayer_2/kernel/ReadVariableOp*
_output_shapes

:F0*
T0

dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Reludnn/hiddenlayer_2/kernel*'
_output_shapes
:џџџџџџџџџ0*
T0

%dnn/hiddenlayer_2/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
:0
n
dnn/hiddenlayer_2/biasIdentity%dnn/hiddenlayer_2/bias/ReadVariableOp*
_output_shapes
:0*
T0

dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/bias*'
_output_shapes
:џџџџџџџџџ0*
T0
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*'
_output_shapes
:џџџџџџџџџ0*
T0
i
dnn/zero_fraction_2/SizeSizednn/hiddenlayer_2/Relu*
out_type0	*
_output_shapes
: *
T0
e
dnn/zero_fraction_2/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 

dnn/zero_fraction_2/LessEqual	LessEqualdnn/zero_fraction_2/Sizednn/zero_fraction_2/LessEqual/y*
_output_shapes
: *
T0	

dnn/zero_fraction_2/cond/SwitchSwitchdnn/zero_fraction_2/LessEqualdnn/zero_fraction_2/LessEqual*
T0
*
_output_shapes
: : 
q
!dnn/zero_fraction_2/cond/switch_tIdentity!dnn/zero_fraction_2/cond/Switch:1*
_output_shapes
: *
T0

o
!dnn/zero_fraction_2/cond/switch_fIdentitydnn/zero_fraction_2/cond/Switch*
_output_shapes
: *
T0

l
 dnn/zero_fraction_2/cond/pred_idIdentitydnn/zero_fraction_2/LessEqual*
T0
*
_output_shapes
: 

,dnn/zero_fraction_2/cond/count_nonzero/zerosConst"^dnn/zero_fraction_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
е
/dnn/zero_fraction_2/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_2/cond/count_nonzero/zeros*'
_output_shapes
:џџџџџџџџџ0*
T0
ъ
6dnn/zero_fraction_2/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_2/Relu dnn/zero_fraction_2/cond/pred_id*:
_output_shapes(
&:џџџџџџџџџ0:џџџџџџџџџ0*
T0*)
_class
loc:@dnn/hiddenlayer_2/Relu
Ѕ
+dnn/zero_fraction_2/cond/count_nonzero/CastCast/dnn/zero_fraction_2/cond/count_nonzero/NotEqual*'
_output_shapes
:џџџџџџџџџ0*

DstT0*

SrcT0

Ё
,dnn/zero_fraction_2/cond/count_nonzero/ConstConst"^dnn/zero_fraction_2/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
З
4dnn/zero_fraction_2/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_2/cond/count_nonzero/Cast,dnn/zero_fraction_2/cond/count_nonzero/Const*
_output_shapes
: *
T0

dnn/zero_fraction_2/cond/CastCast4dnn/zero_fraction_2/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	

.dnn/zero_fraction_2/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_2/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
й
1dnn/zero_fraction_2/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_2/cond/count_nonzero_1/zeros*
T0*'
_output_shapes
:џџџџџџџџџ0
ь
8dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_2/Relu dnn/zero_fraction_2/cond/pred_id*:
_output_shapes(
&:џџџџџџџџџ0:џџџџџџџџџ0*
T0*)
_class
loc:@dnn/hiddenlayer_2/Relu
Љ
-dnn/zero_fraction_2/cond/count_nonzero_1/CastCast1dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual*'
_output_shapes
:џџџџџџџџџ0*

DstT0	*

SrcT0

Ѓ
.dnn/zero_fraction_2/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_2/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
Н
6dnn/zero_fraction_2/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_2/cond/count_nonzero_1/Cast.dnn/zero_fraction_2/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
Њ
dnn/zero_fraction_2/cond/MergeMerge6dnn/zero_fraction_2/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_2/cond/Cast*
T0	*
N*
_output_shapes
: : 

*dnn/zero_fraction_2/counts_to_fraction/subSubdnn/zero_fraction_2/Sizednn/zero_fraction_2/cond/Merge*
T0	*
_output_shapes
: 

+dnn/zero_fraction_2/counts_to_fraction/CastCast*dnn/zero_fraction_2/counts_to_fraction/sub*
_output_shapes
: *

DstT0*

SrcT0	

-dnn/zero_fraction_2/counts_to_fraction/Cast_1Castdnn/zero_fraction_2/Size*

SrcT0	*
_output_shapes
: *

DstT0
Ж
.dnn/zero_fraction_2/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_2/counts_to_fraction/Cast-dnn/zero_fraction_2/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_2/fractionIdentity.dnn/zero_fraction_2/counts_to_fraction/truediv*
_output_shapes
: *
T0
 
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Б
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/fraction*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_2/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_2/activation*
dtype0*
_output_shapes
: 

 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
_output_shapes
: 
Х
@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"0   "   *2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes
:
З
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *О*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes
: 
З
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *>*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
dtype0

Hdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes

:0"

>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:0"

:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:0"
Ю
dnn/hiddenlayer_3/kernel/part_0VarHandleOp*
shape
:0"*0
shared_name!dnn/hiddenlayer_3/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes
: 

@dnn/hiddenlayer_3/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/kernel/part_0*
_output_shapes
: 
Є
&dnn/hiddenlayer_3/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_3/kernel/part_0:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform*
dtype0

3dnn/hiddenlayer_3/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes

:0"
Ў
/dnn/hiddenlayer_3/bias/part_0/Initializer/zerosConst*
valueB"*    *0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
dtype0*
_output_shapes
:"
Ф
dnn/hiddenlayer_3/bias/part_0VarHandleOp*
shape:"*.
shared_namednn/hiddenlayer_3/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
dtype0*
_output_shapes
: 

>dnn/hiddenlayer_3/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/bias/part_0*
_output_shapes
: 

$dnn/hiddenlayer_3/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_3/bias/part_0/dnn/hiddenlayer_3/bias/part_0/Initializer/zeros*
dtype0

1dnn/hiddenlayer_3/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0*
dtype0*
_output_shapes
:"

'dnn/hiddenlayer_3/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes

:0"
v
dnn/hiddenlayer_3/kernelIdentity'dnn/hiddenlayer_3/kernel/ReadVariableOp*
T0*
_output_shapes

:0"

dnn/hiddenlayer_3/MatMulMatMuldnn/hiddenlayer_2/Reludnn/hiddenlayer_3/kernel*
T0*'
_output_shapes
:џџџџџџџџџ"

%dnn/hiddenlayer_3/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0*
dtype0*
_output_shapes
:"
n
dnn/hiddenlayer_3/biasIdentity%dnn/hiddenlayer_3/bias/ReadVariableOp*
_output_shapes
:"*
T0

dnn/hiddenlayer_3/BiasAddBiasAdddnn/hiddenlayer_3/MatMuldnn/hiddenlayer_3/bias*'
_output_shapes
:џџџџџџџџџ"*
T0
k
dnn/hiddenlayer_3/ReluReludnn/hiddenlayer_3/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ"
i
dnn/zero_fraction_3/SizeSizednn/hiddenlayer_3/Relu*
T0*
out_type0	*
_output_shapes
: 
e
dnn/zero_fraction_3/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 

dnn/zero_fraction_3/LessEqual	LessEqualdnn/zero_fraction_3/Sizednn/zero_fraction_3/LessEqual/y*
T0	*
_output_shapes
: 

dnn/zero_fraction_3/cond/SwitchSwitchdnn/zero_fraction_3/LessEqualdnn/zero_fraction_3/LessEqual*
_output_shapes
: : *
T0

q
!dnn/zero_fraction_3/cond/switch_tIdentity!dnn/zero_fraction_3/cond/Switch:1*
T0
*
_output_shapes
: 
o
!dnn/zero_fraction_3/cond/switch_fIdentitydnn/zero_fraction_3/cond/Switch*
T0
*
_output_shapes
: 
l
 dnn/zero_fraction_3/cond/pred_idIdentitydnn/zero_fraction_3/LessEqual*
T0
*
_output_shapes
: 

,dnn/zero_fraction_3/cond/count_nonzero/zerosConst"^dnn/zero_fraction_3/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
е
/dnn/zero_fraction_3/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_3/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_3/cond/count_nonzero/zeros*'
_output_shapes
:џџџџџџџџџ"*
T0
ъ
6dnn/zero_fraction_3/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_3/Relu dnn/zero_fraction_3/cond/pred_id*:
_output_shapes(
&:џџџџџџџџџ":џџџџџџџџџ"*
T0*)
_class
loc:@dnn/hiddenlayer_3/Relu
Ѕ
+dnn/zero_fraction_3/cond/count_nonzero/CastCast/dnn/zero_fraction_3/cond/count_nonzero/NotEqual*

SrcT0
*'
_output_shapes
:џџџџџџџџџ"*

DstT0
Ё
,dnn/zero_fraction_3/cond/count_nonzero/ConstConst"^dnn/zero_fraction_3/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
З
4dnn/zero_fraction_3/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_3/cond/count_nonzero/Cast,dnn/zero_fraction_3/cond/count_nonzero/Const*
T0*
_output_shapes
: 

dnn/zero_fraction_3/cond/CastCast4dnn/zero_fraction_3/cond/count_nonzero/nonzero_count*
_output_shapes
: *

DstT0	*

SrcT0

.dnn/zero_fraction_3/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_3/cond/switch_f*
dtype0*
_output_shapes
: *
valueB
 *    
й
1dnn/zero_fraction_3/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_3/cond/count_nonzero_1/zeros*'
_output_shapes
:џџџџџџџџџ"*
T0
ь
8dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_3/Relu dnn/zero_fraction_3/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_3/Relu*:
_output_shapes(
&:џџџџџџџџџ":џџџџџџџџџ"
Љ
-dnn/zero_fraction_3/cond/count_nonzero_1/CastCast1dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual*

SrcT0
*'
_output_shapes
:џџџџџџџџџ"*

DstT0	
Ѓ
.dnn/zero_fraction_3/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_3/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
Н
6dnn/zero_fraction_3/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_3/cond/count_nonzero_1/Cast.dnn/zero_fraction_3/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
Њ
dnn/zero_fraction_3/cond/MergeMerge6dnn/zero_fraction_3/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_3/cond/Cast*
_output_shapes
: : *
T0	*
N

*dnn/zero_fraction_3/counts_to_fraction/subSubdnn/zero_fraction_3/Sizednn/zero_fraction_3/cond/Merge*
_output_shapes
: *
T0	

+dnn/zero_fraction_3/counts_to_fraction/CastCast*dnn/zero_fraction_3/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0

-dnn/zero_fraction_3/counts_to_fraction/Cast_1Castdnn/zero_fraction_3/Size*

SrcT0	*
_output_shapes
: *

DstT0
Ж
.dnn/zero_fraction_3/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_3/counts_to_fraction/Cast-dnn/zero_fraction_3/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
y
dnn/zero_fraction_3/fractionIdentity.dnn/zero_fraction_3/counts_to_fraction/truediv*
_output_shapes
: *
T0
 
2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_3/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Б
-dnn/dnn/hiddenlayer_3/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsdnn/zero_fraction_3/fraction*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_3/activation/tagConst*
_output_shapes
: *1
value(B& B dnn/dnn/hiddenlayer_3/activation*
dtype0

 dnn/dnn/hiddenlayer_3/activationHistogramSummary$dnn/dnn/hiddenlayer_3/activation/tagdnn/hiddenlayer_3/Relu*
_output_shapes
: 
З
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB""      *+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes
:
Љ
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *їќгО*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes
: 
Љ
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *їќг>*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes
: 
№
Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes

:"
ў
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: 

7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
_output_shapes

:"*
T0*+
_class!
loc:@dnn/logits/kernel/part_0

3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:"
Й
dnn/logits/kernel/part_0VarHandleOp*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes
: *
shape
:"*)
shared_namednn/logits/kernel/part_0

9dnn/logits/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel/part_0*
_output_shapes
: 

dnn/logits/kernel/part_0/AssignAssignVariableOpdnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*
dtype0

,dnn/logits/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes

:"
 
(dnn/logits/bias/part_0/Initializer/zerosConst*
valueB*    *)
_class
loc:@dnn/logits/bias/part_0*
dtype0*
_output_shapes
:
Џ
dnn/logits/bias/part_0VarHandleOp*'
shared_namednn/logits/bias/part_0*)
_class
loc:@dnn/logits/bias/part_0*
dtype0*
_output_shapes
: *
shape:
}
7dnn/logits/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias/part_0*
_output_shapes
: 

dnn/logits/bias/part_0/AssignAssignVariableOpdnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*
dtype0
}
*dnn/logits/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
dtype0*
_output_shapes
:
y
 dnn/logits/kernel/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes

:"
h
dnn/logits/kernelIdentity dnn/logits/kernel/ReadVariableOp*
_output_shapes

:"*
T0
x
dnn/logits/MatMulMatMuldnn/hiddenlayer_3/Reludnn/logits/kernel*
T0*'
_output_shapes
:џџџџџџџџџ
q
dnn/logits/bias/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
dtype0*
_output_shapes
:
`
dnn/logits/biasIdentitydnn/logits/bias/ReadVariableOp*
_output_shapes
:*
T0
s
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*
T0*'
_output_shapes
:џџџџџџџџџ
e
dnn/zero_fraction_4/SizeSizednn/logits/BiasAdd*
_output_shapes
: *
T0*
out_type0	
e
dnn/zero_fraction_4/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 

dnn/zero_fraction_4/LessEqual	LessEqualdnn/zero_fraction_4/Sizednn/zero_fraction_4/LessEqual/y*
T0	*
_output_shapes
: 

dnn/zero_fraction_4/cond/SwitchSwitchdnn/zero_fraction_4/LessEqualdnn/zero_fraction_4/LessEqual*
T0
*
_output_shapes
: : 
q
!dnn/zero_fraction_4/cond/switch_tIdentity!dnn/zero_fraction_4/cond/Switch:1*
T0
*
_output_shapes
: 
o
!dnn/zero_fraction_4/cond/switch_fIdentitydnn/zero_fraction_4/cond/Switch*
T0
*
_output_shapes
: 
l
 dnn/zero_fraction_4/cond/pred_idIdentitydnn/zero_fraction_4/LessEqual*
T0
*
_output_shapes
: 

,dnn/zero_fraction_4/cond/count_nonzero/zerosConst"^dnn/zero_fraction_4/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
е
/dnn/zero_fraction_4/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_4/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_4/cond/count_nonzero/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
т
6dnn/zero_fraction_4/cond/count_nonzero/NotEqual/SwitchSwitchdnn/logits/BiasAdd dnn/zero_fraction_4/cond/pred_id*
T0*%
_class
loc:@dnn/logits/BiasAdd*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
Ѕ
+dnn/zero_fraction_4/cond/count_nonzero/CastCast/dnn/zero_fraction_4/cond/count_nonzero/NotEqual*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0
Ё
,dnn/zero_fraction_4/cond/count_nonzero/ConstConst"^dnn/zero_fraction_4/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
З
4dnn/zero_fraction_4/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_4/cond/count_nonzero/Cast,dnn/zero_fraction_4/cond/count_nonzero/Const*
_output_shapes
: *
T0

dnn/zero_fraction_4/cond/CastCast4dnn/zero_fraction_4/cond/count_nonzero/nonzero_count*
_output_shapes
: *

DstT0	*

SrcT0

.dnn/zero_fraction_4/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_4/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
й
1dnn/zero_fraction_4/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_4/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_4/cond/count_nonzero_1/zeros*'
_output_shapes
:џџџџџџџџџ*
T0
ф
8dnn/zero_fraction_4/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/logits/BiasAdd dnn/zero_fraction_4/cond/pred_id*%
_class
loc:@dnn/logits/BiasAdd*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*
T0
Љ
-dnn/zero_fraction_4/cond/count_nonzero_1/CastCast1dnn/zero_fraction_4/cond/count_nonzero_1/NotEqual*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0	
Ѓ
.dnn/zero_fraction_4/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_4/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
Н
6dnn/zero_fraction_4/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_4/cond/count_nonzero_1/Cast.dnn/zero_fraction_4/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
Њ
dnn/zero_fraction_4/cond/MergeMerge6dnn/zero_fraction_4/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_4/cond/Cast*
N*
_output_shapes
: : *
T0	

*dnn/zero_fraction_4/counts_to_fraction/subSubdnn/zero_fraction_4/Sizednn/zero_fraction_4/cond/Merge*
T0	*
_output_shapes
: 

+dnn/zero_fraction_4/counts_to_fraction/CastCast*dnn/zero_fraction_4/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0

-dnn/zero_fraction_4/counts_to_fraction/Cast_1Castdnn/zero_fraction_4/Size*
_output_shapes
: *

DstT0*

SrcT0	
Ж
.dnn/zero_fraction_4/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_4/counts_to_fraction/Cast-dnn/zero_fraction_4/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_4/fractionIdentity.dnn/zero_fraction_4/counts_to_fraction/truediv*
T0*
_output_shapes
: 

+dnn/dnn/logits/fraction_of_zero_values/tagsConst*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Ѓ
&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_4/fraction*
_output_shapes
: *
T0
w
dnn/dnn/logits/activation/tagConst**
value!B Bdnn/dnn/logits/activation*
dtype0*
_output_shapes
: 
x
dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: 
т
Olinear/linear_model/company_xf/weights/part_0/Initializer/zeros/shape_as_tensorConst*
valueB"ђ     *@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
dtype0*
_output_shapes
:
Ь
Elinear/linear_model/company_xf/weights/part_0/Initializer/zeros/ConstConst*
valueB
 *    *@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
dtype0*
_output_shapes
: 
Ы
?linear/linear_model/company_xf/weights/part_0/Initializer/zerosFillOlinear/linear_model/company_xf/weights/part_0/Initializer/zeros/shape_as_tensorElinear/linear_model/company_xf/weights/part_0/Initializer/zeros/Const*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
_output_shapes
:	ђ*
T0
љ
-linear/linear_model/company_xf/weights/part_0VarHandleOp*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
dtype0*
_output_shapes
: *
shape:	ђ*>
shared_name/-linear/linear_model/company_xf/weights/part_0
Ћ
Nlinear/linear_model/company_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp-linear/linear_model/company_xf/weights/part_0*
_output_shapes
: 
Х
4linear/linear_model/company_xf/weights/part_0/AssignAssignVariableOp-linear/linear_model/company_xf/weights/part_0?linear/linear_model/company_xf/weights/part_0/Initializer/zeros*
dtype0
А
Alinear/linear_model/company_xf/weights/part_0/Read/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ
ш
Hlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zerosConst*
valueB
*    *I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:


6linear/linear_model/dropoff_latitude_xf/weights/part_0VarHandleOp*G
shared_name86linear/linear_model/dropoff_latitude_xf/weights/part_0*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0*
_output_shapes
: *
shape
:

Н
Wlinear/linear_model/dropoff_latitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
_output_shapes
: 
р
=linear/linear_model/dropoff_latitude_xf/weights/part_0/AssignAssignVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0Hlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zeros*
dtype0
С
Jlinear/linear_model/dropoff_latitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:

ъ
Ilinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zerosConst*
valueB
*    *J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:


7linear/linear_model/dropoff_longitude_xf/weights/part_0VarHandleOp*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0*
_output_shapes
: *
shape
:
*H
shared_name97linear/linear_model/dropoff_longitude_xf/weights/part_0
П
Xlinear/linear_model/dropoff_longitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
_output_shapes
: 
у
>linear/linear_model/dropoff_longitude_xf/weights/part_0/AssignAssignVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0Ilinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zeros*
dtype0
У
Klinear/linear_model/dropoff_longitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:

ь
Tlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"ђ     *E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0
ж
Jlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/ConstConst*
valueB
 *    *E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
dtype0*
_output_shapes
: 
п
Dlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zerosFillTlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/shape_as_tensorJlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/Const*
T0*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
_output_shapes
:	ђ

2linear/linear_model/payment_type_xf/weights/part_0VarHandleOp*C
shared_name42linear/linear_model/payment_type_xf/weights/part_0*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
dtype0*
_output_shapes
: *
shape:	ђ
Е
Slinear/linear_model/payment_type_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp2linear/linear_model/payment_type_xf/weights/part_0*
_output_shapes
: 
д
9linear/linear_model/payment_type_xf/weights/part_0/AssignAssignVariableOp2linear/linear_model/payment_type_xf/weights/part_0Dlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros*
dtype0
К
Flinear/linear_model/payment_type_xf/weights/part_0/Read/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ
ц
Glinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zerosConst*
valueB
*    *H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:


5linear/linear_model/pickup_latitude_xf/weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *
shape
:
*F
shared_name75linear/linear_model/pickup_latitude_xf/weights/part_0*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0
Л
Vlinear/linear_model/pickup_latitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
_output_shapes
: 
н
<linear/linear_model/pickup_latitude_xf/weights/part_0/AssignAssignVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0Glinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zeros*
dtype0
П
Ilinear/linear_model/pickup_latitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:

ш
Hlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zerosConst*
valueB
*    *I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:


6linear/linear_model/pickup_longitude_xf/weights/part_0VarHandleOp*
_output_shapes
: *
shape
:
*G
shared_name86linear/linear_model/pickup_longitude_xf/weights/part_0*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0
Н
Wlinear/linear_model/pickup_longitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
_output_shapes
: 
р
=linear/linear_model/pickup_longitude_xf/weights/part_0/AssignAssignVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0Hlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zeros*
dtype0
С
Jlinear/linear_model/pickup_longitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:

ф
Flinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0*
_output_shapes

:

4linear/linear_model/trip_start_day_xf/weights/part_0VarHandleOp*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0*
_output_shapes
: *
shape
:*E
shared_name64linear/linear_model/trip_start_day_xf/weights/part_0
Й
Ulinear/linear_model/trip_start_day_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp4linear/linear_model/trip_start_day_xf/weights/part_0*
_output_shapes
: 
к
;linear/linear_model/trip_start_day_xf/weights/part_0/AssignAssignVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0Flinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zeros*
dtype0
Н
Hlinear/linear_model/trip_start_day_xf/weights/part_0/Read/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0*
_output_shapes

:
ц
Glinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zerosConst*
valueB*    *H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0*
_output_shapes

:

5linear/linear_model/trip_start_hour_xf/weights/part_0VarHandleOp*
_output_shapes
: *
shape
:*F
shared_name75linear/linear_model/trip_start_hour_xf/weights/part_0*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0
Л
Vlinear/linear_model/trip_start_hour_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
_output_shapes
: 
н
<linear/linear_model/trip_start_hour_xf/weights/part_0/AssignAssignVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0Glinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zeros*
dtype0
П
Ilinear/linear_model/trip_start_hour_xf/weights/part_0/Read/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0*
_output_shapes

:
ш
Hlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zerosConst*
valueB*    *I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0*
_output_shapes

:

6linear/linear_model/trip_start_month_xf/weights/part_0VarHandleOp*G
shared_name86linear/linear_model/trip_start_month_xf/weights/part_0*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0*
_output_shapes
: *
shape
:
Н
Wlinear/linear_model/trip_start_month_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp6linear/linear_model/trip_start_month_xf/weights/part_0*
_output_shapes
: 
р
=linear/linear_model/trip_start_month_xf/weights/part_0/AssignAssignVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0Hlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zeros*
dtype0
С
Jlinear/linear_model/trip_start_month_xf/weights/part_0/Read/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0*
_output_shapes

:
Т
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
valueB*    *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
т
'linear/linear_model/bias_weights/part_0VarHandleOp*
_output_shapes
: *
shape:*8
shared_name)'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0

Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
Г
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*
dtype0

;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:

Glinear/linear_model/linear_model/linear_model/company_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
й
Clinear/linear_model/linear_model/linear_model/company_xf/ExpandDims
ExpandDimsIdentity_57Glinear/linear_model/linear_model/linear_model/company_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Ђ
Wlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ц
Ulinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/ignore_valueCastWlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/ignore_value/x*
_output_shapes
: *

DstT0	*

SrcT0
Ћ
Qlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/NotEqualNotEqualClinear/linear_model/linear_model/linear_model/company_xf/ExpandDimsUlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/ignore_value*'
_output_shapes
:џџџџџџџџџ*
T0	
е
Plinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/indicesWhereQlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ж
Olinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/valuesGatherNdClinear/linear_model/linear_model/linear_model/company_xf/ExpandDimsPlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
з
Tlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/dense_shapeShapeClinear/linear_model/linear_model/linear_model/company_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

Flinear/linear_model/linear_model/linear_model/company_xf/num_buckets/xConst*
value
B :ђ*
dtype0*
_output_shapes
: 
Ф
Dlinear/linear_model/linear_model/linear_model/company_xf/num_bucketsCastFlinear/linear_model/linear_model/linear_model/company_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

?linear/linear_model/linear_model/linear_model/company_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ж
=linear/linear_model/linear_model/linear_model/company_xf/zeroCast?linear/linear_model/linear_model/linear_model/company_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	

=linear/linear_model/linear_model/linear_model/company_xf/LessLessOlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/values=linear/linear_model/linear_model/linear_model/company_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

Elinear/linear_model/linear_model/linear_model/company_xf/GreaterEqualGreaterEqualOlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/valuesDlinear/linear_model/linear_model/linear_model/company_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
§
Elinear/linear_model/linear_model/linear_model/company_xf/out_of_range	LogicalOr=linear/linear_model/linear_model/linear_model/company_xf/LessElinear/linear_model/linear_model/linear_model/company_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Н
>linear/linear_model/linear_model/linear_model/company_xf/ShapeShapeOlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/values*
T0	*
_output_shapes
:

?linear/linear_model/linear_model/linear_model/company_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ж
=linear/linear_model/linear_model/linear_model/company_xf/CastCast?linear/linear_model/linear_model/linear_model/company_xf/Cast/x*
_output_shapes
: *

DstT0	*

SrcT0
ќ
Glinear/linear_model/linear_model/linear_model/company_xf/default_valuesFill>linear/linear_model/linear_model/linear_model/company_xf/Shape=linear/linear_model/linear_model/linear_model/company_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
м
Alinear/linear_model/linear_model/linear_model/company_xf/SelectV2SelectV2Elinear/linear_model/linear_model/linear_model/company_xf/out_of_rangeGlinear/linear_model/linear_model/linear_model/company_xf/default_valuesOlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
з
Elinear/linear_model/linear_model/linear_model/company_xf/Shape_1/CastCastTlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0

Llinear/linear_model/linear_model/linear_model/company_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Nlinear/linear_model/linear_model/linear_model/company_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Nlinear/linear_model/linear_model/linear_model/company_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
б
Flinear/linear_model/linear_model/linear_model/company_xf/strided_sliceStridedSliceElinear/linear_model/linear_model/linear_model/company_xf/Shape_1/CastLlinear/linear_model/linear_model/linear_model/company_xf/strided_slice/stackNlinear/linear_model/linear_model/linear_model/company_xf/strided_slice/stack_1Nlinear/linear_model/linear_model/linear_model/company_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Clinear/linear_model/linear_model/linear_model/company_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Alinear/linear_model/linear_model/linear_model/company_xf/Cast_1/xPackFlinear/linear_model/linear_model/linear_model/company_xf/strided_sliceClinear/linear_model/linear_model/linear_model/company_xf/Cast_1/x/1*
N*
_output_shapes
:*
T0
О
?linear/linear_model/linear_model/linear_model/company_xf/Cast_1CastAlinear/linear_model/linear_model/linear_model/company_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	
я
Flinear/linear_model/linear_model/linear_model/company_xf/SparseReshapeSparseReshapePlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/indicesTlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/dense_shape?linear/linear_model/linear_model/linear_model/company_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
Ь
Olinear/linear_model/linear_model/linear_model/company_xf/SparseReshape/IdentityIdentityAlinear/linear_model/linear_model/linear_model/company_xf/SelectV2*#
_output_shapes
:џџџџџџџџџ*
T0	

Qlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Plinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
ѕ
Klinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SliceSliceHlinear/linear_model/linear_model/linear_model/company_xf/SparseReshape:1Qlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice/beginPlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Klinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ProdProdKlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SliceKlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Const*
T0	*
_output_shapes
: 

Vlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Nlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2GatherV2Hlinear/linear_model/linear_model/linear_model/company_xf/SparseReshape:1Vlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2/indicesSlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 

Llinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Cast/xPackJlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ProdNlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2*
N*
_output_shapes
:*
T0	
ѓ
Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseReshapeSparseReshapeFlinear/linear_model/linear_model/linear_model/company_xf/SparseReshapeHlinear/linear_model/linear_model/linear_model/company_xf/SparseReshape:1Llinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
ч
\linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseReshape/IdentityIdentityOlinear/linear_model/linear_model/linear_model/company_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Tlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ф
Rlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GreaterEqualGreaterEqual\linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseReshape/IdentityTlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
б
Klinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/WhereWhereRlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
І
Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ј
Mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ReshapeReshapeKlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/WhereSlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

Ulinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
Ќ
Plinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1GatherV2Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseReshapeMlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ReshapeUlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

Ulinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Б
Plinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2GatherV2\linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseReshape/IdentityMlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ReshapeUlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ж
Nlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/IdentityIdentityUlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Ё
_linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
И
mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsPlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1Plinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2Nlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Identity_linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Т
qlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Ф
slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ф
slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
М
klinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicemlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsqlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackslinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ

blinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/CastCastklinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0

dlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueolinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0	

nlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather-linear/linear_model/company_xf/weights/part_0dlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Unique*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
dtype0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	
ч
wlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitynlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:џџџџџџџџџ*
T0*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0
А
ylinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitywlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
ъ
]linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumylinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1flinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Unique:1blinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*
T0
І
Ulinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
д
Olinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape_1Reshapeolinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Ulinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
и
Klinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ShapeShape]linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0
Ѓ
Ylinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ѕ
[linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
Ѕ
[linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_sliceStridedSliceKlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ShapeYlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack[linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_1[linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

Mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Ѕ
Klinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/stackPackMlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/stack/0Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_slice*
_output_shapes
:*
T0*
N
Ћ
Jlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/TileTileOlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape_1Klinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ю
Plinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/zeros_like	ZerosLike]linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ў
Elinear/linear_model/linear_model/linear_model/company_xf/weighted_sumSelectJlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/TilePlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/zeros_like]linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
в
Llinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Cast_1CastHlinear/linear_model/linear_model/linear_model/company_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0

Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Rlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
џ
Mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_1SliceLlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Cast_1Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_1/beginRlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Т
Mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Shape_1ShapeElinear/linear_model/linear_model/linear_model/company_xf/weighted_sum*
_output_shapes
:*
T0

Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
Ѕ
Rlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_2SliceMlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Shape_1Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_2/beginRlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_2/size*
_output_shapes
:*
Index0*
T0

Qlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ї
Llinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/concatConcatV2Mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_1Mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_2Qlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
Ё
Olinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape_2ReshapeElinear/linear_model/linear_model/linear_model/company_xf/weighted_sumLlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
T0

Plinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ы
Llinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ExpandDims
ExpandDimsIdentity_69Plinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*
T0	
Ћ
`linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
ј
^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_valueCast`linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
Ц
Zlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqualNotEqualLlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ExpandDims^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
ч
Ylinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/indicesWhereZlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
б
Xlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/valuesGatherNdLlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ExpandDimsYlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/indices*#
_output_shapes
:џџџџџџџџџ*
Tindices0	*
Tparams0	
щ
]linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shapeShapeLlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

Olinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
ж
Mlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/num_bucketsCastOlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

Hlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ш
Flinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/zeroCastHlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	

Flinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/LessLessXlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/valuesFlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/zero*#
_output_shapes
:џџџџџџџџџ*
T0	
Е
Nlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/GreaterEqualGreaterEqualXlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/valuesMlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ

Nlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/out_of_range	LogicalOrFlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/LessNlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Я
Glinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ShapeShapeXlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/values*
_output_shapes
:*
T0	

Hlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ш
Flinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/CastCastHlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	

Plinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/default_valuesFillGlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ShapeFlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast*#
_output_shapes
:џџџџџџџџџ*
T0	

Jlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SelectV2SelectV2Nlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/out_of_rangePlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/default_valuesXlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/values*#
_output_shapes
:џџџџџџџџџ*
T0	
щ
Nlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Shape_1/CastCast]linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	

Ulinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
Ё
Wlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ў
Olinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_sliceStridedSliceNlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Shape_1/CastUlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stackWlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_1Wlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask

Llinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Jlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast_1/xPackOlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_sliceLlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
а
Hlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast_1CastJlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	

Olinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshapeSparseReshapeYlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/indices]linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shapeHlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
о
Xlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshape/IdentityIdentityJlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SelectV2*#
_output_shapes
:џџџџџџџџџ*
T0	
Є
Zlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ѓ
Ylinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
valueB:*
dtype0

Tlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SliceSliceQlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1Zlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginYlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Tlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Ј
Slinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ProdProdTlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SliceTlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Const*
_output_shapes
: *
T0	
Ё
_linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
value	B :*
dtype0

\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Й
Wlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2GatherV2Qlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1_linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indices\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0
Й
Ulinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast/xPackSlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ProdWlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:

\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapeSparseReshapeOlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshapeQlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1Ulinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
љ
elinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityXlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshape/Identity*#
_output_shapes
:џџџџџџџџџ*
T0	

]linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
п
[linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqualGreaterEqualelinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/Identity]linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0	
у
Tlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/WhereWhere[linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Џ
\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
У
Vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ReshapeReshapeTlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Where\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
 
^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
а
Ylinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1GatherV2\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapeVlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	
 
^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
е
Ylinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2GatherV2elinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/IdentityVlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	
ш
Wlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/IdentityIdentity^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Њ
hlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
х
vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsYlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1Ylinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2Wlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Identityhlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Ы
zlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
Э
|linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Э
|linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
щ
tlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicevlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowszlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack|linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1|linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	*
shrink_axis_mask
І
klinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/CastCasttlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0
Ў
mlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquexlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0	
С
wlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather6linear/linear_model/dropoff_latitude_xf/weights/part_0mlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitywlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ
Ф
linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:џџџџџџџџџ*
T0

flinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1olinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1klinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Џ
^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
я
Xlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1Reshapexlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
ъ
Tlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ShapeShapeflinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0
Ќ
blinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
Ў
dlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
Ў
dlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
И
\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_sliceStridedSliceTlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Shapeblinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackdlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1dlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 

Vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Р
Tlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stackPackVlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stack/0\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
Ц
Slinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/TileTileXlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1Tlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0


Ylinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/zeros_like	ZerosLikeflinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
Ђ
Nlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sumSelectSlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/TileYlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/zeros_likeflinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ф
Ulinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1CastQlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
І
\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ѕ
[linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ѓ
Vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1SliceUlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/begin[linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
д
Vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1ShapeNlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum*
T0*
_output_shapes
:
І
\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ў
[linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Є
Vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2SliceVlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/begin[linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Zlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Ulinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concatConcatV2Vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1Vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2Zlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
М
Xlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2ReshapeNlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sumUlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

Qlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
э
Mlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ExpandDims
ExpandDimsIdentity_55Qlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*
T0	
Ќ
alinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
њ
_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_valueCastalinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
Щ
[linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqualNotEqualMlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ExpandDims_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
щ
Zlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/indicesWhere[linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
д
Ylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/valuesGatherNdMlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ExpandDimsZlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/indices*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Tindices0	
ы
^linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shapeShapeMlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ExpandDims*
_output_shapes
:*
T0	*
out_type0	

Plinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/num_buckets/xConst*
_output_shapes
: *
value	B :
*
dtype0
и
Nlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/num_bucketsCastPlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

Ilinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/zero/xConst*
dtype0*
_output_shapes
: *
value	B : 
Ъ
Glinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/zeroCastIlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
Ё
Glinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/LessLessYlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/valuesGlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
И
Olinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/GreaterEqualGreaterEqualYlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/valuesNlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/num_buckets*#
_output_shapes
:џџџџџџџџџ*
T0	

Olinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/out_of_range	LogicalOrGlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/LessOlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
б
Hlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ShapeShapeYlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Ilinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast/xConst*
dtype0*
_output_shapes
: *
value	B : 
Ъ
Glinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/CastCastIlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	

Qlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/default_valuesFillHlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ShapeGlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast*#
_output_shapes
:џџџџџџџџџ*
T0	

Klinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SelectV2SelectV2Olinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/out_of_rangeQlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/default_valuesYlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
ы
Olinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Shape_1/CastCast^linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
 
Vlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ђ
Xlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ђ
Xlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Plinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_sliceStridedSliceOlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Shape_1/CastVlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stackXlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_1Xlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

Mlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ђ
Klinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast_1/xPackPlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_sliceMlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast_1/x/1*
_output_shapes
:*
T0*
N
в
Ilinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast_1CastKlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	

Plinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshapeSparseReshapeZlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/indices^linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shapeIlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
р
Ylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshape/IdentityIdentityKlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Ѕ
[linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Є
Zlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:

Ulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SliceSliceRlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1[linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginZlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Ulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ћ
Tlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ProdProdUlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SliceUlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Ђ
`linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Н
Xlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2GatherV2Rlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1`linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indices]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
М
Vlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast/xPackTlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ProdXlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:

]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeSparseReshapePlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshapeRlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1Vlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
ћ
flinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityYlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshape/Identity*#
_output_shapes
:џџџџџџџџџ*
T0	
 
^linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
т
\linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqualGreaterEqualflinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/Identity^linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
х
Ulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/WhereWhere\linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
А
]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ц
Wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ReshapeReshapeUlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Where]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
T0	
Ё
_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
д
Zlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1GatherV2]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeWlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	
Ё
_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
й
Zlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2GatherV2flinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/IdentityWlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ъ
Xlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/IdentityIdentity_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Ћ
ilinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ъ
wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsZlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1Zlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2Xlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Identityilinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
T0	
Ь
{linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Ю
}linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ю
}linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ю
ulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicewlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows{linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack}linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1}linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0*
shrink_axis_mask
Ј
llinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/CastCastulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0
А
nlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Х
xlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather7linear/linear_model/dropoff_longitude_xf/weights/part_0nlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique*'
_output_shapes
:џџџџџџџџџ*
Tindices0	*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0

linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityxlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ
Ц
linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ

glinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1plinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1llinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*
T0
А
_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
ђ
Ylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1Reshapeylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
ь
Ulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ShapeShapeglinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
­
clinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Н
]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_sliceStridedSliceUlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Shapeclinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackelinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1elinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 

Wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stack/0Const*
_output_shapes
: *
value	B :*
dtype0
У
Ulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stackPackWlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stack/0]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
Щ
Tlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/TileTileYlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1Ulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0


Zlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/zeros_like	ZerosLikeglinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
І
Olinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sumSelectTlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/TileZlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/zeros_likeglinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ц
Vlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1CastRlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Ї
]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
valueB: *
dtype0
І
\linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ї
Wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1SliceVlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/begin\linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ж
Wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1ShapeOlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum*
T0*
_output_shapes
:
Ї
]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
valueB:*
dtype0
Џ
\linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ј
Wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2SliceWlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/begin\linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

[linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Vlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concatConcatV2Wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1Wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2[linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
П
Ylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2ReshapeOlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sumVlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
T0

Llinear/linear_model/linear_model/linear_model/payment_type_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
у
Hlinear/linear_model/linear_model/linear_model/payment_type_xf/ExpandDims
ExpandDimsIdentity_60Llinear/linear_model/linear_model/linear_model/payment_type_xf/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*
T0	
Ї
\linear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
№
Zlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_valueCast\linear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
К
Vlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/NotEqualNotEqualHlinear/linear_model/linear_model/linear_model/payment_type_xf/ExpandDimsZlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
п
Ulinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/indicesWhereVlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Х
Tlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/valuesGatherNdHlinear/linear_model/linear_model/linear_model/payment_type_xf/ExpandDimsUlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/indices*#
_output_shapes
:џџџџџџџџџ*
Tindices0	*
Tparams0	
с
Ylinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/dense_shapeShapeHlinear/linear_model/linear_model/linear_model/payment_type_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

Klinear/linear_model/linear_model/linear_model/payment_type_xf/num_buckets/xConst*
_output_shapes
: *
value
B :ђ*
dtype0
Ю
Ilinear/linear_model/linear_model/linear_model/payment_type_xf/num_bucketsCastKlinear/linear_model/linear_model/linear_model/payment_type_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

Dlinear/linear_model/linear_model/linear_model/payment_type_xf/zero/xConst*
dtype0*
_output_shapes
: *
value	B : 
Р
Blinear/linear_model/linear_model/linear_model/payment_type_xf/zeroCastDlinear/linear_model/linear_model/linear_model/payment_type_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	

Blinear/linear_model/linear_model/linear_model/payment_type_xf/LessLessTlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/valuesBlinear/linear_model/linear_model/linear_model/payment_type_xf/zero*#
_output_shapes
:џџџџџџџџџ*
T0	
Љ
Jlinear/linear_model/linear_model/linear_model/payment_type_xf/GreaterEqualGreaterEqualTlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/valuesIlinear/linear_model/linear_model/linear_model/payment_type_xf/num_buckets*#
_output_shapes
:џџџџџџџџџ*
T0	

Jlinear/linear_model/linear_model/linear_model/payment_type_xf/out_of_range	LogicalOrBlinear/linear_model/linear_model/linear_model/payment_type_xf/LessJlinear/linear_model/linear_model/linear_model/payment_type_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Ч
Clinear/linear_model/linear_model/linear_model/payment_type_xf/ShapeShapeTlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/values*
_output_shapes
:*
T0	

Dlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
Р
Blinear/linear_model/linear_model/linear_model/payment_type_xf/CastCastDlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast/x*
_output_shapes
: *

DstT0	*

SrcT0

Llinear/linear_model/linear_model/linear_model/payment_type_xf/default_valuesFillClinear/linear_model/linear_model/linear_model/payment_type_xf/ShapeBlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
№
Flinear/linear_model/linear_model/linear_model/payment_type_xf/SelectV2SelectV2Jlinear/linear_model/linear_model/linear_model/payment_type_xf/out_of_rangeLlinear/linear_model/linear_model/linear_model/payment_type_xf/default_valuesTlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
с
Jlinear/linear_model/linear_model/linear_model/payment_type_xf/Shape_1/CastCastYlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	

Qlinear/linear_model/linear_model/linear_model/payment_type_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Slinear/linear_model/linear_model/linear_model/payment_type_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Slinear/linear_model/linear_model/linear_model/payment_type_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ъ
Klinear/linear_model/linear_model/linear_model/payment_type_xf/strided_sliceStridedSliceJlinear/linear_model/linear_model/linear_model/payment_type_xf/Shape_1/CastQlinear/linear_model/linear_model/linear_model/payment_type_xf/strided_slice/stackSlinear/linear_model/linear_model/linear_model/payment_type_xf/strided_slice/stack_1Slinear/linear_model/linear_model/linear_model/payment_type_xf/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask

Hlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Flinear/linear_model/linear_model/linear_model/payment_type_xf/Cast_1/xPackKlinear/linear_model/linear_model/linear_model/payment_type_xf/strided_sliceHlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast_1/x/1*
_output_shapes
:*
T0*
N
Ш
Dlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast_1CastFlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast_1/x*
_output_shapes
:*

DstT0	*

SrcT0

Klinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshapeSparseReshapeUlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/indicesYlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/dense_shapeDlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ж
Tlinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshape/IdentityIdentityFlinear/linear_model/linear_model/linear_model/payment_type_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
 
Vlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Ulinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:

Plinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SliceSliceMlinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshape:1Vlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/beginUlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Plinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:

Olinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/ProdProdPlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SlicePlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Const*
T0	*
_output_shapes
: 

[linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Љ
Slinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2GatherV2Mlinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshape:1[linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesXlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
­
Qlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Cast/xPackOlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/ProdSlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:

Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshapeSparseReshapeKlinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshapeMlinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshape:1Qlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
ё
alinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityIdentityTlinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshape/Identity*#
_output_shapes
:џџџџџџџџџ*
T0	

Ylinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
г
Wlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqualGreaterEqualalinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityYlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0	
л
Plinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/WhereWhereWlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Ћ
Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
З
Rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/ReshapeReshapePlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/WhereXlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

Zlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
Р
Ulinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1GatherV2Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshapeRlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/ReshapeZlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	

Zlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Х
Ulinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2GatherV2alinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityRlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/ReshapeZlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axis*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	
р
Slinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/IdentityIdentityZlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
І
dlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
б
rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsUlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1Ulinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2Slinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Identitydlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
T0	
Ч
vlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Щ
xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Щ
xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
е
plinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicerlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsvlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackxlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	

glinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/CastCastplinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
І
ilinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquetlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Б
slinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather2linear/linear_model/payment_type_xf/weights/part_0ilinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Unique*'
_output_shapes
:џџџџџџџџџ*
Tindices0	*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
dtype0
і
|linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityslinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:џџџџџџџџџ*
T0*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0
К
~linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identity|linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:џџџџџџџџџ*
T0
ў
blinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSum~linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1klinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Unique:1glinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*
T0
Ћ
Zlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
у
Tlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1Reshapetlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Zlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
T0

т
Plinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/ShapeShapeblinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Ј
^linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
Њ
`linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Њ
`linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Є
Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_sliceStridedSlicePlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Shape^linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack`linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1`linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 

Rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Д
Plinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/stackPackRlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/stack/0Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
К
Olinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/TileTileTlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1Plinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

ј
Ulinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/zeros_like	ZerosLikeblinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0

Jlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sumSelectOlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/TileUlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/zeros_likeblinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
м
Qlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Cast_1CastMlinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Ђ
Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:

Rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1SliceQlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Cast_1Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/beginWlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/size*
_output_shapes
:*
Index0*
T0
Ь
Rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Shape_1ShapeJlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum*
T0*
_output_shapes
:
Ђ
Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Њ
Wlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2SliceRlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Shape_1Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/beginWlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Vlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0

Qlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/concatConcatV2Rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1Rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2Vlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/concat/axis*
N*
_output_shapes
:*
T0
А
Tlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_2ReshapeJlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sumQlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
T0

Olinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
щ
Klinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ExpandDims
ExpandDimsIdentity_54Olinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Њ
_linear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
і
]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_valueCast_linear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/x*
_output_shapes
: *

DstT0	*

SrcT0
У
Ylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/NotEqualNotEqualKlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ExpandDims]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
х
Xlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/indicesWhereYlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ю
Wlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/valuesGatherNdKlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ExpandDimsXlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/indices*#
_output_shapes
:џџџџџџџџџ*
Tindices0	*
Tparams0	
ч
\linear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/dense_shapeShapeKlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ExpandDims*
out_type0	*
_output_shapes
:*
T0	

Nlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
д
Llinear/linear_model/linear_model/linear_model/pickup_latitude_xf/num_bucketsCastNlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/num_buckets/x*
_output_shapes
: *

DstT0	*

SrcT0

Glinear/linear_model/linear_model/linear_model/pickup_latitude_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ц
Elinear/linear_model/linear_model/linear_model/pickup_latitude_xf/zeroCastGlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	

Elinear/linear_model/linear_model/linear_model/pickup_latitude_xf/LessLessWlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/valuesElinear/linear_model/linear_model/linear_model/pickup_latitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
В
Mlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/GreaterEqualGreaterEqualWlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/valuesLlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ

Mlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/out_of_range	LogicalOrElinear/linear_model/linear_model/linear_model/pickup_latitude_xf/LessMlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Э
Flinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ShapeShapeWlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Glinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ц
Elinear/linear_model/linear_model/linear_model/pickup_latitude_xf/CastCastGlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	

Olinear/linear_model/linear_model/linear_model/pickup_latitude_xf/default_valuesFillFlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ShapeElinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
ќ
Ilinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SelectV2SelectV2Mlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/out_of_rangeOlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/default_valuesWlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
ч
Mlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Shape_1/CastCast\linear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0

Tlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
 
Vlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
 
Vlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
љ
Nlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_sliceStridedSliceMlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Shape_1/CastTlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_slice/stackVlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_1Vlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 

Klinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Ilinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast_1/xPackNlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_sliceKlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
Ю
Glinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast_1CastIlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	

Nlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshapeSparseReshapeXlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/indices\linear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/dense_shapeGlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
м
Wlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshape/IdentityIdentityIlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Ѓ
Ylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ђ
Xlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:

Slinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SliceSlicePlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1Ylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginXlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Slinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ѕ
Rlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ProdProdSlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SliceSlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Const*
_output_shapes
: *
T0	
 
^linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :

[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Е
Vlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2GatherV2Plinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1^linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indices[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
Ж
Tlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast/xPackRlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ProdVlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2*
_output_shapes
:*
T0	*
N

[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeSparseReshapeNlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshapePlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1Tlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
ї
dlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityWlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshape/Identity*#
_output_shapes
:џџџџџџџџџ*
T0	

\linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
м
Zlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqualGreaterEqualdlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/Identity\linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0	
с
Slinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/WhereWhereZlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Ў
[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Р
Ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ReshapeReshapeSlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Where[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Ь
Xlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1GatherV2[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeUlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0

]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
б
Xlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2GatherV2dlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/IdentityUlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0
ц
Vlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/IdentityIdentity]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Љ
glinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
р
ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsXlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1Xlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2Vlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Identityglinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
T0	
Ъ
ylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Ь
{linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0
Ь
{linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ф
slinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack{linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1{linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0*
shrink_axis_mask*

begin_mask*
end_mask
Є
jlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/CastCastslinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0
Ќ
llinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquewlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Н
vlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather5linear/linear_model/pickup_latitude_xf/weights/part_0llinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*
dtype0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	
џ
linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityvlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:џџџџџџџџџ*
T0*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0
С
linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:џџџџџџџџџ*
T0

elinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1nlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1jlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Ў
]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
ь
Wlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1Reshapewlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
ш
Slinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ShapeShapeelinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0
Ћ
alinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
­
clinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
­
clinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Г
[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_sliceStridedSliceSlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Shapealinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackclinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1clinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 

Ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stack/0Const*
_output_shapes
: *
value	B :*
dtype0
Н
Slinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stackPackUlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stack/0[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
У
Rlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/TileTileWlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1Slinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ў
Xlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/zeros_like	ZerosLikeelinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0

Mlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sumSelectRlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/TileXlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/zeros_likeelinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
т
Tlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast_1CastPlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Ѕ
[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Є
Zlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:

Ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1SliceTlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast_1[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginZlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/size*
_output_shapes
:*
Index0*
T0
в
Ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Shape_1ShapeMlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum*
_output_shapes
:*
T0
Ѕ
[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
­
Zlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
 
Ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2SliceUlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Shape_1[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginZlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/size*
_output_shapes
:*
Index0*
T0

Ylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Tlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concatConcatV2Ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1Ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2Ylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
Й
Wlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2ReshapeMlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sumTlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

Plinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ы
Llinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ExpandDims
ExpandDimsIdentity_68Plinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*
T0	
Ћ
`linear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ј
^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_valueCast`linear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
Ц
Zlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/NotEqualNotEqualLlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ExpandDims^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
ч
Ylinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/indicesWhereZlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
б
Xlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/valuesGatherNdLlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ExpandDimsYlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
щ
]linear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/dense_shapeShapeLlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ExpandDims*
_output_shapes
:*
T0	*
out_type0	

Olinear/linear_model/linear_model/linear_model/pickup_longitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
ж
Mlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/num_bucketsCastOlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/num_buckets/x*
_output_shapes
: *

DstT0	*

SrcT0

Hlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ш
Flinear/linear_model/linear_model/linear_model/pickup_longitude_xf/zeroCastHlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	

Flinear/linear_model/linear_model/linear_model/pickup_longitude_xf/LessLessXlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/valuesFlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
Е
Nlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/GreaterEqualGreaterEqualXlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/valuesMlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ

Nlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/out_of_range	LogicalOrFlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/LessNlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Я
Glinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ShapeShapeXlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Hlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ш
Flinear/linear_model/linear_model/linear_model/pickup_longitude_xf/CastCastHlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	

Plinear/linear_model/linear_model/linear_model/pickup_longitude_xf/default_valuesFillGlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ShapeFlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast*#
_output_shapes
:џџџџџџџџџ*
T0	

Jlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SelectV2SelectV2Nlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/out_of_rangePlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/default_valuesXlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
щ
Nlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Shape_1/CastCast]linear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0

Ulinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ў
Olinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_sliceStridedSliceNlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Shape_1/CastUlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_slice/stackWlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_1Wlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Llinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast_1/x/1Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

Jlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast_1/xPackOlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_sliceLlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast_1/x/1*
_output_shapes
:*
T0*
N
а
Hlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast_1CastJlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	

Olinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshapeSparseReshapeYlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/indices]linear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/dense_shapeHlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
о
Xlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshape/IdentityIdentityJlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Є
Zlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ѓ
Ylinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:

Tlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SliceSliceQlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1Zlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginYlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Tlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ј
Slinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ProdProdTlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SliceTlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Ё
_linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Й
Wlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2GatherV2Qlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1_linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indices\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
Й
Ulinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast/xPackSlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ProdWlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:

\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapeSparseReshapeOlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshapeQlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1Ulinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
љ
elinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityXlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

]linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
п
[linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqualGreaterEqualelinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/Identity]linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
у
Tlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/WhereWhere[linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Џ
\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
У
Vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ReshapeReshapeTlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Where\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
 
^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
а
Ylinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1GatherV2\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapeVlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0
 
^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
е
Ylinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2GatherV2elinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/IdentityVlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0
ш
Wlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/IdentityIdentity^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Њ
hlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
х
vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsYlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1Ylinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2Wlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Identityhlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
T0	
Ы
zlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0
Э
|linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Э
|linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
щ
tlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicevlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowszlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack|linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1|linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	
І
klinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/CastCasttlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0
Ў
mlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquexlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0	
С
wlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather6linear/linear_model/pickup_longitude_xf/weights/part_0mlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0*'
_output_shapes
:џџџџџџџџџ

linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitywlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ
Ф
linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ

flinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1olinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1klinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Џ
^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
я
Xlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1Reshapexlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
ъ
Tlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ShapeShapeflinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Ќ
blinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ў
dlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ў
dlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
И
\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_sliceStridedSliceTlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Shapeblinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackdlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1dlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 

Vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Р
Tlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stackPackVlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stack/0\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
Ц
Slinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/TileTileXlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1Tlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Ylinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/zeros_like	ZerosLikeflinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
Nlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sumSelectSlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/TileYlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/zeros_likeflinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
ф
Ulinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast_1CastQlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
І
\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ѕ
[linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ѓ
Vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1SliceUlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast_1\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/begin[linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
д
Vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Shape_1ShapeNlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum*
T0*
_output_shapes
:
І
\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ў
[linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Є
Vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2SliceVlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Shape_1\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/begin[linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Zlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Ulinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concatConcatV2Vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1Vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2Zlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
М
Xlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2ReshapeNlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sumUlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

Nlinear/linear_model/linear_model/linear_model/trip_start_day_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ч
Jlinear/linear_model/linear_model/linear_model/trip_start_day_xf/ExpandDims
ExpandDimsIdentity_63Nlinear/linear_model/linear_model/linear_model/trip_start_day_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Љ
^linear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
є
\linear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_valueCast^linear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
Р
Xlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/NotEqualNotEqualJlinear/linear_model/linear_model/linear_model/trip_start_day_xf/ExpandDims\linear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
у
Wlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/indicesWhereXlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ы
Vlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/valuesGatherNdJlinear/linear_model/linear_model/linear_model/trip_start_day_xf/ExpandDimsWlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/indices*#
_output_shapes
:џџџџџџџџџ*
Tindices0	*
Tparams0	
х
[linear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/dense_shapeShapeJlinear/linear_model/linear_model/linear_model/trip_start_day_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

Mlinear/linear_model/linear_model/linear_model/trip_start_day_xf/num_buckets/xConst*
value	B :*
dtype0*
_output_shapes
: 
в
Klinear/linear_model/linear_model/linear_model/trip_start_day_xf/num_bucketsCastMlinear/linear_model/linear_model/linear_model/trip_start_day_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

Flinear/linear_model/linear_model/linear_model/trip_start_day_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
Dlinear/linear_model/linear_model/linear_model/trip_start_day_xf/zeroCastFlinear/linear_model/linear_model/linear_model/trip_start_day_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	

Dlinear/linear_model/linear_model/linear_model/trip_start_day_xf/LessLessVlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/valuesDlinear/linear_model/linear_model/linear_model/trip_start_day_xf/zero*#
_output_shapes
:џџџџџџџџџ*
T0	
Џ
Llinear/linear_model/linear_model/linear_model/trip_start_day_xf/GreaterEqualGreaterEqualVlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/valuesKlinear/linear_model/linear_model/linear_model/trip_start_day_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ

Llinear/linear_model/linear_model/linear_model/trip_start_day_xf/out_of_range	LogicalOrDlinear/linear_model/linear_model/linear_model/trip_start_day_xf/LessLlinear/linear_model/linear_model/linear_model/trip_start_day_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Ы
Elinear/linear_model/linear_model/linear_model/trip_start_day_xf/ShapeShapeVlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/values*
_output_shapes
:*
T0	

Flinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
Dlinear/linear_model/linear_model/linear_model/trip_start_day_xf/CastCastFlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	

Nlinear/linear_model/linear_model/linear_model/trip_start_day_xf/default_valuesFillElinear/linear_model/linear_model/linear_model/trip_start_day_xf/ShapeDlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast*#
_output_shapes
:џџџџџџџџџ*
T0	
ј
Hlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SelectV2SelectV2Llinear/linear_model/linear_model/linear_model/trip_start_day_xf/out_of_rangeNlinear/linear_model/linear_model/linear_model/trip_start_day_xf/default_valuesVlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
х
Llinear/linear_model/linear_model/linear_model/trip_start_day_xf/Shape_1/CastCast[linear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0

Slinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Ulinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ulinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
є
Mlinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_sliceStridedSliceLlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Shape_1/CastSlinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_slice/stackUlinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_1Ulinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 

Jlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Hlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast_1/xPackMlinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_sliceJlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
Ь
Flinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast_1CastHlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	

Mlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshapeSparseReshapeWlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/indices[linear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/dense_shapeFlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
к
Vlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshape/IdentityIdentityHlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Ђ
Xlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:

Rlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SliceSliceOlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshape:1Xlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/beginWlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/size*
_output_shapes
:*
Index0*
T0	

Rlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ђ
Qlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/ProdProdRlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SliceRlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Const*
_output_shapes
: *
T0	

]linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :

Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Б
Ulinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2GatherV2Olinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshape:1]linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indicesZlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
Г
Slinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast/xPackQlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/ProdUlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2*
N*
_output_shapes
:*
T0	

Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeSparseReshapeMlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshapeOlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshape:1Slinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
ѕ
clinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/IdentityIdentityVlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshape/Identity*#
_output_shapes
:џџџџџџџџџ*
T0	

[linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
й
Ylinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqualGreaterEqualclinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/Identity[linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0	
п
Rlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/WhereWhereYlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
­
Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Н
Tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/ReshapeReshapeRlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/WhereZlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

\linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ш
Wlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1GatherV2Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeTlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape\linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ

\linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Э
Wlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2GatherV2clinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/IdentityTlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape\linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	
ф
Ulinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/IdentityIdentity\linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Ј
flinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
л
tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsWlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1Wlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2Ulinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Identityflinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Щ
xlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Ы
zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ы
zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
п
rlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicetlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsxlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackzlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ
Ђ
ilinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/CastCastrlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
Њ
klinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquevlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0	
Й
ulinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather4linear/linear_model/trip_start_day_xf/weights/part_0klinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0*'
_output_shapes
:џџџџџџџџџ
ќ
~linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityulinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:џџџџџџџџџ*
T0*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0
П
linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identity~linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:џџџџџџџџџ*
T0

dlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1mlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Unique:1ilinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*
T0
­
\linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
valueB"џџџџ   *
dtype0
щ
Vlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1Reshapevlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2\linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
T0

ц
Rlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/ShapeShapedlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Њ
`linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ќ
blinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
blinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ў
Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_sliceStridedSliceRlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Shape`linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackblinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1blinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
К
Rlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/stackPackTlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/stack/0Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice*
N*
_output_shapes
:*
T0
Р
Qlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/TileTileVlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1Rlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

ќ
Wlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/zeros_like	ZerosLikedlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

Llinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sumSelectQlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/TileWlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/zeros_likedlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
р
Slinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast_1CastOlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Є
Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ѓ
Ylinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:

Tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1SliceSlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast_1Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginYlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
а
Tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Shape_1ShapeLlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum*
_output_shapes
:*
T0
Є
Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
Ќ
Ylinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2SliceTlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Shape_1Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginYlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Xlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Slinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/concatConcatV2Tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1Tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2Xlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
Ж
Vlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_2ReshapeLlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sumSlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

Olinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
щ
Klinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ExpandDims
ExpandDimsIdentity_65Olinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*
T0	
Њ
_linear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0
і
]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_valueCast_linear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/x*
_output_shapes
: *

DstT0	*

SrcT0
У
Ylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/NotEqualNotEqualKlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ExpandDims]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
х
Xlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/indicesWhereYlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ю
Wlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/valuesGatherNdKlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ExpandDimsXlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ч
\linear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/dense_shapeShapeKlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ExpandDims*
_output_shapes
:*
T0	*
out_type0	

Nlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/num_buckets/xConst*
value	B :*
dtype0*
_output_shapes
: 
д
Llinear/linear_model/linear_model/linear_model/trip_start_hour_xf/num_bucketsCastNlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

Glinear/linear_model/linear_model/linear_model/trip_start_hour_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ц
Elinear/linear_model/linear_model/linear_model/trip_start_hour_xf/zeroCastGlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/zero/x*
_output_shapes
: *

DstT0	*

SrcT0

Elinear/linear_model/linear_model/linear_model/trip_start_hour_xf/LessLessWlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/valuesElinear/linear_model/linear_model/linear_model/trip_start_hour_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
В
Mlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/GreaterEqualGreaterEqualWlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/valuesLlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/num_buckets*#
_output_shapes
:џџџџџџџџџ*
T0	

Mlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/out_of_range	LogicalOrElinear/linear_model/linear_model/linear_model/trip_start_hour_xf/LessMlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Э
Flinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ShapeShapeWlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Glinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ц
Elinear/linear_model/linear_model/linear_model/trip_start_hour_xf/CastCastGlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	

Olinear/linear_model/linear_model/linear_model/trip_start_hour_xf/default_valuesFillFlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ShapeElinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
ќ
Ilinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SelectV2SelectV2Mlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/out_of_rangeOlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/default_valuesWlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
ч
Mlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Shape_1/CastCast\linear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0

Tlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
 
Vlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
 
Vlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
љ
Nlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_sliceStridedSliceMlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Shape_1/CastTlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_slice/stackVlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_1Vlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0

Klinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Ilinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast_1/xPackNlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_sliceKlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
Ю
Glinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast_1CastIlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	

Nlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshapeSparseReshapeXlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/indices\linear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/dense_shapeGlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
м
Wlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshape/IdentityIdentityIlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Ѓ
Ylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ђ
Xlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:

Slinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SliceSlicePlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1Ylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginXlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/size*
_output_shapes
:*
Index0*
T0	

Slinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ѕ
Rlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ProdProdSlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SliceSlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
 
^linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Е
Vlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2GatherV2Plinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1^linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indices[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
Ж
Tlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast/xPackRlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ProdVlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:

[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeSparseReshapeNlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshapePlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1Tlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
ї
dlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/IdentityIdentityWlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshape/Identity*#
_output_shapes
:џџџџџџџџџ*
T0	

\linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
м
Zlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqualGreaterEqualdlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/Identity\linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
с
Slinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/WhereWhereZlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Ў
[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Р
Ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ReshapeReshapeSlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Where[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
T0	

]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ь
Xlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1GatherV2[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeUlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
б
Xlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2GatherV2dlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/IdentityUlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axis*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	
ц
Vlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/IdentityIdentity]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Љ
glinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
р
ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsXlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1Xlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2Vlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Identityglinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Ъ
ylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Ь
{linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0
Ь
{linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ф
slinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack{linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1{linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	
Є
jlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/CastCastslinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0
Ќ
llinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquewlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Н
vlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather5linear/linear_model/trip_start_hour_xf/weights/part_0llinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0*'
_output_shapes
:џџџџџџџџџ
џ
linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityvlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ*
T0
С
linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:џџџџџџџџџ*
T0

elinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1nlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Unique:1jlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*
T0
Ў
]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
ь
Wlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1Reshapewlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
ш
Slinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ShapeShapeelinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Ћ
alinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
­
clinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
­
clinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Г
[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_sliceStridedSliceSlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Shapealinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackclinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1clinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 

Ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Н
Slinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stackPackUlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stack/0[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
У
Rlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/TileTileWlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1Slinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ў
Xlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/zeros_like	ZerosLikeelinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

Mlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sumSelectRlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/TileXlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/zeros_likeelinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
т
Tlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast_1CastPlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Ѕ
[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Є
Zlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:

Ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1SliceTlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast_1[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginZlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
в
Ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Shape_1ShapeMlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum*
_output_shapes
:*
T0
Ѕ
[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
­
Zlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
 
Ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2SliceUlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Shape_1[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginZlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/size*
_output_shapes
:*
Index0*
T0

Ylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Tlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concatConcatV2Ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1Ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2Ylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concat/axis*
N*
_output_shapes
:*
T0
Й
Wlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2ReshapeMlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sumTlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

Plinear/linear_model/linear_model/linear_model/trip_start_month_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ы
Llinear/linear_model/linear_model/linear_model/trip_start_month_xf/ExpandDims
ExpandDimsIdentity_62Plinear/linear_model/linear_model/linear_model/trip_start_month_xf/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*
T0	
Ћ
`linear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ј
^linear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_valueCast`linear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
Ц
Zlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/NotEqualNotEqualLlinear/linear_model/linear_model/linear_model/trip_start_month_xf/ExpandDims^linear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_value*'
_output_shapes
:џџџџџџџџџ*
T0	
ч
Ylinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/indicesWhereZlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
б
Xlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/valuesGatherNdLlinear/linear_model/linear_model/linear_model/trip_start_month_xf/ExpandDimsYlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/indices*#
_output_shapes
:џџџџџџџџџ*
Tindices0	*
Tparams0	
щ
]linear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/dense_shapeShapeLlinear/linear_model/linear_model/linear_model/trip_start_month_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

Olinear/linear_model/linear_model/linear_model/trip_start_month_xf/num_buckets/xConst*
value	B :*
dtype0*
_output_shapes
: 
ж
Mlinear/linear_model/linear_model/linear_model/trip_start_month_xf/num_bucketsCastOlinear/linear_model/linear_model/linear_model/trip_start_month_xf/num_buckets/x*
_output_shapes
: *

DstT0	*

SrcT0

Hlinear/linear_model/linear_model/linear_model/trip_start_month_xf/zero/xConst*
dtype0*
_output_shapes
: *
value	B : 
Ш
Flinear/linear_model/linear_model/linear_model/trip_start_month_xf/zeroCastHlinear/linear_model/linear_model/linear_model/trip_start_month_xf/zero/x*
_output_shapes
: *

DstT0	*

SrcT0

Flinear/linear_model/linear_model/linear_model/trip_start_month_xf/LessLessXlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/valuesFlinear/linear_model/linear_model/linear_model/trip_start_month_xf/zero*#
_output_shapes
:џџџџџџџџџ*
T0	
Е
Nlinear/linear_model/linear_model/linear_model/trip_start_month_xf/GreaterEqualGreaterEqualXlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/valuesMlinear/linear_model/linear_model/linear_model/trip_start_month_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ

Nlinear/linear_model/linear_model/linear_model/trip_start_month_xf/out_of_range	LogicalOrFlinear/linear_model/linear_model/linear_model/trip_start_month_xf/LessNlinear/linear_model/linear_model/linear_model/trip_start_month_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Я
Glinear/linear_model/linear_model/linear_model/trip_start_month_xf/ShapeShapeXlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/values*
_output_shapes
:*
T0	

Hlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ш
Flinear/linear_model/linear_model/linear_model/trip_start_month_xf/CastCastHlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast/x*
_output_shapes
: *

DstT0	*

SrcT0

Plinear/linear_model/linear_model/linear_model/trip_start_month_xf/default_valuesFillGlinear/linear_model/linear_model/linear_model/trip_start_month_xf/ShapeFlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ

Jlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SelectV2SelectV2Nlinear/linear_model/linear_model/linear_model/trip_start_month_xf/out_of_rangePlinear/linear_model/linear_model/linear_model/trip_start_month_xf/default_valuesXlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/values*#
_output_shapes
:џџџџџџџџџ*
T0	
щ
Nlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Shape_1/CastCast]linear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	

Ulinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ў
Olinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_sliceStridedSliceNlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Shape_1/CastUlinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_slice/stackWlinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_1Wlinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Llinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast_1/x/1Const*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0

Jlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast_1/xPackOlinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_sliceLlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
а
Hlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast_1CastJlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	

Olinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshapeSparseReshapeYlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/indices]linear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/dense_shapeHlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
о
Xlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshape/IdentityIdentityJlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Є
Zlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
valueB: *
dtype0
Ѓ
Ylinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
valueB:*
dtype0

Tlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SliceSliceQlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshape:1Zlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/beginYlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Tlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ј
Slinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/ProdProdTlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SliceTlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Ё
_linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Й
Wlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2GatherV2Qlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshape:1_linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indices\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
Й
Ulinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast/xPackSlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/ProdWlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2*
N*
_output_shapes
:*
T0	

\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshapeSparseReshapeOlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshapeQlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshape:1Ulinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
љ
elinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/IdentityIdentityXlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

]linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
п
[linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqualGreaterEqualelinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/Identity]linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
у
Tlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/WhereWhere[linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Џ
\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
У
Vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/ReshapeReshapeTlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Where\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
 
^linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
а
Ylinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1GatherV2\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshapeVlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape^linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	
 
^linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
е
Ylinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2GatherV2elinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/IdentityVlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape^linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	
ш
Wlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/IdentityIdentity^linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Њ
hlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
х
vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsYlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1Ylinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2Wlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Identityhlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
T0	
Ы
zlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Э
|linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Э
|linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
щ
tlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicevlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowszlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack|linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1|linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0*
shrink_axis_mask*

begin_mask
І
klinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/CastCasttlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
Ў
mlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquexlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
С
wlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather6linear/linear_model/trip_start_month_xf/weights/part_0mlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Unique*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitywlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ
Ф
linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ

flinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1olinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Unique:1klinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Џ
^linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
я
Xlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1Reshapexlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2^linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
ъ
Tlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/ShapeShapeflinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Ќ
blinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ў
dlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ў
dlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
И
\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_sliceStridedSliceTlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Shapeblinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackdlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1dlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 

Vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Р
Tlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/stackPackVlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/stack/0\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice*
_output_shapes
:*
T0*
N
Ц
Slinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/TileTileXlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1Tlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0


Ylinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/zeros_like	ZerosLikeflinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
Nlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sumSelectSlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/TileYlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/zeros_likeflinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
ф
Ulinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast_1CastQlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
І
\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ѕ
[linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ѓ
Vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1SliceUlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast_1\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/begin[linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
д
Vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Shape_1ShapeNlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum*
T0*
_output_shapes
:
І
\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ў
[linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Є
Vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2SliceVlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Shape_1\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/begin[linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Zlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Ulinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/concatConcatV2Vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1Vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2Zlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
М
Xlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_2ReshapeNlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sumUlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

Blinear/linear_model/linear_model/linear_model/weighted_sum_no_biasAddNOlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape_2Xlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2Ylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2Tlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_2Wlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2Xlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2Vlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_2Wlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2Xlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_2*
T0*
N	*'
_output_shapes
:џџџџџџџџџ

/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
_output_shapes
:*
dtype0

 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
_output_shapes
:*
T0
н
:linear/linear_model/linear_model/linear_model/weighted_sumBiasAddBlinear/linear_model/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
T0*'
_output_shapes
:џџџџџџџџџ
y
linear/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
d
linear/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
й
linear/strided_sliceStridedSlicelinear/ReadVariableOplinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
\
linear/bias/tagsConst*
valueB Blinear/bias*
dtype0*
_output_shapes
: 
e
linear/biasScalarSummarylinear/bias/tagslinear/strided_slice*
_output_shapes
: *
T0
Ђ
3linear/zero_fraction/total_size/Size/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ
g
$linear/zero_fraction/total_size/SizeConst*
value
B	 Rђ*
dtype0	*
_output_shapes
: 
Ќ
5linear/zero_fraction/total_size/Size_1/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:

h
&linear/zero_fraction/total_size/Size_1Const*
value	B	 R
*
dtype0	*
_output_shapes
: 
­
5linear/zero_fraction/total_size/Size_2/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:

h
&linear/zero_fraction/total_size/Size_2Const*
value	B	 R
*
dtype0	*
_output_shapes
: 
Љ
5linear/zero_fraction/total_size/Size_3/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ
i
&linear/zero_fraction/total_size/Size_3Const*
value
B	 Rђ*
dtype0	*
_output_shapes
: 
Ћ
5linear/zero_fraction/total_size/Size_4/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
_output_shapes

:
*
dtype0
h
&linear/zero_fraction/total_size/Size_4Const*
value	B	 R
*
dtype0	*
_output_shapes
: 
Ќ
5linear/zero_fraction/total_size/Size_5/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:

h
&linear/zero_fraction/total_size/Size_5Const*
value	B	 R
*
dtype0	*
_output_shapes
: 
Њ
5linear/zero_fraction/total_size/Size_6/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_6Const*
dtype0	*
_output_shapes
: *
value	B	 R
Ћ
5linear/zero_fraction/total_size/Size_7/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_7Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ќ
5linear/zero_fraction/total_size/Size_8/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_8Const*
value	B	 R*
dtype0	*
_output_shapes
: 
М
$linear/zero_fraction/total_size/AddNAddN$linear/zero_fraction/total_size/Size&linear/zero_fraction/total_size/Size_1&linear/zero_fraction/total_size/Size_2&linear/zero_fraction/total_size/Size_3&linear/zero_fraction/total_size/Size_4&linear/zero_fraction/total_size/Size_5&linear/zero_fraction/total_size/Size_6&linear/zero_fraction/total_size/Size_7&linear/zero_fraction/total_size/Size_8*
T0	*
N	*
_output_shapes
: 
g
%linear/zero_fraction/total_zero/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	

%linear/zero_fraction/total_zero/EqualEqual$linear/zero_fraction/total_size/Size%linear/zero_fraction/total_zero/Const*
T0	*
_output_shapes
: 
Ќ
1linear/zero_fraction/total_zero/zero_count/SwitchSwitch%linear/zero_fraction/total_zero/Equal%linear/zero_fraction/total_zero/Equal*
_output_shapes
: : *
T0


3linear/zero_fraction/total_zero/zero_count/switch_tIdentity3linear/zero_fraction/total_zero/zero_count/Switch:1*
T0
*
_output_shapes
: 

3linear/zero_fraction/total_zero/zero_count/switch_fIdentity1linear/zero_fraction/total_zero/zero_count/Switch*
_output_shapes
: *
T0


2linear/zero_fraction/total_zero/zero_count/pred_idIdentity%linear/zero_fraction/total_zero/Equal*
_output_shapes
: *
T0

Ћ
0linear/zero_fraction/total_zero/zero_count/ConstConst4^linear/zero_fraction/total_zero/zero_count/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
з
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpReadVariableOpNlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes
:	ђ
 
Nlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/SwitchSwitch-linear/linear_model/company_xf/weights/part_02linear/zero_fraction/total_zero/zero_count/pred_id*
T0*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
_output_shapes
: : 
Ж
=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
value
B	 Rђ*
dtype0	*
_output_shapes
: 
Р
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/yConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
_output_shapes
: *
valueB	 Rџџџџ*
dtype0	
ѕ
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual	LessEqual=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeDlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
љ
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/SwitchSwitchBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqualBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
Л
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_tIdentityFlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
Й
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_fIdentityDlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
Ж
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_idIdentityBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
_output_shapes
: *
T0

п
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
М
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes
:	ђ

[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id**
_output_shapes
:	ђ:	ђ*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp
ч
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastCastTlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes
:	ђ*

DstT0
ы
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
І
Ylinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_countSumPlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastQlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
е
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/CastCastYlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
с
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes
:	ђ

]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp**
_output_shapes
:	ђ:	ђ*
T0
ы
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastCastVlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual*
_output_shapes
:	ђ*

DstT0	*

SrcT0

э
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
Ќ
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 

Clinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/MergeMerge[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countBlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
ћ
Olinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/subSub=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeClinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
й
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastCastOlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub*
_output_shapes
: *

DstT0*

SrcT0	
Щ
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1Cast=linear/zero_fraction/total_zero/zero_count/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
Ѕ
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truedivRealDivPlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastRlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
У
Alinear/zero_fraction/total_zero/zero_count/zero_fraction/fractionIdentitySlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
Ѕ
2linear/zero_fraction/total_zero/zero_count/ToFloatCast9linear/zero_fraction/total_zero/zero_count/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
љ
9linear/zero_fraction/total_zero/zero_count/ToFloat/SwitchSwitch$linear/zero_fraction/total_size/Size2linear/zero_fraction/total_zero/zero_count/pred_id*
_output_shapes
: : *
T0	*7
_class-
+)loc:@linear/zero_fraction/total_size/Size
Э
.linear/zero_fraction/total_zero/zero_count/mulMulAlinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction2linear/zero_fraction/total_zero/zero_count/ToFloat*
T0*
_output_shapes
: 
Ч
0linear/zero_fraction/total_zero/zero_count/MergeMerge.linear/zero_fraction/total_zero/zero_count/mul0linear/zero_fraction/total_zero/zero_count/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 
Ђ
'linear/zero_fraction/total_zero/Equal_1Equal&linear/zero_fraction/total_size/Size_1'linear/zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
В
3linear/zero_fraction/total_zero/zero_count_1/SwitchSwitch'linear/zero_fraction/total_zero/Equal_1'linear/zero_fraction/total_zero/Equal_1*
T0
*
_output_shapes
: : 

5linear/zero_fraction/total_zero/zero_count_1/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_1/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_1/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_1/Switch*
_output_shapes
: *
T0


4linear/zero_fraction/total_zero/zero_count_1/pred_idIdentity'linear/zero_fraction/total_zero/Equal_1*
T0
*
_output_shapes
: 
Џ
2linear/zero_fraction/total_zero/zero_count_1/ConstConst6^linear/zero_fraction/total_zero/zero_count_1/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
к
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:

Ж
Plinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/SwitchSwitch6linear/linear_model/dropoff_latitude_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_1/pred_id*
T0*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*
_output_shapes
: : 
Й
?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
value	B	 R
*
dtype0	*
_output_shapes
: 
Ф
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
ћ
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y*
_output_shapes
: *
T0	
џ
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
П
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
Н
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
К
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
у
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
С
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:


]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
:
:

ъ
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:
*

DstT0
я
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
Ќ
[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
й
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
х
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
Х
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros*
_output_shapes

:
*
T0

_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
:
:

ю
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:
*

DstT0	
ё
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
В
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 

Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 

Qlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
н
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
Э
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
Ћ
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ч
Clinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
Љ
4linear/zero_fraction/total_zero/zero_count_1/ToFloatCast;linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0

;linear/zero_fraction/total_zero/zero_count_1/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_14linear/zero_fraction/total_zero/zero_count_1/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_1*
_output_shapes
: : 
г
0linear/zero_fraction/total_zero/zero_count_1/mulMulClinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_1/ToFloat*
_output_shapes
: *
T0
Э
2linear/zero_fraction/total_zero/zero_count_1/MergeMerge0linear/zero_fraction/total_zero/zero_count_1/mul2linear/zero_fraction/total_zero/zero_count_1/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_2Const*
value	B	 R *
dtype0	*
_output_shapes
: 
Ђ
'linear/zero_fraction/total_zero/Equal_2Equal&linear/zero_fraction/total_size/Size_2'linear/zero_fraction/total_zero/Const_2*
T0	*
_output_shapes
: 
В
3linear/zero_fraction/total_zero/zero_count_2/SwitchSwitch'linear/zero_fraction/total_zero/Equal_2'linear/zero_fraction/total_zero/Equal_2*
T0
*
_output_shapes
: : 

5linear/zero_fraction/total_zero/zero_count_2/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_2/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_2/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_2/Switch*
T0
*
_output_shapes
: 

4linear/zero_fraction/total_zero/zero_count_2/pred_idIdentity'linear/zero_fraction/total_zero/Equal_2*
T0
*
_output_shapes
: 
Џ
2linear/zero_fraction/total_zero/zero_count_2/ConstConst6^linear/zero_fraction/total_zero/zero_count_2/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
к
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:

И
Plinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/SwitchSwitch7linear/linear_model/dropoff_longitude_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_2/pred_id*
T0*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*
_output_shapes
: : 
Й
?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_2/switch_f*
value	B	 R
*
dtype0	*
_output_shapes
: 
Ф
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_2/switch_f*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
ћ
Dlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual/y*
_output_shapes
: *
T0	
џ
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
П
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
Н
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
К
Glinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual*
_output_shapes
: *
T0

у
Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
С
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zeros*
_output_shapes

:
*
T0

]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp*(
_output_shapes
:
:

ъ
Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:
*

DstT0
я
Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
Ќ
[linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
й
Dlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
х
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
Х
Xlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zeros*
_output_shapes

:
*
T0

_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id*(
_output_shapes
:
:
*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp
ю
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:
*

DstT0	
ё
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
В
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	

Elinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 

Qlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
н
Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/sub*
_output_shapes
: *

DstT0*

SrcT0	
Э
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
Ћ
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
Ч
Clinear/zero_fraction/total_zero/zero_count_2/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/truediv*
_output_shapes
: *
T0
Љ
4linear/zero_fraction/total_zero/zero_count_2/ToFloatCast;linear/zero_fraction/total_zero/zero_count_2/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0

;linear/zero_fraction/total_zero/zero_count_2/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_24linear/zero_fraction/total_zero/zero_count_2/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_2*
_output_shapes
: : 
г
0linear/zero_fraction/total_zero/zero_count_2/mulMulClinear/zero_fraction/total_zero/zero_count_2/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_2/ToFloat*
T0*
_output_shapes
: 
Э
2linear/zero_fraction/total_zero/zero_count_2/MergeMerge0linear/zero_fraction/total_zero/zero_count_2/mul2linear/zero_fraction/total_zero/zero_count_2/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_3Const*
value	B	 R *
dtype0	*
_output_shapes
: 
Ђ
'linear/zero_fraction/total_zero/Equal_3Equal&linear/zero_fraction/total_size/Size_3'linear/zero_fraction/total_zero/Const_3*
T0	*
_output_shapes
: 
В
3linear/zero_fraction/total_zero/zero_count_3/SwitchSwitch'linear/zero_fraction/total_zero/Equal_3'linear/zero_fraction/total_zero/Equal_3*
_output_shapes
: : *
T0


5linear/zero_fraction/total_zero/zero_count_3/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_3/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_3/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_3/Switch*
T0
*
_output_shapes
: 

4linear/zero_fraction/total_zero/zero_count_3/pred_idIdentity'linear/zero_fraction/total_zero/Equal_3*
_output_shapes
: *
T0

Џ
2linear/zero_fraction/total_zero/zero_count_3/ConstConst6^linear/zero_fraction/total_zero/zero_count_3/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
л
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes
:	ђ
Ў
Plinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/SwitchSwitch2linear/linear_model/payment_type_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_3/pred_id*
T0*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
_output_shapes
: : 
К
?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_3/switch_f*
value
B	 Rђ*
dtype0	*
_output_shapes
: 
Ф
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_3/switch_f*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
ћ
Dlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
џ
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
П
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

Н
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch*
_output_shapes
: *
T0

К
Glinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
у
Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
Т
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zeros*
_output_shapes
:	ђ*
T0

]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp**
_output_shapes
:	ђ:	ђ
ы
Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual*
_output_shapes
:	ђ*

DstT0*

SrcT0

я
Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
Ќ
[linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Const*
_output_shapes
: *
T0
й
Dlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_count*
_output_shapes
: *

DstT0	*

SrcT0
х
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
Ц
Xlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes
:	ђ

_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id**
_output_shapes
:	ђ:	ђ*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp
я
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes
:	ђ*

DstT0	
ё
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f*
_output_shapes
:*
valueB"       *
dtype0
В
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	

Elinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 

Qlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
н
Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
Э
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/Size*
_output_shapes
: *

DstT0*

SrcT0	
Ћ
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ч
Clinear/zero_fraction/total_zero/zero_count_3/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/truediv*
_output_shapes
: *
T0
Љ
4linear/zero_fraction/total_zero/zero_count_3/ToFloatCast;linear/zero_fraction/total_zero/zero_count_3/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0

;linear/zero_fraction/total_zero/zero_count_3/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_34linear/zero_fraction/total_zero/zero_count_3/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_3*
_output_shapes
: : 
г
0linear/zero_fraction/total_zero/zero_count_3/mulMulClinear/zero_fraction/total_zero/zero_count_3/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_3/ToFloat*
_output_shapes
: *
T0
Э
2linear/zero_fraction/total_zero/zero_count_3/MergeMerge0linear/zero_fraction/total_zero/zero_count_3/mul2linear/zero_fraction/total_zero/zero_count_3/Const*
N*
_output_shapes
: : *
T0
i
'linear/zero_fraction/total_zero/Const_4Const*
dtype0	*
_output_shapes
: *
value	B	 R 
Ђ
'linear/zero_fraction/total_zero/Equal_4Equal&linear/zero_fraction/total_size/Size_4'linear/zero_fraction/total_zero/Const_4*
_output_shapes
: *
T0	
В
3linear/zero_fraction/total_zero/zero_count_4/SwitchSwitch'linear/zero_fraction/total_zero/Equal_4'linear/zero_fraction/total_zero/Equal_4*
_output_shapes
: : *
T0


5linear/zero_fraction/total_zero/zero_count_4/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_4/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_4/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_4/Switch*
_output_shapes
: *
T0


4linear/zero_fraction/total_zero/zero_count_4/pred_idIdentity'linear/zero_fraction/total_zero/Equal_4*
T0
*
_output_shapes
: 
Џ
2linear/zero_fraction/total_zero/zero_count_4/ConstConst6^linear/zero_fraction/total_zero/zero_count_4/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
к
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/Switch*
_output_shapes

:
*
dtype0
Д
Plinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/SwitchSwitch5linear/linear_model/pickup_latitude_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_4/pred_id*
T0*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*
_output_shapes
: : 
Й
?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_4/switch_f*
value	B	 R
*
dtype0	*
_output_shapes
: 
Ф
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_4/switch_f*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
ћ
Dlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual/y*
_output_shapes
: *
T0	
џ
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
П
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

Н
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
К
Glinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
у
Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
С
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:


]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp*(
_output_shapes
:
:
*
T0
ъ
Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual*
_output_shapes

:
*

DstT0*

SrcT0

я
Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
Ќ
[linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
й
Dlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
х
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
Х
Xlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zeros*
_output_shapes

:
*
T0

_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp*(
_output_shapes
:
:

ю
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:
*

DstT0	
ё
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
В
]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 

Elinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Cast*
_output_shapes
: : *
T0	*
N

Qlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Merge*
_output_shapes
: *
T0	
н
Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/sub*
_output_shapes
: *

DstT0*

SrcT0	
Э
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/Size*
_output_shapes
: *

DstT0*

SrcT0	
Ћ
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ч
Clinear/zero_fraction/total_zero/zero_count_4/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
Љ
4linear/zero_fraction/total_zero/zero_count_4/ToFloatCast;linear/zero_fraction/total_zero/zero_count_4/ToFloat/Switch*
_output_shapes
: *

DstT0*

SrcT0	

;linear/zero_fraction/total_zero/zero_count_4/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_44linear/zero_fraction/total_zero/zero_count_4/pred_id*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_4*
_output_shapes
: : *
T0	
г
0linear/zero_fraction/total_zero/zero_count_4/mulMulClinear/zero_fraction/total_zero/zero_count_4/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_4/ToFloat*
T0*
_output_shapes
: 
Э
2linear/zero_fraction/total_zero/zero_count_4/MergeMerge0linear/zero_fraction/total_zero/zero_count_4/mul2linear/zero_fraction/total_zero/zero_count_4/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_5Const*
value	B	 R *
dtype0	*
_output_shapes
: 
Ђ
'linear/zero_fraction/total_zero/Equal_5Equal&linear/zero_fraction/total_size/Size_5'linear/zero_fraction/total_zero/Const_5*
T0	*
_output_shapes
: 
В
3linear/zero_fraction/total_zero/zero_count_5/SwitchSwitch'linear/zero_fraction/total_zero/Equal_5'linear/zero_fraction/total_zero/Equal_5*
T0
*
_output_shapes
: : 

5linear/zero_fraction/total_zero/zero_count_5/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_5/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_5/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_5/Switch*
_output_shapes
: *
T0


4linear/zero_fraction/total_zero/zero_count_5/pred_idIdentity'linear/zero_fraction/total_zero/Equal_5*
_output_shapes
: *
T0

Џ
2linear/zero_fraction/total_zero/zero_count_5/ConstConst6^linear/zero_fraction/total_zero/zero_count_5/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
к
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:

Ж
Plinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp/SwitchSwitch6linear/linear_model/pickup_longitude_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_5/pred_id*
T0*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*
_output_shapes
: : 
Й
?linear/zero_fraction/total_zero/zero_count_5/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_5/switch_f*
_output_shapes
: *
value	B	 R
*
dtype0	
Ф
Flinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_5/switch_f*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
ћ
Dlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_5/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
џ
Flinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual*
_output_shapes
: : *
T0

П
Hlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

Н
Hlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Switch*
_output_shapes
: *
T0

К
Glinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
у
Slinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
С
Vlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/zeros*
_output_shapes

:
*
T0

]linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp*(
_output_shapes
:
:

ъ
Rlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual*
_output_shapes

:
*

DstT0*

SrcT0

я
Slinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
Ќ
[linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/Const*
_output_shapes
: *
T0
й
Dlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/nonzero_count*
_output_shapes
: *

DstT0	*

SrcT0
х
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
Х
Xlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:


_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id*(
_output_shapes
:
:
*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp
ю
Tlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual*
_output_shapes

:
*

DstT0	*

SrcT0

ё
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
В
]linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	

Elinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 

Qlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_5/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Merge*
_output_shapes
: *
T0	
н
Rlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
Э
Tlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_5/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
Ћ
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ч
Clinear/zero_fraction/total_zero/zero_count_5/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
Љ
4linear/zero_fraction/total_zero/zero_count_5/ToFloatCast;linear/zero_fraction/total_zero/zero_count_5/ToFloat/Switch*
_output_shapes
: *

DstT0*

SrcT0	

;linear/zero_fraction/total_zero/zero_count_5/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_54linear/zero_fraction/total_zero/zero_count_5/pred_id*
_output_shapes
: : *
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_5
г
0linear/zero_fraction/total_zero/zero_count_5/mulMulClinear/zero_fraction/total_zero/zero_count_5/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_5/ToFloat*
T0*
_output_shapes
: 
Э
2linear/zero_fraction/total_zero/zero_count_5/MergeMerge0linear/zero_fraction/total_zero/zero_count_5/mul2linear/zero_fraction/total_zero/zero_count_5/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_6Const*
value	B	 R *
dtype0	*
_output_shapes
: 
Ђ
'linear/zero_fraction/total_zero/Equal_6Equal&linear/zero_fraction/total_size/Size_6'linear/zero_fraction/total_zero/Const_6*
T0	*
_output_shapes
: 
В
3linear/zero_fraction/total_zero/zero_count_6/SwitchSwitch'linear/zero_fraction/total_zero/Equal_6'linear/zero_fraction/total_zero/Equal_6*
T0
*
_output_shapes
: : 

5linear/zero_fraction/total_zero/zero_count_6/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_6/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_6/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_6/Switch*
T0
*
_output_shapes
: 

4linear/zero_fraction/total_zero/zero_count_6/pred_idIdentity'linear/zero_fraction/total_zero/Equal_6*
T0
*
_output_shapes
: 
Џ
2linear/zero_fraction/total_zero/zero_count_6/ConstConst6^linear/zero_fraction/total_zero/zero_count_6/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
к
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp/Switch*
_output_shapes

:*
dtype0
В
Plinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp/SwitchSwitch4linear/linear_model/trip_start_day_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_6/pred_id*
T0*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*
_output_shapes
: : 
Й
?linear/zero_fraction/total_zero/zero_count_6/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_6/switch_f*
value	B	 R*
dtype0	*
_output_shapes
: 
Ф
Flinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_6/switch_f*
dtype0	*
_output_shapes
: *
valueB	 Rџџџџ
ћ
Dlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_6/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual/y*
_output_shapes
: *
T0	
џ
Flinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
П
Hlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

Н
Hlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Switch*
_output_shapes
: *
T0

К
Glinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
у
Slinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
С
Vlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:

]linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp*(
_output_shapes
::
ъ
Rlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
я
Slinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
Ќ
[linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/Const*
_output_shapes
: *
T0
й
Dlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/nonzero_count*
_output_shapes
: *

DstT0	*

SrcT0
х
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
Х
Xlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:

_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp*(
_output_shapes
::
ю
Tlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
ё
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
В
]linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 

Elinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Cast*
N*
_output_shapes
: : *
T0	

Qlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_6/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
н
Rlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/sub*
_output_shapes
: *

DstT0*

SrcT0	
Э
Tlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_6/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
Ћ
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
Ч
Clinear/zero_fraction/total_zero/zero_count_6/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
Љ
4linear/zero_fraction/total_zero/zero_count_6/ToFloatCast;linear/zero_fraction/total_zero/zero_count_6/ToFloat/Switch*
_output_shapes
: *

DstT0*

SrcT0	

;linear/zero_fraction/total_zero/zero_count_6/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_64linear/zero_fraction/total_zero/zero_count_6/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_6*
_output_shapes
: : 
г
0linear/zero_fraction/total_zero/zero_count_6/mulMulClinear/zero_fraction/total_zero/zero_count_6/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_6/ToFloat*
_output_shapes
: *
T0
Э
2linear/zero_fraction/total_zero/zero_count_6/MergeMerge0linear/zero_fraction/total_zero/zero_count_6/mul2linear/zero_fraction/total_zero/zero_count_6/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_7Const*
value	B	 R *
dtype0	*
_output_shapes
: 
Ђ
'linear/zero_fraction/total_zero/Equal_7Equal&linear/zero_fraction/total_size/Size_7'linear/zero_fraction/total_zero/Const_7*
T0	*
_output_shapes
: 
В
3linear/zero_fraction/total_zero/zero_count_7/SwitchSwitch'linear/zero_fraction/total_zero/Equal_7'linear/zero_fraction/total_zero/Equal_7*
T0
*
_output_shapes
: : 

5linear/zero_fraction/total_zero/zero_count_7/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_7/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_7/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_7/Switch*
_output_shapes
: *
T0


4linear/zero_fraction/total_zero/zero_count_7/pred_idIdentity'linear/zero_fraction/total_zero/Equal_7*
T0
*
_output_shapes
: 
Џ
2linear/zero_fraction/total_zero/zero_count_7/ConstConst6^linear/zero_fraction/total_zero/zero_count_7/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
к
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
Д
Plinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp/SwitchSwitch5linear/linear_model/trip_start_hour_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_7/pred_id*
T0*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*
_output_shapes
: : 
Й
?linear/zero_fraction/total_zero/zero_count_7/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_7/switch_f*
value	B	 R*
dtype0	*
_output_shapes
: 
Ф
Flinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_7/switch_f*
_output_shapes
: *
valueB	 Rџџџџ*
dtype0	
ћ
Dlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_7/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
џ
Flinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
П
Hlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

Н
Hlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
К
Glinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
у
Slinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
С
Vlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:

]linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp*(
_output_shapes
::
ъ
Rlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0
я
Slinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
Ќ
[linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
й
Dlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
х
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
Х
Xlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:

_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp*(
_output_shapes
::
ю
Tlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
ё
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
В
]linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 

Elinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Cast*
N*
_output_shapes
: : *
T0	

Qlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_7/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
н
Rlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
Э
Tlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_7/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
Ћ
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ч
Clinear/zero_fraction/total_zero/zero_count_7/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/truediv*
_output_shapes
: *
T0
Љ
4linear/zero_fraction/total_zero/zero_count_7/ToFloatCast;linear/zero_fraction/total_zero/zero_count_7/ToFloat/Switch*
_output_shapes
: *

DstT0*

SrcT0	

;linear/zero_fraction/total_zero/zero_count_7/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_74linear/zero_fraction/total_zero/zero_count_7/pred_id*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_7*
_output_shapes
: : *
T0	
г
0linear/zero_fraction/total_zero/zero_count_7/mulMulClinear/zero_fraction/total_zero/zero_count_7/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_7/ToFloat*
_output_shapes
: *
T0
Э
2linear/zero_fraction/total_zero/zero_count_7/MergeMerge0linear/zero_fraction/total_zero/zero_count_7/mul2linear/zero_fraction/total_zero/zero_count_7/Const*
_output_shapes
: : *
T0*
N
i
'linear/zero_fraction/total_zero/Const_8Const*
value	B	 R *
dtype0	*
_output_shapes
: 
Ђ
'linear/zero_fraction/total_zero/Equal_8Equal&linear/zero_fraction/total_size/Size_8'linear/zero_fraction/total_zero/Const_8*
T0	*
_output_shapes
: 
В
3linear/zero_fraction/total_zero/zero_count_8/SwitchSwitch'linear/zero_fraction/total_zero/Equal_8'linear/zero_fraction/total_zero/Equal_8*
T0
*
_output_shapes
: : 

5linear/zero_fraction/total_zero/zero_count_8/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_8/Switch:1*
_output_shapes
: *
T0


5linear/zero_fraction/total_zero/zero_count_8/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_8/Switch*
T0
*
_output_shapes
: 

4linear/zero_fraction/total_zero/zero_count_8/pred_idIdentity'linear/zero_fraction/total_zero/Equal_8*
T0
*
_output_shapes
: 
Џ
2linear/zero_fraction/total_zero/zero_count_8/ConstConst6^linear/zero_fraction/total_zero/zero_count_8/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
к
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
Ж
Plinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp/SwitchSwitch6linear/linear_model/trip_start_month_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_8/pred_id*
T0*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*
_output_shapes
: : 
Й
?linear/zero_fraction/total_zero/zero_count_8/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_8/switch_f*
value	B	 R*
dtype0	*
_output_shapes
: 
Ф
Flinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_8/switch_f*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
ћ
Dlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_8/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
џ
Flinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual*
_output_shapes
: : *
T0

П
Hlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

Н
Hlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Switch*
_output_shapes
: *
T0

К
Glinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
у
Slinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
С
Vlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:

]linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp*(
_output_shapes
::
ъ
Rlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual*
_output_shapes

:*

DstT0*

SrcT0

я
Slinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
Ќ
[linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
й
Dlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
х
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
Х
Xlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:

_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp*(
_output_shapes
::
ю
Tlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:*

DstT0	
ё
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
В
]linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 

Elinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 

Qlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_8/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
н
Rlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/sub*
_output_shapes
: *

DstT0*

SrcT0	
Э
Tlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_8/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
Ћ
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ч
Clinear/zero_fraction/total_zero/zero_count_8/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/truediv*
_output_shapes
: *
T0
Љ
4linear/zero_fraction/total_zero/zero_count_8/ToFloatCast;linear/zero_fraction/total_zero/zero_count_8/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0

;linear/zero_fraction/total_zero/zero_count_8/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_84linear/zero_fraction/total_zero/zero_count_8/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_8*
_output_shapes
: : 
г
0linear/zero_fraction/total_zero/zero_count_8/mulMulClinear/zero_fraction/total_zero/zero_count_8/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_8/ToFloat*
T0*
_output_shapes
: 
Э
2linear/zero_fraction/total_zero/zero_count_8/MergeMerge0linear/zero_fraction/total_zero/zero_count_8/mul2linear/zero_fraction/total_zero/zero_count_8/Const*
_output_shapes
: : *
T0*
N
Ј
$linear/zero_fraction/total_zero/AddNAddN0linear/zero_fraction/total_zero/zero_count/Merge2linear/zero_fraction/total_zero/zero_count_1/Merge2linear/zero_fraction/total_zero/zero_count_2/Merge2linear/zero_fraction/total_zero/zero_count_3/Merge2linear/zero_fraction/total_zero/zero_count_4/Merge2linear/zero_fraction/total_zero/zero_count_5/Merge2linear/zero_fraction/total_zero/zero_count_6/Merge2linear/zero_fraction/total_zero/zero_count_7/Merge2linear/zero_fraction/total_zero/zero_count_8/Merge*
T0*
N	*
_output_shapes
: 

)linear/zero_fraction/compute/float32_sizeCast$linear/zero_fraction/total_size/AddN*
_output_shapes
: *

DstT0*

SrcT0	
Ё
$linear/zero_fraction/compute/truedivRealDiv$linear/zero_fraction/total_zero/AddN)linear/zero_fraction/compute/float32_size*
T0*
_output_shapes
: 
|
)linear/zero_fraction/zero_fraction_or_nanIdentity$linear/zero_fraction/compute/truediv*
_output_shapes
: *
T0

$linear/fraction_of_zero_weights/tagsConst*0
value'B% Blinear/fraction_of_zero_weights*
dtype0*
_output_shapes
: 
Ђ
linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tags)linear/zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 

linear/zero_fraction_1/SizeSize:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*
out_type0	*
_output_shapes
: 
h
"linear/zero_fraction_1/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 

 linear/zero_fraction_1/LessEqual	LessEquallinear/zero_fraction_1/Size"linear/zero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 

"linear/zero_fraction_1/cond/SwitchSwitch linear/zero_fraction_1/LessEqual linear/zero_fraction_1/LessEqual*
T0
*
_output_shapes
: : 
w
$linear/zero_fraction_1/cond/switch_tIdentity$linear/zero_fraction_1/cond/Switch:1*
T0
*
_output_shapes
: 
u
$linear/zero_fraction_1/cond/switch_fIdentity"linear/zero_fraction_1/cond/Switch*
_output_shapes
: *
T0

r
#linear/zero_fraction_1/cond/pred_idIdentity linear/zero_fraction_1/LessEqual*
_output_shapes
: *
T0


/linear/zero_fraction_1/cond/count_nonzero/zerosConst%^linear/zero_fraction_1/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
о
2linear/zero_fraction_1/cond/count_nonzero/NotEqualNotEqual;linear/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1/linear/zero_fraction_1/cond/count_nonzero/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
И
9linear/zero_fraction_1/cond/count_nonzero/NotEqual/SwitchSwitch:linear/linear_model/linear_model/linear_model/weighted_sum#linear/zero_fraction_1/cond/pred_id*
T0*M
_classC
A?loc:@linear/linear_model/linear_model/linear_model/weighted_sum*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
Ћ
.linear/zero_fraction_1/cond/count_nonzero/CastCast2linear/zero_fraction_1/cond/count_nonzero/NotEqual*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

Ї
/linear/zero_fraction_1/cond/count_nonzero/ConstConst%^linear/zero_fraction_1/cond/switch_t*
dtype0*
_output_shapes
:*
valueB"       
Р
7linear/zero_fraction_1/cond/count_nonzero/nonzero_countSum.linear/zero_fraction_1/cond/count_nonzero/Cast/linear/zero_fraction_1/cond/count_nonzero/Const*
T0*
_output_shapes
: 

 linear/zero_fraction_1/cond/CastCast7linear/zero_fraction_1/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	

1linear/zero_fraction_1/cond/count_nonzero_1/zerosConst%^linear/zero_fraction_1/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
т
4linear/zero_fraction_1/cond/count_nonzero_1/NotEqualNotEqual;linear/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch1linear/zero_fraction_1/cond/count_nonzero_1/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
К
;linear/zero_fraction_1/cond/count_nonzero_1/NotEqual/SwitchSwitch:linear/linear_model/linear_model/linear_model/weighted_sum#linear/zero_fraction_1/cond/pred_id*
T0*M
_classC
A?loc:@linear/linear_model/linear_model/linear_model/weighted_sum*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
Џ
0linear/zero_fraction_1/cond/count_nonzero_1/CastCast4linear/zero_fraction_1/cond/count_nonzero_1/NotEqual*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0	
Љ
1linear/zero_fraction_1/cond/count_nonzero_1/ConstConst%^linear/zero_fraction_1/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
Ц
9linear/zero_fraction_1/cond/count_nonzero_1/nonzero_countSum0linear/zero_fraction_1/cond/count_nonzero_1/Cast1linear/zero_fraction_1/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
Г
!linear/zero_fraction_1/cond/MergeMerge9linear/zero_fraction_1/cond/count_nonzero_1/nonzero_count linear/zero_fraction_1/cond/Cast*
T0	*
N*
_output_shapes
: : 

-linear/zero_fraction_1/counts_to_fraction/subSublinear/zero_fraction_1/Size!linear/zero_fraction_1/cond/Merge*
T0	*
_output_shapes
: 

.linear/zero_fraction_1/counts_to_fraction/CastCast-linear/zero_fraction_1/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0

0linear/zero_fraction_1/counts_to_fraction/Cast_1Castlinear/zero_fraction_1/Size*
_output_shapes
: *

DstT0*

SrcT0	
П
1linear/zero_fraction_1/counts_to_fraction/truedivRealDiv.linear/zero_fraction_1/counts_to_fraction/Cast0linear/zero_fraction_1/counts_to_fraction/Cast_1*
_output_shapes
: *
T0

linear/zero_fraction_1/fractionIdentity1linear/zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 

*linear/linear/fraction_of_zero_values/tagsConst*6
value-B+ B%linear/linear/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Є
%linear/linear/fraction_of_zero_valuesScalarSummary*linear/linear/fraction_of_zero_values/tagslinear/zero_fraction_1/fraction*
T0*
_output_shapes
: 
u
linear/linear/activation/tagConst*
_output_shapes
: *)
value B Blinear/linear/activation*
dtype0

linear/linear/activationHistogramSummarylinear/linear/activation/tag:linear/linear_model/linear_model/linear_model/weighted_sum*
_output_shapes
: 

addAddV2dnn/logits/BiasAdd:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*'
_output_shapes
:џџџџџџџџџ
P
head/predictions/logits/ShapeShapeadd*
_output_shapes
:*
T0
s
1head/predictions/logits/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
c
[head/predictions/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
T
Lhead/predictions/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
[
head/predictions/logisticSigmoidadd*
T0*'
_output_shapes
:џџџџџџџџџ
_
head/predictions/zeros_like	ZerosLikeadd*'
_output_shapes
:џџџџџџџџџ*
T0
q
&head/predictions/two_class_logits/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
В
!head/predictions/two_class_logitsConcatV2head/predictions/zeros_likeadd&head/predictions/two_class_logits/axis*
T0*
N*'
_output_shapes
:џџџџџџџџџ
~
head/predictions/probabilitiesSoftmax!head/predictions/two_class_logits*'
_output_shapes
:џџџџџџџџџ*
T0
o
$head/predictions/class_ids/dimensionConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

head/predictions/class_idsArgMax!head/predictions/two_class_logits$head/predictions/class_ids/dimension*
T0*#
_output_shapes
:џџџџџџџџџ
j
head/predictions/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

head/predictions/ExpandDims
ExpandDimshead/predictions/class_idshead/predictions/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*
T0	
I
head/predictions/ShapeShapeadd*
_output_shapes
:*
T0
n
$head/predictions/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
p
&head/predictions/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
p
&head/predictions/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

head/predictions/strided_sliceStridedSlicehead/predictions/Shape$head/predictions/strided_slice/stack&head/predictions/strided_slice/stack_1&head/predictions/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
^
head/predictions/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
^
head/predictions/range/limitConst*
value	B :*
dtype0*
_output_shapes
: 
^
head/predictions/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

head/predictions/rangeRangehead/predictions/range/starthead/predictions/range/limithead/predictions/range/delta*
_output_shapes
:
c
!head/predictions/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 

head/predictions/ExpandDims_1
ExpandDimshead/predictions/range!head/predictions/ExpandDims_1/dim*
T0*
_output_shapes

:
c
!head/predictions/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 

head/predictions/Tile/multiplesPackhead/predictions/strided_slice!head/predictions/Tile/multiples/1*
T0*
N*
_output_shapes
:

head/predictions/TileTilehead/predictions/ExpandDims_1head/predictions/Tile/multiples*'
_output_shapes
:џџџџџџџџџ*
T0
K
head/predictions/Shape_1Shapeadd*
_output_shapes
:*
T0
p
&head/predictions/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(head/predictions/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(head/predictions/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

 head/predictions/strided_slice_1StridedSlicehead/predictions/Shape_1&head/predictions/strided_slice_1/stack(head/predictions/strided_slice_1/stack_1(head/predictions/strided_slice_1/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
`
head/predictions/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
`
head/predictions/range_1/limitConst*
_output_shapes
: *
value	B :*
dtype0
`
head/predictions/range_1/deltaConst*
_output_shapes
: *
value	B :*
dtype0

head/predictions/range_1Rangehead/predictions/range_1/starthead/predictions/range_1/limithead/predictions/range_1/delta*
_output_shapes
:
d
head/predictions/AsStringAsStringhead/predictions/range_1*
T0*
_output_shapes
:
c
!head/predictions/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 

head/predictions/ExpandDims_2
ExpandDimshead/predictions/AsString!head/predictions/ExpandDims_2/dim*
_output_shapes

:*
T0
e
#head/predictions/Tile_1/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 

!head/predictions/Tile_1/multiplesPack head/predictions/strided_slice_1#head/predictions/Tile_1/multiples/1*
_output_shapes
:*
T0*
N

head/predictions/Tile_1Tilehead/predictions/ExpandDims_2!head/predictions/Tile_1/multiples*'
_output_shapes
:џџџџџџџџџ*
T0
w
head/predictions/str_classesAsStringhead/predictions/ExpandDims*
T0	*'
_output_shapes
:џџџџџџџџџ
e
head/labels/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

head/labels/ExpandDims
ExpandDimsIdentity_71head/labels/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
W
head/labels/ShapeShapehead/labels/ExpandDims*
T0	*
_output_shapes
:
F
head/labels/Shape_1Shapeadd*
T0*
_output_shapes
:
g
%head/labels/assert_rank_at_least/rankConst*
_output_shapes
: *
value	B :*
dtype0
l
&head/labels/assert_rank_at_least/ShapeShapehead/labels/ExpandDims*
_output_shapes
:*
T0	
W
Ohead/labels/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
H
@head/labels/assert_rank_at_least/static_checks_determined_all_okNoOp
Ќ
head/labels/strided_slice/stackConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB: *
dtype0*
_output_shapes
:
З
!head/labels/strided_slice/stack_1ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ў
!head/labels/strided_slice/stack_2ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
valueB:*
dtype0
щ
head/labels/strided_sliceStridedSlicehead/labels/Shape_1head/labels/strided_slice/stack!head/labels/strided_slice/stack_1!head/labels/strided_slice/stack_2*
_output_shapes
:*

begin_mask*
Index0*
T0
Ј
head/labels/concat/values_1ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
:*
valueB:

head/labels/concat/axisConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
: *
value	B : 

head/labels/concatConcatV2head/labels/strided_slicehead/labels/concat/values_1head/labels/concat/axis*
_output_shapes
:*
T0*
N
u
 head/labels/assert_equal_1/EqualEqualhead/labels/concathead/labels/Shape*
T0*
_output_shapes
:
­
 head/labels/assert_equal_1/ConstConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB: *
dtype0*
_output_shapes
:

head/labels/assert_equal_1/AllAll head/labels/assert_equal_1/Equal head/labels/assert_equal_1/Const*
_output_shapes
: 
Ж
'head/labels/assert_equal_1/Assert/ConstConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB Blabels shape must be [D0, D1, ... DN, 1]. Suggested Fix: check your n_classes argument to the estimator and/or the shape of your label.*
dtype0*
_output_shapes
: 
Ф
)head/labels/assert_equal_1/Assert/Const_1ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
Л
)head/labels/assert_equal_1/Assert/Const_2ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB Blabels_shape: *
dtype0*
_output_shapes
: 
О
/head/labels/assert_equal_1/Assert/Assert/data_0ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB Blabels shape must be [D0, D1, ... DN, 1]. Suggested Fix: check your n_classes argument to the estimator and/or the shape of your label.*
dtype0*
_output_shapes
: 
Ъ
/head/labels/assert_equal_1/Assert/Assert/data_1ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
С
/head/labels/assert_equal_1/Assert/Assert/data_3ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
valueB Blabels_shape: *
dtype0

(head/labels/assert_equal_1/Assert/AssertAsserthead/labels/assert_equal_1/All/head/labels/assert_equal_1/Assert/Assert/data_0/head/labels/assert_equal_1/Assert/Assert/data_1head/labels/concat/head/labels/assert_equal_1/Assert/Assert/data_3head/labels/Shape*
T	
2
Я
head/labelsIdentityhead/labels/ExpandDims)^head/labels/assert_equal_1/Assert/AssertA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
T0	*'
_output_shapes
:џџџџџџџџџ
b
head/ToFloatCasthead/labels*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
\
head/assert_range/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

-head/assert_range/assert_less_equal/LessEqual	LessEqualhead/ToFloathead/assert_range/Const*'
_output_shapes
:џџџџџџџџџ*
T0
z
)head/assert_range/assert_less_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
 
'head/assert_range/assert_less_equal/AllAll-head/assert_range/assert_less_equal/LessEqual)head/assert_range/assert_less_equal/Const*
_output_shapes
: 

0head/assert_range/assert_less_equal/Assert/ConstConst*-
value$B" BLabels must <= n_classes - 1*
dtype0*
_output_shapes
: 

2head/assert_range/assert_less_equal/Assert/Const_1Const*<
value3B1 B+Condition x <= y did not hold element-wise:*
dtype0*
_output_shapes
: 

2head/assert_range/assert_less_equal/Assert/Const_2Const*&
valueB Bx (head/ToFloat:0) = *
dtype0*
_output_shapes
: 

2head/assert_range/assert_less_equal/Assert/Const_3Const*1
value(B& B y (head/assert_range/Const:0) = *
dtype0*
_output_shapes
: 
М
=head/assert_range/assert_less_equal/Assert/AssertGuard/SwitchSwitch'head/assert_range/assert_less_equal/All'head/assert_range/assert_less_equal/All*
T0
*
_output_shapes
: : 
­
?head/assert_range/assert_less_equal/Assert/AssertGuard/switch_tIdentity?head/assert_range/assert_less_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Ћ
?head/assert_range/assert_less_equal/Assert/AssertGuard/switch_fIdentity=head/assert_range/assert_less_equal/Assert/AssertGuard/Switch*
_output_shapes
: *
T0


>head/assert_range/assert_less_equal/Assert/AssertGuard/pred_idIdentity'head/assert_range/assert_less_equal/All*
_output_shapes
: *
T0


;head/assert_range/assert_less_equal/Assert/AssertGuard/NoOpNoOp@^head/assert_range/assert_less_equal/Assert/AssertGuard/switch_t
Щ
Ihead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependencyIdentity?head/assert_range/assert_less_equal/Assert/AssertGuard/switch_t<^head/assert_range/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*R
_classH
FDloc:@head/assert_range/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
у
Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_0Const@^head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f*-
value$B" BLabels must <= n_classes - 1*
dtype0*
_output_shapes
: 
ђ
Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_1Const@^head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f*
dtype0*
_output_shapes
: *<
value3B1 B+Condition x <= y did not hold element-wise:
м
Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_2Const@^head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f*&
valueB Bx (head/ToFloat:0) = *
dtype0*
_output_shapes
: 
ч
Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_4Const@^head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f*1
value(B& B y (head/assert_range/Const:0) = *
dtype0*
_output_shapes
: 
Ц
=head/assert_range/assert_less_equal/Assert/AssertGuard/AssertAssertDhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/SwitchDhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_0Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_1Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_2Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_4Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_2*
T

2

Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch'head/assert_range/assert_less_equal/All>head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id*
_output_shapes
: : *
T0
*:
_class0
.,loc:@head/assert_range/assert_less_equal/All

Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/ToFloat>head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id*
T0*
_class
loc:@head/ToFloat*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
ј
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_2Switchhead/assert_range/Const>head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id*
T0**
_class 
loc:@head/assert_range/Const*
_output_shapes
: : 
Э
Khead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependency_1Identity?head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f>^head/assert_range/assert_less_equal/Assert/AssertGuard/Assert*
T0
*R
_classH
FDloc:@head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 

<head/assert_range/assert_less_equal/Assert/AssertGuard/MergeMergeKhead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependency_1Ihead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
p
+head/assert_range/assert_non_negative/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Л
Ahead/assert_range/assert_non_negative/assert_less_equal/LessEqual	LessEqual+head/assert_range/assert_non_negative/Consthead/ToFloat*
T0*'
_output_shapes
:џџџџџџџџџ

=head/assert_range/assert_non_negative/assert_less_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
м
;head/assert_range/assert_non_negative/assert_less_equal/AllAllAhead/assert_range/assert_non_negative/assert_less_equal/LessEqual=head/assert_range/assert_non_negative/assert_less_equal/Const*
_output_shapes
: 

Dhead/assert_range/assert_non_negative/assert_less_equal/Assert/ConstConst*!
valueB BLabels must >= 0*
dtype0*
_output_shapes
: 
В
Fhead/assert_range/assert_non_negative/assert_less_equal/Assert/Const_1Const*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 

Fhead/assert_range/assert_non_negative/assert_less_equal/Assert/Const_2Const*&
valueB Bx (head/ToFloat:0) = *
dtype0*
_output_shapes
: 
ј
Qhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/SwitchSwitch;head/assert_range/assert_non_negative/assert_less_equal/All;head/assert_range/assert_non_negative/assert_less_equal/All*
_output_shapes
: : *
T0

е
Shead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tIdentityShead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch:1*
_output_shapes
: *
T0

г
Shead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fIdentityQhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch*
_output_shapes
: *
T0

М
Rhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_idIdentity;head/assert_range/assert_non_negative/assert_less_equal/All*
_output_shapes
: *
T0

­
Ohead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpT^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t

]head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependencyIdentityShead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tP^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*f
_class\
ZXloc:@head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
џ
Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0ConstT^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*!
valueB BLabels must >= 0*
dtype0*
_output_shapes
: 

Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1ConstT^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 

Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2ConstT^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*
dtype0*
_output_shapes
: *&
valueB Bx (head/ToFloat:0) = 
Ў
Qhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssertXhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchXhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1*
T
2
ц
Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch;head/assert_range/assert_non_negative/assert_less_equal/AllRhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id*
T0
*N
_classD
B@loc:@head/assert_range/assert_non_negative/assert_less_equal/All*
_output_shapes
: : 
Ќ
Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/ToFloatRhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*
T0*
_class
loc:@head/ToFloat

_head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentityShead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fR^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
_output_shapes
: *
T0
*f
_class\
ZXloc:@head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f
Х
Phead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/MergeMerge_head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1]head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
ј
head/assert_range/IdentityIdentityhead/ToFloat=^head/assert_range/assert_less_equal/Assert/AssertGuard/MergeQ^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Merge*
T0*'
_output_shapes
:џџџџџџџџџ
a
head/logistic_loss/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:џџџџџџџџџ

head/logistic_loss/GreaterEqualGreaterEqualaddhead/logistic_loss/zeros_like*'
_output_shapes
:џџџџџџџџџ*
T0

head/logistic_loss/SelectSelecthead/logistic_loss/GreaterEqualaddhead/logistic_loss/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ
T
head/logistic_loss/NegNegadd*
T0*'
_output_shapes
:џџџџџџџџџ

head/logistic_loss/Select_1Selecthead/logistic_loss/GreaterEqualhead/logistic_loss/Negadd*'
_output_shapes
:џџџџџџџџџ*
T0
p
head/logistic_loss/mulMuladdhead/assert_range/Identity*
T0*'
_output_shapes
:џџџџџџџџџ

head/logistic_loss/subSubhead/logistic_loss/Selecthead/logistic_loss/mul*
T0*'
_output_shapes
:џџџџџџџџџ
l
head/logistic_loss/ExpExphead/logistic_loss/Select_1*
T0*'
_output_shapes
:џџџџџџџџџ
k
head/logistic_loss/Log1pLog1phead/logistic_loss/Exp*'
_output_shapes
:џџџџџџџџџ*
T0
}
head/logistic_lossAddhead/logistic_loss/subhead/logistic_loss/Log1p*
T0*'
_output_shapes
:џџџџџџџџџ
t
/head/weighted_loss/assert_broadcastable/weightsConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
x
5head/weighted_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
v
4head/weighted_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
v
4head/weighted_loss/assert_broadcastable/values/shapeShapehead/logistic_loss*
T0*
_output_shapes
:
u
3head/weighted_loss/assert_broadcastable/values/rankConst*
_output_shapes
: *
value	B :*
dtype0
K
Chead/weighted_loss/assert_broadcastable/static_scalar_check_successNoOp
Є
head/weighted_loss/Cast/xConstD^head/weighted_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
~
head/weighted_loss/MulMulhead/logistic_losshead/weighted_loss/Cast/x*'
_output_shapes
:џџџџџџџџџ*
T0
Џ
head/weighted_loss/ConstConstD^head/weighted_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
:*
valueB"       
p
head/weighted_loss/SumSumhead/weighted_loss/Mulhead/weighted_loss/Const*
_output_shapes
: *
T0
q
,metrics/label/mean/broadcast_weights/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Gmetrics/label/mean/broadcast_weights/assert_broadcastable/weights/shapeConst*
dtype0*
_output_shapes
: *
valueB 

Fmetrics/label/mean/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

Fmetrics/label/mean/broadcast_weights/assert_broadcastable/values/shapeShapehead/assert_range/Identity*
_output_shapes
:*
T0

Emetrics/label/mean/broadcast_weights/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
]
Umetrics/label/mean/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
ж
4metrics/label/mean/broadcast_weights/ones_like/ShapeShapehead/assert_range/IdentityV^metrics/label/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
б
4metrics/label/mean/broadcast_weights/ones_like/ConstConstV^metrics/label/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
д
.metrics/label/mean/broadcast_weights/ones_likeFill4metrics/label/mean/broadcast_weights/ones_like/Shape4metrics/label/mean/broadcast_weights/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
Л
$metrics/label/mean/broadcast_weightsMul,metrics/label/mean/broadcast_weights/weights.metrics/label/mean/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ

*metrics/label/mean/total/Initializer/zerosConst*
valueB
 *    *+
_class!
loc:@metrics/label/mean/total*
dtype0*
_output_shapes
: 

metrics/label/mean/total
VariableV2*
shape: *+
_class!
loc:@metrics/label/mean/total*
dtype0*
_output_shapes
: 
Н
metrics/label/mean/total/AssignAssignmetrics/label/mean/total*metrics/label/mean/total/Initializer/zeros*
T0*+
_class!
loc:@metrics/label/mean/total*
_output_shapes
: 

metrics/label/mean/total/readIdentitymetrics/label/mean/total*
T0*+
_class!
loc:@metrics/label/mean/total*
_output_shapes
: 

*metrics/label/mean/count/Initializer/zerosConst*
valueB
 *    *+
_class!
loc:@metrics/label/mean/count*
dtype0*
_output_shapes
: 

metrics/label/mean/count
VariableV2*+
_class!
loc:@metrics/label/mean/count*
dtype0*
_output_shapes
: *
shape: 
Н
metrics/label/mean/count/AssignAssignmetrics/label/mean/count*metrics/label/mean/count/Initializer/zeros*+
_class!
loc:@metrics/label/mean/count*
_output_shapes
: *
T0

metrics/label/mean/count/readIdentitymetrics/label/mean/count*+
_class!
loc:@metrics/label/mean/count*
_output_shapes
: *
T0

Imetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shapeShape$metrics/label/mean/broadcast_weights*
T0*
_output_shapes
:

Hmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Hmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shapeShapehead/assert_range/Identity*
T0*
_output_shapes
:

Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 

Emetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalarEqualGmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xHmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/SwitchSwitchEmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalarEmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
е
Smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_tIdentitySmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
г
Smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_fIdentityQmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Ц
Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_idIdentityEmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
ѕ
Smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1SwitchEmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalarRmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0
*X
_classN
LJloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar

qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualxmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchzmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 

xmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchGmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/rankRmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*Z
_classP
NLloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/values/rank*
_output_shapes
: : *
T0
Ђ
zmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchHmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rankRmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*[
_classQ
OMloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rank*
_output_shapes
: : 
ў
kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchqmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankqmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitymmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 

mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentitykmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0


lmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityqmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
Р
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Э
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
T0*
_output_shapes

:
И
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchHmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shapeRmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*[
_classQ
OMloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::

metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchlmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*[
_classQ
OMloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
Ч
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
:*
valueB"      
И
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Р
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapemetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*
_output_shapes

:
Д
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
value	B :*
dtype0
Т
|metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likemetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*
_output_shapes

:*
T0
Т
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
г
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:
М
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchImetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shapeRmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*\
_classR
PNloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::

metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchlmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*\
_classR
PNloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::

metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1|metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b
У
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizemetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
_output_shapes
: 
Љ
wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B : 
Ё
umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualwmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
_output_shapes
: *
T0

mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchqmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranklmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_output_shapes
: : *
T0
*
_classz
xvloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank

jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergemmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
Ш
Pmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeMergejmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeUmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
Љ
Ametrics/label/mean/broadcast_weights_1/assert_broadcastable/ConstConst*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.

Cmetrics/label/mean/broadcast_weights_1/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
Њ
Cmetrics/label/mean/broadcast_weights_1/assert_broadcastable/Const_2Const*
_output_shapes
: *7
value.B, B&metrics/label/mean/broadcast_weights:0*
dtype0

Cmetrics/label/mean/broadcast_weights_1/assert_broadcastable/Const_3Const*
_output_shapes
: *
valueB Bvalues.shape=*
dtype0
 
Cmetrics/label/mean/broadcast_weights_1/assert_broadcastable/Const_4Const*-
value$B" Bhead/assert_range/Identity:0*
dtype0*
_output_shapes
: 

Cmetrics/label/mean/broadcast_weights_1/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/SwitchSwitchPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergePmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
Я
Pmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tIdentityPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Э
Pmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fIdentityNmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch*
_output_shapes
: *
T0

Ю
Ometrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_idIdentityPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: *
T0

Ї
Lmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOpNoOpQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t

Zmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependencyIdentityPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tM^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOp*c
_classY
WUloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: *
T0


Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
ї
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *7
value.B, B&metrics/label/mean/broadcast_weights:0*
dtype0
і
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 

Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *-
value$B" Bhead/assert_range/Identity:0*
dtype0
ѓ
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB B
is_scalar=
и
Nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/AssertAssertUmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchUmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	


Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchSwitchPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeOmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*c
_classY
WUloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 

Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchImetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shapeOmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*\
_classR
PNloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::*
T0

Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchHmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shapeOmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*[
_classQ
OMloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
і
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchEmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalarOmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*X
_classN
LJloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 

\metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1IdentityPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fO^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert*
_output_shapes
: *
T0
*c
_classY
WUloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f
М
Mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/MergeMerge\metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1Zmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
а
6metrics/label/mean/broadcast_weights_1/ones_like/ShapeShapehead/assert_range/IdentityN^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
T0*
_output_shapes
:
Ы
6metrics/label/mean/broadcast_weights_1/ones_like/ConstConstN^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *  ?
к
0metrics/label/mean/broadcast_weights_1/ones_likeFill6metrics/label/mean/broadcast_weights_1/ones_like/Shape6metrics/label/mean/broadcast_weights_1/ones_like/Const*'
_output_shapes
:џџџџџџџџџ*
T0
З
&metrics/label/mean/broadcast_weights_1Mul$metrics/label/mean/broadcast_weights0metrics/label/mean/broadcast_weights_1/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ

metrics/label/mean/MulMulhead/assert_range/Identity&metrics/label/mean/broadcast_weights_1*
T0*'
_output_shapes
:џџџџџџџџџ
i
metrics/label/mean/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

metrics/label/mean/SumSum&metrics/label/mean/broadcast_weights_1metrics/label/mean/Const*
T0*
_output_shapes
: 
k
metrics/label/mean/Const_1Const*
_output_shapes
:*
valueB"       *
dtype0
t
metrics/label/mean/Sum_1Summetrics/label/mean/Mulmetrics/label/mean/Const_1*
T0*
_output_shapes
: 
Ћ
metrics/label/mean/AssignAdd	AssignAddmetrics/label/mean/totalmetrics/label/mean/Sum_1*
_output_shapes
: *
T0*+
_class!
loc:@metrics/label/mean/total
Ф
metrics/label/mean/AssignAdd_1	AssignAddmetrics/label/mean/countmetrics/label/mean/Sum^metrics/label/mean/Mul*
_output_shapes
: *
T0*+
_class!
loc:@metrics/label/mean/count
a
metrics/label/mean/Maximum/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/label/mean/MaximumMaximummetrics/label/mean/count/readmetrics/label/mean/Maximum/y*
_output_shapes
: *
T0

metrics/label/mean/valueDivNoNanmetrics/label/mean/total/readmetrics/label/mean/Maximum*
T0*
_output_shapes
: 
c
metrics/label/mean/Maximum_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *    

metrics/label/mean/Maximum_1Maximummetrics/label/mean/AssignAdd_1metrics/label/mean/Maximum_1/y*
T0*
_output_shapes
: 

metrics/label/mean/update_opDivNoNanmetrics/label/mean/AssignAddmetrics/label/mean/Maximum_1*
T0*
_output_shapes
: 
 
,metrics/average_loss/total/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *-
_class#
!loc:@metrics/average_loss/total*
dtype0

metrics/average_loss/total
VariableV2*-
_class#
!loc:@metrics/average_loss/total*
dtype0*
_output_shapes
: *
shape: 
Х
!metrics/average_loss/total/AssignAssignmetrics/average_loss/total,metrics/average_loss/total/Initializer/zeros*
_output_shapes
: *
T0*-
_class#
!loc:@metrics/average_loss/total

metrics/average_loss/total/readIdentitymetrics/average_loss/total*
_output_shapes
: *
T0*-
_class#
!loc:@metrics/average_loss/total
 
,metrics/average_loss/count/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *-
_class#
!loc:@metrics/average_loss/count*
dtype0

metrics/average_loss/count
VariableV2*-
_class#
!loc:@metrics/average_loss/count*
dtype0*
_output_shapes
: *
shape: 
Х
!metrics/average_loss/count/AssignAssignmetrics/average_loss/count,metrics/average_loss/count/Initializer/zeros*
T0*-
_class#
!loc:@metrics/average_loss/count*
_output_shapes
: 

metrics/average_loss/count/readIdentitymetrics/average_loss/count*
T0*-
_class#
!loc:@metrics/average_loss/count*
_output_shapes
: 
_
metrics/average_loss/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Imetrics/average_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Hmetrics/average_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
_output_shapes
: *
value	B : *
dtype0

Hmetrics/average_loss/broadcast_weights/assert_broadcastable/values/shapeShapehead/logistic_loss*
T0*
_output_shapes
:

Gmetrics/average_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
_
Wmetrics/average_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
в
6metrics/average_loss/broadcast_weights/ones_like/ShapeShapehead/logistic_lossX^metrics/average_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0
е
6metrics/average_loss/broadcast_weights/ones_like/ConstConstX^metrics/average_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
к
0metrics/average_loss/broadcast_weights/ones_likeFill6metrics/average_loss/broadcast_weights/ones_like/Shape6metrics/average_loss/broadcast_weights/ones_like/Const*'
_output_shapes
:џџџџџџџџџ*
T0
­
&metrics/average_loss/broadcast_weightsMulmetrics/average_loss/Const0metrics/average_loss/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ

metrics/average_loss/MulMulhead/logistic_loss&metrics/average_loss/broadcast_weights*
T0*'
_output_shapes
:џџџџџџџџџ
m
metrics/average_loss/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:

metrics/average_loss/SumSum&metrics/average_loss/broadcast_weightsmetrics/average_loss/Const_1*
T0*
_output_shapes
: 
m
metrics/average_loss/Const_2Const*
dtype0*
_output_shapes
:*
valueB"       
z
metrics/average_loss/Sum_1Summetrics/average_loss/Mulmetrics/average_loss/Const_2*
_output_shapes
: *
T0
Г
metrics/average_loss/AssignAdd	AssignAddmetrics/average_loss/totalmetrics/average_loss/Sum_1*
_output_shapes
: *
T0*-
_class#
!loc:@metrics/average_loss/total
Ю
 metrics/average_loss/AssignAdd_1	AssignAddmetrics/average_loss/countmetrics/average_loss/Sum^metrics/average_loss/Mul*
T0*-
_class#
!loc:@metrics/average_loss/count*
_output_shapes
: 
c
metrics/average_loss/Maximum/yConst*
_output_shapes
: *
valueB
 *    *
dtype0

metrics/average_loss/MaximumMaximummetrics/average_loss/count/readmetrics/average_loss/Maximum/y*
_output_shapes
: *
T0

metrics/average_loss/valueDivNoNanmetrics/average_loss/total/readmetrics/average_loss/Maximum*
T0*
_output_shapes
: 
e
 metrics/average_loss/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/average_loss/Maximum_1Maximum metrics/average_loss/AssignAdd_1 metrics/average_loss/Maximum_1/y*
T0*
_output_shapes
: 

metrics/average_loss/update_opDivNoNanmetrics/average_loss/AssignAddmetrics/average_loss/Maximum_1*
_output_shapes
: *
T0
R
metrics/ConstConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
r
metrics/CastCasthead/predictions/ExpandDims*

SrcT0	*'
_output_shapes
:џџџџџџџџџ*

DstT0
r
metrics/EqualEqualmetrics/Casthead/assert_range/Identity*'
_output_shapes
:џџџџџџџџџ*
T0
f
metrics/Cast_1Castmetrics/Equal*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0


(metrics/accuracy/total/Initializer/zerosConst*
valueB
 *    *)
_class
loc:@metrics/accuracy/total*
dtype0*
_output_shapes
: 

metrics/accuracy/total
VariableV2*
shape: *)
_class
loc:@metrics/accuracy/total*
dtype0*
_output_shapes
: 
Е
metrics/accuracy/total/AssignAssignmetrics/accuracy/total(metrics/accuracy/total/Initializer/zeros*
T0*)
_class
loc:@metrics/accuracy/total*
_output_shapes
: 

metrics/accuracy/total/readIdentitymetrics/accuracy/total*
T0*)
_class
loc:@metrics/accuracy/total*
_output_shapes
: 

(metrics/accuracy/count/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *)
_class
loc:@metrics/accuracy/count

metrics/accuracy/count
VariableV2*)
_class
loc:@metrics/accuracy/count*
dtype0*
_output_shapes
: *
shape: 
Е
metrics/accuracy/count/AssignAssignmetrics/accuracy/count(metrics/accuracy/count/Initializer/zeros*
_output_shapes
: *
T0*)
_class
loc:@metrics/accuracy/count

metrics/accuracy/count/readIdentitymetrics/accuracy/count*
T0*)
_class
loc:@metrics/accuracy/count*
_output_shapes
: 

Emetrics/accuracy/broadcast_weights/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
valueB *
dtype0

Dmetrics/accuracy/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

Dmetrics/accuracy/broadcast_weights/assert_broadcastable/values/shapeShapemetrics/Cast_1*
T0*
_output_shapes
:

Cmetrics/accuracy/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
[
Smetrics/accuracy/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
Ц
2metrics/accuracy/broadcast_weights/ones_like/ShapeShapemetrics/Cast_1T^metrics/accuracy/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Э
2metrics/accuracy/broadcast_weights/ones_like/ConstConstT^metrics/accuracy/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ю
,metrics/accuracy/broadcast_weights/ones_likeFill2metrics/accuracy/broadcast_weights/ones_like/Shape2metrics/accuracy/broadcast_weights/ones_like/Const*'
_output_shapes
:џџџџџџџџџ*
T0

"metrics/accuracy/broadcast_weightsMulmetrics/Const,metrics/accuracy/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ

metrics/accuracy/MulMulmetrics/Cast_1"metrics/accuracy/broadcast_weights*'
_output_shapes
:џџџџџџџџџ*
T0
g
metrics/accuracy/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
x
metrics/accuracy/SumSum"metrics/accuracy/broadcast_weightsmetrics/accuracy/Const*
_output_shapes
: *
T0
i
metrics/accuracy/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
n
metrics/accuracy/Sum_1Summetrics/accuracy/Mulmetrics/accuracy/Const_1*
_output_shapes
: *
T0
Ѓ
metrics/accuracy/AssignAdd	AssignAddmetrics/accuracy/totalmetrics/accuracy/Sum_1*
_output_shapes
: *
T0*)
_class
loc:@metrics/accuracy/total
К
metrics/accuracy/AssignAdd_1	AssignAddmetrics/accuracy/countmetrics/accuracy/Sum^metrics/accuracy/Mul*
_output_shapes
: *
T0*)
_class
loc:@metrics/accuracy/count
_
metrics/accuracy/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
}
metrics/accuracy/MaximumMaximummetrics/accuracy/count/readmetrics/accuracy/Maximum/y*
T0*
_output_shapes
: 
z
metrics/accuracy/valueDivNoNanmetrics/accuracy/total/readmetrics/accuracy/Maximum*
T0*
_output_shapes
: 
a
metrics/accuracy/Maximum_1/yConst*
_output_shapes
: *
valueB
 *    *
dtype0

metrics/accuracy/Maximum_1Maximummetrics/accuracy/AssignAdd_1metrics/accuracy/Maximum_1/y*
T0*
_output_shapes
: 

metrics/accuracy/update_opDivNoNanmetrics/accuracy/AssignAddmetrics/accuracy/Maximum_1*
T0*
_output_shapes
: 
|
metrics/precision/CastCasthead/predictions/ExpandDims*

SrcT0	*'
_output_shapes
:џџџџџџџџџ*

DstT0

}
metrics/precision/Cast_1Casthead/assert_range/Identity*'
_output_shapes
:џџџџџџџџџ*

DstT0
*

SrcT0
\
metrics/precision/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
j
(metrics/precision/true_positives/Equal/yConst*
dtype0
*
_output_shapes
: *
value	B
 Z
Ѕ
&metrics/precision/true_positives/EqualEqualmetrics/precision/Cast_1(metrics/precision/true_positives/Equal/y*
T0
*'
_output_shapes
:џџџџџџџџџ
l
*metrics/precision/true_positives/Equal_1/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
Ї
(metrics/precision/true_positives/Equal_1Equalmetrics/precision/Cast*metrics/precision/true_positives/Equal_1/y*
T0
*'
_output_shapes
:џџџџџџџџџ
Д
+metrics/precision/true_positives/LogicalAnd
LogicalAnd&metrics/precision/true_positives/Equal(metrics/precision/true_positives/Equal_1*'
_output_shapes
:џџџџџџџџџ
W
Ometrics/precision/true_positives/assert_type/statically_determined_correct_typeNoOp
И
8metrics/precision/true_positives/count/Initializer/zerosConst*
valueB
 *    *9
_class/
-+loc:@metrics/precision/true_positives/count*
dtype0*
_output_shapes
: 
Ё
&metrics/precision/true_positives/count
VariableV2*
_output_shapes
: *
shape: *9
_class/
-+loc:@metrics/precision/true_positives/count*
dtype0
ѕ
-metrics/precision/true_positives/count/AssignAssign&metrics/precision/true_positives/count8metrics/precision/true_positives/count/Initializer/zeros*
T0*9
_class/
-+loc:@metrics/precision/true_positives/count*
_output_shapes
: 
Л
+metrics/precision/true_positives/count/readIdentity&metrics/precision/true_positives/count*
T0*9
_class/
-+loc:@metrics/precision/true_positives/count*
_output_shapes
: 

%metrics/precision/true_positives/CastCast+metrics/precision/true_positives/LogicalAnd*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0
g
%metrics/precision/true_positives/RankConst*
value	B :*
dtype0*
_output_shapes
: 
v
4metrics/precision/true_positives/assert_rank_in/rankConst*
_output_shapes
: *
value	B : *
dtype0
x
5metrics/precision/true_positives/assert_rank_in/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
f
^metrics/precision/true_positives/assert_rank_in/assert_type/statically_determined_correct_typeNoOp
h
`metrics/precision/true_positives/assert_rank_in/assert_type_1/statically_determined_correct_typeNoOp
W
Ometrics/precision/true_positives/assert_rank_in/static_checks_determined_all_okNoOp
я
$metrics/precision/true_positives/MulMul%metrics/precision/true_positives/Castmetrics/precision/ConstP^metrics/precision/true_positives/assert_rank_in/static_checks_determined_all_ok*'
_output_shapes
:џџџџџџџџџ*
T0

)metrics/precision/true_positives/IdentityIdentity+metrics/precision/true_positives/count/read*
T0*
_output_shapes
: 
w
&metrics/precision/true_positives/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

$metrics/precision/true_positives/SumSum$metrics/precision/true_positives/Mul&metrics/precision/true_positives/Const*
T0*
_output_shapes
: 
с
*metrics/precision/true_positives/AssignAdd	AssignAdd&metrics/precision/true_positives/count$metrics/precision/true_positives/Sum*
T0*9
_class/
-+loc:@metrics/precision/true_positives/count*
_output_shapes
: 
k
)metrics/precision/false_positives/Equal/yConst*
dtype0
*
_output_shapes
: *
value	B
 Z 
Ї
'metrics/precision/false_positives/EqualEqualmetrics/precision/Cast_1)metrics/precision/false_positives/Equal/y*
T0
*'
_output_shapes
:џџџџџџџџџ
m
+metrics/precision/false_positives/Equal_1/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
Љ
)metrics/precision/false_positives/Equal_1Equalmetrics/precision/Cast+metrics/precision/false_positives/Equal_1/y*
T0
*'
_output_shapes
:џџџџџџџџџ
З
,metrics/precision/false_positives/LogicalAnd
LogicalAnd'metrics/precision/false_positives/Equal)metrics/precision/false_positives/Equal_1*'
_output_shapes
:џџџџџџџџџ
X
Pmetrics/precision/false_positives/assert_type/statically_determined_correct_typeNoOp
К
9metrics/precision/false_positives/count/Initializer/zerosConst*
valueB
 *    *:
_class0
.,loc:@metrics/precision/false_positives/count*
dtype0*
_output_shapes
: 
Ѓ
'metrics/precision/false_positives/count
VariableV2*
dtype0*
_output_shapes
: *
shape: *:
_class0
.,loc:@metrics/precision/false_positives/count
љ
.metrics/precision/false_positives/count/AssignAssign'metrics/precision/false_positives/count9metrics/precision/false_positives/count/Initializer/zeros*
T0*:
_class0
.,loc:@metrics/precision/false_positives/count*
_output_shapes
: 
О
,metrics/precision/false_positives/count/readIdentity'metrics/precision/false_positives/count*
_output_shapes
: *
T0*:
_class0
.,loc:@metrics/precision/false_positives/count

&metrics/precision/false_positives/CastCast,metrics/precision/false_positives/LogicalAnd*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0
h
&metrics/precision/false_positives/RankConst*
value	B :*
dtype0*
_output_shapes
: 
w
5metrics/precision/false_positives/assert_rank_in/rankConst*
dtype0*
_output_shapes
: *
value	B : 
y
6metrics/precision/false_positives/assert_rank_in/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
g
_metrics/precision/false_positives/assert_rank_in/assert_type/statically_determined_correct_typeNoOp
i
ametrics/precision/false_positives/assert_rank_in/assert_type_1/statically_determined_correct_typeNoOp
X
Pmetrics/precision/false_positives/assert_rank_in/static_checks_determined_all_okNoOp
ђ
%metrics/precision/false_positives/MulMul&metrics/precision/false_positives/Castmetrics/precision/ConstQ^metrics/precision/false_positives/assert_rank_in/static_checks_determined_all_ok*
T0*'
_output_shapes
:џџџџџџџџџ

*metrics/precision/false_positives/IdentityIdentity,metrics/precision/false_positives/count/read*
T0*
_output_shapes
: 
x
'metrics/precision/false_positives/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

%metrics/precision/false_positives/SumSum%metrics/precision/false_positives/Mul'metrics/precision/false_positives/Const*
T0*
_output_shapes
: 
х
+metrics/precision/false_positives/AssignAdd	AssignAdd'metrics/precision/false_positives/count%metrics/precision/false_positives/Sum*
_output_shapes
: *
T0*:
_class0
.,loc:@metrics/precision/false_positives/count

metrics/precision/addAddV2)metrics/precision/true_positives/Identity*metrics/precision/false_positives/Identity*
_output_shapes
: *
T0
`
metrics/precision/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
y
metrics/precision/GreaterGreatermetrics/precision/addmetrics/precision/Greater/y*
_output_shapes
: *
T0

metrics/precision/add_1AddV2)metrics/precision/true_positives/Identity*metrics/precision/false_positives/Identity*
_output_shapes
: *
T0

metrics/precision/divRealDiv)metrics/precision/true_positives/Identitymetrics/precision/add_1*
_output_shapes
: *
T0
^
metrics/precision/value/eConst*
dtype0*
_output_shapes
: *
valueB
 *    

metrics/precision/valueSelectmetrics/precision/Greatermetrics/precision/divmetrics/precision/value/e*
_output_shapes
: *
T0

metrics/precision/add_2AddV2*metrics/precision/true_positives/AssignAdd+metrics/precision/false_positives/AssignAdd*
T0*
_output_shapes
: 
b
metrics/precision/Greater_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/precision/Greater_1Greatermetrics/precision/add_2metrics/precision/Greater_1/y*
T0*
_output_shapes
: 

metrics/precision/add_3AddV2*metrics/precision/true_positives/AssignAdd+metrics/precision/false_positives/AssignAdd*
_output_shapes
: *
T0

metrics/precision/div_1RealDiv*metrics/precision/true_positives/AssignAddmetrics/precision/add_3*
T0*
_output_shapes
: 
b
metrics/precision/update_op/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/precision/update_opSelectmetrics/precision/Greater_1metrics/precision/div_1metrics/precision/update_op/e*
T0*
_output_shapes
: 
y
metrics/recall/CastCasthead/predictions/ExpandDims*

SrcT0	*'
_output_shapes
:џџџџџџџџџ*

DstT0

z
metrics/recall/Cast_1Casthead/assert_range/Identity*'
_output_shapes
:џџџџџџџџџ*

DstT0
*

SrcT0
Y
metrics/recall/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
%metrics/recall/true_positives/Equal/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 

#metrics/recall/true_positives/EqualEqualmetrics/recall/Cast_1%metrics/recall/true_positives/Equal/y*'
_output_shapes
:џџџџџџџџџ*
T0

i
'metrics/recall/true_positives/Equal_1/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 

%metrics/recall/true_positives/Equal_1Equalmetrics/recall/Cast'metrics/recall/true_positives/Equal_1/y*'
_output_shapes
:џџџџџџџџџ*
T0

Ћ
(metrics/recall/true_positives/LogicalAnd
LogicalAnd#metrics/recall/true_positives/Equal%metrics/recall/true_positives/Equal_1*'
_output_shapes
:џџџџџџџџџ
T
Lmetrics/recall/true_positives/assert_type/statically_determined_correct_typeNoOp
В
5metrics/recall/true_positives/count/Initializer/zerosConst*
valueB
 *    *6
_class,
*(loc:@metrics/recall/true_positives/count*
dtype0*
_output_shapes
: 

#metrics/recall/true_positives/count
VariableV2*
shape: *6
_class,
*(loc:@metrics/recall/true_positives/count*
dtype0*
_output_shapes
: 
щ
*metrics/recall/true_positives/count/AssignAssign#metrics/recall/true_positives/count5metrics/recall/true_positives/count/Initializer/zeros*
_output_shapes
: *
T0*6
_class,
*(loc:@metrics/recall/true_positives/count
В
(metrics/recall/true_positives/count/readIdentity#metrics/recall/true_positives/count*
T0*6
_class,
*(loc:@metrics/recall/true_positives/count*
_output_shapes
: 

"metrics/recall/true_positives/CastCast(metrics/recall/true_positives/LogicalAnd*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

d
"metrics/recall/true_positives/RankConst*
value	B :*
dtype0*
_output_shapes
: 
s
1metrics/recall/true_positives/assert_rank_in/rankConst*
value	B : *
dtype0*
_output_shapes
: 
u
2metrics/recall/true_positives/assert_rank_in/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
c
[metrics/recall/true_positives/assert_rank_in/assert_type/statically_determined_correct_typeNoOp
e
]metrics/recall/true_positives/assert_rank_in/assert_type_1/statically_determined_correct_typeNoOp
T
Lmetrics/recall/true_positives/assert_rank_in/static_checks_determined_all_okNoOp
у
!metrics/recall/true_positives/MulMul"metrics/recall/true_positives/Castmetrics/recall/ConstM^metrics/recall/true_positives/assert_rank_in/static_checks_determined_all_ok*
T0*'
_output_shapes
:џџџџџџџџџ
}
&metrics/recall/true_positives/IdentityIdentity(metrics/recall/true_positives/count/read*
_output_shapes
: *
T0
t
#metrics/recall/true_positives/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

!metrics/recall/true_positives/SumSum!metrics/recall/true_positives/Mul#metrics/recall/true_positives/Const*
_output_shapes
: *
T0
е
'metrics/recall/true_positives/AssignAdd	AssignAdd#metrics/recall/true_positives/count!metrics/recall/true_positives/Sum*
T0*6
_class,
*(loc:@metrics/recall/true_positives/count*
_output_shapes
: 
h
&metrics/recall/false_negatives/Equal/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 

$metrics/recall/false_negatives/EqualEqualmetrics/recall/Cast_1&metrics/recall/false_negatives/Equal/y*'
_output_shapes
:џџџџџџџџџ*
T0

j
(metrics/recall/false_negatives/Equal_1/yConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
 
&metrics/recall/false_negatives/Equal_1Equalmetrics/recall/Cast(metrics/recall/false_negatives/Equal_1/y*'
_output_shapes
:џџџџџџџџџ*
T0

Ў
)metrics/recall/false_negatives/LogicalAnd
LogicalAnd$metrics/recall/false_negatives/Equal&metrics/recall/false_negatives/Equal_1*'
_output_shapes
:џџџџџџџџџ
U
Mmetrics/recall/false_negatives/assert_type/statically_determined_correct_typeNoOp
Д
6metrics/recall/false_negatives/count/Initializer/zerosConst*
valueB
 *    *7
_class-
+)loc:@metrics/recall/false_negatives/count*
dtype0*
_output_shapes
: 

$metrics/recall/false_negatives/count
VariableV2*7
_class-
+)loc:@metrics/recall/false_negatives/count*
dtype0*
_output_shapes
: *
shape: 
э
+metrics/recall/false_negatives/count/AssignAssign$metrics/recall/false_negatives/count6metrics/recall/false_negatives/count/Initializer/zeros*
T0*7
_class-
+)loc:@metrics/recall/false_negatives/count*
_output_shapes
: 
Е
)metrics/recall/false_negatives/count/readIdentity$metrics/recall/false_negatives/count*
_output_shapes
: *
T0*7
_class-
+)loc:@metrics/recall/false_negatives/count

#metrics/recall/false_negatives/CastCast)metrics/recall/false_negatives/LogicalAnd*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

e
#metrics/recall/false_negatives/RankConst*
value	B :*
dtype0*
_output_shapes
: 
t
2metrics/recall/false_negatives/assert_rank_in/rankConst*
value	B : *
dtype0*
_output_shapes
: 
v
3metrics/recall/false_negatives/assert_rank_in/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
d
\metrics/recall/false_negatives/assert_rank_in/assert_type/statically_determined_correct_typeNoOp
f
^metrics/recall/false_negatives/assert_rank_in/assert_type_1/statically_determined_correct_typeNoOp
U
Mmetrics/recall/false_negatives/assert_rank_in/static_checks_determined_all_okNoOp
ц
"metrics/recall/false_negatives/MulMul#metrics/recall/false_negatives/Castmetrics/recall/ConstN^metrics/recall/false_negatives/assert_rank_in/static_checks_determined_all_ok*
T0*'
_output_shapes
:џџџџџџџџџ

'metrics/recall/false_negatives/IdentityIdentity)metrics/recall/false_negatives/count/read*
T0*
_output_shapes
: 
u
$metrics/recall/false_negatives/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

"metrics/recall/false_negatives/SumSum"metrics/recall/false_negatives/Mul$metrics/recall/false_negatives/Const*
_output_shapes
: *
T0
й
(metrics/recall/false_negatives/AssignAdd	AssignAdd$metrics/recall/false_negatives/count"metrics/recall/false_negatives/Sum*
T0*7
_class-
+)loc:@metrics/recall/false_negatives/count*
_output_shapes
: 

metrics/recall/addAddV2&metrics/recall/true_positives/Identity'metrics/recall/false_negatives/Identity*
_output_shapes
: *
T0
]
metrics/recall/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
metrics/recall/GreaterGreatermetrics/recall/addmetrics/recall/Greater/y*
T0*
_output_shapes
: 

metrics/recall/add_1AddV2&metrics/recall/true_positives/Identity'metrics/recall/false_negatives/Identity*
T0*
_output_shapes
: 
|
metrics/recall/divRealDiv&metrics/recall/true_positives/Identitymetrics/recall/add_1*
T0*
_output_shapes
: 
[
metrics/recall/value/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/recall/valueSelectmetrics/recall/Greatermetrics/recall/divmetrics/recall/value/e*
_output_shapes
: *
T0

metrics/recall/add_2AddV2'metrics/recall/true_positives/AssignAdd(metrics/recall/false_negatives/AssignAdd*
_output_shapes
: *
T0
_
metrics/recall/Greater_1/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
v
metrics/recall/Greater_1Greatermetrics/recall/add_2metrics/recall/Greater_1/y*
_output_shapes
: *
T0

metrics/recall/add_3AddV2'metrics/recall/true_positives/AssignAdd(metrics/recall/false_negatives/AssignAdd*
_output_shapes
: *
T0

metrics/recall/div_1RealDiv'metrics/recall/true_positives/AssignAddmetrics/recall/add_3*
_output_shapes
: *
T0
_
metrics/recall/update_op/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/recall/update_opSelectmetrics/recall/Greater_1metrics/recall/div_1metrics/recall/update_op/e*
_output_shapes
: *
T0
v
1metrics/prediction/mean/broadcast_weights/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Lmetrics/prediction/mean/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Kmetrics/prediction/mean/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

Kmetrics/prediction/mean/broadcast_weights/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
_output_shapes
:

Jmetrics/prediction/mean/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
b
Zmetrics/prediction/mean/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
п
9metrics/prediction/mean/broadcast_weights/ones_like/ShapeShapehead/predictions/logistic[^metrics/prediction/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0
л
9metrics/prediction/mean/broadcast_weights/ones_like/ConstConst[^metrics/prediction/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
у
3metrics/prediction/mean/broadcast_weights/ones_likeFill9metrics/prediction/mean/broadcast_weights/ones_like/Shape9metrics/prediction/mean/broadcast_weights/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
Ъ
)metrics/prediction/mean/broadcast_weightsMul1metrics/prediction/mean/broadcast_weights/weights3metrics/prediction/mean/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
І
/metrics/prediction/mean/total/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *0
_class&
$"loc:@metrics/prediction/mean/total*
dtype0

metrics/prediction/mean/total
VariableV2*
shape: *0
_class&
$"loc:@metrics/prediction/mean/total*
dtype0*
_output_shapes
: 
б
$metrics/prediction/mean/total/AssignAssignmetrics/prediction/mean/total/metrics/prediction/mean/total/Initializer/zeros*
T0*0
_class&
$"loc:@metrics/prediction/mean/total*
_output_shapes
: 
 
"metrics/prediction/mean/total/readIdentitymetrics/prediction/mean/total*
T0*0
_class&
$"loc:@metrics/prediction/mean/total*
_output_shapes
: 
І
/metrics/prediction/mean/count/Initializer/zerosConst*
valueB
 *    *0
_class&
$"loc:@metrics/prediction/mean/count*
dtype0*
_output_shapes
: 

metrics/prediction/mean/count
VariableV2*
shape: *0
_class&
$"loc:@metrics/prediction/mean/count*
dtype0*
_output_shapes
: 
б
$metrics/prediction/mean/count/AssignAssignmetrics/prediction/mean/count/metrics/prediction/mean/count/Initializer/zeros*
T0*0
_class&
$"loc:@metrics/prediction/mean/count*
_output_shapes
: 
 
"metrics/prediction/mean/count/readIdentitymetrics/prediction/mean/count*
T0*0
_class&
$"loc:@metrics/prediction/mean/count*
_output_shapes
: 
Ї
Nmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shapeShape)metrics/prediction/mean/broadcast_weights*
T0*
_output_shapes
:

Mmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Mmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
_output_shapes
:

Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 

Jmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarEqualLmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xMmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/SwitchSwitchJmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarJmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
п
Xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_tIdentityXmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
н
Xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_fIdentityVmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
а
Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_idIdentityJmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: *
T0


Xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1SwitchJmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarWmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0
*]
_classS
QOloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
 
vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqual}metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
В
}metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchLmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rankWmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*_
_classU
SQloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rank*
_output_shapes
: : *
T0
Ж
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchMmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rankWmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*`
_classV
TRloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank*
_output_shapes
: : 

pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchvmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankvmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityrmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0


rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentitypmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 

qmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityvmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
Ъ
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
м
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
_output_shapes

:*
T0
Ь
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchMmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shapeWmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*`
_classV
TRloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape
Ј
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchqmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*`
_classV
TRloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
б
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
Т
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
а
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapemetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*
_output_shapes

:
О
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
и
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likemetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:
Ь
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
т
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:
а
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchNmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shapeWmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*a
_classW
USloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::*
T0
­
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchqmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*a
_classW
USloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape

metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
set_operationa-b*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:
Э
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizemetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0
Г
|metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
А
zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqual|metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 

rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchvmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankqmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_class
}{loc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 

ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergermetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
_output_shapes
: : *
T0
*
N
з
Umetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeMergeometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeZmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
Ў
Fmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

Hmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
Д
Hmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_2Const*<
value3B1 B+metrics/prediction/mean/broadcast_weights:0*
dtype0*
_output_shapes
: 

Hmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Є
Hmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_4Const*,
value#B! Bhead/predictions/logistic:0*
dtype0*
_output_shapes
: 

Hmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_5Const*
dtype0*
_output_shapes
: *
valueB B
is_scalar=
Ў
Smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/SwitchSwitchUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
й
Umetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tIdentityUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch:1*
_output_shapes
: *
T0

з
Umetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fIdentitySmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
и
Tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_idIdentityUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
Б
Qmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOpNoOpV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t
Ё
_metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependencyIdentityUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tR^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOp*
T0
*h
_class^
\Zloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *<
value3B1 B+metrics/prediction/mean/broadcast_weights:0*
dtype0

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *,
value#B! Bhead/predictions/logistic:0
§
Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/AssertAssertZmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchZmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	


Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchSwitchUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeTmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*h
_class^
\Zloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 

\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchNmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shapeTmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*a
_classW
USloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::

\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchMmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shapeTmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*`
_classV
TRloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::

\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchJmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarTmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
_output_shapes
: : *
T0
*]
_classS
QOloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar
Ѕ
ametrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1IdentityUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fT^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert*
_output_shapes
: *
T0
*h
_class^
\Zloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f
Ы
Rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/MergeMergeametrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1_metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency*
N*
_output_shapes
: : *
T0

й
;metrics/prediction/mean/broadcast_weights_1/ones_like/ShapeShapehead/predictions/logisticS^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
T0*
_output_shapes
:
е
;metrics/prediction/mean/broadcast_weights_1/ones_like/ConstConstS^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ?*
dtype0*
_output_shapes
: 
щ
5metrics/prediction/mean/broadcast_weights_1/ones_likeFill;metrics/prediction/mean/broadcast_weights_1/ones_like/Shape;metrics/prediction/mean/broadcast_weights_1/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
Ц
+metrics/prediction/mean/broadcast_weights_1Mul)metrics/prediction/mean/broadcast_weights5metrics/prediction/mean/broadcast_weights_1/ones_like*'
_output_shapes
:џџџџџџџџџ*
T0

metrics/prediction/mean/MulMulhead/predictions/logistic+metrics/prediction/mean/broadcast_weights_1*'
_output_shapes
:џџџџџџџџџ*
T0
n
metrics/prediction/mean/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

metrics/prediction/mean/SumSum+metrics/prediction/mean/broadcast_weights_1metrics/prediction/mean/Const*
T0*
_output_shapes
: 
p
metrics/prediction/mean/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:

metrics/prediction/mean/Sum_1Summetrics/prediction/mean/Mulmetrics/prediction/mean/Const_1*
_output_shapes
: *
T0
П
!metrics/prediction/mean/AssignAdd	AssignAddmetrics/prediction/mean/totalmetrics/prediction/mean/Sum_1*0
_class&
$"loc:@metrics/prediction/mean/total*
_output_shapes
: *
T0
н
#metrics/prediction/mean/AssignAdd_1	AssignAddmetrics/prediction/mean/countmetrics/prediction/mean/Sum^metrics/prediction/mean/Mul*
_output_shapes
: *
T0*0
_class&
$"loc:@metrics/prediction/mean/count
f
!metrics/prediction/mean/Maximum/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

metrics/prediction/mean/MaximumMaximum"metrics/prediction/mean/count/read!metrics/prediction/mean/Maximum/y*
T0*
_output_shapes
: 

metrics/prediction/mean/valueDivNoNan"metrics/prediction/mean/total/readmetrics/prediction/mean/Maximum*
T0*
_output_shapes
: 
h
#metrics/prediction/mean/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

!metrics/prediction/mean/Maximum_1Maximum#metrics/prediction/mean/AssignAdd_1#metrics/prediction/mean/Maximum_1/y*
_output_shapes
: *
T0

!metrics/prediction/mean/update_opDivNoNan!metrics/prediction/mean/AssignAdd!metrics/prediction/mean/Maximum_1*
T0*
_output_shapes
: 
d
metrics/accuracy_baseline/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

metrics/accuracy_baseline/subSubmetrics/accuracy_baseline/sub/xmetrics/label/mean/value*
_output_shapes
: *
T0

metrics/accuracy_baseline/valueMaximummetrics/label/mean/valuemetrics/accuracy_baseline/sub*
T0*
_output_shapes
: 
f
!metrics/accuracy_baseline/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

metrics/accuracy_baseline/sub_1Sub!metrics/accuracy_baseline/sub_1/xmetrics/label/mean/update_op*
_output_shapes
: *
T0

#metrics/accuracy_baseline/update_opMaximummetrics/label/mean/update_opmetrics/accuracy_baseline/sub_1*
T0*
_output_shapes
: 
j
%metrics/auc/broadcast_weights/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

@metrics/auc/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

?metrics/auc/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

?metrics/auc/broadcast_weights/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
_output_shapes
:

>metrics/auc/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
V
Nmetrics/auc/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
Ч
-metrics/auc/broadcast_weights/ones_like/ShapeShapehead/predictions/logisticO^metrics/auc/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0
У
-metrics/auc/broadcast_weights/ones_like/ConstConstO^metrics/auc/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
П
'metrics/auc/broadcast_weights/ones_likeFill-metrics/auc/broadcast_weights/ones_like/Shape-metrics/auc/broadcast_weights/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
І
metrics/auc/broadcast_weightsMul%metrics/auc/broadcast_weights/weights'metrics/auc/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
W
metrics/auc/Cast/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 

-metrics/auc/assert_greater_equal/GreaterEqualGreaterEqualhead/predictions/logisticmetrics/auc/Cast/x*
T0*'
_output_shapes
:џџџџџџџџџ
w
&metrics/auc/assert_greater_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

$metrics/auc/assert_greater_equal/AllAll-metrics/auc/assert_greater_equal/GreaterEqual&metrics/auc/assert_greater_equal/Const*
_output_shapes
: 

-metrics/auc/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *.
value%B# Bpredictions must be in [0, 1]*
dtype0

/metrics/auc/assert_greater_equal/Assert/Const_1Const*<
value3B1 B+Condition x >= y did not hold element-wise:*
dtype0*
_output_shapes
: 

/metrics/auc/assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *3
value*B( B"x (head/predictions/logistic:0) = *
dtype0

/metrics/auc/assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *,
value#B! By (metrics/auc/Cast/x:0) = *
dtype0
Г
:metrics/auc/assert_greater_equal/Assert/AssertGuard/SwitchSwitch$metrics/auc/assert_greater_equal/All$metrics/auc/assert_greater_equal/All*
T0
*
_output_shapes
: : 
Ї
<metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_tIdentity<metrics/auc/assert_greater_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Ѕ
<metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_fIdentity:metrics/auc/assert_greater_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 

;metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_idIdentity$metrics/auc/assert_greater_equal/All*
_output_shapes
: *
T0


8metrics/auc/assert_greater_equal/Assert/AssertGuard/NoOpNoOp=^metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_t
Н
Fmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependencyIdentity<metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_t9^metrics/auc/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*O
_classE
CAloc:@metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
о
Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0Const=^metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *.
value%B# Bpredictions must be in [0, 1]*
dtype0
ь
Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1Const=^metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f*<
value3B1 B+Condition x >= y did not hold element-wise:*
dtype0*
_output_shapes
: 
у
Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_2Const=^metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f*3
value*B( B"x (head/predictions/logistic:0) = *
dtype0*
_output_shapes
: 
м
Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_4Const=^metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f*,
value#B! By (metrics/auc/Cast/x:0) = *
dtype0*
_output_shapes
: 
Ў
:metrics/auc/assert_greater_equal/Assert/AssertGuard/AssertAssertAmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/SwitchAmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_2Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_4Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2*
T

2

Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/SwitchSwitch$metrics/auc/assert_greater_equal/All;metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id*
T0
*7
_class-
+)loc:@metrics/auc/assert_greater_equal/All*
_output_shapes
: : 

Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/predictions/logistic;metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id*
T0*,
_class"
 loc:@head/predictions/logistic*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
ш
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2Switchmetrics/auc/Cast/x;metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id*
T0*%
_class
loc:@metrics/auc/Cast/x*
_output_shapes
: : 
С
Hmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1Identity<metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f;^metrics/auc/assert_greater_equal/Assert/AssertGuard/Assert*
_output_shapes
: *
T0
*O
_classE
CAloc:@metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f

9metrics/auc/assert_greater_equal/Assert/AssertGuard/MergeMergeHmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1Fmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
Y
metrics/auc/Cast_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

'metrics/auc/assert_less_equal/LessEqual	LessEqualhead/predictions/logisticmetrics/auc/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ
t
#metrics/auc/assert_less_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

!metrics/auc/assert_less_equal/AllAll'metrics/auc/assert_less_equal/LessEqual#metrics/auc/assert_less_equal/Const*
_output_shapes
: 

*metrics/auc/assert_less_equal/Assert/ConstConst*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 

,metrics/auc/assert_less_equal/Assert/Const_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+Condition x <= y did not hold element-wise:

,metrics/auc/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *3
value*B( B"x (head/predictions/logistic:0) = *
dtype0

,metrics/auc/assert_less_equal/Assert/Const_3Const*
dtype0*
_output_shapes
: *.
value%B# By (metrics/auc/Cast_1/x:0) = 
Њ
7metrics/auc/assert_less_equal/Assert/AssertGuard/SwitchSwitch!metrics/auc/assert_less_equal/All!metrics/auc/assert_less_equal/All*
_output_shapes
: : *
T0

Ё
9metrics/auc/assert_less_equal/Assert/AssertGuard/switch_tIdentity9metrics/auc/assert_less_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 

9metrics/auc/assert_less_equal/Assert/AssertGuard/switch_fIdentity7metrics/auc/assert_less_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 

8metrics/auc/assert_less_equal/Assert/AssertGuard/pred_idIdentity!metrics/auc/assert_less_equal/All*
T0
*
_output_shapes
: 
y
5metrics/auc/assert_less_equal/Assert/AssertGuard/NoOpNoOp:^metrics/auc/assert_less_equal/Assert/AssertGuard/switch_t
Б
Cmetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependencyIdentity9metrics/auc/assert_less_equal/Assert/AssertGuard/switch_t6^metrics/auc/assert_less_equal/Assert/AssertGuard/NoOp*
_output_shapes
: *
T0
*L
_classB
@>loc:@metrics/auc/assert_less_equal/Assert/AssertGuard/switch_t
и
>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_0Const:^metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 
ц
>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_1Const:^metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f*<
value3B1 B+Condition x <= y did not hold element-wise:*
dtype0*
_output_shapes
: 
н
>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_2Const:^metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *3
value*B( B"x (head/predictions/logistic:0) = *
dtype0
и
>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_4Const:^metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f*.
value%B# By (metrics/auc/Cast_1/x:0) = *
dtype0*
_output_shapes
: 

7metrics/auc/assert_less_equal/Assert/AssertGuard/AssertAssert>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_0>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_1>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_2@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_4@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2*
T

2
ў
>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch!metrics/auc/assert_less_equal/All8metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id*
_output_shapes
: : *
T0
*4
_class*
(&loc:@metrics/auc/assert_less_equal/All

@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/predictions/logistic8metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*
T0*,
_class"
 loc:@head/predictions/logistic
ц
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2Switchmetrics/auc/Cast_1/x8metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id*
T0*'
_class
loc:@metrics/auc/Cast_1/x*
_output_shapes
: : 
Е
Emetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependency_1Identity9metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f8^metrics/auc/assert_less_equal/Assert/AssertGuard/Assert*
T0
*L
_classB
@>loc:@metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
ї
6metrics/auc/assert_less_equal/Assert/AssertGuard/MergeMergeEmetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependency_1Cmetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependency*
N*
_output_shapes
: : *
T0

ь
metrics/auc/Cast_2Casthead/assert_range/Identity:^metrics/auc/assert_greater_equal/Assert/AssertGuard/Merge7^metrics/auc/assert_less_equal/Assert/AssertGuard/Merge*

SrcT0*'
_output_shapes
:џџџџџџџџџ*

DstT0

j
metrics/auc/Reshape/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

metrics/auc/ReshapeReshapehead/predictions/logisticmetrics/auc/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ
l
metrics/auc/Reshape_1/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:

metrics/auc/Reshape_1Reshapemetrics/auc/Cast_2metrics/auc/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
T
metrics/auc/ShapeShapemetrics/auc/Reshape*
T0*
_output_shapes
:
i
metrics/auc/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!metrics/auc/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
k
!metrics/auc/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
щ
metrics/auc/strided_sliceStridedSlicemetrics/auc/Shapemetrics/auc/strided_slice/stack!metrics/auc/strided_slice/stack_1!metrics/auc/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0

metrics/auc/ConstConst*Й
valueЏBЌШ" ПжГЯЉЄ;ЯЉ$<Зўv<ЯЉЄ<CдЭ<Зўі<=ЯЉ$=	?9=CдM=}ib=Зўv=јЩ==2_=ЯЉЄ=lєЎ=	?Й=ІУ=CдЭ=ри=}iт=Дь=Зўі=ЊЄ >јЩ>Gя
>>ф9>2_>>ЯЉ$>Я)>lє.>Л4>	?9>Wd>>ІC>єЎH>CдM>љR>рX>.D]>}ib>Ыg>Дl>hйq>Зўv>$|>ЊЄ>Q7>јЩ> \>Gя>ю>><Ї>ф9>Ь>2_>йё>>(Ђ>ЯЉЄ>v<Ї>ЯЉ>ХaЌ>lєЎ>Б>ЛД>bЌЖ>	?Й>АбЛ>WdО>џіР>ІУ>MЦ>єЎШ>AЫ>CдЭ>ъfа>љв>9е>ри>Бк>.Dн>жжп>}iт>$ќф>Ыч>r!ъ>Дь>СFя>hйё>lє>Зўі>^љ>$ќ>ЌЖў>ЊЄ ?§э?Q7?Ѕ?јЩ?L? \?ѓЅ	?Gя
?8?ю?BЫ??щ]?<Ї?№?ф9?7?Ь?п?2_?Ј?йё?-;??дЭ ?("?{`#?ЯЉ$?#ѓ%?v<'?Ъ(?Я)?q+?Хa,?Ћ-?lє.?Р=0?1?gа2?Л4?c5?bЌ6?Еѕ7?	?9?]:?Аб;?=?Wd>?Ћ­??џі@?R@B?ІC?њвD?MF?ЁeG?єЎH?HјI?AK?яL?CдM?O?ъfP?>АQ?љR?хBT?9U?еV?рX?3hY?БZ?лњ[?.D]?^?жж_?) a?}ib?аВc?$ќd?xEf?Ыg?иh?r!j?Цjk?Дl?m§m?СFo?p?hйq?М"s?lt?cЕu?Зўv?
Hx?^y?Вкz?$|?Ym}?ЌЖ~? ?*
dtype0*
_output_shapes	
:Ш
d
metrics/auc/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
}
metrics/auc/ExpandDims
ExpandDimsmetrics/auc/Constmetrics/auc/ExpandDims/dim*
T0*
_output_shapes
:	Ш
U
metrics/auc/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
w
metrics/auc/stackPackmetrics/auc/stack/0metrics/auc/strided_slice*
_output_shapes
:*
T0*
N
v
metrics/auc/TileTilemetrics/auc/ExpandDimsmetrics/auc/stack*(
_output_shapes
:Шџџџџџџџџџ*
T0
k
metrics/auc/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:

metrics/auc/transpose	Transposemetrics/auc/Reshapemetrics/auc/transpose/perm*
T0*'
_output_shapes
:џџџџџџџџџ
m
metrics/auc/Tile_1/multiplesConst*
valueB"Ш      *
dtype0*
_output_shapes
:

metrics/auc/Tile_1Tilemetrics/auc/transposemetrics/auc/Tile_1/multiples*
T0*(
_output_shapes
:Шџџџџџџџџџ
w
metrics/auc/GreaterGreatermetrics/auc/Tile_1metrics/auc/Tile*
T0*(
_output_shapes
:Шџџџџџџџџџ
c
metrics/auc/LogicalNot
LogicalNotmetrics/auc/Greater*(
_output_shapes
:Шџџџџџџџџџ
m
metrics/auc/Tile_2/multiplesConst*
_output_shapes
:*
valueB"Ш      *
dtype0

metrics/auc/Tile_2Tilemetrics/auc/Reshape_1metrics/auc/Tile_2/multiples*(
_output_shapes
:Шџџџџџџџџџ*
T0

d
metrics/auc/LogicalNot_1
LogicalNotmetrics/auc/Tile_2*(
_output_shapes
:Шџџџџџџџџџ

Bmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shapeShapemetrics/auc/broadcast_weights*
T0*
_output_shapes
:

Ametrics/auc/broadcast_weights_1/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Ametrics/auc/broadcast_weights_1/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
_output_shapes
:

@metrics/auc/broadcast_weights_1/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 

@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
э
>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalarEqual@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar/xAmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
ї
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/SwitchSwitch>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
Ч
Lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_tIdentityLmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
Х
Lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_fIdentityJmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
И
Kmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_idIdentity>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: *
T0

й
Lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1Switch>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalarKmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0
*Q
_classG
ECloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
ќ
jmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualqmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchsmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 

qmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitch@metrics/auc/broadcast_weights_1/assert_broadcastable/values/rankKmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*S
_classI
GEloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/values/rank

smetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchAmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/rankKmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*T
_classJ
HFloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/weights/rank
щ
dmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchjmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankjmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
ћ
fmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityfmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0

љ
fmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentitydmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
ў
emetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityjmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

Б
}metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ж
ymetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1}metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
_output_shapes

:*
T0

metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchAmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shapeKmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*T
_classJ
HFloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/values/shape
ј
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchemetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*T
_classJ
HFloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/values/shape
И
~metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
Љ
~metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Љ
xmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFill~metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape~metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
_output_shapes

:*
T0
Ѕ
zmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
Є
umetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2ymetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsxmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likezmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:
Г
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
М
{metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
_output_shapes

:*
T0
 
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchBmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shapeKmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*U
_classK
IGloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
§
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchemetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*U
_classK
IGloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
ї
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation{metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1umetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b*
T0
Д
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizemetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
_output_shapes
: 

pmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 

nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualpmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
_output_shapes
: *
T0
х
fmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchjmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankemetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_output_shapes
: : *
T0
*}
_classs
qoloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank
№
cmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergefmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
N*
_output_shapes
: : *
T0

Г
Imetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeMergecmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeNmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
Ђ
:metrics/auc/broadcast_weights_1/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

<metrics/auc/broadcast_weights_1/assert_broadcastable/Const_1Const*
_output_shapes
: *
valueB Bweights.shape=*
dtype0

<metrics/auc/broadcast_weights_1/assert_broadcastable/Const_2Const*
dtype0*
_output_shapes
: *0
value'B% Bmetrics/auc/broadcast_weights:0

<metrics/auc/broadcast_weights_1/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 

<metrics/auc/broadcast_weights_1/assert_broadcastable/Const_4Const*,
value#B! Bhead/predictions/logistic:0*
dtype0*
_output_shapes
: 

<metrics/auc/broadcast_weights_1/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Gmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/SwitchSwitchImetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeImetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
С
Imetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tIdentityImetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
П
Imetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fIdentityGmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
Р
Hmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_idIdentityImetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 

Emetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOpNoOpJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t
ё
Smetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependencyIdentityImetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tF^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOp*
T0
*\
_classR
PNloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 

Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
щ
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
valueB Bweights.shape=*
dtype0
њ
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *0
value'B% Bmetrics/auc/broadcast_weights:0*
dtype0
ш
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=
і
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*,
value#B! Bhead/predictions/logistic:0*
dtype0*
_output_shapes
: 
х
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Gmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/AssertAssertNmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchNmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	

ю
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchSwitchImetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeHmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*\
_classR
PNloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
ъ
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchBmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shapeHmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*U
_classK
IGloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
ш
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchAmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shapeHmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*T
_classJ
HFloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
к
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3Switch>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalarHmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*Q
_classG
ECloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
ѕ
Umetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1IdentityImetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fH^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert*
_output_shapes
: *
T0
*\
_classR
PNloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f
Ї
Fmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/MergeMergeUmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1Smetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency*
_output_shapes
: : *
T0
*
N
С
/metrics/auc/broadcast_weights_1/ones_like/ShapeShapehead/predictions/logisticG^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
T0*
_output_shapes
:
Н
/metrics/auc/broadcast_weights_1/ones_like/ConstConstG^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Х
)metrics/auc/broadcast_weights_1/ones_likeFill/metrics/auc/broadcast_weights_1/ones_like/Shape/metrics/auc/broadcast_weights_1/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
metrics/auc/broadcast_weights_1Mulmetrics/auc/broadcast_weights)metrics/auc/broadcast_weights_1/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
l
metrics/auc/Reshape_2/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:

metrics/auc/Reshape_2Reshapemetrics/auc/broadcast_weights_1metrics/auc/Reshape_2/shape*'
_output_shapes
:џџџџџџџџџ*
T0
m
metrics/auc/Tile_3/multiplesConst*
_output_shapes
:*
valueB"Ш      *
dtype0

metrics/auc/Tile_3Tilemetrics/auc/Reshape_2metrics/auc/Tile_3/multiples*
T0*(
_output_shapes
:Шџџџџџџџџџ
Њ
,metrics/auc/true_positives/Initializer/zerosConst*
_output_shapes	
:Ш*
valueBШ*    *-
_class#
!loc:@metrics/auc/true_positives*
dtype0

metrics/auc/true_positives
VariableV2*-
_class#
!loc:@metrics/auc/true_positives*
dtype0*
_output_shapes	
:Ш*
shape:Ш
Ъ
!metrics/auc/true_positives/AssignAssignmetrics/auc/true_positives,metrics/auc/true_positives/Initializer/zeros*
T0*-
_class#
!loc:@metrics/auc/true_positives*
_output_shapes	
:Ш

metrics/auc/true_positives/readIdentitymetrics/auc/true_positives*-
_class#
!loc:@metrics/auc/true_positives*
_output_shapes	
:Ш*
T0
w
metrics/auc/LogicalAnd
LogicalAndmetrics/auc/Tile_2metrics/auc/Greater*(
_output_shapes
:Шџџџџџџџџџ
t
metrics/auc/Cast_3Castmetrics/auc/LogicalAnd*(
_output_shapes
:Шџџџџџџџџџ*

DstT0*

SrcT0

q
metrics/auc/mulMulmetrics/auc/Cast_3metrics/auc/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
c
!metrics/auc/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
p
metrics/auc/SumSummetrics/auc/mul!metrics/auc/Sum/reduction_indices*
_output_shapes	
:Ш*
T0
Є
metrics/auc/AssignAdd	AssignAddmetrics/auc/true_positivesmetrics/auc/Sum*
T0*-
_class#
!loc:@metrics/auc/true_positives*
_output_shapes	
:Ш
Ќ
-metrics/auc/false_negatives/Initializer/zerosConst*
_output_shapes	
:Ш*
valueBШ*    *.
_class$
" loc:@metrics/auc/false_negatives*
dtype0

metrics/auc/false_negatives
VariableV2*
shape:Ш*.
_class$
" loc:@metrics/auc/false_negatives*
dtype0*
_output_shapes	
:Ш
Ю
"metrics/auc/false_negatives/AssignAssignmetrics/auc/false_negatives-metrics/auc/false_negatives/Initializer/zeros*
_output_shapes	
:Ш*
T0*.
_class$
" loc:@metrics/auc/false_negatives

 metrics/auc/false_negatives/readIdentitymetrics/auc/false_negatives*
T0*.
_class$
" loc:@metrics/auc/false_negatives*
_output_shapes	
:Ш
|
metrics/auc/LogicalAnd_1
LogicalAndmetrics/auc/Tile_2metrics/auc/LogicalNot*(
_output_shapes
:Шџџџџџџџџџ
v
metrics/auc/Cast_4Castmetrics/auc/LogicalAnd_1*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ*

DstT0
s
metrics/auc/mul_1Mulmetrics/auc/Cast_4metrics/auc/Tile_3*(
_output_shapes
:Шџџџџџџџџџ*
T0
e
#metrics/auc/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
v
metrics/auc/Sum_1Summetrics/auc/mul_1#metrics/auc/Sum_1/reduction_indices*
_output_shapes	
:Ш*
T0
Њ
metrics/auc/AssignAdd_1	AssignAddmetrics/auc/false_negativesmetrics/auc/Sum_1*
_output_shapes	
:Ш*
T0*.
_class$
" loc:@metrics/auc/false_negatives
Њ
,metrics/auc/true_negatives/Initializer/zerosConst*
dtype0*
_output_shapes	
:Ш*
valueBШ*    *-
_class#
!loc:@metrics/auc/true_negatives

metrics/auc/true_negatives
VariableV2*-
_class#
!loc:@metrics/auc/true_negatives*
dtype0*
_output_shapes	
:Ш*
shape:Ш
Ъ
!metrics/auc/true_negatives/AssignAssignmetrics/auc/true_negatives,metrics/auc/true_negatives/Initializer/zeros*
_output_shapes	
:Ш*
T0*-
_class#
!loc:@metrics/auc/true_negatives

metrics/auc/true_negatives/readIdentitymetrics/auc/true_negatives*
T0*-
_class#
!loc:@metrics/auc/true_negatives*
_output_shapes	
:Ш

metrics/auc/LogicalAnd_2
LogicalAndmetrics/auc/LogicalNot_1metrics/auc/LogicalNot*(
_output_shapes
:Шџџџџџџџџџ
v
metrics/auc/Cast_5Castmetrics/auc/LogicalAnd_2*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ*

DstT0
s
metrics/auc/mul_2Mulmetrics/auc/Cast_5metrics/auc/Tile_3*(
_output_shapes
:Шџџџџџџџџџ*
T0
e
#metrics/auc/Sum_2/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
v
metrics/auc/Sum_2Summetrics/auc/mul_2#metrics/auc/Sum_2/reduction_indices*
T0*
_output_shapes	
:Ш
Ј
metrics/auc/AssignAdd_2	AssignAddmetrics/auc/true_negativesmetrics/auc/Sum_2*-
_class#
!loc:@metrics/auc/true_negatives*
_output_shapes	
:Ш*
T0
Ќ
-metrics/auc/false_positives/Initializer/zerosConst*
valueBШ*    *.
_class$
" loc:@metrics/auc/false_positives*
dtype0*
_output_shapes	
:Ш

metrics/auc/false_positives
VariableV2*
shape:Ш*.
_class$
" loc:@metrics/auc/false_positives*
dtype0*
_output_shapes	
:Ш
Ю
"metrics/auc/false_positives/AssignAssignmetrics/auc/false_positives-metrics/auc/false_positives/Initializer/zeros*
_output_shapes	
:Ш*
T0*.
_class$
" loc:@metrics/auc/false_positives

 metrics/auc/false_positives/readIdentitymetrics/auc/false_positives*
_output_shapes	
:Ш*
T0*.
_class$
" loc:@metrics/auc/false_positives

metrics/auc/LogicalAnd_3
LogicalAndmetrics/auc/LogicalNot_1metrics/auc/Greater*(
_output_shapes
:Шџџџџџџџџџ
v
metrics/auc/Cast_6Castmetrics/auc/LogicalAnd_3*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ*

DstT0
s
metrics/auc/mul_3Mulmetrics/auc/Cast_6metrics/auc/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
e
#metrics/auc/Sum_3/reduction_indicesConst*
_output_shapes
: *
value	B :*
dtype0
v
metrics/auc/Sum_3Summetrics/auc/mul_3#metrics/auc/Sum_3/reduction_indices*
T0*
_output_shapes	
:Ш
Њ
metrics/auc/AssignAdd_3	AssignAddmetrics/auc/false_positivesmetrics/auc/Sum_3*
T0*.
_class$
" loc:@metrics/auc/false_positives*
_output_shapes	
:Ш
V
metrics/auc/add/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 
r
metrics/auc/addAddV2metrics/auc/true_positives/readmetrics/auc/add/y*
T0*
_output_shapes	
:Ш

metrics/auc/add_1AddV2metrics/auc/true_positives/read metrics/auc/false_negatives/read*
T0*
_output_shapes	
:Ш
X
metrics/auc/add_2/yConst*
dtype0*
_output_shapes
: *
valueB
 *Н75
h
metrics/auc/add_2AddV2metrics/auc/add_1metrics/auc/add_2/y*
T0*
_output_shapes	
:Ш
d
metrics/auc/divRealDivmetrics/auc/addmetrics/auc/add_2*
_output_shapes	
:Ш*
T0

metrics/auc/add_3AddV2 metrics/auc/false_positives/readmetrics/auc/true_negatives/read*
T0*
_output_shapes	
:Ш
X
metrics/auc/add_4/yConst*
_output_shapes
: *
valueB
 *Н75*
dtype0
h
metrics/auc/add_4AddV2metrics/auc/add_3metrics/auc/add_4/y*
T0*
_output_shapes	
:Ш
w
metrics/auc/div_1RealDiv metrics/auc/false_positives/readmetrics/auc/add_4*
T0*
_output_shapes	
:Ш
k
!metrics/auc/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
#metrics/auc/strided_slice_1/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
№
metrics/auc/strided_slice_1StridedSlicemetrics/auc/div_1!metrics/auc/strided_slice_1/stack#metrics/auc/strided_slice_1/stack_1#metrics/auc/strided_slice_1/stack_2*
_output_shapes	
:Ч*

begin_mask*
T0*
Index0
k
!metrics/auc/strided_slice_2/stackConst*
_output_shapes
:*
valueB:*
dtype0
m
#metrics/auc/strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ю
metrics/auc/strided_slice_2StridedSlicemetrics/auc/div_1!metrics/auc/strided_slice_2/stack#metrics/auc/strided_slice_2/stack_1#metrics/auc/strided_slice_2/stack_2*
Index0*
T0*
end_mask*
_output_shapes	
:Ч
v
metrics/auc/subSubmetrics/auc/strided_slice_1metrics/auc/strided_slice_2*
T0*
_output_shapes	
:Ч
k
!metrics/auc/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
#metrics/auc/strided_slice_3/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_3/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ю
metrics/auc/strided_slice_3StridedSlicemetrics/auc/div!metrics/auc/strided_slice_3/stack#metrics/auc/strided_slice_3/stack_1#metrics/auc/strided_slice_3/stack_2*
Index0*
T0*

begin_mask*
_output_shapes	
:Ч
k
!metrics/auc/strided_slice_4/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_4/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ь
metrics/auc/strided_slice_4StridedSlicemetrics/auc/div!metrics/auc/strided_slice_4/stack#metrics/auc/strided_slice_4/stack_1#metrics/auc/strided_slice_4/stack_2*
Index0*
T0*
end_mask*
_output_shapes	
:Ч
z
metrics/auc/add_5AddV2metrics/auc/strided_slice_3metrics/auc/strided_slice_4*
T0*
_output_shapes	
:Ч
Z
metrics/auc/truediv/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
n
metrics/auc/truedivRealDivmetrics/auc/add_5metrics/auc/truediv/y*
T0*
_output_shapes	
:Ч
d
metrics/auc/Mul_4Mulmetrics/auc/submetrics/auc/truediv*
T0*
_output_shapes	
:Ч
]
metrics/auc/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
a
metrics/auc/valueSummetrics/auc/Mul_4metrics/auc/Const_1*
_output_shapes
: *
T0
X
metrics/auc/add_6/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 
l
metrics/auc/add_6AddV2metrics/auc/AssignAddmetrics/auc/add_6/y*
_output_shapes	
:Ш*
T0
p
metrics/auc/add_7AddV2metrics/auc/AssignAddmetrics/auc/AssignAdd_1*
_output_shapes	
:Ш*
T0
X
metrics/auc/add_8/yConst*
_output_shapes
: *
valueB
 *Н75*
dtype0
h
metrics/auc/add_8AddV2metrics/auc/add_7metrics/auc/add_8/y*
_output_shapes	
:Ш*
T0
h
metrics/auc/div_2RealDivmetrics/auc/add_6metrics/auc/add_8*
_output_shapes	
:Ш*
T0
r
metrics/auc/add_9AddV2metrics/auc/AssignAdd_3metrics/auc/AssignAdd_2*
T0*
_output_shapes	
:Ш
Y
metrics/auc/add_10/yConst*
_output_shapes
: *
valueB
 *Н75*
dtype0
j
metrics/auc/add_10AddV2metrics/auc/add_9metrics/auc/add_10/y*
T0*
_output_shapes	
:Ш
o
metrics/auc/div_3RealDivmetrics/auc/AssignAdd_3metrics/auc/add_10*
T0*
_output_shapes	
:Ш
k
!metrics/auc/strided_slice_5/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
#metrics/auc/strided_slice_5/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
№
metrics/auc/strided_slice_5StridedSlicemetrics/auc/div_3!metrics/auc/strided_slice_5/stack#metrics/auc/strided_slice_5/stack_1#metrics/auc/strided_slice_5/stack_2*
Index0*
T0*

begin_mask*
_output_shapes	
:Ч
k
!metrics/auc/strided_slice_6/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_6/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ю
metrics/auc/strided_slice_6StridedSlicemetrics/auc/div_3!metrics/auc/strided_slice_6/stack#metrics/auc/strided_slice_6/stack_1#metrics/auc/strided_slice_6/stack_2*
end_mask*
_output_shapes	
:Ч*
Index0*
T0
x
metrics/auc/sub_1Submetrics/auc/strided_slice_5metrics/auc/strided_slice_6*
T0*
_output_shapes	
:Ч
k
!metrics/auc/strided_slice_7/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
#metrics/auc/strided_slice_7/stack_1Const*
_output_shapes
:*
valueB:Ч*
dtype0
m
#metrics/auc/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
№
metrics/auc/strided_slice_7StridedSlicemetrics/auc/div_2!metrics/auc/strided_slice_7/stack#metrics/auc/strided_slice_7/stack_1#metrics/auc/strided_slice_7/stack_2*
_output_shapes	
:Ч*
T0*
Index0*

begin_mask
k
!metrics/auc/strided_slice_8/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#metrics/auc/strided_slice_8/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
m
#metrics/auc/strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ю
metrics/auc/strided_slice_8StridedSlicemetrics/auc/div_2!metrics/auc/strided_slice_8/stack#metrics/auc/strided_slice_8/stack_1#metrics/auc/strided_slice_8/stack_2*
Index0*
T0*
end_mask*
_output_shapes	
:Ч
{
metrics/auc/add_11AddV2metrics/auc/strided_slice_7metrics/auc/strided_slice_8*
T0*
_output_shapes	
:Ч
\
metrics/auc/truediv_1/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
s
metrics/auc/truediv_1RealDivmetrics/auc/add_11metrics/auc/truediv_1/y*
T0*
_output_shapes	
:Ч
h
metrics/auc/Mul_5Mulmetrics/auc/sub_1metrics/auc/truediv_1*
T0*
_output_shapes	
:Ч
]
metrics/auc/Const_2Const*
dtype0*
_output_shapes
:*
valueB: 
e
metrics/auc/update_opSummetrics/auc/Mul_5metrics/auc/Const_2*
T0*
_output_shapes
: 
{
6metrics/auc_precision_recall/broadcast_weights/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Qmetrics/auc_precision_recall/broadcast_weights/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
valueB *
dtype0

Pmetrics/auc_precision_recall/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

Pmetrics/auc_precision_recall/broadcast_weights/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
_output_shapes
:

Ometrics/auc_precision_recall/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
g
_metrics/auc_precision_recall/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
щ
>metrics/auc_precision_recall/broadcast_weights/ones_like/ShapeShapehead/predictions/logistic`^metrics/auc_precision_recall/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0
х
>metrics/auc_precision_recall/broadcast_weights/ones_like/ConstConst`^metrics/auc_precision_recall/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ђ
8metrics/auc_precision_recall/broadcast_weights/ones_likeFill>metrics/auc_precision_recall/broadcast_weights/ones_like/Shape>metrics/auc_precision_recall/broadcast_weights/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
й
.metrics/auc_precision_recall/broadcast_weightsMul6metrics/auc_precision_recall/broadcast_weights/weights8metrics/auc_precision_recall/broadcast_weights/ones_like*'
_output_shapes
:џџџџџџџџџ*
T0
h
#metrics/auc_precision_recall/Cast/xConst*
_output_shapes
: *
valueB
 *    *
dtype0
Р
>metrics/auc_precision_recall/assert_greater_equal/GreaterEqualGreaterEqualhead/predictions/logistic#metrics/auc_precision_recall/Cast/x*'
_output_shapes
:џџџџџџџџџ*
T0

7metrics/auc_precision_recall/assert_greater_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Э
5metrics/auc_precision_recall/assert_greater_equal/AllAll>metrics/auc_precision_recall/assert_greater_equal/GreaterEqual7metrics/auc_precision_recall/assert_greater_equal/Const*
_output_shapes
: 

>metrics/auc_precision_recall/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *.
value%B# Bpredictions must be in [0, 1]*
dtype0
Ќ
@metrics/auc_precision_recall/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *<
value3B1 B+Condition x >= y did not hold element-wise:*
dtype0
Ѓ
@metrics/auc_precision_recall/assert_greater_equal/Assert/Const_2Const*3
value*B( B"x (head/predictions/logistic:0) = *
dtype0*
_output_shapes
: 
­
@metrics/auc_precision_recall/assert_greater_equal/Assert/Const_3Const*=
value4B2 B,y (metrics/auc_precision_recall/Cast/x:0) = *
dtype0*
_output_shapes
: 
ц
Kmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/SwitchSwitch5metrics/auc_precision_recall/assert_greater_equal/All5metrics/auc_precision_recall/assert_greater_equal/All*
_output_shapes
: : *
T0

Щ
Mmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_tIdentityMmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Ч
Mmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_fIdentityKmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Switch*
_output_shapes
: *
T0

А
Lmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_idIdentity5metrics/auc_precision_recall/assert_greater_equal/All*
_output_shapes
: *
T0

Ё
Imetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/NoOpNoOpN^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_t

Wmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependencyIdentityMmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_tJ^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*`
_classV
TRloc:@metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 

Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_0ConstN^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 

Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_1ConstN^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *<
value3B1 B+Condition x >= y did not hold element-wise:*
dtype0

Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_2ConstN^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f*3
value*B( B"x (head/predictions/logistic:0) = *
dtype0*
_output_shapes
: 

Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_4ConstN^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f*=
value4B2 B,y (metrics/auc_precision_recall/Cast/x:0) = *
dtype0*
_output_shapes
: 
Ж
Kmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/AssertAssertRmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/SwitchRmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_0Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_1Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_2Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_4Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2*
T

2
Ю
Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/SwitchSwitch5metrics/auc_precision_recall/assert_greater_equal/AllLmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id*H
_class>
<:loc:@metrics/auc_precision_recall/assert_greater_equal/All*
_output_shapes
: : *
T0

К
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/predictions/logisticLmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*
T0*,
_class"
 loc:@head/predictions/logistic
Ќ
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2Switch#metrics/auc_precision_recall/Cast/xLmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id*
T0*6
_class,
*(loc:@metrics/auc_precision_recall/Cast/x*
_output_shapes
: : 

Ymetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependency_1IdentityMmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_fL^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert*
_output_shapes
: *
T0
*`
_classV
TRloc:@metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f
Г
Jmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/MergeMergeYmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependency_1Wmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
j
%metrics/auc_precision_recall/Cast_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Й
8metrics/auc_precision_recall/assert_less_equal/LessEqual	LessEqualhead/predictions/logistic%metrics/auc_precision_recall/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ

4metrics/auc_precision_recall/assert_less_equal/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
С
2metrics/auc_precision_recall/assert_less_equal/AllAll8metrics/auc_precision_recall/assert_less_equal/LessEqual4metrics/auc_precision_recall/assert_less_equal/Const*
_output_shapes
: 

;metrics/auc_precision_recall/assert_less_equal/Assert/ConstConst*
_output_shapes
: *.
value%B# Bpredictions must be in [0, 1]*
dtype0
Љ
=metrics/auc_precision_recall/assert_less_equal/Assert/Const_1Const*<
value3B1 B+Condition x <= y did not hold element-wise:*
dtype0*
_output_shapes
: 
 
=metrics/auc_precision_recall/assert_less_equal/Assert/Const_2Const*3
value*B( B"x (head/predictions/logistic:0) = *
dtype0*
_output_shapes
: 
Ќ
=metrics/auc_precision_recall/assert_less_equal/Assert/Const_3Const*?
value6B4 B.y (metrics/auc_precision_recall/Cast_1/x:0) = *
dtype0*
_output_shapes
: 
н
Hmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/SwitchSwitch2metrics/auc_precision_recall/assert_less_equal/All2metrics/auc_precision_recall/assert_less_equal/All*
T0
*
_output_shapes
: : 
У
Jmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_tIdentityJmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
С
Jmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_fIdentityHmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Switch*
_output_shapes
: *
T0

Њ
Imetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_idIdentity2metrics/auc_precision_recall/assert_less_equal/All*
_output_shapes
: *
T0


Fmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/NoOpNoOpK^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_t
ѕ
Tmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependencyIdentityJmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_tG^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/NoOp*]
_classS
QOloc:@metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: *
T0

њ
Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_0ConstK^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *.
value%B# Bpredictions must be in [0, 1]*
dtype0

Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_1ConstK^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *<
value3B1 B+Condition x <= y did not hold element-wise:*
dtype0
џ
Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_2ConstK^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *3
value*B( B"x (head/predictions/logistic:0) = *
dtype0

Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_4ConstK^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f*?
value6B4 B.y (metrics/auc_precision_recall/Cast_1/x:0) = *
dtype0*
_output_shapes
: 

Hmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/AssertAssertOmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/SwitchOmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_0Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_1Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_2Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_4Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_2*
T

2
Т
Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch2metrics/auc_precision_recall/assert_less_equal/AllImetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id*
T0
*E
_class;
97loc:@metrics/auc_precision_recall/assert_less_equal/All*
_output_shapes
: : 
Д
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/predictions/logisticImetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id*
T0*,
_class"
 loc:@head/predictions/logistic*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
Њ
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_2Switch%metrics/auc_precision_recall/Cast_1/xImetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id*
_output_shapes
: : *
T0*8
_class.
,*loc:@metrics/auc_precision_recall/Cast_1/x
љ
Vmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentityJmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_fI^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert*
T0
*]
_classS
QOloc:@metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
Њ
Gmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/MergeMergeVmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependency_1Tmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependency*
_output_shapes
: : *
T0
*
N

#metrics/auc_precision_recall/Cast_2Casthead/assert_range/IdentityK^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/MergeH^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Merge*

SrcT0*'
_output_shapes
:џџџџџџџџџ*

DstT0

{
*metrics/auc_precision_recall/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"џџџџ   
Ј
$metrics/auc_precision_recall/ReshapeReshapehead/predictions/logistic*metrics/auc_precision_recall/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ
}
,metrics/auc_precision_recall/Reshape_1/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:
Ж
&metrics/auc_precision_recall/Reshape_1Reshape#metrics/auc_precision_recall/Cast_2,metrics/auc_precision_recall/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
v
"metrics/auc_precision_recall/ShapeShape$metrics/auc_precision_recall/Reshape*
T0*
_output_shapes
:
z
0metrics/auc_precision_recall/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
|
2metrics/auc_precision_recall/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
|
2metrics/auc_precision_recall/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
О
*metrics/auc_precision_recall/strided_sliceStridedSlice"metrics/auc_precision_recall/Shape0metrics/auc_precision_recall/strided_slice/stack2metrics/auc_precision_recall/strided_slice/stack_12metrics/auc_precision_recall/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

"metrics/auc_precision_recall/ConstConst*Й
valueЏBЌШ" ПжГЯЉЄ;ЯЉ$<Зўv<ЯЉЄ<CдЭ<Зўі<=ЯЉ$=	?9=CдM=}ib=Зўv=јЩ==2_=ЯЉЄ=lєЎ=	?Й=ІУ=CдЭ=ри=}iт=Дь=Зўі=ЊЄ >јЩ>Gя
>>ф9>2_>>ЯЉ$>Я)>lє.>Л4>	?9>Wd>>ІC>єЎH>CдM>љR>рX>.D]>}ib>Ыg>Дl>hйq>Зўv>$|>ЊЄ>Q7>јЩ> \>Gя>ю>><Ї>ф9>Ь>2_>йё>>(Ђ>ЯЉЄ>v<Ї>ЯЉ>ХaЌ>lєЎ>Б>ЛД>bЌЖ>	?Й>АбЛ>WdО>џіР>ІУ>MЦ>єЎШ>AЫ>CдЭ>ъfа>љв>9е>ри>Бк>.Dн>жжп>}iт>$ќф>Ыч>r!ъ>Дь>СFя>hйё>lє>Зўі>^љ>$ќ>ЌЖў>ЊЄ ?§э?Q7?Ѕ?јЩ?L? \?ѓЅ	?Gя
?8?ю?BЫ??щ]?<Ї?№?ф9?7?Ь?п?2_?Ј?йё?-;??дЭ ?("?{`#?ЯЉ$?#ѓ%?v<'?Ъ(?Я)?q+?Хa,?Ћ-?lє.?Р=0?1?gа2?Л4?c5?bЌ6?Еѕ7?	?9?]:?Аб;?=?Wd>?Ћ­??џі@?R@B?ІC?њвD?MF?ЁeG?єЎH?HјI?AK?яL?CдM?O?ъfP?>АQ?љR?хBT?9U?еV?рX?3hY?БZ?лњ[?.D]?^?жж_?) a?}ib?аВc?$ќd?xEf?Ыg?иh?r!j?Цjk?Дl?m§m?СFo?p?hйq?М"s?lt?cЕu?Зўv?
Hx?^y?Вкz?$|?Ym}?ЌЖ~? ?*
dtype0*
_output_shapes	
:Ш
u
+metrics/auc_precision_recall/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
А
'metrics/auc_precision_recall/ExpandDims
ExpandDims"metrics/auc_precision_recall/Const+metrics/auc_precision_recall/ExpandDims/dim*
T0*
_output_shapes
:	Ш
f
$metrics/auc_precision_recall/stack/0Const*
_output_shapes
: *
value	B :*
dtype0
Њ
"metrics/auc_precision_recall/stackPack$metrics/auc_precision_recall/stack/0*metrics/auc_precision_recall/strided_slice*
T0*
N*
_output_shapes
:
Љ
!metrics/auc_precision_recall/TileTile'metrics/auc_precision_recall/ExpandDims"metrics/auc_precision_recall/stack*
T0*(
_output_shapes
:Шџџџџџџџџџ
|
+metrics/auc_precision_recall/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
И
&metrics/auc_precision_recall/transpose	Transpose$metrics/auc_precision_recall/Reshape+metrics/auc_precision_recall/transpose/perm*'
_output_shapes
:џџџџџџџџџ*
T0
~
-metrics/auc_precision_recall/Tile_1/multiplesConst*
dtype0*
_output_shapes
:*
valueB"Ш      
Е
#metrics/auc_precision_recall/Tile_1Tile&metrics/auc_precision_recall/transpose-metrics/auc_precision_recall/Tile_1/multiples*
T0*(
_output_shapes
:Шџџџџџџџџџ
Њ
$metrics/auc_precision_recall/GreaterGreater#metrics/auc_precision_recall/Tile_1!metrics/auc_precision_recall/Tile*
T0*(
_output_shapes
:Шџџџџџџџџџ

'metrics/auc_precision_recall/LogicalNot
LogicalNot$metrics/auc_precision_recall/Greater*(
_output_shapes
:Шџџџџџџџџџ
~
-metrics/auc_precision_recall/Tile_2/multiplesConst*
valueB"Ш      *
dtype0*
_output_shapes
:
Е
#metrics/auc_precision_recall/Tile_2Tile&metrics/auc_precision_recall/Reshape_1-metrics/auc_precision_recall/Tile_2/multiples*
T0
*(
_output_shapes
:Шџџџџџџџџџ

)metrics/auc_precision_recall/LogicalNot_1
LogicalNot#metrics/auc_precision_recall/Tile_2*(
_output_shapes
:Шџџџџџџџџџ
Б
Smetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shapeShape.metrics/auc_precision_recall/broadcast_weights*
_output_shapes
:*
T0

Rmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Rmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
_output_shapes
:

Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :

Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
 
Ometrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalarEqualQmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar/xRmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
Њ
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/SwitchSwitchOmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalarOmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
щ
]metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_tIdentity]metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch:1*
_output_shapes
: *
T0

ч
]metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_fIdentity[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
к
\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_idIdentityOmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: *
T0


]metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1SwitchOmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0
*b
_classX
VTloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
Б
{metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
_output_shapes
: *
T0
Ч
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchQmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/rank\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*d
_classZ
XVloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/rank
Ы
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchRmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rank\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*e
_class[
YWloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rank*
_output_shapes
: : 

umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitch{metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank{metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitywmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 

wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityumetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0

 
vmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentity{metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
д
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
ы
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
T0*
_output_shapes

:
р
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchRmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*e
_class[
YWloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
М
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchvmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*e
_class[
YWloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
л
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
Ь
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
п
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapemetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
_output_shapes

:*
T0
Ш
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
ь
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likemetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*
_output_shapes

:*
T0
ж
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ё
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:
ф
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchSmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*f
_class\
ZXloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::*
T0
С
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchvmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*f
_class\
ZXloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
Ќ
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b
з
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizemetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0
О
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
value	B : *
dtype0
Р
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
­
wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switch{metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankvmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_class
loc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
Ѓ
tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergewmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
ц
Zmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeMergetmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
Г
Kmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

Mmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
О
Mmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/Const_2Const*A
value8B6 B0metrics/auc_precision_recall/broadcast_weights:0*
dtype0*
_output_shapes
: 

Mmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Љ
Mmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/Const_4Const*,
value#B! Bhead/predictions/logistic:0*
dtype0*
_output_shapes
: 

Mmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Н
Xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/SwitchSwitchZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

у
Zmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tIdentityZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
с
Zmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fIdentityXmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch*
_output_shapes
: *
T0

т
Ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_idIdentityZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
Л
Vmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOpNoOp[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t
Е
dmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependencyIdentityZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tW^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOp*
T0
*m
_classc
a_loc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 
Є
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
­
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*A
value8B6 B0metrics/auc_precision_recall/broadcast_weights:0*
dtype0*
_output_shapes
: 

_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 

_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*,
value#B! Bhead/predictions/logistic:0*
dtype0*
_output_shapes
: 

_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Ц
Xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/AssertAssert_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	

В
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchSwitchZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeYmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
_output_shapes
: : *
T0
*m
_classc
a_loc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge
Ў
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchSmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shapeYmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*f
_class\
ZXloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
Ќ
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchRmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shapeYmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*e
_class[
YWloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::

ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchOmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalarYmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*b
_classX
VTloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
Й
fmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1IdentityZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fY^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert*
T0
*m
_classc
a_loc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
к
Wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/MergeMergefmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1dmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency*
_output_shapes
: : *
T0
*
N
у
@metrics/auc_precision_recall/broadcast_weights_1/ones_like/ShapeShapehead/predictions/logisticX^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
_output_shapes
:*
T0
п
@metrics/auc_precision_recall/broadcast_weights_1/ones_like/ConstConstX^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ј
:metrics/auc_precision_recall/broadcast_weights_1/ones_likeFill@metrics/auc_precision_recall/broadcast_weights_1/ones_like/Shape@metrics/auc_precision_recall/broadcast_weights_1/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
е
0metrics/auc_precision_recall/broadcast_weights_1Mul.metrics/auc_precision_recall/broadcast_weights:metrics/auc_precision_recall/broadcast_weights_1/ones_like*'
_output_shapes
:џџџџџџџџџ*
T0
}
,metrics/auc_precision_recall/Reshape_2/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:
У
&metrics/auc_precision_recall/Reshape_2Reshape0metrics/auc_precision_recall/broadcast_weights_1,metrics/auc_precision_recall/Reshape_2/shape*
T0*'
_output_shapes
:џџџџџџџџџ
~
-metrics/auc_precision_recall/Tile_3/multiplesConst*
valueB"Ш      *
dtype0*
_output_shapes
:
Е
#metrics/auc_precision_recall/Tile_3Tile&metrics/auc_precision_recall/Reshape_2-metrics/auc_precision_recall/Tile_3/multiples*
T0*(
_output_shapes
:Шџџџџџџџџџ
Ь
=metrics/auc_precision_recall/true_positives/Initializer/zerosConst*
valueBШ*    *>
_class4
20loc:@metrics/auc_precision_recall/true_positives*
dtype0*
_output_shapes	
:Ш
Е
+metrics/auc_precision_recall/true_positives
VariableV2*>
_class4
20loc:@metrics/auc_precision_recall/true_positives*
dtype0*
_output_shapes	
:Ш*
shape:Ш

2metrics/auc_precision_recall/true_positives/AssignAssign+metrics/auc_precision_recall/true_positives=metrics/auc_precision_recall/true_positives/Initializer/zeros*
_output_shapes	
:Ш*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_positives
Я
0metrics/auc_precision_recall/true_positives/readIdentity+metrics/auc_precision_recall/true_positives*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_positives*
_output_shapes	
:Ш
Њ
'metrics/auc_precision_recall/LogicalAnd
LogicalAnd#metrics/auc_precision_recall/Tile_2$metrics/auc_precision_recall/Greater*(
_output_shapes
:Шџџџџџџџџџ

#metrics/auc_precision_recall/Cast_3Cast'metrics/auc_precision_recall/LogicalAnd*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ*

DstT0
Є
 metrics/auc_precision_recall/mulMul#metrics/auc_precision_recall/Cast_3#metrics/auc_precision_recall/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
t
2metrics/auc_precision_recall/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ѓ
 metrics/auc_precision_recall/SumSum metrics/auc_precision_recall/mul2metrics/auc_precision_recall/Sum/reduction_indices*
T0*
_output_shapes	
:Ш
ш
&metrics/auc_precision_recall/AssignAdd	AssignAdd+metrics/auc_precision_recall/true_positives metrics/auc_precision_recall/Sum*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_positives*
_output_shapes	
:Ш
Ю
>metrics/auc_precision_recall/false_negatives/Initializer/zerosConst*
valueBШ*    *?
_class5
31loc:@metrics/auc_precision_recall/false_negatives*
dtype0*
_output_shapes	
:Ш
З
,metrics/auc_precision_recall/false_negatives
VariableV2*
dtype0*
_output_shapes	
:Ш*
shape:Ш*?
_class5
31loc:@metrics/auc_precision_recall/false_negatives

3metrics/auc_precision_recall/false_negatives/AssignAssign,metrics/auc_precision_recall/false_negatives>metrics/auc_precision_recall/false_negatives/Initializer/zeros*
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_negatives*
_output_shapes	
:Ш
в
1metrics/auc_precision_recall/false_negatives/readIdentity,metrics/auc_precision_recall/false_negatives*?
_class5
31loc:@metrics/auc_precision_recall/false_negatives*
_output_shapes	
:Ш*
T0
Џ
)metrics/auc_precision_recall/LogicalAnd_1
LogicalAnd#metrics/auc_precision_recall/Tile_2'metrics/auc_precision_recall/LogicalNot*(
_output_shapes
:Шџџџџџџџџџ

#metrics/auc_precision_recall/Cast_4Cast)metrics/auc_precision_recall/LogicalAnd_1*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ*

DstT0
І
"metrics/auc_precision_recall/mul_1Mul#metrics/auc_precision_recall/Cast_4#metrics/auc_precision_recall/Tile_3*(
_output_shapes
:Шџџџџџџџџџ*
T0
v
4metrics/auc_precision_recall/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Љ
"metrics/auc_precision_recall/Sum_1Sum"metrics/auc_precision_recall/mul_14metrics/auc_precision_recall/Sum_1/reduction_indices*
T0*
_output_shapes	
:Ш
ю
(metrics/auc_precision_recall/AssignAdd_1	AssignAdd,metrics/auc_precision_recall/false_negatives"metrics/auc_precision_recall/Sum_1*?
_class5
31loc:@metrics/auc_precision_recall/false_negatives*
_output_shapes	
:Ш*
T0
Ь
=metrics/auc_precision_recall/true_negatives/Initializer/zerosConst*
valueBШ*    *>
_class4
20loc:@metrics/auc_precision_recall/true_negatives*
dtype0*
_output_shapes	
:Ш
Е
+metrics/auc_precision_recall/true_negatives
VariableV2*
_output_shapes	
:Ш*
shape:Ш*>
_class4
20loc:@metrics/auc_precision_recall/true_negatives*
dtype0

2metrics/auc_precision_recall/true_negatives/AssignAssign+metrics/auc_precision_recall/true_negatives=metrics/auc_precision_recall/true_negatives/Initializer/zeros*
_output_shapes	
:Ш*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_negatives
Я
0metrics/auc_precision_recall/true_negatives/readIdentity+metrics/auc_precision_recall/true_negatives*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_negatives*
_output_shapes	
:Ш
Е
)metrics/auc_precision_recall/LogicalAnd_2
LogicalAnd)metrics/auc_precision_recall/LogicalNot_1'metrics/auc_precision_recall/LogicalNot*(
_output_shapes
:Шџџџџџџџџџ

#metrics/auc_precision_recall/Cast_5Cast)metrics/auc_precision_recall/LogicalAnd_2*(
_output_shapes
:Шџџџџџџџџџ*

DstT0*

SrcT0

І
"metrics/auc_precision_recall/mul_2Mul#metrics/auc_precision_recall/Cast_5#metrics/auc_precision_recall/Tile_3*(
_output_shapes
:Шџџџџџџџџџ*
T0
v
4metrics/auc_precision_recall/Sum_2/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Љ
"metrics/auc_precision_recall/Sum_2Sum"metrics/auc_precision_recall/mul_24metrics/auc_precision_recall/Sum_2/reduction_indices*
_output_shapes	
:Ш*
T0
ь
(metrics/auc_precision_recall/AssignAdd_2	AssignAdd+metrics/auc_precision_recall/true_negatives"metrics/auc_precision_recall/Sum_2*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_negatives*
_output_shapes	
:Ш
Ю
>metrics/auc_precision_recall/false_positives/Initializer/zerosConst*
_output_shapes	
:Ш*
valueBШ*    *?
_class5
31loc:@metrics/auc_precision_recall/false_positives*
dtype0
З
,metrics/auc_precision_recall/false_positives
VariableV2*
_output_shapes	
:Ш*
shape:Ш*?
_class5
31loc:@metrics/auc_precision_recall/false_positives*
dtype0

3metrics/auc_precision_recall/false_positives/AssignAssign,metrics/auc_precision_recall/false_positives>metrics/auc_precision_recall/false_positives/Initializer/zeros*
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_positives*
_output_shapes	
:Ш
в
1metrics/auc_precision_recall/false_positives/readIdentity,metrics/auc_precision_recall/false_positives*
_output_shapes	
:Ш*
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_positives
В
)metrics/auc_precision_recall/LogicalAnd_3
LogicalAnd)metrics/auc_precision_recall/LogicalNot_1$metrics/auc_precision_recall/Greater*(
_output_shapes
:Шџџџџџџџџџ

#metrics/auc_precision_recall/Cast_6Cast)metrics/auc_precision_recall/LogicalAnd_3*(
_output_shapes
:Шџџџџџџџџџ*

DstT0*

SrcT0

І
"metrics/auc_precision_recall/mul_3Mul#metrics/auc_precision_recall/Cast_6#metrics/auc_precision_recall/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
v
4metrics/auc_precision_recall/Sum_3/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
Љ
"metrics/auc_precision_recall/Sum_3Sum"metrics/auc_precision_recall/mul_34metrics/auc_precision_recall/Sum_3/reduction_indices*
T0*
_output_shapes	
:Ш
ю
(metrics/auc_precision_recall/AssignAdd_3	AssignAdd,metrics/auc_precision_recall/false_positives"metrics/auc_precision_recall/Sum_3*
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_positives*
_output_shapes	
:Ш
g
"metrics/auc_precision_recall/add/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 
Ѕ
 metrics/auc_precision_recall/addAddV20metrics/auc_precision_recall/true_positives/read"metrics/auc_precision_recall/add/y*
T0*
_output_shapes	
:Ш
Ж
"metrics/auc_precision_recall/add_1AddV20metrics/auc_precision_recall/true_positives/read1metrics/auc_precision_recall/false_negatives/read*
T0*
_output_shapes	
:Ш
i
$metrics/auc_precision_recall/add_2/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 

"metrics/auc_precision_recall/add_2AddV2"metrics/auc_precision_recall/add_1$metrics/auc_precision_recall/add_2/y*
T0*
_output_shapes	
:Ш

 metrics/auc_precision_recall/divRealDiv metrics/auc_precision_recall/add"metrics/auc_precision_recall/add_2*
T0*
_output_shapes	
:Ш
i
$metrics/auc_precision_recall/add_3/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 
Љ
"metrics/auc_precision_recall/add_3AddV20metrics/auc_precision_recall/true_positives/read$metrics/auc_precision_recall/add_3/y*
T0*
_output_shapes	
:Ш
Ж
"metrics/auc_precision_recall/add_4AddV20metrics/auc_precision_recall/true_positives/read1metrics/auc_precision_recall/false_positives/read*
T0*
_output_shapes	
:Ш
i
$metrics/auc_precision_recall/add_5/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 

"metrics/auc_precision_recall/add_5AddV2"metrics/auc_precision_recall/add_4$metrics/auc_precision_recall/add_5/y*
_output_shapes	
:Ш*
T0

"metrics/auc_precision_recall/div_1RealDiv"metrics/auc_precision_recall/add_3"metrics/auc_precision_recall/add_5*
_output_shapes	
:Ш*
T0
|
2metrics/auc_precision_recall/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:

4metrics/auc_precision_recall/strided_slice_1/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
У
,metrics/auc_precision_recall/strided_slice_1StridedSlice metrics/auc_precision_recall/div2metrics/auc_precision_recall/strided_slice_1/stack4metrics/auc_precision_recall/strided_slice_1/stack_14metrics/auc_precision_recall/strided_slice_1/stack_2*

begin_mask*
Index0*
T0*
_output_shapes	
:Ч
|
2metrics/auc_precision_recall/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
С
,metrics/auc_precision_recall/strided_slice_2StridedSlice metrics/auc_precision_recall/div2metrics/auc_precision_recall/strided_slice_2/stack4metrics/auc_precision_recall/strided_slice_2/stack_14metrics/auc_precision_recall/strided_slice_2/stack_2*
Index0*
T0*
end_mask*
_output_shapes	
:Ч
Љ
 metrics/auc_precision_recall/subSub,metrics/auc_precision_recall/strided_slice_1,metrics/auc_precision_recall/strided_slice_2*
T0*
_output_shapes	
:Ч
|
2metrics/auc_precision_recall/strided_slice_3/stackConst*
_output_shapes
:*
valueB: *
dtype0

4metrics/auc_precision_recall/strided_slice_3/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Х
,metrics/auc_precision_recall/strided_slice_3StridedSlice"metrics/auc_precision_recall/div_12metrics/auc_precision_recall/strided_slice_3/stack4metrics/auc_precision_recall/strided_slice_3/stack_14metrics/auc_precision_recall/strided_slice_3/stack_2*

begin_mask*
T0*
Index0*
_output_shapes	
:Ч
|
2metrics/auc_precision_recall/strided_slice_4/stackConst*
valueB:*
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_4/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
У
,metrics/auc_precision_recall/strided_slice_4StridedSlice"metrics/auc_precision_recall/div_12metrics/auc_precision_recall/strided_slice_4/stack4metrics/auc_precision_recall/strided_slice_4/stack_14metrics/auc_precision_recall/strided_slice_4/stack_2*
end_mask*
_output_shapes	
:Ч*
T0*
Index0
­
"metrics/auc_precision_recall/add_6AddV2,metrics/auc_precision_recall/strided_slice_3,metrics/auc_precision_recall/strided_slice_4*
_output_shapes	
:Ч*
T0
k
&metrics/auc_precision_recall/truediv/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
Ё
$metrics/auc_precision_recall/truedivRealDiv"metrics/auc_precision_recall/add_6&metrics/auc_precision_recall/truediv/y*
T0*
_output_shapes	
:Ч

"metrics/auc_precision_recall/Mul_4Mul metrics/auc_precision_recall/sub$metrics/auc_precision_recall/truediv*
_output_shapes	
:Ч*
T0
n
$metrics/auc_precision_recall/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

"metrics/auc_precision_recall/valueSum"metrics/auc_precision_recall/Mul_4$metrics/auc_precision_recall/Const_1*
T0*
_output_shapes
: 
i
$metrics/auc_precision_recall/add_7/yConst*
dtype0*
_output_shapes
: *
valueB
 *Н75

"metrics/auc_precision_recall/add_7AddV2&metrics/auc_precision_recall/AssignAdd$metrics/auc_precision_recall/add_7/y*
T0*
_output_shapes	
:Ш
Ѓ
"metrics/auc_precision_recall/add_8AddV2&metrics/auc_precision_recall/AssignAdd(metrics/auc_precision_recall/AssignAdd_1*
_output_shapes	
:Ш*
T0
i
$metrics/auc_precision_recall/add_9/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 

"metrics/auc_precision_recall/add_9AddV2"metrics/auc_precision_recall/add_8$metrics/auc_precision_recall/add_9/y*
T0*
_output_shapes	
:Ш

"metrics/auc_precision_recall/div_2RealDiv"metrics/auc_precision_recall/add_7"metrics/auc_precision_recall/add_9*
T0*
_output_shapes	
:Ш
j
%metrics/auc_precision_recall/add_10/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 
Ё
#metrics/auc_precision_recall/add_10AddV2&metrics/auc_precision_recall/AssignAdd%metrics/auc_precision_recall/add_10/y*
T0*
_output_shapes	
:Ш
Є
#metrics/auc_precision_recall/add_11AddV2&metrics/auc_precision_recall/AssignAdd(metrics/auc_precision_recall/AssignAdd_3*
_output_shapes	
:Ш*
T0
j
%metrics/auc_precision_recall/add_12/yConst*
valueB
 *Н75*
dtype0*
_output_shapes
: 

#metrics/auc_precision_recall/add_12AddV2#metrics/auc_precision_recall/add_11%metrics/auc_precision_recall/add_12/y*
T0*
_output_shapes	
:Ш

"metrics/auc_precision_recall/div_3RealDiv#metrics/auc_precision_recall/add_10#metrics/auc_precision_recall/add_12*
T0*
_output_shapes	
:Ш
|
2metrics/auc_precision_recall/strided_slice_5/stackConst*
_output_shapes
:*
valueB: *
dtype0

4metrics/auc_precision_recall/strided_slice_5/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Х
,metrics/auc_precision_recall/strided_slice_5StridedSlice"metrics/auc_precision_recall/div_22metrics/auc_precision_recall/strided_slice_5/stack4metrics/auc_precision_recall/strided_slice_5/stack_14metrics/auc_precision_recall/strided_slice_5/stack_2*

begin_mask*
Index0*
T0*
_output_shapes	
:Ч
|
2metrics/auc_precision_recall/strided_slice_6/stackConst*
valueB:*
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_6/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
У
,metrics/auc_precision_recall/strided_slice_6StridedSlice"metrics/auc_precision_recall/div_22metrics/auc_precision_recall/strided_slice_6/stack4metrics/auc_precision_recall/strided_slice_6/stack_14metrics/auc_precision_recall/strided_slice_6/stack_2*
_output_shapes	
:Ч*
Index0*
T0*
end_mask
Ћ
"metrics/auc_precision_recall/sub_1Sub,metrics/auc_precision_recall/strided_slice_5,metrics/auc_precision_recall/strided_slice_6*
T0*
_output_shapes	
:Ч
|
2metrics/auc_precision_recall/strided_slice_7/stackConst*
valueB: *
dtype0*
_output_shapes
:

4metrics/auc_precision_recall/strided_slice_7/stack_1Const*
valueB:Ч*
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Х
,metrics/auc_precision_recall/strided_slice_7StridedSlice"metrics/auc_precision_recall/div_32metrics/auc_precision_recall/strided_slice_7/stack4metrics/auc_precision_recall/strided_slice_7/stack_14metrics/auc_precision_recall/strided_slice_7/stack_2*
Index0*
T0*

begin_mask*
_output_shapes	
:Ч
|
2metrics/auc_precision_recall/strided_slice_8/stackConst*
valueB:*
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_8/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
~
4metrics/auc_precision_recall/strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
У
,metrics/auc_precision_recall/strided_slice_8StridedSlice"metrics/auc_precision_recall/div_32metrics/auc_precision_recall/strided_slice_8/stack4metrics/auc_precision_recall/strided_slice_8/stack_14metrics/auc_precision_recall/strided_slice_8/stack_2*
end_mask*
_output_shapes	
:Ч*
T0*
Index0
Ў
#metrics/auc_precision_recall/add_13AddV2,metrics/auc_precision_recall/strided_slice_7,metrics/auc_precision_recall/strided_slice_8*
_output_shapes	
:Ч*
T0
m
(metrics/auc_precision_recall/truediv_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
І
&metrics/auc_precision_recall/truediv_1RealDiv#metrics/auc_precision_recall/add_13(metrics/auc_precision_recall/truediv_1/y*
T0*
_output_shapes	
:Ч

"metrics/auc_precision_recall/Mul_5Mul"metrics/auc_precision_recall/sub_1&metrics/auc_precision_recall/truediv_1*
T0*
_output_shapes	
:Ч
n
$metrics/auc_precision_recall/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

&metrics/auc_precision_recall/update_opSum"metrics/auc_precision_recall/Mul_5$metrics/auc_precision_recall/Const_2*
T0*
_output_shapes
: 
Ъ
initNoOp^metrics/accuracy/count/Assign^metrics/accuracy/total/Assign#^metrics/auc/false_negatives/Assign#^metrics/auc/false_positives/Assign"^metrics/auc/true_negatives/Assign"^metrics/auc/true_positives/Assign4^metrics/auc_precision_recall/false_negatives/Assign4^metrics/auc_precision_recall/false_positives/Assign3^metrics/auc_precision_recall/true_negatives/Assign3^metrics/auc_precision_recall/true_positives/Assign"^metrics/average_loss/count/Assign"^metrics/average_loss/total/Assign ^metrics/label/mean/count/Assign ^metrics/label/mean/total/Assign/^metrics/precision/false_positives/count/Assign.^metrics/precision/true_positives/count/Assign%^metrics/prediction/mean/count/Assign%^metrics/prediction/mean/total/Assign,^metrics/recall/false_negatives/count/Assign+^metrics/recall/true_positives/count/Assign
ё
init_all_tablesNoOpj^transform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2l^transform/transform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
shape: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
r
save/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
:d
X
save/IdentityIdentitysave/Read/ReadVariableOp*
T0*
_output_shapes
:d
^
save/Identity_1Identitysave/Identity"/device:CPU:0*
_output_shapes
:d*
T0
z
save/Read_1/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:d
`
save/Identity_2Identitysave/Read_1/ReadVariableOp*
_output_shapes

:d*
T0
d
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
T0*
_output_shapes

:d
t
save/Read_2/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
:F
\
save/Identity_4Identitysave/Read_2/ReadVariableOp*
_output_shapes
:F*
T0
`
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes
:F
z
save/Read_3/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes

:dF
`
save/Identity_6Identitysave/Read_3/ReadVariableOp*
T0*
_output_shapes

:dF
d
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
T0*
_output_shapes

:dF
t
save/Read_4/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
:0
\
save/Identity_8Identitysave/Read_4/ReadVariableOp*
T0*
_output_shapes
:0
`
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
T0*
_output_shapes
:0
z
save/Read_5/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:F0
a
save/Identity_10Identitysave/Read_5/ReadVariableOp*
_output_shapes

:F0*
T0
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0*
_output_shapes

:F0
t
save/Read_6/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0*
dtype0*
_output_shapes
:"
]
save/Identity_12Identitysave/Read_6/ReadVariableOp*
_output_shapes
:"*
T0
b
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
_output_shapes
:"*
T0
z
save/Read_7/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:0"*
dtype0
a
save/Identity_14Identitysave/Read_7/ReadVariableOp*
T0*
_output_shapes

:0"
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
T0*
_output_shapes

:0"
m
save/Read_8/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
_output_shapes
:*
dtype0
]
save/Identity_16Identitysave/Read_8/ReadVariableOp*
_output_shapes
:*
T0
b
save/Identity_17Identitysave/Identity_16"/device:CPU:0*
T0*
_output_shapes
:
s
save/Read_9/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes

:"
a
save/Identity_18Identitysave/Read_9/ReadVariableOp*
T0*
_output_shapes

:"
f
save/Identity_19Identitysave/Identity_18"/device:CPU:0*
_output_shapes

:"*
T0

save/Read_10/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
^
save/Identity_20Identitysave/Read_10/ReadVariableOp*
T0*
_output_shapes
:
b
save/Identity_21Identitysave/Identity_20"/device:CPU:0*
T0*
_output_shapes
:

save/Read_11/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ
c
save/Identity_22Identitysave/Read_11/ReadVariableOp*
_output_shapes
:	ђ*
T0
g
save/Identity_23Identitysave/Identity_22"/device:CPU:0*
T0*
_output_shapes
:	ђ

save/Read_12/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:

b
save/Identity_24Identitysave/Read_12/ReadVariableOp*
_output_shapes

:
*
T0
f
save/Identity_25Identitysave/Identity_24"/device:CPU:0*
T0*
_output_shapes

:


save/Read_13/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
_output_shapes

:
*
dtype0
b
save/Identity_26Identitysave/Read_13/ReadVariableOp*
_output_shapes

:
*
T0
f
save/Identity_27Identitysave/Identity_26"/device:CPU:0*
_output_shapes

:
*
T0

save/Read_14/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ
c
save/Identity_28Identitysave/Read_14/ReadVariableOp*
_output_shapes
:	ђ*
T0
g
save/Identity_29Identitysave/Identity_28"/device:CPU:0*
_output_shapes
:	ђ*
T0

save/Read_15/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:

b
save/Identity_30Identitysave/Read_15/ReadVariableOp*
_output_shapes

:
*
T0
f
save/Identity_31Identitysave/Identity_30"/device:CPU:0*
T0*
_output_shapes

:


save/Read_16/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:

b
save/Identity_32Identitysave/Read_16/ReadVariableOp*
_output_shapes

:
*
T0
f
save/Identity_33Identitysave/Identity_32"/device:CPU:0*
_output_shapes

:
*
T0

save/Read_17/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_34Identitysave/Read_17/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_35Identitysave/Identity_34"/device:CPU:0*
T0*
_output_shapes

:

save/Read_18/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_36Identitysave/Read_18/ReadVariableOp*
_output_shapes

:*
T0
f
save/Identity_37Identitysave/Identity_36"/device:CPU:0*
_output_shapes

:*
T0

save/Read_19/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_38Identitysave/Read_19/ReadVariableOp*
_output_shapes

:*
T0
f
save/Identity_39Identitysave/Identity_38"/device:CPU:0*
_output_shapes

:*
T0

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_b077d220167d4c078b627324a6330a1f/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/Read_20/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:d
m
save/Identity_40Identitysave/Read_20/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:d
b
save/Identity_41Identitysave/Identity_40"/device:CPU:0*
_output_shapes
:d*
T0

save/Read_21/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:d
q
save/Identity_42Identitysave/Read_21/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:d
f
save/Identity_43Identitysave/Identity_42"/device:CPU:0*
T0*
_output_shapes

:d

save/Read_22/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:F
m
save/Identity_44Identitysave/Read_22/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:F
b
save/Identity_45Identitysave/Identity_44"/device:CPU:0*
_output_shapes
:F*
T0

save/Read_23/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:dF
q
save/Identity_46Identitysave/Read_23/ReadVariableOp"/device:CPU:0*
_output_shapes

:dF*
T0
f
save/Identity_47Identitysave/Identity_46"/device:CPU:0*
T0*
_output_shapes

:dF

save/Read_24/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:0
m
save/Identity_48Identitysave/Read_24/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:0
b
save/Identity_49Identitysave/Identity_48"/device:CPU:0*
T0*
_output_shapes
:0

save/Read_25/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0"/device:CPU:0*
_output_shapes

:F0*
dtype0
q
save/Identity_50Identitysave/Read_25/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:F0
f
save/Identity_51Identitysave/Identity_50"/device:CPU:0*
T0*
_output_shapes

:F0

save/Read_26/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:"
m
save/Identity_52Identitysave/Read_26/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:"
b
save/Identity_53Identitysave/Identity_52"/device:CPU:0*
T0*
_output_shapes
:"

save/Read_27/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:0"
q
save/Identity_54Identitysave/Read_27/ReadVariableOp"/device:CPU:0*
_output_shapes

:0"*
T0
f
save/Identity_55Identitysave/Identity_54"/device:CPU:0*
_output_shapes

:0"*
T0
}
save/Read_28/ReadVariableOpReadVariableOpdnn/logits/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_56Identitysave/Read_28/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_57Identitysave/Identity_56"/device:CPU:0*
T0*
_output_shapes
:

save/Read_29/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:"
q
save/Identity_58Identitysave/Read_29/ReadVariableOp"/device:CPU:0*
_output_shapes

:"*
T0
f
save/Identity_59Identitysave/Identity_58"/device:CPU:0*
_output_shapes

:"*
T0

save/Read_30/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
_output_shapes
:*
dtype0
m
save/Identity_60Identitysave/Read_30/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_61Identitysave/Identity_60"/device:CPU:0*
T0*
_output_shapes
:

save/Read_31/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	ђ
r
save/Identity_62Identitysave/Read_31/ReadVariableOp"/device:CPU:0*
_output_shapes
:	ђ*
T0
g
save/Identity_63Identitysave/Identity_62"/device:CPU:0*
_output_shapes
:	ђ*
T0
Ё
save/Read_32/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:

q
save/Identity_64Identitysave/Read_32/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:

f
save/Identity_65Identitysave/Identity_64"/device:CPU:0*
_output_shapes

:
*
T0
Ђ
save/Read_33/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:

q
save/Identity_66Identitysave/Read_33/ReadVariableOp"/device:CPU:0*
_output_shapes

:
*
T0
f
save/Identity_67Identitysave/Identity_66"/device:CPU:0*
T0*
_output_shapes

:


save/Read_34/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	ђ
r
save/Identity_68Identitysave/Read_34/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	ђ
g
save/Identity_69Identitysave/Identity_68"/device:CPU:0*
T0*
_output_shapes
:	ђ
 
save/Read_35/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:

q
save/Identity_70Identitysave/Read_35/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:

f
save/Identity_71Identitysave/Identity_70"/device:CPU:0*
_output_shapes

:
*
T0
Ё
save/Read_36/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:

q
save/Identity_72Identitysave/Read_36/ReadVariableOp"/device:CPU:0*
_output_shapes

:
*
T0
f
save/Identity_73Identitysave/Identity_72"/device:CPU:0*
T0*
_output_shapes

:


save/Read_37/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_74Identitysave/Read_37/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_75Identitysave/Identity_74"/device:CPU:0*
T0*
_output_shapes

:
 
save/Read_38/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_76Identitysave/Read_38/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_77Identitysave/Identity_76"/device:CPU:0*
T0*
_output_shapes

:
Ё
save/Read_39/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_78Identitysave/Read_39/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_79Identitysave/Identity_78"/device:CPU:0*
T0*
_output_shapes

:
Њ
save/SaveV2_1/tensor_namesConst"/device:CPU:0*Ь
valueТBПBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights*
dtype0*
_output_shapes
:

save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*­
valueЃB B	100 0,100B3 100 0,3:0,100B70 0,70B100 70 0,100:0,70B48 0,48B70 48 0,70:0,48B34 0,34B48 34 0,48:0,34B1 0,1B34 1 0,34:0,1B1 0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B31 1 0,31:0,1B24 1 0,24:0,1B12 1 0,12:0,1*
dtype0

save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_41save/Identity_43save/Identity_45save/Identity_47save/Identity_49save/Identity_51save/Identity_53save/Identity_55save/Identity_57save/Identity_59save/Identity_61save/Identity_63save/Identity_65save/Identity_67save/Identity_69save/Identity_71save/Identity_73save/Identity_75save/Identity_77save/Identity_79"/device:CPU:0*"
dtypes
2
Ј
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*)
_class
loc:@save/ShardedFilename_1*
_output_shapes
: 
д
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
N*
_output_shapes
:*
T0
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
Ј
save/Identity_80Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
s
save/AssignAssignglobal_stepsave/RestoreV2*
T0	*
_class
loc:@global_step*
_output_shapes
: 
(
save/restore_shardNoOp^save/Assign
­
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*Ь
valueТBПBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights*
dtype0*
_output_shapes
:

!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*­
valueЃB B	100 0,100B3 100 0,3:0,100B70 0,70B100 70 0,100:0,70B48 0,48B70 48 0,70:0,48B34 0,34B48 34 0,48:0,34B1 0,1B34 1 0,34:0,1B1 0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B31 1 0,31:0,1B24 1 0,24:0,1B12 1 0,12:0,1*
dtype0
щ
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*Ш
_output_shapesЕ
В:d:d:F:dF:0:F0:":0"::"::	ђ:
:
:	ђ:
:
:::*"
dtypes
2
b
save/Identity_81Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes
:d
v
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/bias/part_0save/Identity_81"/device:CPU:0*
dtype0
h
save/Identity_82Identitysave/RestoreV2_1:1"/device:CPU:0*
T0*
_output_shapes

:d
z
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernel/part_0save/Identity_82"/device:CPU:0*
dtype0
d
save/Identity_83Identitysave/RestoreV2_1:2"/device:CPU:0*
T0*
_output_shapes
:F
x
save/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/bias/part_0save/Identity_83"/device:CPU:0*
dtype0
h
save/Identity_84Identitysave/RestoreV2_1:3"/device:CPU:0*
T0*
_output_shapes

:dF
z
save/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernel/part_0save/Identity_84"/device:CPU:0*
dtype0
d
save/Identity_85Identitysave/RestoreV2_1:4"/device:CPU:0*
T0*
_output_shapes
:0
x
save/AssignVariableOp_4AssignVariableOpdnn/hiddenlayer_2/bias/part_0save/Identity_85"/device:CPU:0*
dtype0
h
save/Identity_86Identitysave/RestoreV2_1:5"/device:CPU:0*
T0*
_output_shapes

:F0
z
save/AssignVariableOp_5AssignVariableOpdnn/hiddenlayer_2/kernel/part_0save/Identity_86"/device:CPU:0*
dtype0
d
save/Identity_87Identitysave/RestoreV2_1:6"/device:CPU:0*
T0*
_output_shapes
:"
x
save/AssignVariableOp_6AssignVariableOpdnn/hiddenlayer_3/bias/part_0save/Identity_87"/device:CPU:0*
dtype0
h
save/Identity_88Identitysave/RestoreV2_1:7"/device:CPU:0*
_output_shapes

:0"*
T0
z
save/AssignVariableOp_7AssignVariableOpdnn/hiddenlayer_3/kernel/part_0save/Identity_88"/device:CPU:0*
dtype0
d
save/Identity_89Identitysave/RestoreV2_1:8"/device:CPU:0*
T0*
_output_shapes
:
q
save/AssignVariableOp_8AssignVariableOpdnn/logits/bias/part_0save/Identity_89"/device:CPU:0*
dtype0
h
save/Identity_90Identitysave/RestoreV2_1:9"/device:CPU:0*
_output_shapes

:"*
T0
s
save/AssignVariableOp_9AssignVariableOpdnn/logits/kernel/part_0save/Identity_90"/device:CPU:0*
dtype0
e
save/Identity_91Identitysave/RestoreV2_1:10"/device:CPU:0*
_output_shapes
:*
T0

save/AssignVariableOp_10AssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_91"/device:CPU:0*
dtype0
j
save/Identity_92Identitysave/RestoreV2_1:11"/device:CPU:0*
T0*
_output_shapes
:	ђ

save/AssignVariableOp_11AssignVariableOp-linear/linear_model/company_xf/weights/part_0save/Identity_92"/device:CPU:0*
dtype0
i
save/Identity_93Identitysave/RestoreV2_1:12"/device:CPU:0*
T0*
_output_shapes

:


save/AssignVariableOp_12AssignVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0save/Identity_93"/device:CPU:0*
dtype0
i
save/Identity_94Identitysave/RestoreV2_1:13"/device:CPU:0*
_output_shapes

:
*
T0

save/AssignVariableOp_13AssignVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0save/Identity_94"/device:CPU:0*
dtype0
j
save/Identity_95Identitysave/RestoreV2_1:14"/device:CPU:0*
T0*
_output_shapes
:	ђ

save/AssignVariableOp_14AssignVariableOp2linear/linear_model/payment_type_xf/weights/part_0save/Identity_95"/device:CPU:0*
dtype0
i
save/Identity_96Identitysave/RestoreV2_1:15"/device:CPU:0*
_output_shapes

:
*
T0

save/AssignVariableOp_15AssignVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0save/Identity_96"/device:CPU:0*
dtype0
i
save/Identity_97Identitysave/RestoreV2_1:16"/device:CPU:0*
T0*
_output_shapes

:


save/AssignVariableOp_16AssignVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0save/Identity_97"/device:CPU:0*
dtype0
i
save/Identity_98Identitysave/RestoreV2_1:17"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_17AssignVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0save/Identity_98"/device:CPU:0*
dtype0
i
save/Identity_99Identitysave/RestoreV2_1:18"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_18AssignVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0save/Identity_99"/device:CPU:0*
dtype0
j
save/Identity_100Identitysave/RestoreV2_1:19"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_19AssignVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0save/Identity_100"/device:CPU:0*
dtype0
Л
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"?
save/Const:0save/Identity_80:0save/restore_all (5 @F8"&
losses

head/weighted_loss/Sum:0"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H"v
'evaluation_only/label_graph/example_refK*I
G
)type.googleapis.com/tensorflow.TensorInfo
range:0џџџџџџџџџ"%
saved_model_main_op


group_deps"+
trainable_variables++
ь
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_0/kerneld  "d(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_0/biasd "d(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_1/kerneldF  "dF(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_1/biasF "F(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign5dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_2/kernelF0  "F0(2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign3dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_2/bias0 "0(21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign5dnn/hiddenlayer_3/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_3/kernel0"  "0"(2<dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign3dnn/hiddenlayer_3/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_3/bias" ""(21dnn/hiddenlayer_3/bias/part_0/Initializer/zeros:08
Щ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel"  ""(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
Г
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08
Ћ
/linear/linear_model/company_xf/weights/part_0:04linear/linear_model/company_xf/weights/part_0/AssignClinear/linear_model/company_xf/weights/part_0/Read/ReadVariableOp:0"6
&linear/linear_model/company_xf/weightsђ  "ђ(2Alinear/linear_model/company_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/dropoff_latitude_xf/weights/part_0:0=linear/linear_model/dropoff_latitude_xf/weights/part_0/AssignLlinear/linear_model/dropoff_latitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/dropoff_latitude_xf/weights
  "
(2Jlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zeros:08
л
9linear/linear_model/dropoff_longitude_xf/weights/part_0:0>linear/linear_model/dropoff_longitude_xf/weights/part_0/AssignMlinear/linear_model/dropoff_longitude_xf/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/dropoff_longitude_xf/weights
  "
(2Klinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zeros:08
Ф
4linear/linear_model/payment_type_xf/weights/part_0:09linear/linear_model/payment_type_xf/weights/part_0/AssignHlinear/linear_model/payment_type_xf/weights/part_0/Read/ReadVariableOp:0";
+linear/linear_model/payment_type_xf/weightsђ  "ђ(2Flinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/pickup_latitude_xf/weights/part_0:0<linear/linear_model/pickup_latitude_xf/weights/part_0/AssignKlinear/linear_model/pickup_latitude_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/pickup_latitude_xf/weights
  "
(2Ilinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/pickup_longitude_xf/weights/part_0:0=linear/linear_model/pickup_longitude_xf/weights/part_0/AssignLlinear/linear_model/pickup_longitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/pickup_longitude_xf/weights
  "
(2Jlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zeros:08
Ь
6linear/linear_model/trip_start_day_xf/weights/part_0:0;linear/linear_model/trip_start_day_xf/weights/part_0/AssignJlinear/linear_model/trip_start_day_xf/weights/part_0/Read/ReadVariableOp:0";
-linear/linear_model/trip_start_day_xf/weights  "(2Hlinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/trip_start_hour_xf/weights/part_0:0<linear/linear_model/trip_start_hour_xf/weights/part_0/AssignKlinear/linear_model/trip_start_hour_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/trip_start_hour_xf/weights  "(2Ilinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/trip_start_month_xf/weights/part_0:0=linear/linear_model/trip_start_month_xf/weights/part_0/AssignLlinear/linear_model/trip_start_month_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/trip_start_month_xf/weights  "(2Jlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"Ѓ
	summaries

/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
/dnn/dnn/hiddenlayer_3/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_3/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0
linear/bias:0
!linear/fraction_of_zero_weights:0
'linear/linear/fraction_of_zero_values:0
linear/linear/activation:0"3
%evaluation_only/metadata/tfma_version

0.15.0"
'evaluation_only/label_graph/labels/node`*^
\
)type.googleapis.com/tensorflow.TensorInfo/
transform/transform/Select:0	џџџџџџџџџ"љ(
)evaluation_only/label_graph/features/nodeЫ(*Ш(
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:18ParseExample/ParseExample:0ParseExample/ParseExample:36
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:19ParseExample/ParseExample:1ParseExample/ParseExample:37
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:20ParseExample/ParseExample:2ParseExample/ParseExample:38
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:21ParseExample/ParseExample:3ParseExample/ParseExample:39
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:22ParseExample/ParseExample:4ParseExample/ParseExample:40
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:23ParseExample/ParseExample:5ParseExample/ParseExample:41
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:24ParseExample/ParseExample:6ParseExample/ParseExample:42
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:25ParseExample/ParseExample:7ParseExample/ParseExample:43
І
)type.googleapis.com/tensorflow.TensorInfoy	џџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:26ParseExample/ParseExample:8ParseExample/ParseExample:44
І
)type.googleapis.com/tensorflow.TensorInfoyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:27ParseExample/ParseExample:9ParseExample/ParseExample:45
Ї
)type.googleapis.com/tensorflow.TensorInfozџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:28ParseExample/ParseExample:10ParseExample/ParseExample:46
Ї
)type.googleapis.com/tensorflow.TensorInfozџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:29ParseExample/ParseExample:11ParseExample/ParseExample:47
Ї
)type.googleapis.com/tensorflow.TensorInfozџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:30ParseExample/ParseExample:12ParseExample/ParseExample:48
Ї
)type.googleapis.com/tensorflow.TensorInfozџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:31ParseExample/ParseExample:13ParseExample/ParseExample:49
Ї
)type.googleapis.com/tensorflow.TensorInfoz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:32ParseExample/ParseExample:14ParseExample/ParseExample:50
Ї
)type.googleapis.com/tensorflow.TensorInfoz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:33ParseExample/ParseExample:15ParseExample/ParseExample:51
Ї
)type.googleapis.com/tensorflow.TensorInfoz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:34ParseExample/ParseExample:16ParseExample/ParseExample:52
Ї
)type.googleapis.com/tensorflow.TensorInfoz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:35ParseExample/ParseExample:17ParseExample/ParseExample:53

)type.googleapis.com/tensorflow.TensorInfom
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoo
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfo[
Htransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/Select:0џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfon
[transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_15:0џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_13:0џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfol
Ytransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_14:0	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_11:0	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_10:0	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_12:0џџџџџџџџџ
_
)type.googleapis.com/tensorflow.TensorInfo2
transform/transform/Squeeze_9:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoY
Ftransform/transform/scale_to_z_score/scale_to_z_score_per_key/Select:0џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfo[
Htransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Select:0џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoo
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoo
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ
\
)type.googleapis.com/tensorflow.TensorInfo/
transform/transform/Select:0	џџџџџџџџџ"йѕ
cond_contextЧѕУѕ
Ќ
 dnn/zero_fraction/cond/cond_text dnn/zero_fraction/cond/pred_id:0!dnn/zero_fraction/cond/switch_t:0 *Р
dnn/hiddenlayer_0/Relu:0
dnn/zero_fraction/cond/Cast:0
+dnn/zero_fraction/cond/count_nonzero/Cast:0
,dnn/zero_fraction/cond/count_nonzero/Const:0
6dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
/dnn/zero_fraction/cond/count_nonzero/NotEqual:0
4dnn/zero_fraction/cond/count_nonzero/nonzero_count:0
,dnn/zero_fraction/cond/count_nonzero/zeros:0
 dnn/zero_fraction/cond/pred_id:0
!dnn/zero_fraction/cond/switch_t:0D
 dnn/zero_fraction/cond/pred_id:0 dnn/zero_fraction/cond/pred_id:0R
dnn/hiddenlayer_0/Relu:06dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1

"dnn/zero_fraction/cond/cond_text_1 dnn/zero_fraction/cond/pred_id:0!dnn/zero_fraction/cond/switch_f:0*Џ
dnn/hiddenlayer_0/Relu:0
-dnn/zero_fraction/cond/count_nonzero_1/Cast:0
.dnn/zero_fraction/cond/count_nonzero_1/Const:0
8dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
1dnn/zero_fraction/cond/count_nonzero_1/NotEqual:0
6dnn/zero_fraction/cond/count_nonzero_1/nonzero_count:0
.dnn/zero_fraction/cond/count_nonzero_1/zeros:0
 dnn/zero_fraction/cond/pred_id:0
!dnn/zero_fraction/cond/switch_f:0D
 dnn/zero_fraction/cond/pred_id:0 dnn/zero_fraction/cond/pred_id:0T
dnn/hiddenlayer_0/Relu:08dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ъ
"dnn/zero_fraction_1/cond/cond_text"dnn/zero_fraction_1/cond/pred_id:0#dnn/zero_fraction_1/cond/switch_t:0 *и
dnn/hiddenlayer_1/Relu:0
dnn/zero_fraction_1/cond/Cast:0
-dnn/zero_fraction_1/cond/count_nonzero/Cast:0
.dnn/zero_fraction_1/cond/count_nonzero/Const:0
8dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_1/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_1/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_1/cond/count_nonzero/zeros:0
"dnn/zero_fraction_1/cond/pred_id:0
#dnn/zero_fraction_1/cond/switch_t:0H
"dnn/zero_fraction_1/cond/pred_id:0"dnn/zero_fraction_1/cond/pred_id:0T
dnn/hiddenlayer_1/Relu:08dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
З
$dnn/zero_fraction_1/cond/cond_text_1"dnn/zero_fraction_1/cond/pred_id:0#dnn/zero_fraction_1/cond/switch_f:0*Х
dnn/hiddenlayer_1/Relu:0
/dnn/zero_fraction_1/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_1/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_1/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_1/cond/pred_id:0
#dnn/zero_fraction_1/cond/switch_f:0H
"dnn/zero_fraction_1/cond/pred_id:0"dnn/zero_fraction_1/cond/pred_id:0V
dnn/hiddenlayer_1/Relu:0:dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0
Ъ
"dnn/zero_fraction_2/cond/cond_text"dnn/zero_fraction_2/cond/pred_id:0#dnn/zero_fraction_2/cond/switch_t:0 *и
dnn/hiddenlayer_2/Relu:0
dnn/zero_fraction_2/cond/Cast:0
-dnn/zero_fraction_2/cond/count_nonzero/Cast:0
.dnn/zero_fraction_2/cond/count_nonzero/Const:0
8dnn/zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_2/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_2/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_2/cond/count_nonzero/zeros:0
"dnn/zero_fraction_2/cond/pred_id:0
#dnn/zero_fraction_2/cond/switch_t:0H
"dnn/zero_fraction_2/cond/pred_id:0"dnn/zero_fraction_2/cond/pred_id:0T
dnn/hiddenlayer_2/Relu:08dnn/zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1
З
$dnn/zero_fraction_2/cond/cond_text_1"dnn/zero_fraction_2/cond/pred_id:0#dnn/zero_fraction_2/cond/switch_f:0*Х
dnn/hiddenlayer_2/Relu:0
/dnn/zero_fraction_2/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_2/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_2/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_2/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_2/cond/pred_id:0
#dnn/zero_fraction_2/cond/switch_f:0H
"dnn/zero_fraction_2/cond/pred_id:0"dnn/zero_fraction_2/cond/pred_id:0V
dnn/hiddenlayer_2/Relu:0:dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch:0
Ъ
"dnn/zero_fraction_3/cond/cond_text"dnn/zero_fraction_3/cond/pred_id:0#dnn/zero_fraction_3/cond/switch_t:0 *и
dnn/hiddenlayer_3/Relu:0
dnn/zero_fraction_3/cond/Cast:0
-dnn/zero_fraction_3/cond/count_nonzero/Cast:0
.dnn/zero_fraction_3/cond/count_nonzero/Const:0
8dnn/zero_fraction_3/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_3/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_3/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_3/cond/count_nonzero/zeros:0
"dnn/zero_fraction_3/cond/pred_id:0
#dnn/zero_fraction_3/cond/switch_t:0H
"dnn/zero_fraction_3/cond/pred_id:0"dnn/zero_fraction_3/cond/pred_id:0T
dnn/hiddenlayer_3/Relu:08dnn/zero_fraction_3/cond/count_nonzero/NotEqual/Switch:1
З
$dnn/zero_fraction_3/cond/cond_text_1"dnn/zero_fraction_3/cond/pred_id:0#dnn/zero_fraction_3/cond/switch_f:0*Х
dnn/hiddenlayer_3/Relu:0
/dnn/zero_fraction_3/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_3/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_3/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_3/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_3/cond/pred_id:0
#dnn/zero_fraction_3/cond/switch_f:0H
"dnn/zero_fraction_3/cond/pred_id:0"dnn/zero_fraction_3/cond/pred_id:0V
dnn/hiddenlayer_3/Relu:0:dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/Switch:0
Т
"dnn/zero_fraction_4/cond/cond_text"dnn/zero_fraction_4/cond/pred_id:0#dnn/zero_fraction_4/cond/switch_t:0 *а
dnn/logits/BiasAdd:0
dnn/zero_fraction_4/cond/Cast:0
-dnn/zero_fraction_4/cond/count_nonzero/Cast:0
.dnn/zero_fraction_4/cond/count_nonzero/Const:0
8dnn/zero_fraction_4/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_4/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_4/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_4/cond/count_nonzero/zeros:0
"dnn/zero_fraction_4/cond/pred_id:0
#dnn/zero_fraction_4/cond/switch_t:0H
"dnn/zero_fraction_4/cond/pred_id:0"dnn/zero_fraction_4/cond/pred_id:0P
dnn/logits/BiasAdd:08dnn/zero_fraction_4/cond/count_nonzero/NotEqual/Switch:1
Џ
$dnn/zero_fraction_4/cond/cond_text_1"dnn/zero_fraction_4/cond/pred_id:0#dnn/zero_fraction_4/cond/switch_f:0*Н
dnn/logits/BiasAdd:0
/dnn/zero_fraction_4/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_4/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_4/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_4/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_4/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_4/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_4/cond/pred_id:0
#dnn/zero_fraction_4/cond/switch_f:0H
"dnn/zero_fraction_4/cond/pred_id:0"dnn/zero_fraction_4/cond/pred_id:0R
dnn/logits/BiasAdd:0:dnn/zero_fraction_4/cond/count_nonzero_1/NotEqual/Switch:0
З
4linear/zero_fraction/total_zero/zero_count/cond_text4linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_t:0 *
2linear/zero_fraction/total_zero/zero_count/Const:0
4linear/zero_fraction/total_zero/zero_count/pred_id:0
5linear/zero_fraction/total_zero/zero_count/switch_t:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:0
ъ.
6linear/zero_fraction/total_zero/zero_count/cond_text_14linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_f:0*М
/linear/linear_model/company_xf/weights/part_0:0
&linear/zero_fraction/total_size/Size:0
;linear/zero_fraction/total_zero/zero_count/ToFloat/Switch:0
4linear/zero_fraction/total_zero/zero_count/ToFloat:0
0linear/zero_fraction/total_zero/zero_count/mul:0
4linear/zero_fraction/total_zero/zero_count/pred_id:0
5linear/zero_fraction/total_zero/zero_count/switch_f:0
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual:0
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch:0
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
?linear/zero_fraction/total_zero/zero_count/zero_fraction/Size:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast:0
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge:0
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge:1
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:0
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Cast:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual:0
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Cast:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const:0
_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Xlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1:0
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv:0
Clinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:0e
&linear/zero_fraction/total_size/Size:0;linear/zero_fraction/total_zero/zero_count/ToFloat/Switch:0
/linear/linear_model/company_xf/weights/part_0:0Plinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch:02м

й

Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_textGlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0 *ј
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast:0
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Cast:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual:0
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0Њ
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:02Є

Ё

Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_text_1Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0*Р
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Cast:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const:0
_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Xlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0Ќ
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Ч
6linear/zero_fraction/total_zero/zero_count_1/cond_text6linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_1/Const:0
6linear/zero_fraction/total_zero/zero_count_1/pred_id:0
7linear/zero_fraction/total_zero/zero_count_1/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_1/pred_id:06linear/zero_fraction/total_zero/zero_count_1/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_1/cond_text_16linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_f:0* 
8linear/linear_model/dropoff_latitude_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_1:0
=linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_1/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_1/mul:0
6linear/zero_fraction/total_zero/zero_count_1/pred_id:0
7linear/zero_fraction/total_zero/zero_count_1/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction:0
8linear/linear_model/dropoff_latitude_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch:0i
(linear/zero_fraction/total_size/Size_1:0=linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch:0p
6linear/zero_fraction/total_zero/zero_count_1/pred_id:06linear/zero_fraction/total_zero/zero_count_1/pred_id:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0Ў
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:02Ф

С

Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0А
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Ч
6linear/zero_fraction/total_zero/zero_count_2/cond_text6linear/zero_fraction/total_zero/zero_count_2/pred_id:07linear/zero_fraction/total_zero/zero_count_2/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_2/Const:0
6linear/zero_fraction/total_zero/zero_count_2/pred_id:0
7linear/zero_fraction/total_zero/zero_count_2/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_2/pred_id:06linear/zero_fraction/total_zero/zero_count_2/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_2/cond_text_16linear/zero_fraction/total_zero/zero_count_2/pred_id:07linear/zero_fraction/total_zero/zero_count_2/switch_f:0*Ђ
9linear/linear_model/dropoff_longitude_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_2:0
=linear/zero_fraction/total_zero/zero_count_2/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_2/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_2/mul:0
6linear/zero_fraction/total_zero/zero_count_2/pred_id:0
7linear/zero_fraction/total_zero/zero_count_2/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_2/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_2/pred_id:06linear/zero_fraction/total_zero/zero_count_2/pred_id:0
9linear/linear_model/dropoff_longitude_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/Switch:0i
(linear/zero_fraction/total_size/Size_2:0=linear/zero_fraction/total_zero/zero_count_2/ToFloat/Switch:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t:0Ў
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:02Ф

С

Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f:0А
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Ч
6linear/zero_fraction/total_zero/zero_count_3/cond_text6linear/zero_fraction/total_zero/zero_count_3/pred_id:07linear/zero_fraction/total_zero/zero_count_3/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_3/Const:0
6linear/zero_fraction/total_zero/zero_count_3/pred_id:0
7linear/zero_fraction/total_zero/zero_count_3/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_3/pred_id:06linear/zero_fraction/total_zero/zero_count_3/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_3/cond_text_16linear/zero_fraction/total_zero/zero_count_3/pred_id:07linear/zero_fraction/total_zero/zero_count_3/switch_f:0*
4linear/linear_model/payment_type_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_3:0
=linear/zero_fraction/total_zero/zero_count_3/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_3/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_3/mul:0
6linear/zero_fraction/total_zero/zero_count_3/pred_id:0
7linear/zero_fraction/total_zero/zero_count_3/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_3/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_3/pred_id:06linear/zero_fraction/total_zero/zero_count_3/pred_id:0
4linear/linear_model/payment_type_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/Switch:0i
(linear/zero_fraction/total_size/Size_3:0=linear/zero_fraction/total_zero/zero_count_3/ToFloat/Switch:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t:0Ў
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:02Ф

С

Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f:0А
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Ч
6linear/zero_fraction/total_zero/zero_count_4/cond_text6linear/zero_fraction/total_zero/zero_count_4/pred_id:07linear/zero_fraction/total_zero/zero_count_4/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_4/Const:0
6linear/zero_fraction/total_zero/zero_count_4/pred_id:0
7linear/zero_fraction/total_zero/zero_count_4/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_4/pred_id:06linear/zero_fraction/total_zero/zero_count_4/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_4/cond_text_16linear/zero_fraction/total_zero/zero_count_4/pred_id:07linear/zero_fraction/total_zero/zero_count_4/switch_f:0*
7linear/linear_model/pickup_latitude_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_4:0
=linear/zero_fraction/total_zero/zero_count_4/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_4/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_4/mul:0
6linear/zero_fraction/total_zero/zero_count_4/pred_id:0
7linear/zero_fraction/total_zero/zero_count_4/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_4/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_4/pred_id:06linear/zero_fraction/total_zero/zero_count_4/pred_id:0
7linear/linear_model/pickup_latitude_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/Switch:0i
(linear/zero_fraction/total_size/Size_4:0=linear/zero_fraction/total_zero/zero_count_4/ToFloat/Switch:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t:0
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Ў
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:12Ф

С

Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f:0А
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
Ч
6linear/zero_fraction/total_zero/zero_count_5/cond_text6linear/zero_fraction/total_zero/zero_count_5/pred_id:07linear/zero_fraction/total_zero/zero_count_5/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_5/Const:0
6linear/zero_fraction/total_zero/zero_count_5/pred_id:0
7linear/zero_fraction/total_zero/zero_count_5/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_5/pred_id:06linear/zero_fraction/total_zero/zero_count_5/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_5/cond_text_16linear/zero_fraction/total_zero/zero_count_5/pred_id:07linear/zero_fraction/total_zero/zero_count_5/switch_f:0* 
8linear/linear_model/pickup_longitude_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_5:0
=linear/zero_fraction/total_zero/zero_count_5/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_5/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_5/mul:0
6linear/zero_fraction/total_zero/zero_count_5/pred_id:0
7linear/zero_fraction/total_zero/zero_count_5/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_5/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_5/zero_fraction/fraction:0
8linear/linear_model/pickup_longitude_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp/Switch:0i
(linear/zero_fraction/total_size/Size_5:0=linear/zero_fraction/total_zero/zero_count_5/ToFloat/Switch:0p
6linear/zero_fraction/total_zero/zero_count_5/pred_id:06linear/zero_fraction/total_zero/zero_count_5/pred_id:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_t:0Ў
Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:02Ф

С

Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_f:0А
Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0
Ч
6linear/zero_fraction/total_zero/zero_count_6/cond_text6linear/zero_fraction/total_zero/zero_count_6/pred_id:07linear/zero_fraction/total_zero/zero_count_6/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_6/Const:0
6linear/zero_fraction/total_zero/zero_count_6/pred_id:0
7linear/zero_fraction/total_zero/zero_count_6/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_6/pred_id:06linear/zero_fraction/total_zero/zero_count_6/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_6/cond_text_16linear/zero_fraction/total_zero/zero_count_6/pred_id:07linear/zero_fraction/total_zero/zero_count_6/switch_f:0*
6linear/linear_model/trip_start_day_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_6:0
=linear/zero_fraction/total_zero/zero_count_6/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_6/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_6/mul:0
6linear/zero_fraction/total_zero/zero_count_6/pred_id:0
7linear/zero_fraction/total_zero/zero_count_6/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_6/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_6/zero_fraction/fraction:0i
(linear/zero_fraction/total_size/Size_6:0=linear/zero_fraction/total_zero/zero_count_6/ToFloat/Switch:0p
6linear/zero_fraction/total_zero/zero_count_6/pred_id:06linear/zero_fraction/total_zero/zero_count_6/pred_id:0
6linear/linear_model/trip_start_day_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp/Switch:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_t:0Ў
Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:02Ф

С

Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_f:0А
Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0
Ч
6linear/zero_fraction/total_zero/zero_count_7/cond_text6linear/zero_fraction/total_zero/zero_count_7/pred_id:07linear/zero_fraction/total_zero/zero_count_7/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_7/Const:0
6linear/zero_fraction/total_zero/zero_count_7/pred_id:0
7linear/zero_fraction/total_zero/zero_count_7/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_7/pred_id:06linear/zero_fraction/total_zero/zero_count_7/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_7/cond_text_16linear/zero_fraction/total_zero/zero_count_7/pred_id:07linear/zero_fraction/total_zero/zero_count_7/switch_f:0*
7linear/linear_model/trip_start_hour_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_7:0
=linear/zero_fraction/total_zero/zero_count_7/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_7/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_7/mul:0
6linear/zero_fraction/total_zero/zero_count_7/pred_id:0
7linear/zero_fraction/total_zero/zero_count_7/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_7/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_7/zero_fraction/fraction:0i
(linear/zero_fraction/total_size/Size_7:0=linear/zero_fraction/total_zero/zero_count_7/ToFloat/Switch:0
7linear/linear_model/trip_start_hour_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp/Switch:0p
6linear/zero_fraction/total_zero/zero_count_7/pred_id:06linear/zero_fraction/total_zero/zero_count_7/pred_id:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_t:0Ў
Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:02Ф

С

Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_f:0А
Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0
Ч
6linear/zero_fraction/total_zero/zero_count_8/cond_text6linear/zero_fraction/total_zero/zero_count_8/pred_id:07linear/zero_fraction/total_zero/zero_count_8/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_8/Const:0
6linear/zero_fraction/total_zero/zero_count_8/pred_id:0
7linear/zero_fraction/total_zero/zero_count_8/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_8/pred_id:06linear/zero_fraction/total_zero/zero_count_8/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_8/cond_text_16linear/zero_fraction/total_zero/zero_count_8/pred_id:07linear/zero_fraction/total_zero/zero_count_8/switch_f:0* 
8linear/linear_model/trip_start_month_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_8:0
=linear/zero_fraction/total_zero/zero_count_8/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_8/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_8/mul:0
6linear/zero_fraction/total_zero/zero_count_8/pred_id:0
7linear/zero_fraction/total_zero/zero_count_8/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_8/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_8/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_8/pred_id:06linear/zero_fraction/total_zero/zero_count_8/pred_id:0
8linear/linear_model/trip_start_month_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp/Switch:0i
(linear/zero_fraction/total_size/Size_8:0=linear/zero_fraction/total_zero/zero_count_8/ToFloat/Switch:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_t:0Ў
Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:02Ф

С

Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_f:0А
Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0
П
%linear/zero_fraction_1/cond/cond_text%linear/zero_fraction_1/cond/pred_id:0&linear/zero_fraction_1/cond/switch_t:0 *Ф
<linear/linear_model/linear_model/linear_model/weighted_sum:0
"linear/zero_fraction_1/cond/Cast:0
0linear/zero_fraction_1/cond/count_nonzero/Cast:0
1linear/zero_fraction_1/cond/count_nonzero/Const:0
;linear/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
4linear/zero_fraction_1/cond/count_nonzero/NotEqual:0
9linear/zero_fraction_1/cond/count_nonzero/nonzero_count:0
1linear/zero_fraction_1/cond/count_nonzero/zeros:0
%linear/zero_fraction_1/cond/pred_id:0
&linear/zero_fraction_1/cond/switch_t:0{
<linear/linear_model/linear_model/linear_model/weighted_sum:0;linear/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1N
%linear/zero_fraction_1/cond/pred_id:0%linear/zero_fraction_1/cond/pred_id:0
Љ
'linear/zero_fraction_1/cond/cond_text_1%linear/zero_fraction_1/cond/pred_id:0&linear/zero_fraction_1/cond/switch_f:0*Ў
<linear/linear_model/linear_model/linear_model/weighted_sum:0
2linear/zero_fraction_1/cond/count_nonzero_1/Cast:0
3linear/zero_fraction_1/cond/count_nonzero_1/Const:0
=linear/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0
6linear/zero_fraction_1/cond/count_nonzero_1/NotEqual:0
;linear/zero_fraction_1/cond/count_nonzero_1/nonzero_count:0
3linear/zero_fraction_1/cond/count_nonzero_1/zeros:0
%linear/zero_fraction_1/cond/pred_id:0
&linear/zero_fraction_1/cond/switch_f:0N
%linear/zero_fraction_1/cond/pred_id:0%linear/zero_fraction_1/cond/pred_id:0}
<linear/linear_model/linear_model/linear_model/weighted_sum:0=linear/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0
Ѕ
@head/assert_range/assert_less_equal/Assert/AssertGuard/cond_text@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0Ahead/assert_range/assert_less_equal/Assert/AssertGuard/switch_t:0 *й
Khead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependency:0
@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0
Ahead/assert_range/assert_less_equal/Assert/AssertGuard/switch_t:0
@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0
Б
Bhead/assert_range/assert_less_equal/Assert/AssertGuard/cond_text_1@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0Ahead/assert_range/assert_less_equal/Assert/AssertGuard/switch_f:0*х	
head/ToFloat:0
head/assert_range/Const:0
)head/assert_range/assert_less_equal/All:0
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
Hhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Hhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_4:0
Mhead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0
Ahead/assert_range/assert_less_equal/Assert/AssertGuard/switch_f:0e
head/assert_range/Const:0Hhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0Z
head/ToFloat:0Hhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0s
)head/assert_range/assert_less_equal/All:0Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0
Х
Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_textThead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0Uhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0 *Н
_head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency:0
Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
Uhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0Ќ
Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
ђ
Vhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_text_1Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0Uhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0*ъ	
head/ToFloat:0
=head/assert_range/assert_non_negative/assert_less_equal/All:0
Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
\head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
ahead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
Uhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0
=head/assert_range/assert_non_negative/assert_less_equal/All:0Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0n
head/ToFloat:0\head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0Ќ
Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
ў
Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_textTmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0 *і
Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:0
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0Ќ
Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0 
Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
­[
Vmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text_1Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0*ч*
lmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
lmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
~metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
zmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
|metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0
Imetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/rank:0
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rank:0
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0Ќ
Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Ч
Imetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/rank:0zmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0л
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0и
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ъ
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rank:0|metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:02л#
и#
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textnmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *!
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
~metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0н
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0к
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0р
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02н

к

pmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0р
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ц
smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
­
Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_textQmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0 *Ў
\metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency:0
Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0І
Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0

Smetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text_1Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0*
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7:0
^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1:0
Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0
Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0
Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0І
Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Ј
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0Ї
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0Є
Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0­
Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
К
Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_textYmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0 *Ѓ
Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0
Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:0
Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0Ж
Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Њ
Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
_
[metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text_1Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0*е,
qmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
qmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
~metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
|metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0
Nmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rank:0
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank:0
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0Ж
Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0т
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0е
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0б
Nmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rank:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0х
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:02%
%
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textsmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *Ј"
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
~metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
|metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0Ђ
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0ф
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1ч
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1І
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0ъ
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02

umetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*Б
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0ъ
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0№
xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
е
Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_textVmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0 *Ч
ametrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency:0
Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0А
Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Ї
Xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text_1Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0*
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0
^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7:0
cmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1:0
Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0
Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0
Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0Б
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0З
Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0А
Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0В
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0Ў
Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0

=metrics/auc/assert_greater_equal/Assert/AssertGuard/cond_text=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0>metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_t:0 *Щ
Hmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependency:0
=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0
>metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_t:0~
=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0

?metrics/auc/assert_greater_equal/Assert/AssertGuard/cond_text_1=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0>metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f:0*С	
head/predictions/logistic:0
metrics/auc/Cast/x:0
&metrics/auc/assert_greater_equal/All:0
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0
Emetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
Emetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0:0
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1:0
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_2:0
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_4:0
Jmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1:0
=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0
>metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f:0~
=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0m
&metrics/auc/assert_greater_equal/All:0Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0]
metrics/auc/Cast/x:0Emetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0d
head/predictions/logistic:0Emetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
є
:metrics/auc/assert_less_equal/Assert/AssertGuard/cond_text:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0;metrics/auc/assert_less_equal/Assert/AssertGuard/switch_t:0 *К
Emetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependency:0
:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0
;metrics/auc/assert_less_equal/Assert/AssertGuard/switch_t:0x
:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0
Ь

<metrics/auc/assert_less_equal/Assert/AssertGuard/cond_text_1:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0;metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f:0*	
head/predictions/logistic:0
metrics/auc/Cast_1/x:0
#metrics/auc/assert_less_equal/All:0
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
Bmetrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Bmetrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_4:0
Gmetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0
;metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f:0a
head/predictions/logistic:0Bmetrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0\
metrics/auc/Cast_1/x:0Bmetrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0g
#metrics/auc/assert_less_equal/All:0@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch:0x
:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0
Њ
Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_textMmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0 *З
@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar:0
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:0
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0
Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar:0Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
ѕU
Ometrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text_1Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0*(
emetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
emetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
fmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
fmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
{metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
}metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
|metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
wmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
zmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
rmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
pmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
smetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
umetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0
Bmetrics/auc/broadcast_weights_1/assert_broadcastable/values/rank:0
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/rank:0
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0
Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Ъ
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0М
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/rank:0umetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0Й
Bmetrics/auc/broadcast_weights_1/assert_broadcastable/values/rank:0smetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0Э
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:02к!
з!
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textgmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
{metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
}metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
|metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
wmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
zmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
rmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
pmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0Я
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0в
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ь
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:12



imetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*Х
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0в
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0и
lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ѕ
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_textJmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Kmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0 *
Umetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency:0
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Kmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
П
Lmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text_1Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Kmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0*е
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7:0
Wmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1:0
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Kmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0
@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar:0
Kmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0
Kmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar:0Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0

Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/cond_textNmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0Ometrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_t:0 *
Ymetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependency:0
Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0
Ometrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_t:0 
Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0
ќ
Pmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/cond_text_1Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0Ometrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f:0*
head/predictions/logistic:0
%metrics/auc_precision_recall/Cast/x:0
7metrics/auc_precision_recall/assert_greater_equal/All:0
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0
Vmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
Vmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_0:0
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_1:0
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_2:0
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_4:0
[metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependency_1:0
Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0
Ometrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f:0 
Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0u
head/predictions/logistic:0Vmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
7metrics/auc_precision_recall/assert_greater_equal/All:0Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0
%metrics/auc_precision_recall/Cast/x:0Vmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
§
Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/cond_textKmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0Lmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_t:0 *
Vmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependency:0
Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0
Lmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_t:0
Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0
Ф
Mmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/cond_text_1Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0Lmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f:0*з
head/predictions/logistic:0
'metrics/auc_precision_recall/Cast_1/x:0
4metrics/auc_precision_recall/assert_less_equal/All:0
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
Smetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Smetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_4:0
Xmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0
Lmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f:0
4metrics/auc_precision_recall/assert_less_equal/All:0Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch:0~
'metrics/auc_precision_recall/Cast_1/x:0Smetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0r
head/predictions/logistic:0Smetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0
і
^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0 *а
Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar:0
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:0
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0Р
^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Д
Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar:0_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
c
`metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text_1^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0*Ф.
vmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
vmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
}metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0
Smetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/rank:0
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rank:0
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0м
Smetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/rank:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0я
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0ь
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0п
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rank:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0Р
^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:02Ц&
У&
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textxmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *Я#
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0Ќ
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0є
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ё
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1А
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0ю
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:12е
в
zmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*о
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
}metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0є
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0њ
}metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
§
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0 *р
fmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency:0
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0К
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Н
]metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text_1[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0* 
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0
cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7:0
hmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1:0
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0
Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar:0
\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0К
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0М
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0Л
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0И
Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar:0cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0С
\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0"ь
metric_variablesзд

metrics/label/mean/total:0metrics/label/mean/total/Assignmetrics/label/mean/total/read:02,metrics/label/mean/total/Initializer/zeros:0@H

metrics/label/mean/count:0metrics/label/mean/count/Assignmetrics/label/mean/count/read:02,metrics/label/mean/count/Initializer/zeros:0@H

metrics/average_loss/total:0!metrics/average_loss/total/Assign!metrics/average_loss/total/read:02.metrics/average_loss/total/Initializer/zeros:0@H

metrics/average_loss/count:0!metrics/average_loss/count/Assign!metrics/average_loss/count/read:02.metrics/average_loss/count/Initializer/zeros:0@H

metrics/accuracy/total:0metrics/accuracy/total/Assignmetrics/accuracy/total/read:02*metrics/accuracy/total/Initializer/zeros:0@H

metrics/accuracy/count:0metrics/accuracy/count/Assignmetrics/accuracy/count/read:02*metrics/accuracy/count/Initializer/zeros:0@H
Ш
(metrics/precision/true_positives/count:0-metrics/precision/true_positives/count/Assign-metrics/precision/true_positives/count/read:02:metrics/precision/true_positives/count/Initializer/zeros:0@H
Ь
)metrics/precision/false_positives/count:0.metrics/precision/false_positives/count/Assign.metrics/precision/false_positives/count/read:02;metrics/precision/false_positives/count/Initializer/zeros:0@H
М
%metrics/recall/true_positives/count:0*metrics/recall/true_positives/count/Assign*metrics/recall/true_positives/count/read:027metrics/recall/true_positives/count/Initializer/zeros:0@H
Р
&metrics/recall/false_negatives/count:0+metrics/recall/false_negatives/count/Assign+metrics/recall/false_negatives/count/read:028metrics/recall/false_negatives/count/Initializer/zeros:0@H
Є
metrics/prediction/mean/total:0$metrics/prediction/mean/total/Assign$metrics/prediction/mean/total/read:021metrics/prediction/mean/total/Initializer/zeros:0@H
Є
metrics/prediction/mean/count:0$metrics/prediction/mean/count/Assign$metrics/prediction/mean/count/read:021metrics/prediction/mean/count/Initializer/zeros:0@H

metrics/auc/true_positives:0!metrics/auc/true_positives/Assign!metrics/auc/true_positives/read:02.metrics/auc/true_positives/Initializer/zeros:0@H

metrics/auc/false_negatives:0"metrics/auc/false_negatives/Assign"metrics/auc/false_negatives/read:02/metrics/auc/false_negatives/Initializer/zeros:0@H

metrics/auc/true_negatives:0!metrics/auc/true_negatives/Assign!metrics/auc/true_negatives/read:02.metrics/auc/true_negatives/Initializer/zeros:0@H

metrics/auc/false_positives:0"metrics/auc/false_positives/Assign"metrics/auc/false_positives/read:02/metrics/auc/false_positives/Initializer/zeros:0@H
м
-metrics/auc_precision_recall/true_positives:02metrics/auc_precision_recall/true_positives/Assign2metrics/auc_precision_recall/true_positives/read:02?metrics/auc_precision_recall/true_positives/Initializer/zeros:0@H
р
.metrics/auc_precision_recall/false_negatives:03metrics/auc_precision_recall/false_negatives/Assign3metrics/auc_precision_recall/false_negatives/read:02@metrics/auc_precision_recall/false_negatives/Initializer/zeros:0@H
м
-metrics/auc_precision_recall/true_negatives:02metrics/auc_precision_recall/true_negatives/Assign2metrics/auc_precision_recall/true_negatives/read:02?metrics/auc_precision_recall/true_negatives/Initializer/zeros:0@H
р
.metrics/auc_precision_recall/false_positives:03metrics/auc_precision_recall/false_positives/Assign3metrics/auc_precision_recall/false_positives/read:02@metrics/auc_precision_recall/false_positives/Initializer/zeros:0@H"є
saved_model_assetsн*к
i
+type.googleapis.com/tensorflow.AssetFileDef:
	
Const:0-vocab_compute_and_apply_vocabulary_vocabulary
m
+type.googleapis.com/tensorflow.AssetFileDef>

	Const_1:0/vocab_compute_and_apply_vocabulary_1_vocabulary"
tft_schema_override_minя
ь
Ftransform/transform/compute_and_apply_vocabulary/apply_vocab/Const_1:0
Htransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1:0
3transform/transform/bucketize/apply_buckets/Const:0
5transform/transform/bucketize_1/apply_buckets/Const:0
5transform/transform/bucketize_2/apply_buckets/Const:0
5transform/transform/bucketize_3/apply_buckets/Const:0"Ѓ
tft_schema_override_max

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub:0
Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub:0
;transform/transform/bucketize/apply_buckets/strided_slice:0
=transform/transform/bucketize_1/apply_buckets/strided_slice:0
=transform/transform/bucketize_2/apply_buckets/strided_slice:0
=transform/transform/bucketize_3/apply_buckets/strided_slice:0"ы
local_variablesзд

metrics/label/mean/total:0metrics/label/mean/total/Assignmetrics/label/mean/total/read:02,metrics/label/mean/total/Initializer/zeros:0@H

metrics/label/mean/count:0metrics/label/mean/count/Assignmetrics/label/mean/count/read:02,metrics/label/mean/count/Initializer/zeros:0@H

metrics/average_loss/total:0!metrics/average_loss/total/Assign!metrics/average_loss/total/read:02.metrics/average_loss/total/Initializer/zeros:0@H

metrics/average_loss/count:0!metrics/average_loss/count/Assign!metrics/average_loss/count/read:02.metrics/average_loss/count/Initializer/zeros:0@H

metrics/accuracy/total:0metrics/accuracy/total/Assignmetrics/accuracy/total/read:02*metrics/accuracy/total/Initializer/zeros:0@H

metrics/accuracy/count:0metrics/accuracy/count/Assignmetrics/accuracy/count/read:02*metrics/accuracy/count/Initializer/zeros:0@H
Ш
(metrics/precision/true_positives/count:0-metrics/precision/true_positives/count/Assign-metrics/precision/true_positives/count/read:02:metrics/precision/true_positives/count/Initializer/zeros:0@H
Ь
)metrics/precision/false_positives/count:0.metrics/precision/false_positives/count/Assign.metrics/precision/false_positives/count/read:02;metrics/precision/false_positives/count/Initializer/zeros:0@H
М
%metrics/recall/true_positives/count:0*metrics/recall/true_positives/count/Assign*metrics/recall/true_positives/count/read:027metrics/recall/true_positives/count/Initializer/zeros:0@H
Р
&metrics/recall/false_negatives/count:0+metrics/recall/false_negatives/count/Assign+metrics/recall/false_negatives/count/read:028metrics/recall/false_negatives/count/Initializer/zeros:0@H
Є
metrics/prediction/mean/total:0$metrics/prediction/mean/total/Assign$metrics/prediction/mean/total/read:021metrics/prediction/mean/total/Initializer/zeros:0@H
Є
metrics/prediction/mean/count:0$metrics/prediction/mean/count/Assign$metrics/prediction/mean/count/read:021metrics/prediction/mean/count/Initializer/zeros:0@H

metrics/auc/true_positives:0!metrics/auc/true_positives/Assign!metrics/auc/true_positives/read:02.metrics/auc/true_positives/Initializer/zeros:0@H

metrics/auc/false_negatives:0"metrics/auc/false_negatives/Assign"metrics/auc/false_negatives/read:02/metrics/auc/false_negatives/Initializer/zeros:0@H

metrics/auc/true_negatives:0!metrics/auc/true_negatives/Assign!metrics/auc/true_negatives/read:02.metrics/auc/true_negatives/Initializer/zeros:0@H

metrics/auc/false_positives:0"metrics/auc/false_positives/Assign"metrics/auc/false_positives/read:02/metrics/auc/false_positives/Initializer/zeros:0@H
м
-metrics/auc_precision_recall/true_positives:02metrics/auc_precision_recall/true_positives/Assign2metrics/auc_precision_recall/true_positives/read:02?metrics/auc_precision_recall/true_positives/Initializer/zeros:0@H
р
.metrics/auc_precision_recall/false_negatives:03metrics/auc_precision_recall/false_negatives/Assign3metrics/auc_precision_recall/false_negatives/read:02@metrics/auc_precision_recall/false_negatives/Initializer/zeros:0@H
м
-metrics/auc_precision_recall/true_negatives:02metrics/auc_precision_recall/true_negatives/Assign2metrics/auc_precision_recall/true_negatives/read:02?metrics/auc_precision_recall/true_negatives/Initializer/zeros:0@H
р
.metrics/auc_precision_recall/false_positives:03metrics/auc_precision_recall/false_positives/Assign3metrics/auc_precision_recall/false_positives/read:02@metrics/auc_precision_recall/false_positives/Initializer/zeros:0@H"
(evaluation_only/label_graph/features/keyхт
$Bytes$company
$Bytes$dropoff_census_tract
$Bytes$dropoff_community_area
$Bytes$dropoff_latitude
$Bytes$dropoff_longitude
$Bytes$fare
$Bytes$payment_type
$Bytes$pickup_census_tract
$Bytes$pickup_community_area
$Bytes$pickup_latitude
$Bytes$pickup_longitude
$Bytes$tips
$Bytes$trip_miles
$Bytes$trip_seconds
$Bytes$trip_start_day
$Bytes$trip_start_hour
$Bytes$trip_start_month
$Bytes$trip_start_timestamp
$Bytes$pickup_latitude_xf
$Bytes$dropoff_longitude_xf
$Bytes$fare_xf
$Bytes$company_xf
 $Bytes$dropoff_community_area_xf
$Bytes$dropoff_census_tract_xf
$Bytes$payment_type_xf
$Bytes$pickup_community_area_xf
$Bytes$trip_start_month_xf
$Bytes$trip_start_day_xf
$Bytes$pickup_census_tract_xf
$Bytes$trip_start_hour_xf
$Bytes$trip_miles_xf
$Bytes$trip_seconds_xf
$Bytes$pickup_longitude_xf
$Bytes$dropoff_latitude_xf
$Bytes$tips_xf"=
&evaluation_only/label_graph/labels/key
$Bytes$__labels"я+
	variablesс+о+
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
ь
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_0/kerneld  "d(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_0/biasd "d(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_1/kerneldF  "dF(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_1/biasF "F(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign5dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_2/kernelF0  "F0(2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign3dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_2/bias0 "0(21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign5dnn/hiddenlayer_3/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_3/kernel0"  "0"(2<dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign3dnn/hiddenlayer_3/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_3/bias" ""(21dnn/hiddenlayer_3/bias/part_0/Initializer/zeros:08
Щ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel"  ""(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
Г
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08
Ћ
/linear/linear_model/company_xf/weights/part_0:04linear/linear_model/company_xf/weights/part_0/AssignClinear/linear_model/company_xf/weights/part_0/Read/ReadVariableOp:0"6
&linear/linear_model/company_xf/weightsђ  "ђ(2Alinear/linear_model/company_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/dropoff_latitude_xf/weights/part_0:0=linear/linear_model/dropoff_latitude_xf/weights/part_0/AssignLlinear/linear_model/dropoff_latitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/dropoff_latitude_xf/weights
  "
(2Jlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zeros:08
л
9linear/linear_model/dropoff_longitude_xf/weights/part_0:0>linear/linear_model/dropoff_longitude_xf/weights/part_0/AssignMlinear/linear_model/dropoff_longitude_xf/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/dropoff_longitude_xf/weights
  "
(2Klinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zeros:08
Ф
4linear/linear_model/payment_type_xf/weights/part_0:09linear/linear_model/payment_type_xf/weights/part_0/AssignHlinear/linear_model/payment_type_xf/weights/part_0/Read/ReadVariableOp:0";
+linear/linear_model/payment_type_xf/weightsђ  "ђ(2Flinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/pickup_latitude_xf/weights/part_0:0<linear/linear_model/pickup_latitude_xf/weights/part_0/AssignKlinear/linear_model/pickup_latitude_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/pickup_latitude_xf/weights
  "
(2Ilinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/pickup_longitude_xf/weights/part_0:0=linear/linear_model/pickup_longitude_xf/weights/part_0/AssignLlinear/linear_model/pickup_longitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/pickup_longitude_xf/weights
  "
(2Jlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zeros:08
Ь
6linear/linear_model/trip_start_day_xf/weights/part_0:0;linear/linear_model/trip_start_day_xf/weights/part_0/AssignJlinear/linear_model/trip_start_day_xf/weights/part_0/Read/ReadVariableOp:0";
-linear/linear_model/trip_start_day_xf/weights  "(2Hlinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/trip_start_hour_xf/weights/part_0:0<linear/linear_model/trip_start_hour_xf/weights/part_0/AssignKlinear/linear_model/trip_start_hour_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/trip_start_hour_xf/weights  "(2Ilinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/trip_start_month_xf/weights/part_0:0=linear/linear_model/trip_start_month_xf/weights/part_0/AssignLlinear/linear_model/trip_start_month_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/trip_start_month_xf/weights  "(2Jlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08")
asset_filepaths

Const:0
	Const_1:0"а
tft_schema_override_tensorБ
Ў
Ytransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0
[transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0"ё
table_initializerл
и
itransform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2
ktransform/transform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2*і3
evalэ3

features/payment_typeyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:24ParseExample/ParseExample:6ParseExample/ParseExample:42

features/pickup_latitudeyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:27ParseExample/ParseExample:9ParseExample/ParseExample:45

tfma/version
	Const_2:0 

features/dropoff_latitudeyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:21ParseExample/ParseExample:3ParseExample/ParseExample:39

features/dropoff_latitude_xfo
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ
C
features/tips_xf/
transform/transform/Select:0	џџџџџџџџџ

features/trip_start_hourz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:33ParseExample/ParseExample:15ParseExample/ParseExample:51
X
!features/pickup_community_area_xf3
 transform/transform/Squeeze_14:0	џџџџџџџџџ

features/trip_start_monthz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:34ParseExample/ParseExample:16ParseExample/ParseExample:52

features/dropoff_longitudeyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:22ParseExample/ParseExample:4ParseExample/ParseExample:40

features/pickup_latitude_xfm
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ

features/dropoff_community_areayџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:20ParseExample/ParseExample:2ParseExample/ParseExample:38

features/payment_type_xfl
Ytransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџ
(

input_refs
range:0џџџџџџџџџ

features/trip_start_timestampz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:35ParseExample/ParseExample:17ParseExample/ParseExample:53

features/tipszџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:29ParseExample/ParseExample:11ParseExample/ParseExample:47
Y
"features/dropoff_community_area_xf3
 transform/transform/Squeeze_15:0џџџџџџџџџ
w
features/trip_seconds_xf[
Htransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Select:0џџџџџџџџџ

features/pickup_longitude_xfo
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ
<
inputs/examples)
input_example_tensor:0џџџџџџџџџ

features/trip_mileszџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:30ParseExample/ParseExample:12ParseExample/ParseExample:48
Q
features/trip_start_day_xf3
 transform/transform/Squeeze_10:0	џџџџџџџџџ

features/dropoff_longitude_xfo
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ

features/trip_secondszџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:31ParseExample/ParseExample:13ParseExample/ParseExample:49
o
features/fare_xf[
Htransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/Select:0џџџџџџџџџ

features/pickup_community_areay	џџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:26ParseExample/ParseExample:8ParseExample/ParseExample:44
s
features/trip_miles_xfY
Ftransform/transform/scale_to_z_score/scale_to_z_score_per_key/Select:0џџџџџџџџџ
W
 features/dropoff_census_tract_xf3
 transform/transform/Squeeze_13:0џџџџџџџџџ

features/pickup_census_tractyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:25ParseExample/ParseExample:7ParseExample/ParseExample:43
S
features/trip_start_month_xf3
 transform/transform/Squeeze_11:0	џџџџџџџџџ

features/companyyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:18ParseExample/ParseExample:0ParseExample/ParseExample:36

features/company_xfn
[transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџ

features/dropoff_census_tractyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:19ParseExample/ParseExample:1ParseExample/ParseExample:37
9
labels/
transform/transform/Select:0	џџџџџџџџџ

features/fareyџџџџџџџџџџџџџџџџџџ"Y
ParseExample/ParseExample:23ParseExample/ParseExample:5ParseExample/ParseExample:41

features/trip_start_dayz	џџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:32ParseExample/ParseExample:14ParseExample/ParseExample:50

features/pickup_longitudezџџџџџџџџџџџџџџџџџџ"Z
ParseExample/ParseExample:28ParseExample/ParseExample:10ParseExample/ParseExample:46
V
features/pickup_census_tract_xf3
 transform/transform/Squeeze_12:0џџџџџџџџџ
Q
features/trip_start_hour_xf2
transform/transform/Squeeze_9:0	џџџџџџџџџN
!metrics/prediction/mean/update_op)
#metrics/prediction/mean/update_op:0 F
metrics/prediction/mean/value%
metrics/prediction/mean/value:0 H
metrics/average_loss/update_op&
 metrics/average_loss/update_op:0 @
metrics/accuracy/update_op"
metrics/accuracy/update_op:0 :
metrics/precision/value
metrics/precision/value:0 X
&metrics/auc_precision_recall/update_op.
(metrics/auc_precision_recall/update_op:0 4
metrics/recall/value
metrics/recall/value:0 2
predictions/logits
add:0џџџџџџџџџB
metrics/precision/update_op#
metrics/precision/update_op:0 K
predictions/all_classes0
head/predictions/Tile_1:0џџџџџџџџџ<
metrics/label/mean/value 
metrics/label/mean/value:0 6
metrics/auc/update_op
metrics/auc/update_op:0 D
metrics/label/mean/update_op$
metrics/label/mean/update_op:0 T
predictions/probabilities7
 head/predictions/probabilities:0џџџџџџџџџ&
loss
head/weighted_loss/Sum:0 .
metrics/auc/value
metrics/auc/value:0 P
"metrics/auc_precision_recall/value*
$metrics/auc_precision_recall/value:0 <
metrics/recall/update_op 
metrics/recall/update_op:0 R
#metrics/accuracy_baseline/update_op+
%metrics/accuracy_baseline/update_op:0 M
predictions/class_ids4
head/predictions/ExpandDims:0	џџџџџџџџџK
predictions/all_class_ids.
head/predictions/Tile:0џџџџџџџџџ8
metrics/accuracy/value
metrics/accuracy/value:0 @
metrics/average_loss/value"
metrics/average_loss/value:0 J
metrics/accuracy_baseline/value'
!metrics/accuracy_baseline/value:0 L
predictions/classes5
head/predictions/str_classes:0џџџџџџџџџJ
predictions/logistic2
head/predictions/logistic:0џџџџџџџџџtensorflow/supervised/eval