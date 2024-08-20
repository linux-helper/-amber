.class public Lcom/lua/bsh/ParserTokenManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lua/bsh/ParserConstants;


# static fields
.field static final a:[J

.field static final b:[J

.field static final c:[J

.field static final d:[J

.field static final e:[J

.field static final f:[J

.field static final g:[J

.field static final h:[J

.field static final i:[I

.field static final j:[J

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final k:[J

.field static final l:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field public debugStream:Ljava/io/PrintStream;

.field protected m:Lcom/lua/bsh/JavaCharStream;

.field private final n:[I

.field private final o:[I

.field protected p:C

.field q:I

.field r:I

.field s:I

.field t:I

.field u:I

.field v:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v0, v2, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lua/bsh/ParserTokenManager;->a:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lua/bsh/ParserTokenManager;->b:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lua/bsh/ParserTokenManager;->c:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lua/bsh/ParserTokenManager;->d:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_4

    sput-object v0, Lcom/lua/bsh/ParserTokenManager;->e:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_5

    sput-object v0, Lcom/lua/bsh/ParserTokenManager;->f:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_6

    sput-object v0, Lcom/lua/bsh/ParserTokenManager;->g:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_7

    sput-object v0, Lcom/lua/bsh/ParserTokenManager;->h:[J

    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/lua/bsh/ParserTokenManager;->i:[I

    const/16 v0, 0x86

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v5

    aput-object v3, v0, v6

    const/4 v1, 0x2

    aput-object v3, v0, v1

    aput-object v3, v0, v4

    aput-object v3, v0, v2

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v2, "abstract"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "break"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "class"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "byte"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "case"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "catch"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "char"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "const"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "continue"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "default"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "do"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "double"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "else"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "enum"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "extends"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "false"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "final"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "finally"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "for"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "goto"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "if"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "implements"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "import"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "instanceof"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "interface"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "long"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "native"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "new"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "package"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "private"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "protected"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "public"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "return"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "short"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "static"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "strictfp"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "switch"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "synchronized"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "transient"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "throw"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "throws"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "true"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "try"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "void"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "volatile"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "while"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    aput-object v3, v0, v1

    const/16 v1, 0x3f

    aput-object v3, v0, v1

    const/16 v1, 0x40

    aput-object v3, v0, v1

    const/16 v1, 0x41

    aput-object v3, v0, v1

    const/16 v1, 0x42

    aput-object v3, v0, v1

    const/16 v1, 0x43

    aput-object v3, v0, v1

    const/16 v1, 0x44

    aput-object v3, v0, v1

    const/16 v1, 0x45

    aput-object v3, v0, v1

    const/16 v1, 0x46

    aput-object v3, v0, v1

    const/16 v1, 0x47

    aput-object v3, v0, v1

    const/16 v1, 0x48

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "@gt"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "@lt"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "!"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "=="

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "<="

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "@lteq"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, ">="

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "@gteq"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "!="

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "||"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "@or"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "&&"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "@and"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "++"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "--"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "@bitwise_and"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "@bitwise_or"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "<<"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "@left_shift"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, ">>"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "@right_shift"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, ">>>"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "@right_unsigned_shift"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "+="

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "-="

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "*="

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "/="

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "&="

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "@and_assign"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "|="

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "@or_assign"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "^="

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "%="

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "<<="

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "@left_shift_assign"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, ">>="

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "@right_shift_assign"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, ">>>="

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "@right_unsigned_shift_assign"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lua/bsh/ParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v5

    sput-object v0, Lcom/lua/bsh/ParserTokenManager;->lexStateNames:[Ljava/lang/String;

    new-array v0, v4, [J

    fill-array-data v0, :array_9

    sput-object v0, Lcom/lua/bsh/ParserTokenManager;->j:[J

    new-array v0, v4, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/lua/bsh/ParserTokenManager;->k:[J

    new-array v0, v4, [J

    fill-array-data v0, :array_b

    sput-object v0, Lcom/lua/bsh/ParserTokenManager;->l:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 8
        0x1ff00000fffffffeL
        -0x4000
        0xffffffffL
        0x600000000000000L
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
        -0x80000000800001L
    .end array-data

    :array_4
    .array-data 8
        0x0
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_5
    .array-data 8
        -0x1
        -0x1
        0xffff
        0x0
    .end array-data

    :array_6
    .array-data 8
        -0x1
        -0x1
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x3fffffffffffL
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x25
        0x26
        0x2b
        0x2c
        0x2f
        0x30
        0xf
        0x38
        0x3d
        0x49
        0x1a
        0x1b
        0x1d
        0x11
        0x13
        0x34
        0x36
        0x9
        0x39
        0x3a
        0x3c
        0x2
        0x3
        0x5
        0xb
        0xc
        0xf
        0x1a
        0x1b
        0x1f
        0x1d
        0x27
        0x28
        0xf
        0x2f
        0x30
        0xf
        0x3f
        0x40
        0x42
        0x45
        0x46
        0x48
        0xd
        0xe
        0x14
        0x15
        0x17
        0x1c
        0x1e
        0x20
        0x29
        0x2a
        0x2d
        0x2e
        0x31
        0x32
    .end array-data

    :array_9
    .array-data 8
        0x1ffffffffffffc01L    # 1.491668146239872E-154
        -0xc3
        0x3f
    .end array-data

    :array_a
    .array-data 8
        0x3fe
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 8
        0x380
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/lua/bsh/JavaCharStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/16 v0, 0x4a

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->n:[I

    const/16 v0, 0x94

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->o:[I

    iput v1, p0, Lcom/lua/bsh/ParserTokenManager;->q:I

    iput v1, p0, Lcom/lua/bsh/ParserTokenManager;->r:I

    iput-object p1, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    return-void
.end method

.method public constructor <init>(Lcom/lua/bsh/JavaCharStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/ParserTokenManager;-><init>(Lcom/lua/bsh/JavaCharStream;)V

    invoke-virtual {p0, p2}, Lcom/lua/bsh/ParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final a(III)I
    .locals 1

    iput p2, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    iput p1, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lcom/lua/bsh/ParserTokenManager;->d(II)I

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private final a(IJJJ)I
    .locals 2

    invoke-direct/range {p0 .. p7}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->d(II)I

    move-result v0

    return v0
.end method

.method private final a(JJ)I
    .locals 9

    const/16 v1, 0x15

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    const/16 v1, 0x14

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x61

    if-eq v0, v4, :cond_1

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->b(JJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0x16

    goto :goto_0
.end method

.method private final a(JJJ)I
    .locals 15

    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v1, 0x26

    if-eq v0, v1, :cond_17

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_16

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_15

    const/16 v1, 0x72

    if-eq v0, v1, :cond_14

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_13

    const/16 v1, 0x61

    if-eq v0, v1, :cond_12

    const/16 v1, 0x62

    if-eq v0, v1, :cond_11

    const/16 v1, 0x74

    if-eq v0, v1, :cond_10

    const/16 v1, 0x75

    if-eq v0, v1, :cond_f

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const-wide v4, 0x8000000004000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const-wide/32 v4, 0x2000000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const-wide/high16 v4, 0x4000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const-wide/32 v0, 0x200000

    and-long v0, v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_1
    const-wide v4, 0x6000040c04c0800L

    const-wide v8, 0x2000000200000000L

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto :goto_0

    :pswitch_4
    const-wide v4, 0x3801000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto :goto_0

    :pswitch_5
    const-wide v4, 0x600000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_6
    const-wide/32 v4, 0x20802000

    const-wide v8, 0x2000010200000L

    const-wide/16 v12, 0x2

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_7
    const-wide/32 v4, 0x18000000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_8
    const-wide v4, 0x860800000020000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_9
    const-wide/16 v4, 0x0

    const-wide/32 v8, 0x40080000

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_a
    const-wide v0, 0x100000000L

    and-long v0, v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x20

    const/16 v2, 0x23

    invoke-direct {p0, v0, v1, v2}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v0

    goto/16 :goto_0

    :pswitch_b
    const-wide v4, 0x410000100000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_c
    const-wide/high16 v0, 0x4000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x72

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_2
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x10000000000000L

    const-wide/16 v12, 0x14

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_d
    const-wide/32 v0, 0x4000000

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    const/16 v1, 0x5a

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_3
    const-wide/32 v0, 0x8000000

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const/16 v1, 0x5b

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_4
    const-wide/32 v0, 0x20000000

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    const/16 v1, 0x5d

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    const-wide v0, 0x80000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    const/16 v1, 0x5f

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_6
    const-wide/high16 v0, 0x40000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    const/16 v1, 0x76

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    const-wide/high16 v0, 0x80000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    const/16 v1, 0x77

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_8
    const-wide/high16 v0, 0x100000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    const/16 v1, 0x78

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_9
    const-wide/high16 v0, 0x200000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    const/16 v1, 0x79

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_a
    const-wide/high16 v0, 0x400000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    const/16 v1, 0x7a

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_b
    const-wide/high16 v0, 0x1000000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    const/16 v1, 0x7c

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_c
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/16 v1, 0x7e

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_d
    const-wide/high16 v0, -0x8000000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :pswitch_e
    const-wide/high16 v0, 0x1000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/16 v0, 0x70

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_e
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x1

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :cond_f
    const-wide v4, 0x220000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :cond_10
    const-wide/high16 v4, 0x3000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :cond_11
    const-wide/16 v4, 0x400

    const-wide v8, 0x280000000000L

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :cond_12
    const-wide v4, 0x48004018000L

    const-wide v8, 0x800000800000000L

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :cond_13
    const-wide v0, 0x100000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x60

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_14
    const-wide v4, 0x190180000001000L

    const-wide/high16 v8, 0x28000000000000L

    const-wide/16 v12, 0x28

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    goto/16 :goto_0

    :cond_15
    const-wide v0, 0x2000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_16
    const-wide v0, 0x1000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_17
    const-wide v0, 0x400000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x62

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    move-object v0, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6c
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x77
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0xb

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x61

    if-eq v2, v3, :cond_3

    const/16 v3, 0x65

    if-eq v2, v3, :cond_2

    const/16 v3, 0x73

    if-eq v2, v3, :cond_1

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :cond_1
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x2

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->b(JJJJ)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->b(JJJJ)I

    move-result v2

    goto :goto_0

    :cond_3
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x8

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->b(JJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v2, 0xd

    goto :goto_0
.end method

.method private final a(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    and-long v8, p11, p9

    or-long v2, v4, v6

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/16 v3, 0x8

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x65

    if-eq v2, v3, :cond_9

    const/16 v3, 0x66

    if-eq v2, v3, :cond_8

    const/16 v3, 0x69

    if-eq v2, v3, :cond_7

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_5

    const/16 v3, 0x72

    if-eq v2, v3, :cond_4

    const/16 v3, 0x74

    if-eq v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x9

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/high16 v2, 0x2000000000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/16 v2, 0x71

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/16 v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_3
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->b(JJJJJJ)I

    move-result v2

    goto :goto_0

    :cond_4
    const-wide v2, 0x200000000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    const/16 v3, 0x6d

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v2

    goto :goto_0

    :cond_5
    const-wide/high16 v2, 0x800000000000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_6

    const/16 v2, 0xa

    const/16 v3, 0x7b

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v2

    goto/16 :goto_0

    :cond_6
    const-wide/16 v14, 0x0

    const-wide v18, 0x80000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->b(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x20000000000000L

    const-wide/16 v22, 0x20

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->b(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_8
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x8000000000000L

    const-wide/16 v22, 0x8

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->b(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_9
    const-wide/high16 v14, 0x8000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->b(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0x9

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v2, 0xa

    goto/16 :goto_0
.end method

.method private final a(I)V
    .locals 5

    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->n:[I

    aget v1, v0, p1

    iget v2, p0, Lcom/lua/bsh/ParserTokenManager;->t:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/ParserTokenManager;->o:[I

    iget v3, p0, Lcom/lua/bsh/ParserTokenManager;->s:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/lua/bsh/ParserTokenManager;->s:I

    aput p1, v1, v3

    aput v2, v0, p1

    :cond_0
    return-void
.end method

.method private final a(II)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->o:[I

    iget v1, p0, Lcom/lua/bsh/ParserTokenManager;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lua/bsh/ParserTokenManager;->s:I

    sget-object v2, Lcom/lua/bsh/ParserTokenManager;->i:[I

    aget v2, v2, p1

    aput v2, v0, v1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static final a(IIIJJ)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lua/bsh/ParserTokenManager;->a:[J

    aget-wide v2, v1, p2

    and-long/2addr v2, p5

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final b(IJJJ)I
    .locals 8

    const/4 v7, 0x1

    const-wide/high16 v2, 0x8000000000000L

    const/16 v6, 0x45

    const/16 v1, 0x23

    const-wide/16 v4, 0x0

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    iput v6, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iput v6, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/16 v0, 0x9

    :goto_1
    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    move v0, v1

    goto :goto_0

    :cond_2
    const-wide v2, 0xa00000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    const-wide v2, 0x8000a00000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iput v6, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    const-wide v2, 0x10102000000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_4
    const-wide v2, 0x402000000080400L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const-wide v2, 0x18102a00000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iput v6, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/4 v0, 0x7

    goto :goto_1

    :pswitch_5
    const-wide v2, 0x41a102a00080400L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    iput v6, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/4 v0, 0x6

    goto :goto_1

    :cond_5
    const-wide v2, 0xc0012100800L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_6
    const-wide v2, 0x41a1c2a12180c00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    iput v6, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/4 v0, 0x5

    goto :goto_1

    :cond_6
    const-wide v2, 0x45608400400000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_7
    const-wide v2, 0x86080003c053000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    move v0, v1

    goto/16 :goto_0

    :cond_7
    const-wide v2, 0x41f7cae02580c00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_8

    iput v6, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :pswitch_8
    const-wide v2, 0xc7ffcae3e5d3c00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    iget v0, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    iput v6, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :cond_a
    const-wide v2, 0x28002408182c000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_9
    const-wide v2, 0xefffecebfdffc00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    iget v0, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    iput v6, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :cond_c
    const-wide v2, 0x100013040000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_a
    const-wide v2, 0x100600000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    move v0, v1

    goto/16 :goto_0

    :cond_d
    const-wide v2, 0xffffffeff9ffc00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    if-eq v0, v7, :cond_e

    iput v6, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    iput v7, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_e
    move v0, v1

    goto/16 :goto_0

    :pswitch_b
    const-wide v2, 0x200020000000000L

    and-long/2addr v2, p4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    const/16 v0, 0x38

    goto/16 :goto_0

    :cond_f
    const-wide/16 v2, 0x3e

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_10
    const-wide/32 v2, 0x10000

    and-long/2addr v2, p4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_11
    const-wide v2, 0xffffffffffffc00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iput v6, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    move v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final b(JJ)I
    .locals 9

    const/16 v1, 0x16

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    const/16 v1, 0x15

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x73

    if-eq v0, v4, :cond_1

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->c(JJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0x17

    goto :goto_0
.end method

.method private final b(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    const/16 v3, 0x73

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :cond_1
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0xa

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->c(JJJJ)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->c(JJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v2, 0xe

    goto :goto_0
.end method

.method private final b(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    and-long v8, p11, p9

    or-long v2, v4, v6

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/16 v3, 0x9

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_7

    const/16 v3, 0x64

    if-eq v2, v3, :cond_5

    const/16 v3, 0x67

    if-eq v2, v3, :cond_4

    const/16 v3, 0x74

    if-eq v2, v3, :cond_2

    :cond_1
    const/16 v3, 0xa

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/high16 v2, 0x8000000000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/16 v2, 0x73

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/16 v2, 0xb

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_3
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x8

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->c(JJJJJJ)I

    move-result v2

    goto :goto_0

    :cond_4
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x20000000000000L

    const-wide/16 v22, 0x20

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->c(JJJJJJ)I

    move-result v2

    goto :goto_0

    :cond_5
    const-wide/high16 v2, 0x8000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_6

    const/16 v2, 0xb

    const/16 v3, 0x33

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto :goto_0

    :cond_6
    const-wide v2, 0x80000000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    const/16 v3, 0x6b

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->c(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0xa

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v2, 0xb

    goto/16 :goto_0
.end method

.method private final b()V
    .locals 3

    const v0, -0x7fffffff

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->t:I

    const/16 v0, 0x4a

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->n:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0
.end method

.method private final b(II)V
    .locals 1

    :goto_0
    sget-object v0, Lcom/lua/bsh/ParserTokenManager;->i:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/lua/bsh/ParserTokenManager;->a(I)V

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static final b(IIIJJ)Z
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget-object v1, Lcom/lua/bsh/ParserTokenManager;->b:[J

    aget-wide v2, v1, p1

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v1, Lcom/lua/bsh/ParserTokenManager;->a:[J

    aget-wide v2, v1, p2

    and-long/2addr v2, p5

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private final c()I
    .locals 14

    const-wide v2, 0x80000000L

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    iget-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/16 v1, 0xc

    if-eq v0, v1, :cond_9

    const/16 v1, 0xd

    if-eq v0, v1, :cond_8

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    const/16 v1, 0x21

    if-eq v0, v1, :cond_6

    const/16 v1, 0x25

    if-eq v0, v1, :cond_5

    const/16 v1, 0x26

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x76

    if-eq v0, v1, :cond_1

    const/16 v1, 0x77

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const/4 v0, 0x6

    invoke-direct {p0, v0, v6}, Lcom/lua/bsh/ParserTokenManager;->d(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const-wide/high16 v2, 0x1f0000000000000L

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const-wide v2, 0xf800000000000L

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const-wide v2, 0x400000000000L

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto :goto_0

    :pswitch_3
    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto :goto_0

    :pswitch_4
    const-wide/32 v2, 0x7c000000

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto :goto_0

    :pswitch_5
    const-wide/32 v2, 0x3800000

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto :goto_0

    :pswitch_6
    const-wide/32 v2, 0x700000

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto :goto_0

    :pswitch_7
    const-wide/32 v2, 0xfa000

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto :goto_0

    :pswitch_8
    const-wide/16 v2, 0x5800

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto :goto_0

    :pswitch_9
    const-wide/16 v2, 0x400

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto :goto_0

    :pswitch_a
    const-wide v6, 0x282a280a50280000L

    const-wide/16 v8, 0x2a

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x58

    invoke-direct {p0, v6, v0}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x52

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const-wide v6, 0x14000020000000L

    const-wide/16 v8, 0x14

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_d
    const/16 v0, 0x51

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const-wide/32 v6, 0x4000000

    move-object v3, p0

    move-wide v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_e
    const/16 v0, 0x54

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const-wide v6, 0x1000008000000L

    const-wide/16 v8, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_f
    const/16 v0, 0x4e

    invoke-direct {p0, v6, v0}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :pswitch_10
    const/16 v0, 0x59

    invoke-direct {p0, v6, v0}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_0
    const/16 v0, 0x57

    invoke-direct {p0, v6, v0}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1
    const/16 v0, 0x4b

    invoke-direct {p0, v6, v0}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_2
    const/16 v0, 0x6c

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const-wide v6, 0x1000000100000000L

    move-object v3, p0

    move-wide v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x4a

    invoke-direct {p0, v6, v0}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_4
    const-wide v2, 0x3c0000000000L

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_5
    const-wide v2, 0x38000000000L

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_6
    const-wide v2, 0x4000000000L

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_7
    const-wide v2, 0x3f00000000L

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x4c

    invoke-direct {p0, v6, v0}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x69

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const-wide/high16 v6, 0x200000000000000L

    move-object v3, p0

    move-wide v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x50

    const/16 v1, 0xb

    invoke-direct {p0, v6, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v0

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x67

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const-wide v6, 0x80002000000000L

    move-object v3, p0

    move-wide v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x4f

    invoke-direct {p0, v6, v0}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0x66

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const-wide v6, 0x40001000000000L

    move-object v3, p0

    move-wide v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x68

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const-wide/high16 v6, 0x100000000000000L

    move-object v3, p0

    move-wide v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x49

    invoke-direct {p0, v6, v0}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0x48

    invoke-direct {p0, v6, v0}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_0
    const-wide/high16 v2, 0x800000000000000L

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :cond_1
    const-wide/high16 v2, 0x600000000000000L

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x6e

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object v3, p0

    move-wide v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x4d

    invoke-direct {p0, v6, v0}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x6a

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const-wide v6, 0x400000400000000L

    move-object v3, p0

    move-wide v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x6f

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const-wide/high16 v6, -0x8000000000000000L

    move-object v3, p0

    move-wide v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x56

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    move-object v7, p0

    move-wide v8, v4

    move-wide v10, v2

    move-wide v12, v4

    invoke-direct/range {v7 .. v13}, Lcom/lua/bsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x1

    invoke-direct {p0, v6, v0, v6}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v0

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x3

    invoke-direct {p0, v6, v0, v6}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v0

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x4

    invoke-direct {p0, v6, v0, v6}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v0

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x5

    invoke-direct {p0, v6, v0, v6}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v0

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x2

    invoke-direct {p0, v6, v0, v6}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_10
        0x29 -> :sswitch_f
        0x2a -> :sswitch_e
        0x2b -> :sswitch_d
        0x2c -> :sswitch_c
        0x2d -> :sswitch_b
        0x2e -> :sswitch_a
        0x2f -> :sswitch_9
        0x5b -> :sswitch_8
        0x69 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6e -> :sswitch_5
        0x70 -> :sswitch_4
        0x7b -> :sswitch_3
        0x7c -> :sswitch_2
        0x7d -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x72
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final c(JJ)I
    .locals 9

    const/16 v1, 0x17

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    const/16 v1, 0x16

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x73

    if-eq v0, v4, :cond_1

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->d(JJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0x18

    goto :goto_0
.end method

.method private final c(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_3

    const/16 v3, 0x69

    if-eq v2, v3, :cond_2

    const/16 v3, 0x73

    if-eq v2, v3, :cond_1

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :cond_1
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x8

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJ)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x2

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJ)I

    move-result v2

    goto :goto_0

    :cond_3
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->d(JJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v2, 0xf

    goto :goto_0
.end method

.method private final c(JJJJJJ)I
    .locals 21

    and-long v6, p7, p5

    and-long v8, p11, p9

    and-long v2, p3, p1

    or-long/2addr v2, v6

    or-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0xa

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_3

    const/16 v3, 0x61

    if-eq v2, v3, :cond_2

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_1

    const/16 v3, 0xb

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :cond_1
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->a(JJJJ)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x2

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->a(JJJJ)I

    move-result v2

    goto :goto_0

    :cond_3
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x8

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->a(JJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0xb

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v2, 0xc

    goto :goto_0
.end method

.method private final c(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/ParserTokenManager;->a(I)V

    invoke-direct {p0, p2}, Lcom/lua/bsh/ParserTokenManager;->a(I)V

    return-void
.end method

.method private static final c(IIIJJ)Z
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    const/16 v1, 0x33

    if-eq p0, v1, :cond_5

    const/16 v1, 0x3d

    if-eq p0, v1, :cond_4

    const/16 v1, 0x30

    if-eq p0, v1, :cond_3

    const/16 v1, 0x31

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/lua/bsh/ParserTokenManager;->c:[J

    aget-wide v2, v1, p1

    and-long/2addr v2, p3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v1, Lcom/lua/bsh/ParserTokenManager;->f:[J

    aget-wide v2, v1, p2

    and-long/2addr v2, p5

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/lua/bsh/ParserTokenManager;->e:[J

    aget-wide v2, v1, p2

    and-long/2addr v2, p5

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/lua/bsh/ParserTokenManager;->h:[J

    aget-wide v2, v1, p2

    and-long/2addr v2, p5

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/lua/bsh/ParserTokenManager;->g:[J

    aget-wide v2, v1, p2

    and-long/2addr v2, p5

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/lua/bsh/ParserTokenManager;->d:[J

    aget-wide v2, v1, p2

    and-long/2addr v2, p5

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private final d(II)I
    .locals 16

    const/16 v2, 0x4a

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->o:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v4, 0x7fffffff

    move v10, v3

    move v11, v4

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lua/bsh/ParserTokenManager;->t:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lua/bsh/ParserTokenManager;->t:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/lua/bsh/ParserTokenManager;->b()V

    :cond_0
    move-object/from16 v0, p0

    iget-char v8, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x40

    if-ge v8, v3, :cond_21

    const-wide/16 v4, 0x1

    shl-long v6, v4, v8

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lua/bsh/ParserTokenManager;->o:[I

    add-int/lit8 v10, v10, -0x1

    aget v4, v3, v10

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    if-ne v10, v2, :cond_1

    :goto_2
    move v4, v11

    :goto_3
    const v3, 0x7fffffff

    if-eq v4, v3, :cond_3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lua/bsh/ParserTokenManager;->v:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lua/bsh/ParserTokenManager;->u:I

    const v4, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    rsub-int/lit8 v2, v2, 0x4a

    if-ne v3, v2, :cond_3a

    :goto_4
    return p2

    :pswitch_1
    move-object/from16 v0, p0

    iget-char v4, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    const/16 v5, 0x43

    aput v5, v3, v4

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    const/16 v3, 0x44

    if-le v11, v3, :cond_2

    const/16 v11, 0x44

    goto :goto_1

    :pswitch_3
    const-wide v4, -0x40000000001L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    :goto_5
    const/16 v3, 0x47

    :goto_6
    const/16 v4, 0x45

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->c(II)V

    goto :goto_1

    :pswitch_4
    const-wide v4, -0x840000000001L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    goto :goto_5

    :pswitch_5
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_2

    const/16 v3, 0x28

    const/16 v4, 0x2a

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->b(II)V

    goto :goto_1

    :pswitch_6
    const-wide v4, -0x40000000001L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    :goto_7
    const/16 v3, 0x44

    goto :goto_6

    :pswitch_7
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_2

    goto :goto_7

    :pswitch_8
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    const/16 v3, 0x9

    if-le v11, v3, :cond_2

    const/16 v11, 0x9

    goto/16 :goto_1

    :pswitch_9
    const-wide v4, -0x40000000001L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    :goto_8
    const/16 v3, 0x41

    :goto_9
    const/16 v4, 0x3f

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->c(II)V

    goto/16 :goto_1

    :pswitch_a
    const-wide v4, -0x840000000001L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    goto :goto_8

    :pswitch_b
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_2

    const/16 v3, 0x25

    const/16 v4, 0x27

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->b(II)V

    goto/16 :goto_1

    :pswitch_c
    const-wide v4, -0x40000000001L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x3e

    goto :goto_9

    :pswitch_d
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_2

    const/16 v3, 0x3e

    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lua/bsh/ParserTokenManager;->a(I)V

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v0, p0

    iget-char v4, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    const/16 v5, 0x3b

    aput v5, v3, v4

    goto/16 :goto_1

    :pswitch_f
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    const/4 v3, 0x7

    if-le v11, v3, :cond_2

    :goto_c
    const/4 v11, 0x7

    goto/16 :goto_1

    :pswitch_10
    const-wide/16 v4, 0x2400

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/4 v3, 0x7

    if-le v11, v3, :cond_2

    goto :goto_c

    :pswitch_11
    const-wide/16 v4, -0x2401

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/4 v3, 0x7

    if-le v11, v3, :cond_4

    const/4 v11, 0x7

    :cond_4
    const/16 v3, 0x12

    const/16 v4, 0x14

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->b(II)V

    goto/16 :goto_1

    :pswitch_12
    move-object/from16 v0, p0

    iget-char v4, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    const/16 v5, 0x43

    aput v5, v3, v4

    :cond_5
    :goto_d
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_2

    const/16 v3, 0x3e

    goto :goto_b

    :cond_6
    const/16 v3, 0x2f

    if-ne v4, v3, :cond_5

    const/4 v3, 0x7

    if-le v11, v3, :cond_7

    const/4 v11, 0x7

    :cond_7
    const/16 v3, 0x12

    const/16 v4, 0x14

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->b(II)V

    goto :goto_d

    :pswitch_13
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    const/4 v3, 0x7

    const/16 v4, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(II)V

    goto/16 :goto_1

    :pswitch_14
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x3c

    if-le v11, v3, :cond_8

    const/16 v11, 0x3c

    :cond_8
    const/16 v3, 0x36

    :cond_9
    :goto_e
    const/16 v4, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->c(II)V

    goto/16 :goto_1

    :pswitch_15
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x3c

    if-le v11, v3, :cond_a

    const/16 v11, 0x3c

    :cond_a
    const/16 v3, 0x35

    goto :goto_e

    :pswitch_16
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x30

    if-ne v3, v4, :cond_2

    const/16 v3, 0x3c

    if-le v11, v3, :cond_b

    const/16 v11, 0x3c

    :cond_b
    const/16 v3, 0xf

    const/16 v4, 0x11

    goto/16 :goto_a

    :pswitch_17
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x32

    :cond_c
    :goto_f
    const/16 v4, 0xf

    move v15, v4

    move v4, v3

    move v3, v15

    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/lua/bsh/ParserTokenManager;->c(II)V

    goto/16 :goto_1

    :pswitch_18
    const-wide v4, 0x280000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x32

    goto/16 :goto_b

    :pswitch_19
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x22

    const/16 v4, 0x24

    goto/16 :goto_a

    :pswitch_1a
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x40

    if-le v11, v3, :cond_d

    const/16 v11, 0x40

    :cond_d
    const/16 v3, 0x2e

    goto :goto_f

    :pswitch_1b
    const-wide v4, 0x280000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x2e

    goto/16 :goto_b

    :pswitch_1c
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v4, 0x2b

    const/16 v3, 0x2c

    goto :goto_10

    :pswitch_1d
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x2a

    const/16 v4, 0x40

    if-le v11, v4, :cond_c

    const/16 v11, 0x40

    const/16 v3, 0x2a

    goto :goto_f

    :pswitch_1e
    const-wide v4, 0x280000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x2a

    goto/16 :goto_b

    :pswitch_1f
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x40

    if-le v11, v3, :cond_e

    :goto_11
    const/16 v11, 0x40

    :cond_e
    const/16 v3, 0x1f

    const/16 v4, 0x21

    goto/16 :goto_a

    :pswitch_20
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2

    const/16 v3, 0x40

    if-le v11, v3, :cond_e

    goto :goto_11

    :pswitch_21
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v4, 0x25

    const/16 v3, 0x26

    goto/16 :goto_10

    :pswitch_22
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x6

    goto/16 :goto_a

    :pswitch_23
    const-wide v4, 0x3ff001000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x45

    if-le v11, v3, :cond_f

    :goto_12
    const/16 v11, 0x45

    :cond_f
    const/16 v3, 0x23

    goto/16 :goto_b

    :pswitch_24
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x24

    if-ne v3, v4, :cond_2

    const/16 v3, 0x45

    if-le v11, v3, :cond_f

    goto :goto_12

    :pswitch_25
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x1f

    goto/16 :goto_b

    :pswitch_26
    const-wide/high16 v4, 0xf000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    const/16 v5, 0x21

    aput v5, v3, v4

    goto/16 :goto_1

    :pswitch_27
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    :goto_13
    const/16 v3, 0xa

    const/16 v4, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->b(II)V

    goto/16 :goto_1

    :pswitch_28
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x1b

    const/16 v4, 0x1e

    goto/16 :goto_a

    :pswitch_29
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x22

    if-ne v3, v4, :cond_2

    const/16 v3, 0x43

    if-le v11, v3, :cond_2

    const/16 v11, 0x43

    goto/16 :goto_1

    :pswitch_2a
    const-wide v4, 0x8400000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    goto :goto_13

    :pswitch_2b
    const-wide v4, -0x400002401L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    goto :goto_13

    :pswitch_2c
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x22

    if-ne v3, v4, :cond_2

    goto :goto_13

    :pswitch_2d
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x16

    goto/16 :goto_b

    :pswitch_2e
    const-wide/high16 v4, 0xf000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    const/16 v5, 0x18

    aput v5, v3, v4

    goto/16 :goto_1

    :pswitch_2f
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    :goto_14
    const/16 v3, 0x12

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lua/bsh/ParserTokenManager;->a(I)V

    goto/16 :goto_1

    :pswitch_30
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x16

    const/16 v4, 0x12

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->c(II)V

    goto/16 :goto_1

    :pswitch_31
    const-wide v4, 0x8400000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    goto :goto_14

    :pswitch_32
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x27

    if-ne v3, v4, :cond_2

    const/16 v3, 0x42

    if-le v11, v3, :cond_2

    const/16 v11, 0x42

    goto/16 :goto_1

    :pswitch_33
    const-wide v4, -0x8000002401L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    goto :goto_14

    :pswitch_34
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x27

    if-ne v3, v4, :cond_2

    const/16 v3, 0xd

    const/16 v4, 0xe

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(II)V

    goto/16 :goto_1

    :pswitch_35
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x40

    if-le v11, v3, :cond_10

    const/16 v11, 0x40

    :cond_10
    const/16 v3, 0xe

    goto/16 :goto_f

    :pswitch_36
    const-wide v4, 0x280000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0xe

    goto/16 :goto_b

    :pswitch_37
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x40

    if-le v11, v3, :cond_11

    const/16 v11, 0x40

    :cond_11
    const/16 v3, 0x18

    const/16 v4, 0x1a

    goto/16 :goto_a

    :pswitch_38
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2

    const/16 v3, 0xb

    goto/16 :goto_b

    :pswitch_39
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x3c

    if-le v11, v3, :cond_12

    :goto_15
    const/16 v3, 0x8

    const/16 v11, 0x3c

    goto/16 :goto_e

    :cond_12
    const/16 v3, 0x8

    goto/16 :goto_e

    :pswitch_3a
    const-wide/high16 v4, 0x3fe000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    const/16 v4, 0x3c

    if-le v11, v4, :cond_9

    goto :goto_15

    :pswitch_3b
    const-wide v4, 0x1ffffffffL

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_16

    const/4 v3, 0x6

    if-le v11, v3, :cond_13

    const/4 v11, 0x6

    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lua/bsh/ParserTokenManager;->a(I)V

    :cond_14
    :goto_16
    move v3, v11

    :goto_17
    const-wide/high16 v4, 0x3fe000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1e

    const/16 v4, 0x3c

    if-le v3, v4, :cond_15

    const/16 v3, 0x3c

    :cond_15
    const/16 v4, 0x8

    const/16 v5, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/lua/bsh/ParserTokenManager;->c(II)V

    move v11, v3

    goto/16 :goto_1

    :cond_16
    const-wide/high16 v4, 0x3ff000000000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_17

    const/4 v3, 0x0

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->b(II)V

    goto :goto_16

    :cond_17
    move-object/from16 v0, p0

    iget-char v4, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_18

    const/4 v3, 0x7

    const/16 v4, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(II)V

    goto :goto_16

    :cond_18
    const/16 v5, 0x24

    if-ne v4, v5, :cond_1a

    const/16 v3, 0x45

    if-le v11, v3, :cond_19

    const/16 v11, 0x45

    :cond_19
    const/16 v3, 0x23

    :goto_18
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lua/bsh/ParserTokenManager;->a(I)V

    goto :goto_16

    :cond_1a
    const/16 v5, 0x22

    if-ne v4, v5, :cond_1b

    const/16 v3, 0xa

    const/16 v4, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->b(II)V

    goto :goto_16

    :cond_1b
    const/16 v5, 0x27

    if-ne v4, v5, :cond_1c

    const/16 v3, 0xd

    const/16 v4, 0xe

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(II)V

    goto :goto_16

    :cond_1c
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_1d

    const/16 v3, 0xb

    goto :goto_18

    :cond_1d
    const/16 v5, 0x23

    if-ne v4, v5, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    const/4 v5, 0x1

    aput v5, v3, v4

    move v3, v11

    goto/16 :goto_17

    :cond_1e
    move-object/from16 v0, p0

    iget-char v4, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v5, 0x30

    if-ne v4, v5, :cond_3b

    const/16 v4, 0x3c

    if-le v3, v4, :cond_1f

    const/16 v3, 0x3c

    :cond_1f
    const/16 v5, 0xf

    const/16 v4, 0x11

    move v11, v3

    move v3, v4

    move v4, v5

    :goto_19
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/lua/bsh/ParserTokenManager;->b(II)V

    goto/16 :goto_1

    :pswitch_3c
    move-object/from16 v0, p0

    iget-char v4, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    const/4 v5, 0x4

    aput v5, v3, v4

    goto/16 :goto_1

    :pswitch_3d
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    const/16 v3, 0x8

    if-le v11, v3, :cond_2

    :goto_1a
    const/16 v11, 0x8

    goto/16 :goto_1

    :pswitch_3e
    const-wide/16 v4, 0x2400

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    if-le v11, v3, :cond_2

    goto :goto_1a

    :pswitch_3f
    const-wide/16 v4, -0x2401

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    :goto_1b
    const/16 v3, 0x17

    const/16 v4, 0x15

    goto :goto_19

    :pswitch_40
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x21

    if-ne v3, v4, :cond_2

    goto :goto_1b

    :pswitch_41
    const-wide v4, 0x1ffffffffL

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    if-le v11, v3, :cond_20

    const/4 v11, 0x6

    :cond_20
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lua/bsh/ParserTokenManager;->a(I)V

    goto/16 :goto_1

    :cond_21
    const/16 v3, 0x80

    if-ge v8, v3, :cond_27

    const-wide/16 v4, 0x1

    and-int/lit8 v3, v8, 0x3f

    shl-long v6, v4, v3

    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lua/bsh/ParserTokenManager;->o:[I

    add-int/lit8 v10, v10, -0x1

    aget v3, v3, v10

    sparse-switch v3, :sswitch_data_0

    :cond_23
    :goto_1c
    if-ne v10, v2, :cond_22

    goto/16 :goto_2

    :sswitch_0
    const/16 v3, 0x47

    :goto_1d
    const/16 v4, 0x45

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->c(II)V

    goto :goto_1c

    :sswitch_1
    const/16 v3, 0x44

    goto :goto_1d

    :sswitch_2
    const/16 v3, 0x41

    :goto_1e
    const/16 v4, 0x3f

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->c(II)V

    goto :goto_1c

    :sswitch_3
    const/16 v3, 0x3e

    goto :goto_1e

    :sswitch_4
    const/4 v3, 0x7

    if-le v11, v3, :cond_24

    const/4 v11, 0x7

    :cond_24
    const/16 v3, 0x12

    const/16 v4, 0x14

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(II)V

    goto :goto_1c

    :sswitch_5
    const-wide v4, 0x7e0000007eL

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_23

    const/16 v3, 0x3c

    if-le v11, v3, :cond_25

    const/16 v11, 0x3c

    :cond_25
    const/16 v3, 0x35

    const/16 v4, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->c(II)V

    goto :goto_1c

    :sswitch_6
    const-wide v4, 0x100000001000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_23

    const/16 v3, 0x35

    :goto_1f
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lua/bsh/ParserTokenManager;->a(I)V

    goto :goto_1c

    :sswitch_7
    const-wide v4, 0x2000000020L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_23

    const/16 v4, 0x37

    const/16 v3, 0x38

    :goto_20
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/lua/bsh/ParserTokenManager;->a(II)V

    goto :goto_1c

    :sswitch_8
    const-wide v4, 0x2000000020L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_23

    const/16 v4, 0x35

    const/16 v3, 0x36

    goto :goto_20

    :sswitch_9
    const-wide v4, 0x2000000020L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_23

    const/16 v4, 0x33

    const/16 v3, 0x34

    goto :goto_20

    :sswitch_a
    const-wide v4, 0x14404410000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_23

    :goto_21
    const/16 v3, 0xa

    const/16 v4, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->b(II)V

    goto/16 :goto_1c

    :sswitch_b
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_23

    const/16 v4, 0x30

    const/16 v3, 0x32

    goto :goto_20

    :sswitch_c
    const-wide/32 v4, -0x10000001

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_23

    goto :goto_21

    :sswitch_d
    const-wide v4, 0x14404410000000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_23

    :goto_22
    const/16 v3, 0x12

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lua/bsh/ParserTokenManager;->a(I)V

    goto/16 :goto_1c

    :sswitch_e
    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_23

    const/16 v4, 0x2d

    const/16 v3, 0x2f

    goto :goto_20

    :sswitch_f
    const-wide/32 v4, -0x10000001

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_23

    goto :goto_22

    :sswitch_10
    const-wide v4, 0x5000000050L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_23

    const/16 v3, 0x40

    if-le v11, v3, :cond_23

    const/16 v11, 0x40

    goto/16 :goto_1c

    :sswitch_11
    const-wide v4, 0x2000000020L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_23

    const/16 v4, 0x2b

    const/16 v3, 0x2c

    goto/16 :goto_20

    :sswitch_12
    const-wide v4, 0x100000001000L

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_23

    const/16 v3, 0x3c

    if-le v11, v3, :cond_23

    const/16 v11, 0x3c

    goto/16 :goto_1c

    :sswitch_13
    const-wide v4, 0x7fffffe87fffffeL

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_23

    const/16 v3, 0x45

    if-le v11, v3, :cond_26

    const/16 v11, 0x45

    :cond_26
    const/16 v3, 0x23

    goto/16 :goto_1f

    :sswitch_14
    const/16 v4, 0x15

    const/16 v3, 0x17

    goto/16 :goto_20

    :cond_27
    shr-int/lit8 v3, v8, 0x8

    shr-int/lit8 v4, v3, 0x6

    const-wide/16 v6, 0x1

    and-int/lit8 v5, v3, 0x3f

    shl-long/2addr v6, v5

    and-int/lit16 v5, v8, 0xff

    shr-int/lit8 v5, v5, 0x6

    const-wide/16 v12, 0x1

    and-int/lit8 v8, v8, 0x3f

    shl-long v8, v12, v8

    :cond_28
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lua/bsh/ParserTokenManager;->o:[I

    add-int/lit8 v10, v10, -0x1

    aget v12, v12, v10

    if-eqz v12, :cond_38

    const/4 v13, 0x2

    if-eq v12, v13, :cond_37

    const/4 v13, 0x6

    if-eq v12, v13, :cond_34

    const/16 v13, 0x11

    if-eq v12, v13, :cond_33

    const/16 v13, 0x1a

    if-eq v12, v13, :cond_32

    const/16 v13, 0x39

    if-eq v12, v13, :cond_30

    const/16 v13, 0x3e

    if-eq v12, v13, :cond_2f

    const/16 v13, 0x44

    if-eq v12, v13, :cond_2e

    const/16 v13, 0x22

    if-eq v12, v13, :cond_2c

    const/16 v13, 0x23

    if-eq v12, v13, :cond_2c

    const/16 v13, 0x40

    if-eq v12, v13, :cond_2b

    const/16 v13, 0x41

    if-eq v12, v13, :cond_2b

    const/16 v13, 0x46

    if-eq v12, v13, :cond_2a

    const/16 v13, 0x47

    if-eq v12, v13, :cond_2a

    :cond_29
    :goto_23
    if-ne v10, v2, :cond_28

    move v4, v11

    goto/16 :goto_3

    :cond_2a
    invoke-static/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v12

    if-eqz v12, :cond_29

    const/16 v12, 0x47

    :goto_24
    const/16 v13, 0x45

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/lua/bsh/ParserTokenManager;->c(II)V

    goto :goto_23

    :cond_2b
    invoke-static/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v12

    if-eqz v12, :cond_29

    const/16 v12, 0x41

    :goto_25
    const/16 v13, 0x3f

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/lua/bsh/ParserTokenManager;->c(II)V

    goto :goto_23

    :cond_2c
    invoke-static/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->c(IIIJJ)Z

    move-result v12

    if-eqz v12, :cond_29

    const/16 v12, 0x45

    if-le v11, v12, :cond_2d

    :goto_26
    const/16 v11, 0x45

    :cond_2d
    const/16 v12, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lua/bsh/ParserTokenManager;->a(I)V

    goto :goto_23

    :cond_2e
    invoke-static/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v12

    if-eqz v12, :cond_29

    const/16 v12, 0x44

    goto :goto_24

    :cond_2f
    invoke-static/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v12

    if-eqz v12, :cond_29

    const/16 v12, 0x3e

    goto :goto_25

    :cond_30
    invoke-static/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v12

    if-eqz v12, :cond_29

    const/4 v12, 0x7

    if-le v11, v12, :cond_31

    const/4 v11, 0x7

    :cond_31
    const/16 v12, 0x12

    const/16 v13, 0x14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/lua/bsh/ParserTokenManager;->a(II)V

    goto :goto_23

    :cond_32
    invoke-static/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v12

    if-eqz v12, :cond_29

    const/16 v12, 0xa

    const/16 v13, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/lua/bsh/ParserTokenManager;->a(II)V

    goto :goto_23

    :cond_33
    invoke-static/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v12

    if-eqz v12, :cond_29

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lua/bsh/ParserTokenManager;->o:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/lua/bsh/ParserTokenManager;->s:I

    const/16 v14, 0x12

    aput v14, v12, v13

    goto/16 :goto_23

    :cond_34
    invoke-static/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IIIJJ)Z

    move-result v12

    if-eqz v12, :cond_36

    const/4 v12, 0x6

    if-le v11, v12, :cond_35

    const/4 v11, 0x6

    :cond_35
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lua/bsh/ParserTokenManager;->a(I)V

    :cond_36
    invoke-static/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->c(IIIJJ)Z

    move-result v12

    if-eqz v12, :cond_29

    const/16 v12, 0x45

    if-le v11, v12, :cond_2d

    goto :goto_26

    :cond_37
    invoke-static/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v12

    if-eqz v12, :cond_29

    const/16 v12, 0x15

    const/16 v13, 0x17

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/lua/bsh/ParserTokenManager;->a(II)V

    goto/16 :goto_23

    :cond_38
    invoke-static/range {v3 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IIIJJ)Z

    move-result v12

    if-eqz v12, :cond_29

    const/4 v12, 0x6

    if-le v11, v12, :cond_39

    const/4 v11, 0x6

    :cond_39
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lua/bsh/ParserTokenManager;->a(I)V

    goto/16 :goto_23

    :cond_3a
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v5}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v5

    move-object/from16 v0, p0

    iput-char v5, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v3

    move v11, v4

    goto/16 :goto_0

    :cond_3b
    move v11, v3

    goto/16 :goto_1

    :catch_0
    move-exception v2

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_0
        :pswitch_38
        :pswitch_37
        :pswitch_0
        :pswitch_36
        :pswitch_35
        :pswitch_0
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_14
        0x6 -> :sswitch_13
        0x9 -> :sswitch_12
        0xc -> :sswitch_11
        0xf -> :sswitch_10
        0x11 -> :sswitch_f
        0x13 -> :sswitch_e
        0x14 -> :sswitch_d
        0x1a -> :sswitch_c
        0x1b -> :sswitch_b
        0x1c -> :sswitch_a
        0x23 -> :sswitch_13
        0x28 -> :sswitch_9
        0x2c -> :sswitch_8
        0x30 -> :sswitch_7
        0x34 -> :sswitch_6
        0x35 -> :sswitch_5
        0x39 -> :sswitch_4
        0x3e -> :sswitch_3
        0x40 -> :sswitch_2
        0x41 -> :sswitch_2
        0x44 -> :sswitch_1
        0x46 -> :sswitch_0
        0x47 -> :sswitch_0
    .end sparse-switch
.end method

.method private final d(JJ)I
    .locals 9

    const/16 v1, 0x18

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    const/16 v1, 0x17

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x69

    if-eq v0, v4, :cond_1

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->e(JJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0x19

    goto :goto_0
.end method

.method private final d(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x67

    if-eq v2, v3, :cond_3

    const/16 v3, 0x69

    if-eq v2, v3, :cond_2

    const/16 v3, 0x73

    if-eq v2, v3, :cond_1

    const/16 v3, 0xf

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :cond_1
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJ)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x8

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJ)I

    move-result v2

    goto :goto_0

    :cond_3
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x2

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0xf

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v2, 0x10

    goto :goto_0
.end method

.method private final d(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    and-long v8, p11, p9

    or-long v2, v4, v6

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_f

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_d

    const/16 v3, 0x65

    if-eq v2, v3, :cond_c

    const/16 v3, 0x66

    if-eq v2, v3, :cond_b

    const/16 v3, 0x69

    if-eq v2, v3, :cond_a

    const/16 v3, 0x6c

    if-eq v2, v3, :cond_9

    const/16 v3, 0x77

    if-eq v2, v3, :cond_8

    const/16 v3, 0x79

    if-eq v2, v3, :cond_7

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    :cond_1
    const/4 v3, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_0
    const-wide v14, 0x80000001400000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_1
    const-wide v2, 0x1000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/16 v2, 0x24

    :goto_1
    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_2
    const-wide v14, 0x40a082014000L

    const-wide/32 v18, 0x50000000

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_3
    const-wide/32 v2, 0x80000

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_4

    const/16 v2, 0x53

    goto :goto_1

    :cond_4
    const-wide/32 v2, 0x200000

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/16 v2, 0x55

    goto :goto_1

    :pswitch_2
    const-wide v14, 0x800808400L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_3
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    const/16 v3, 0x1e

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_5
    const-wide v2, 0x200000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_6

    const/16 v2, 0x61

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_6
    const-wide/high16 v14, 0x62000000000000L

    const-wide/high16 v18, 0x2000000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_4
    const-wide v14, 0x600000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_5
    const-wide v14, 0x900020000800L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_6
    const-wide v14, 0x80040180c0000L

    const-wide v18, 0x800000800000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_7
    const-wide v14, 0x40000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_8
    const-wide v14, 0x200000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_9
    const-wide v14, 0x11000000022000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    const-wide/high16 v2, 0x100000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/16 v3, 0x38

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_8
    const-wide v2, 0x10000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/16 v3, 0x28

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_9
    const-wide v14, 0x400020004000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_a
    const-wide v14, 0xa04080000000000L

    const-wide v18, 0x28280000000000L

    const-wide/16 v22, 0x28

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_b
    const-wide/32 v14, 0x100000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_c
    const-wide/16 v14, 0x1000

    const-wide/high16 v18, 0x2000000000000L

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_d
    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_e

    const/16 v2, 0x74

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_e
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x10

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_f
    const-wide/16 v2, 0x1

    and-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_10

    const/4 v2, 0x2

    const/16 v3, 0x80

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v2

    goto/16 :goto_0

    :cond_10
    const-wide/16 v2, 0x4

    and-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/16 v3, 0x82

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/4 v2, 0x2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x72
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final e(II)I
    .locals 1

    iput p2, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    iput p1, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final e(JJ)I
    .locals 9

    const/16 v1, 0x19

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    const/16 v1, 0x18

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x67

    if-eq v0, v4, :cond_1

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->f(JJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0x1a

    goto :goto_0
.end method

.method private final e(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0xf

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x67

    if-eq v2, v3, :cond_4

    const/16 v3, 0x68

    if-eq v2, v3, :cond_3

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x10

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x2

    and-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    const/16 v3, 0x81

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v2

    goto :goto_0

    :cond_3
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJ)I

    move-result v2

    goto :goto_0

    :cond_4
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x8

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0x10

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v2, 0x11

    goto :goto_0
.end method

.method private final e(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    and-long v8, p11, p9

    or-long v2, v4, v6

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_e

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_d

    const/16 v3, 0x69

    if-eq v2, v3, :cond_c

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    :cond_1
    const/4 v3, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_0
    const-wide v14, 0x80000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_1
    const-wide v14, 0x400000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_2
    const-wide v14, 0x5100800080400L

    const-wide v18, 0x280000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_3
    const-wide/32 v14, 0x4042000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_4
    const-wide/32 v2, 0x20000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    const/16 v3, 0x11

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_2
    const-wide v14, 0x800000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_5
    const-wide v2, 0x80000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    const/16 v3, 0x1f

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_3
    const-wide v14, 0x60000400000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_6
    const-wide/high16 v14, 0x10000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_7
    const-wide/32 v2, 0x1000000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    const/16 v3, 0x18

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :pswitch_8
    const-wide v2, 0x20000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    const/16 v3, 0x29

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_4
    const-wide v14, 0x800200200000800L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_9
    const-wide v14, 0x40000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_a
    const-wide v2, 0x4000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    const/16 v3, 0x26

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_5
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x28000000000000L

    const-wide/16 v22, 0x28

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_b
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000L

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_c
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_6

    const/4 v2, 0x3

    const/16 v3, 0xe

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_6
    const-wide/32 v2, 0x8000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    const/16 v3, 0xf

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    const-wide/32 v2, 0x800000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    const/16 v3, 0x17

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_8
    const-wide/high16 v2, 0x80000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_9

    const/4 v2, 0x3

    const/16 v3, 0x37

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_9
    const-wide v14, 0x2002000000L

    const-wide/32 v18, 0x50000000

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_d
    const-wide/high16 v2, 0x200000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_a

    const/4 v2, 0x3

    const/16 v3, 0x39

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_a
    const-wide v2, 0x800000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_b

    const/16 v2, 0x63

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_b
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x800000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_e
    const-wide v14, 0x8000000010000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_f
    const-wide/32 v14, 0x400000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_10
    const-wide v14, 0x400000038101000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_c
    const-wide v14, 0x2008000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_d
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_e
    const-wide/16 v2, 0x10

    and-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    const/16 v3, 0x84

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/4 v2, 0x3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x72
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final f(JJ)I
    .locals 9

    const/16 v8, 0x1b

    const/16 v1, 0x1a

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    const/16 v1, 0x19

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v4, 0x6e

    if-eq v0, v4, :cond_2

    :cond_1
    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x20

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x85

    invoke-direct {p0, v8, v0}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    move v0, v8

    goto :goto_0
.end method

.method private final f(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0x10

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x69

    if-eq v2, v3, :cond_3

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x8

    and-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x12

    const/16 v3, 0x83

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v2

    goto :goto_0

    :cond_3
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->g(JJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v2, 0x12

    goto :goto_0
.end method

.method private final f(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    and-long v8, p11, p9

    or-long v2, v4, v6

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x2

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    const/4 v3, 0x3

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_1
    const-wide/high16 v2, 0x20000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/16 v2, 0x35

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_2
    const-wide/high16 v14, 0x40000000000000L

    const-wide v18, 0x280000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_2
    const-wide v14, 0x8000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_3
    const-wide/32 v14, 0x100000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_4
    const-wide/32 v2, 0x40000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    const/16 v3, 0x12

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_3
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    const/16 v3, 0x1d

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_4
    const-wide v2, 0x800000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    const/16 v3, 0x2f

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_5
    const-wide/high16 v14, 0x400000000000000L

    const-wide/high16 v18, 0x2000000000000L

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_5
    const-wide/16 v2, 0x2000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    const/16 v3, 0xd

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_6
    const-wide/high16 v14, 0x10000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_6
    const-wide v14, 0x402400000400L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_7
    const-wide/32 v2, 0x10000000

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_7

    const/4 v2, 0x4

    const/16 v3, 0x5c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    const/16 v3, 0x5e

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v2

    goto/16 :goto_0

    :pswitch_8
    const-wide/32 v14, 0x2000000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_9
    const-wide/32 v2, 0x8000000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_8

    const/16 v2, 0x1b

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_8
    const-wide/32 v14, 0x10400000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_a
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    const/16 v3, 0xc

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :pswitch_b
    const-wide v14, 0x1200000080000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_c
    const-wide/32 v2, 0x10000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_9

    const/4 v2, 0x4

    const/16 v3, 0x10

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_9
    const-wide/high16 v14, 0x8000000000000L

    const-wide/high16 v18, 0x28000000000000L

    const-wide/16 v22, 0x28

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_d
    const-wide/32 v2, 0x4000000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_a

    const/4 v2, 0x4

    const/16 v3, 0x1a

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_a
    const-wide/high16 v2, 0x800000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_b

    const/4 v2, 0x4

    const/16 v3, 0x3b

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_b
    const-wide v14, 0x100200000800L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_e
    const-wide/high16 v14, 0x6000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_f
    const-wide v14, 0xc0800000000L

    const-wide/high16 v18, 0x2000000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_10
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x800000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/4 v2, 0x4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final g(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x66

    if-eq v2, v3, :cond_1

    const/16 v3, 0x12

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :cond_1
    const-wide/high16 v14, 0x20000000000000L

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->h(JJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0x12

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v2, 0x13

    goto :goto_0
.end method

.method private final g(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    and-long v8, p11, p9

    or-long v2, v4, v6

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x3

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    const/4 v3, 0x4

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_1
    const-wide v2, 0x400000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    const/16 v3, 0x22

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide v14, 0x2080000000000L

    const-wide/high16 v18, 0x28000000000000L

    const-wide/16 v22, 0x28

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_2
    const-wide/high16 v2, 0x40000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    const/16 v3, 0x36

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto :goto_0

    :cond_3
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_3
    const-wide/high16 v14, 0x8000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_4
    const-wide v2, 0x400000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    const/16 v3, 0x2e

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_4
    const-wide v14, 0x800080000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_5
    const-wide v14, 0x200000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_6
    const-wide/32 v14, 0x10100000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_7
    const-wide/high16 v14, 0x410000000000000L

    const-wide v18, 0x280000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_8
    const-wide/high16 v2, 0x4000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    const/16 v3, 0x32

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :pswitch_9
    const-wide v14, 0x40000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_a
    const-wide v14, 0x2000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_b
    const-wide/32 v2, 0x400000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    const/16 v3, 0x16

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_5
    const-wide v2, 0x8000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    const/16 v3, 0x27

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :pswitch_c
    const-wide/32 v14, 0x2000000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_d
    const-wide v2, 0x200000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    const/16 v3, 0x2d

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_6
    const-wide/high16 v2, 0x1000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_7

    const/4 v2, 0x5

    const/16 v3, 0x30

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    const-wide v14, 0x100000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_e
    const-wide/16 v14, 0xc00

    const-wide/high16 v18, 0x800000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :pswitch_f
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000L

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/4 v2, 0x5

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final h(JJJJ)I
    .locals 21

    and-long v6, p3, p1

    and-long v8, p7, p5

    or-long v2, v6, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v3, 0x12

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x74

    if-eq v2, v3, :cond_1

    const/16 v3, 0x13

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :cond_1
    const-wide/high16 v2, 0x20000000000000L

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x75

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->v:I

    const/16 v2, 0x14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/bsh/ParserTokenManager;->u:I

    :cond_2
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x20

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/lua/bsh/ParserTokenManager;->i(JJJJ)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0x13

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v2, 0x14

    goto :goto_0
.end method

.method private final h(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    and-long v8, p11, p9

    or-long v2, v4, v6

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x4

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_e

    const/16 v3, 0x61

    if-eq v2, v3, :cond_d

    const/16 v3, 0x63

    if-eq v2, v3, :cond_c

    const/16 v3, 0x6c

    if-eq v2, v3, :cond_b

    const/16 v3, 0x79

    if-eq v2, v3, :cond_a

    const/16 v3, 0x65

    if-eq v2, v3, :cond_7

    const/16 v3, 0x66

    if-eq v2, v3, :cond_6

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_5

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    :cond_1
    const/4 v3, 0x5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_0
    const-wide/32 v14, 0x80000

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_1
    const-wide/32 v2, 0x100000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    const/16 v3, 0x14

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide v14, 0x100000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_2
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    const/4 v2, 0x6

    const/16 v3, 0x19

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_3
    const-wide/16 v14, 0x0

    const-wide v18, 0x2802280000000000L    # 5.759938310470282E-116

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_4
    const-wide/high16 v14, 0x8000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_5
    const-wide/16 v2, 0x800

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    const/16 v3, 0xb

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_6
    const-wide/high16 v14, 0x2000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    const-wide v2, 0x40000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_8

    const/4 v2, 0x6

    const/16 v3, 0x2a

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_8
    const-wide v2, 0x80000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_9

    const/4 v2, 0x6

    const/16 v3, 0x2b

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_9
    const-wide v14, 0x10000200000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_a
    const-wide/32 v2, 0x10000000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    const/16 v3, 0x1c

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_b
    const-wide/high16 v14, 0x400000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_c
    const-wide v14, 0x800000400L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_d
    const-wide v14, 0x2000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_e
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x28000000000000L

    const-wide/16 v22, 0x28

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/4 v2, 0x6

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final i(JJJJ)I
    .locals 9

    and-long v6, p7, p5

    and-long v0, p3, p1

    or-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v1, 0x13

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lcom/lua/bsh/ParserTokenManager;->a(JJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x14

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0x15

    goto :goto_0
.end method

.method private final i(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    and-long v8, p11, p9

    or-long v2, v4, v6

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x5

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x63

    if-eq v2, v3, :cond_9

    const/16 v3, 0x65

    if-eq v2, v3, :cond_6

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_5

    const/16 v3, 0x70

    if-eq v2, v3, :cond_4

    const/16 v3, 0x68

    if-eq v2, v3, :cond_3

    const/16 v3, 0x69

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    :cond_1
    const/4 v3, 0x6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_0
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x20000000000000L

    const-wide/16 v22, 0x20

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->j(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_1
    const-wide/16 v2, 0x400

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    const/16 v3, 0xa

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto :goto_0

    :pswitch_2
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x808000000000000L

    const-wide/16 v22, 0x8

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->j(JJJJJJ)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->j(JJJJJJ)I

    move-result v2

    goto :goto_0

    :cond_3
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000L

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->j(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_4
    const-wide/high16 v2, 0x2000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    const/16 v3, 0x31

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_5
    const-wide v14, 0x18000200000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->j(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_6
    const-wide/32 v2, 0x80000

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    const/16 v3, 0x13

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    const-wide/high16 v2, 0x400000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_8

    const/4 v2, 0x7

    const/16 v3, 0x3a

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_8
    const-wide v14, 0x100800000000L

    const-wide v18, 0x280000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->j(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_9
    const-wide v14, 0x2000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->j(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/4 v2, 0x7

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final j(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    and-long v8, p11, p9

    or-long v2, v4, v6

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x6

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_8

    const/16 v3, 0x74

    if-eq v2, v3, :cond_6

    const/16 v3, 0x64

    if-eq v2, v3, :cond_5

    const/16 v3, 0x65

    if-eq v2, v3, :cond_4

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_3

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    :cond_1
    const/4 v3, 0x7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_0
    const-wide/high16 v14, 0x8000000000000L

    const-wide/high16 v18, 0x802000000000000L

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->k(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_1
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x8000000000000L

    const-wide/16 v22, 0x8

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->k(JJJJJJ)I

    move-result v2

    goto :goto_0

    :pswitch_2
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->k(JJJJJJ)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide v14, 0x800000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->k(JJJJJJ)I

    move-result v2

    goto :goto_0

    :cond_3
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x20000000000000L

    const-wide/16 v22, 0x20

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->k(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_4
    const-wide v2, 0x2000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    const/16 v3, 0x25

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_5
    const-wide v2, 0x100000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    const/16 v3, 0x2c

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_6
    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    const/16 v3, 0x34

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    const-wide v14, 0x200000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->k(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_8
    const-wide/16 v14, 0x0

    const-wide v18, 0x280000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->k(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v2, 0x8

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final k(JJJJJJ)I
    .locals 25

    and-long v4, p3, p1

    and-long v6, p7, p5

    and-long v8, p11, p9

    or-long v2, v4, v6

    or-long/2addr v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    const/4 v3, 0x7

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v2, v0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0x61

    if-eq v2, v3, :cond_b

    const/16 v3, 0x69

    if-eq v2, v3, :cond_a

    const/16 v3, 0x73

    if-eq v2, v3, :cond_8

    const/16 v3, 0x7a

    if-eq v2, v3, :cond_7

    const/16 v3, 0x66

    if-eq v2, v3, :cond_5

    const/16 v3, 0x67

    if-eq v2, v3, :cond_4

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_3

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->a(IJJJ)I

    move-result v2

    goto :goto_0

    :cond_2
    const-wide/16 v14, 0x0

    const-wide v18, 0x200000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->a(JJJJJJ)I

    move-result v2

    goto :goto_0

    :cond_3
    const-wide/high16 v2, 0x2000000000000000L

    and-long/2addr v2, v6

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    const/16 v3, 0x7d

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lua/bsh/ParserTokenManager;->e(II)I

    move-result v2

    goto :goto_0

    :cond_4
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x800000000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->a(JJJJJJ)I

    move-result v2

    goto :goto_0

    :cond_5
    const-wide v2, 0x800000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_6

    const/16 v2, 0x9

    const/16 v3, 0x23

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_6
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x2000000000000L

    const-wide/16 v22, 0x2

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->a(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_7
    const-wide/high16 v14, 0x8000000000000L

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->a(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_8
    const-wide v2, 0x200000000L

    and-long/2addr v2, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_9

    const/16 v2, 0x9

    const/16 v3, 0x21

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lua/bsh/ParserTokenManager;->a(III)I

    move-result v2

    goto/16 :goto_0

    :cond_9
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x20000000000000L

    const-wide/16 v22, 0x20

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->a(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_a
    const-wide/16 v14, 0x0

    const-wide/high16 v18, 0x8000000000000L

    const-wide/16 v22, 0x8

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->a(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :cond_b
    const-wide/16 v14, 0x0

    const-wide v18, 0x80000000000L

    const-wide/16 v22, 0x0

    move-object/from16 v11, p0

    move-wide v12, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v11 .. v23}, Lcom/lua/bsh/ParserTokenManager;->a(JJJJJJ)I

    move-result v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0x8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lua/bsh/ParserTokenManager;->b(IJJJ)I

    const/16 v2, 0x9

    goto/16 :goto_0
.end method


# virtual methods
.method public ReInit(Lcom/lua/bsh/JavaCharStream;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->s:I

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    iget v0, p0, Lcom/lua/bsh/ParserTokenManager;->r:I

    iput v0, p0, Lcom/lua/bsh/ParserTokenManager;->q:I

    iput-object p1, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-direct {p0}, Lcom/lua/bsh/ParserTokenManager;->b()V

    return-void
.end method

.method public ReInit(Lcom/lua/bsh/JavaCharStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lua/bsh/ParserTokenManager;->ReInit(Lcom/lua/bsh/JavaCharStream;)V

    invoke-virtual {p0, p2}, Lcom/lua/bsh/ParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/lua/bsh/ParserTokenManager;->q:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ". State unchanged."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/TokenMgrError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/lua/bsh/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method protected a()Lcom/lua/bsh/Token;
    .locals 3

    iget v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    invoke-static {v0}, Lcom/lua/bsh/Token;->newToken(I)Lcom/lua/bsh/Token;

    move-result-object v1

    iget v0, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    iput v0, v1, Lcom/lua/bsh/Token;->kind:I

    sget-object v2, Lcom/lua/bsh/ParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v0, v2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, v1, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->getBeginLine()I

    move-result v0

    iput v0, v1, Lcom/lua/bsh/Token;->beginLine:I

    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->getBeginColumn()I

    move-result v0

    iput v0, v1, Lcom/lua/bsh/Token;->beginColumn:I

    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->getEndLine()I

    move-result v0

    iput v0, v1, Lcom/lua/bsh/Token;->endLine:I

    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->getEndColumn()I

    move-result v0

    iput v0, v1, Lcom/lua/bsh/Token;->endColumn:I

    return-object v1
.end method

.method public getNextToken()Lcom/lua/bsh/Token;
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    const v4, 0x7fffffff

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v5

    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v1}, Lcom/lua/bsh/JavaCharStream;->BeginToken()C

    move-result v1

    iput-char v1, p0, Lcom/lua/bsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    iput v4, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    iput v7, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    invoke-direct {p0}, Lcom/lua/bsh/ParserTokenManager;->c()I

    move-result v8

    iget v1, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    if-eq v1, v4, :cond_4

    iget v1, p0, Lcom/lua/bsh/ParserTokenManager;->u:I

    add-int/lit8 v2, v1, 0x1

    if-ge v2, v8, :cond_1

    iget-object v2, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    sub-int v1, v8, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lcom/lua/bsh/JavaCharStream;->backup(I)V

    :cond_1
    sget-object v1, Lcom/lua/bsh/ParserTokenManager;->j:[J

    iget v2, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    shr-int/lit8 v3, v2, 0x6

    aget-wide v8, v1, v3

    const-wide/16 v10, 0x1

    and-int/lit8 v1, v2, 0x3f

    shl-long/2addr v10, v1

    and-long/2addr v8, v10

    cmp-long v1, v8, v12

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/lua/bsh/ParserTokenManager;->a()Lcom/lua/bsh/Token;

    move-result-object v1

    iput-object v0, v1, Lcom/lua/bsh/Token;->specialToken:Lcom/lua/bsh/Token;

    return-object v1

    :cond_2
    const-wide/16 v8, 0x1

    and-int/lit8 v1, v2, 0x3f

    shl-long/2addr v8, v1

    sget-object v1, Lcom/lua/bsh/ParserTokenManager;->l:[J

    shr-int/lit8 v2, v2, 0x6

    aget-wide v2, v1, v2

    and-long/2addr v2, v8

    cmp-long v1, v2, v12

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lua/bsh/ParserTokenManager;->a()Lcom/lua/bsh/Token;

    move-result-object v1

    if-nez v0, :cond_3

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iput-object v0, v1, Lcom/lua/bsh/Token;->specialToken:Lcom/lua/bsh/Token;

    iput-object v1, v0, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->getEndLine()I

    move-result v1

    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->getEndColumn()I

    move-result v4

    :try_start_1
    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lua/bsh/JavaCharStream;->backup(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v1

    move v1, v7

    :goto_3
    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0, v6}, Lcom/lua/bsh/JavaCharStream;->backup(I)V

    if-gt v8, v6, :cond_9

    const-string v5, ""

    :cond_5
    :goto_4
    new-instance v0, Lcom/lua/bsh/TokenMgrError;

    iget v2, p0, Lcom/lua/bsh/ParserTokenManager;->q:I

    iget-char v6, p0, Lcom/lua/bsh/ParserTokenManager;->p:C

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_0
    move-exception v0

    if-gt v8, v6, :cond_7

    const-string v0, ""

    :goto_5
    iget-char v2, p0, Lcom/lua/bsh/ParserTokenManager;->p:C

    const/16 v3, 0xa

    if-eq v2, v3, :cond_6

    const/16 v3, 0xd

    if-ne v2, v3, :cond_8

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move v2, v7

    :goto_6
    move v3, v1

    move v4, v2

    move-object v5, v0

    move v1, v6

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v4, 0x1

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/lua/bsh/ParserTokenManager;->m:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :catch_1
    move-exception v1

    iput v7, p0, Lcom/lua/bsh/ParserTokenManager;->v:I

    goto :goto_1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/ParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
