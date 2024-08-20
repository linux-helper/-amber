.class public Lcom/lua/c/a/a/a/f;
.super Lcom/lua/c/a/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/c/a/a/a/f$a;,
        Lcom/lua/c/a/a/a/f$b;,
        Lcom/lua/c/a/a/a/f$c;,
        Lcom/lua/c/a/a/a/f$d;,
        Lcom/lua/c/a/a/a/f$e;,
        Lcom/lua/c/a/a/a/f$f;,
        Lcom/lua/c/a/a/a/f$g;,
        Lcom/lua/c/a/a/a/f$h;,
        Lcom/lua/c/a/a/a/f$i;,
        Lcom/lua/c/a/a/a/f$i$a;
    }
.end annotation


# static fields
.field protected static final b:[Ljava/lang/String;

.field private static final c:Ljava/util/Hashtable;

.field static final d:[Ljava/lang/String;

.field static final e:[Ljava/lang/String;

.field static final f:Ljava/util/Hashtable;

.field private static final g:[I

.field public static h:Ljava/lang/String;

.field public static i:I

.field public static j:I

.field public static k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lua/c/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field public static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lua/b/b/a/b/q;",
            ">;>;"
        }
    .end annotation
.end field

.field static m:[Lcom/lua/c/a/a/a/f$e;

.field public static n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lua/b/b/a/b/q;",
            ">;"
        }
    .end annotation
.end field

.field public static o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field A:Lcom/lua/c/a/a/a/b;

.field B:Lcom/lua/c/a/a/a/g$a;

.field C:Ljava/io/InputStream;

.field D:[C

.field E:I

.field F:Lcom/lua/c/a/a/a/f$b;

.field G:Lcom/lua/c/a/a/j;

.field H:Lcom/lua/c/a/a/j;

.field I:B

.field private J:Z

.field private K:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lua/c/a/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private L:I

.field private p:Lcom/lua/b/b/a/b/h;

.field public q:I

.field public r:I

.field private s:Z

.field private t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field final y:Lcom/lua/c/a/a/a/f$g;

.field final z:Lcom/lua/c/a/a/a/f$g;


# direct methods
.method private static $d2j$hex$01c97415$decode_B(Ljava/lang/String;)[B
    .locals 12

    const/16 v11, 0x61

    const/16 v10, 0x46

    const/16 v9, 0x41

    const/16 v8, 0x39

    const/16 v7, 0x30

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v4, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v1, v4

    if-ge v0, v1, :cond_6

    mul-int/lit8 v1, v0, 0x2

    aget-char v5, v3, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-char v6, v3, v1

    if-lt v5, v7, :cond_0

    if-gt v5, v8, :cond_0

    add-int/lit8 v1, v5, -0x30

    move v2, v1

    :goto_1
    if-lt v6, v7, :cond_3

    if-gt v6, v8, :cond_3

    add-int/lit8 v1, v5, -0x30

    :goto_2
    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lt v5, v11, :cond_1

    const/16 v1, 0x66

    if-gt v5, v1, :cond_1

    add-int/lit8 v1, v5, -0x61

    add-int/lit8 v1, v1, 0xa

    move v2, v1

    goto :goto_1

    :cond_1
    if-lt v5, v9, :cond_2

    if-gt v5, v10, :cond_2

    add-int/lit8 v1, v5, -0x41

    add-int/lit8 v1, v1, 0xa

    move v2, v1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    if-lt v6, v11, :cond_4

    const/16 v1, 0x66

    if-gt v6, v1, :cond_4

    add-int/lit8 v1, v5, -0x61

    add-int/lit8 v1, v1, 0xa

    goto :goto_2

    :cond_4
    if-lt v6, v9, :cond_5

    if-gt v6, v10, :cond_5

    add-int/lit8 v1, v5, -0x41

    add-int/lit8 v1, v1, 0xa

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    return-object v4
.end method

.method private static $d2j$hex$01c97415$decode_I(Ljava/lang/String;)[I
    .locals 3

    invoke-static {p0}, Lres/Hex;->decode_B(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object v0
.end method

.method private static $d2j$hex$01c97415$decode_J(Ljava/lang/String;)[J
    .locals 3

    invoke-static {p0}, Lres/Hex;->decode_B(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [J

    invoke-virtual {v1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    return-object v0
.end method

.method private static $d2j$hex$01c97415$decode_S(Ljava/lang/String;)[S
    .locals 3

    invoke-static {p0}, Lres/Hex;->decode_B(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    const/4 v1, 0x0

    const/16 v9, 0xa

    const/4 v8, 0x7

    const/16 v7, 0xb

    const/4 v6, 0x3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "(for control)"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "(for generator)"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "(for index)"

    aput-object v3, v0, v2

    const-string v2, "(for limit)"

    aput-object v2, v0, v6

    const/4 v2, 0x4

    const-string v3, "(for state)"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "(for step)"

    aput-object v3, v0, v2

    sput-object v0, Lcom/lua/c/a/a/a/f;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lua/c/a/a/a/f;->c:Ljava/util/Hashtable;

    move v0, v1

    :goto_0
    sget-object v2, Lcom/lua/c/a/a/a/f;->b:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/lua/c/a/a/a/f;->c:Ljava/util/Hashtable;

    aget-object v2, v2, v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "and"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "break"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "case"

    aput-object v3, v0, v2

    const-string v2, "catch"

    aput-object v2, v0, v6

    const/4 v2, 0x4

    const-string v3, "continue"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "default"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "defer"

    aput-object v3, v0, v2

    const-string v2, "do"

    aput-object v2, v0, v8

    const/16 v2, 0x8

    const-string v3, "else"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "elseif"

    aput-object v3, v0, v2

    const-string v2, "end"

    aput-object v2, v0, v9

    const-string v2, "false"

    aput-object v2, v0, v7

    const/16 v2, 0xc

    const-string v3, "finally"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "for"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "function"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "goto"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "if"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "import"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "in"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "lambda"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "local"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "module"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "nil"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "not"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "or"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "repeat"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "return"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "switch"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "then"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "true"

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const-string v3, "try"

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const-string v3, "until"

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const-string v3, "when"

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const-string v3, "while"

    aput-object v3, v0, v2

    const/16 v2, 0x22

    const-string v3, ".."

    aput-object v3, v0, v2

    const/16 v2, 0x23

    const-string v3, "..."

    aput-object v3, v0, v2

    const/16 v2, 0x24

    const-string v3, "=="

    aput-object v3, v0, v2

    const/16 v2, 0x25

    const-string v3, ">="

    aput-object v3, v0, v2

    const/16 v2, 0x26

    const-string v3, "<="

    aput-object v3, v0, v2

    const/16 v2, 0x27

    const-string v3, "~="

    aput-object v3, v0, v2

    const/16 v2, 0x28

    const-string v3, "//"

    aput-object v3, v0, v2

    const/16 v2, 0x29

    const-string v3, "<<"

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    const-string v3, ">>"

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    const-string v3, "::"

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    const-string v3, "<eos>"

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    const-string v3, "<number>"

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    const-string v3, "<name>"

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    const-string v3, "<string>"

    aput-object v3, v0, v2

    const/16 v2, 0x30

    const-string v3, "<eof>"

    aput-object v3, v0, v2

    sput-object v0, Lcom/lua/c/a/a/a/f;->d:[Ljava/lang/String;

    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "\u4e0e"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "\u8df3\u51fa"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "case"

    aput-object v3, v0, v2

    const-string v2, "\u6355\u83b7"

    aput-object v2, v0, v6

    const/4 v2, 0x4

    const-string v3, "\u8df3\u8fc7"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "\u9ed8\u8ba4"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "\u5ef6\u65f6"

    aput-object v3, v0, v2

    const-string v2, "\u6267\u884c"

    aput-object v2, v0, v8

    const/16 v2, 0x8

    const-string v3, "\u5426\u5219"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "\u5426\u5219\u5982\u679c"

    aput-object v3, v0, v2

    const-string v2, "\u7ed3\u675f"

    aput-object v2, v0, v9

    const-string v2, "\u5047"

    aput-object v2, v0, v7

    const/16 v2, 0xc

    const-string v3, "finally"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "\u5faa\u73af"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "\u51fd\u6570"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "\u8df3\u8f6c"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "\u5982\u679c"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "\u5bfc\u5165"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "\u5728"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "lambda"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "\u5c40\u90e8"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "\u6a21\u5757"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "\u65e0"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "\u975e"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "\u6216"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "\u91cd\u590d"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "\u8fd4\u56de"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "switch"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "\u90a3\u4e48"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "\u771f"

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const-string v3, "\u5c1d\u8bd5"

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const-string v3, "\u76f4\u5230"

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const-string v3, "when"

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const-string v3, "\u5f53"

    aput-object v3, v0, v2

    sput-object v0, Lcom/lua/c/a/a/a/f;->e:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lua/c/a/a/a/f;->f:Ljava/util/Hashtable;

    move v0, v1

    :goto_1
    const/16 v2, 0x22

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/lua/c/a/a/a/f;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v2

    sget-object v3, Lcom/lua/c/a/a/a/f;->f:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    add-int/lit16 v5, v0, 0x101

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "0000000000000000000000000000000000000000000000000000000000000000000000000000000008000000080000000800000008000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c00000004000000040000000400000004000000040000000400000004000000040000000400000004000000040000000400000004000000040000000400000016000000160000001600000016000000160000001600000016000000160000001600000016000000040000000400000004000000040000000400000004000000040000001500000015000000150000001500000015000000150000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000040000000400000004000000040000000500000004000000150000001500000015000000150000001500000015000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000004000000040000000400000004000000000000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000005000000050000000500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    invoke-static {v0}, Lcom/lua/c/a/a/a/f;->$d2j$hex$01c97415$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/lua/c/a/a/a/f;->g:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lua/c/a/a/a/f;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lua/c/a/a/a/f;->l:Ljava/util/HashMap;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/lua/c/a/a/a/f$e;

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    invoke-direct {v2, v9, v9}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    invoke-direct {v2, v9, v9}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    invoke-direct {v2, v7, v7}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/lua/c/a/a/a/f$e;

    invoke-direct {v1, v7, v7}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    const/16 v3, 0xe

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    invoke-direct {v2, v7, v7}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    invoke-direct {v2, v7, v7}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/lua/c/a/a/a/f$e;

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v1, v0, v8

    const/16 v1, 0x8

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    const/4 v3, 0x4

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/lua/c/a/a/a/f$e;

    invoke-direct {v1, v8, v8}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/lua/c/a/a/a/f$e;

    invoke-direct {v1, v8, v8}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v1, v0, v7

    const/16 v1, 0xc

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    const/16 v3, 0x9

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    invoke-direct {v2, v6, v6}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    invoke-direct {v2, v6, v6}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    invoke-direct {v2, v6, v6}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    invoke-direct {v2, v6, v6}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    invoke-direct {v2, v6, v6}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    invoke-direct {v2, v6, v6}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/lua/c/a/a/a/f$e;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/lua/c/a/a/a/f$e;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/lua/c/a/a/a/f;->m:[Lcom/lua/c/a/a/a/f$e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lua/c/a/a/a/f;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/lua/c/a/a/a/g$a;Ljava/io/InputStream;ZLcom/lua/b/b/a/b/h;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/lua/c/a/a/a/a;-><init>()V

    new-instance v0, Lcom/lua/b/b/a/b/h;

    invoke-direct {v0}, Lcom/lua/b/b/a/b/h;-><init>()V

    iput-object v0, p0, Lcom/lua/c/a/a/a/f;->p:Lcom/lua/b/b/a/b/h;

    new-instance v0, Lcom/lua/c/a/a/a/f$g;

    invoke-direct {v0, v1}, Lcom/lua/c/a/a/a/f$g;-><init>(Lcom/lua/c/a/a/a/e;)V

    iput-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    new-instance v0, Lcom/lua/c/a/a/a/f$g;

    invoke-direct {v0, v1}, Lcom/lua/c/a/a/a/f$g;-><init>(Lcom/lua/c/a/a/a/e;)V

    iput-object v0, p0, Lcom/lua/c/a/a/a/f;->z:Lcom/lua/c/a/a/a/f$g;

    new-instance v0, Lcom/lua/c/a/a/a/f$b;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/f$b;-><init>()V

    iput-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lua/c/a/a/a/f;->K:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/c/a/a/a/f;->L:I

    iput-object p2, p0, Lcom/lua/c/a/a/a/f;->C:Ljava/io/InputStream;

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/lua/c/a/a/a/f;->D:[C

    iput-object p1, p0, Lcom/lua/c/a/a/a/f;->B:Lcom/lua/c/a/a/a/g$a;

    iput-boolean p3, p0, Lcom/lua/c/a/a/a/f;->J:Z

    iput-object p4, p0, Lcom/lua/c/a/a/a/f;->p:Lcom/lua/b/b/a/b/h;

    return-void
.end method

.method private H()V
    .locals 2

    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static I(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method private J(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lua/c/a/a/a/f;->I(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lua/c/a/a/a/f;->I(I)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/lua/c/a/a/a/f;->b(II)Z

    move-result v0

    return v0
.end method

.method private K(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lua/c/a/a/a/f;->I(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lua/c/a/a/a/f;->b(II)Z

    move-result v0

    return v0
.end method

.method private static L(I)Z
    .locals 1

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private M(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private N(I)Z
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/lua/c/a/a/a/f;->I(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lua/c/a/a/a/f;->b(II)Z

    move-result v0

    return v0
.end method

.method private O(I)Z
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/lua/c/a/a/a/f;->I(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lua/c/a/a/a/f;->b(II)Z

    move-result v0

    return v0
.end method

.method private P(I)I
    .locals 1

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->B(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x7ff

    if-gt p1, v0, :cond_1

    shr-int/lit8 v0, p1, 0x6

    int-to-char v0, v0

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->B(I)V

    or-int/lit16 v0, p1, 0x80

    int-to-char v0, v0

    and-int/lit16 v0, v0, 0xbf

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->B(I)V

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const v0, 0xffff

    if-gt p1, v0, :cond_2

    shr-int/lit8 v0, p1, 0xc

    int-to-char v0, v0

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->B(I)V

    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0x80

    int-to-char v0, v0

    and-int/lit16 v0, v0, 0xbf

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->B(I)V

    or-int/lit16 v0, p1, 0x80

    int-to-char v0, v0

    and-int/lit16 v0, v0, 0xbf

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->B(I)V

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/c/a/a/a/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/lua/c/a/a/a/f;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/lua/c/a/a/a/f;->l:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Lcom/lua/b/b/a/b/q;

    iget v2, p0, Lcom/lua/c/a/a/a/f;->q:I

    invoke-direct {v1, v2, p2}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(II)Z
    .locals 3

    sget-object v1, Lcom/lua/c/a/a/a/f;->g:[I

    const/4 v0, 0x1

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static z(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move v0, p0

    :goto_0
    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x8

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    goto :goto_1
.end method


# virtual methods
.method A()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->B()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method A(I)V
    .locals 11

    const/16 v10, 0x11a

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/lua/c/a/a/a/f;->u:I

    iget v4, p0, Lcom/lua/c/a/a/a/f;->w:I

    iget-object v5, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-boolean v0, p0, Lcom/lua/c/a/a/a/f;->s:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v5}, Lcom/lua/c/a/a/a/b;->b()I

    move-result v6

    new-instance v7, Lcom/lua/c/a/a/a/b$a;

    invoke-direct {v7}, Lcom/lua/c/a/a/a/b$a;-><init>()V

    new-instance v8, Lcom/lua/c/a/a/a/b$a;

    invoke-direct {v8}, Lcom/lua/c/a/a/a/b$a;-><init>()V

    invoke-virtual {v5, v7, v1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b$a;Z)V

    invoke-virtual {v5, v8, v2}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b$a;Z)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->C()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->f()V

    iget-boolean v1, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    iget v7, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v7, v7, -0x1

    iget v9, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v2, v3, v4, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    const/16 v0, 0x7d

    invoke-virtual {p0, v0, v10, p1}, Lcom/lua/c/a/a/a/f;->b(III)V

    :cond_1
    const/16 v0, 0x120

    invoke-virtual {p0, v0, v10, p1}, Lcom/lua/c/a/a/a/f;->b(III)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->e()I

    move-result v0

    iget-boolean v1, v8, Lcom/lua/c/a/a/a/b$a;->e:Z

    if-eqz v1, :cond_2

    iget-short v1, v8, Lcom/lua/c/a/a/a/b$a;->d:S

    invoke-virtual {v5, v0, v1}, Lcom/lua/c/a/a/a/b;->f(II)V

    :cond_2
    invoke-virtual {v5}, Lcom/lua/c/a/a/a/b;->d()V

    invoke-virtual {v5, v0, v6}, Lcom/lua/c/a/a/a/b;->g(II)V

    invoke-virtual {v5}, Lcom/lua/c/a/a/a/b;->d()V

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    iget v7, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v7, v7, -0x3

    iget v9, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v2, v3, v4, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method B()V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x108

    iget v0, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->i()V

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v1, v1, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_c

    const/16 v2, 0x102

    if-eq v1, v2, :cond_b

    const/16 v2, 0x105

    if-eq v1, v2, :cond_b

    const/16 v2, 0x11f

    if-eq v1, v2, :cond_a

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_9

    const/16 v2, 0x107

    if-eq v1, v2, :cond_8

    if-eq v1, v7, :cond_6

    const/16 v2, 0x115

    if-eq v1, v2, :cond_4

    const/16 v2, 0x116

    if-eq v1, v2, :cond_3

    const/16 v2, 0x121

    if-eq v1, v2, :cond_2

    const/16 v2, 0x122

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    :try_start_0
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v1, v0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget v1, v1, Lcom/lua/c/a/a/l;->n:I

    iget-short v2, v0, Lcom/lua/c/a/a/a/b;->q:S

    if-lt v1, v2, :cond_d

    iget-short v1, v0, Lcom/lua/c/a/a/a/b;->o:S

    if-lt v2, v1, :cond_d

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/lua/c/a/a/a/b;->q:S

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->n()V

    return-void

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->C(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->x()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->A(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->l()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->x(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v0}, Lcom/lua/c/a/a/a/b;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->u(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->r(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->q(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->H(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->G()I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->r()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    const/16 v0, 0x10f

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->o()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->p()V

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/lua/c/a/a/a/f;->u:I

    iget v2, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->b()V

    iget-boolean v3, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v5, v5, -0x3

    iget v6, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v1, 0x10b

    invoke-virtual {p0, v1, v7, v0}, Lcom/lua/c/a/a/a/f;->b(III)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->h()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->E()Lcom/lua/c/a/a/j;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->F()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v0}, Lcom/lua/c/a/a/a/b;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->u(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unreachable statement"

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->g(Ljava/lang/String;)V

    throw v8

    :catch_0
    move-exception v0

    :cond_c
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    goto/16 :goto_0

    :cond_d
    const-string v0, "statement"

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->g(Ljava/lang/String;)V

    throw v8

    :pswitch_data_0
    .packed-switch 0x10e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method B(I)V
    .locals 3

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->D:[C

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/lua/c/a/a/a/f;->E:I

    add-int/lit8 v1, v1, 0x1

    array-length v0, v0

    if-le v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->D:[C

    iget v1, p0, Lcom/lua/c/a/a/a/f;->E:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/a/a;->a([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/lua/c/a/a/a/f;->D:[C

    :cond_1
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->D:[C

    iget v1, p0, Lcom/lua/c/a/a/a/f;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lua/c/a/a/a/f;->E:I

    int-to-char v2, p1

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    return-void
.end method

.method C()V
    .locals 2

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->p:Lcom/lua/b/b/a/b/h;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/lua/c/a/a/a/f;->h:Ljava/lang/String;

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v1, 0x11b

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->B()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->B()V

    goto :goto_0
.end method

.method C(I)V
    .locals 8

    iget v1, p0, Lcom/lua/c/a/a/a/f;->u:I

    iget v2, p0, Lcom/lua/c/a/a/a/f;->w:I

    new-instance v3, Lcom/lua/c/a/a/a/d;

    const/4 v0, -0x1

    invoke-direct {v3, v0}, Lcom/lua/c/a/a/a/d;-><init>(I)V

    new-instance v4, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v4}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    iget-boolean v0, p0, Lcom/lua/c/a/a/a/f;->s:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v4}, Lcom/lua/c/a/a/a/f;->g(Lcom/lua/c/a/a/a/f$i;)V

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->n(I)V

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const/16 v5, 0x108

    invoke-virtual {p0, v5}, Lcom/lua/c/a/a/a/f;->D(I)Z

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v5, v5, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v6, 0x103

    if-ne v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/lua/c/a/a/a/f$i;->clone()Lcom/lua/c/a/a/a/f$i;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/d;Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/16 v4, 0x106

    invoke-virtual {p0, v4}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->b()V

    :cond_4
    iget-boolean v4, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v4, :cond_5

    if-eqz v0, :cond_6

    sget-object v4, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v5, v1, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    if-eqz v0, :cond_7

    const/16 v0, 0x7d

    :goto_3
    const/16 v1, 0x11c

    invoke-virtual {p0, v0, v1, p1}, Lcom/lua/c/a/a/a/f;->b(III)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget v1, v3, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/b;->w(I)V

    return-void

    :cond_6
    sget-object v4, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v6, v6, -0x3

    iget v7, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v5, v1, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const/16 v0, 0x10b

    goto :goto_3
.end method

.method D()Lcom/lua/c/a/a/j;
    .locals 1

    const/16 v0, 0x130

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->m(I)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget-object v0, v0, Lcom/lua/c/a/a/a/f$g;->b:Lcom/lua/c/a/a/a/f$f;

    iget-object v0, v0, Lcom/lua/c/a/a/a/f$f;->b:Lcom/lua/c/a/a/j;

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    return-object v0
.end method

.method D(I)Z
    .locals 1

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method E()Lcom/lua/c/a/a/j;
    .locals 1

    const/16 v0, 0x12f

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->m(I)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget-object v0, v0, Lcom/lua/c/a/a/a/f$g;->b:Lcom/lua/c/a/a/a/f$f;

    iget-object v0, v0, Lcom/lua/c/a/a/a/f$f;->b:Lcom/lua/c/a/a/j;

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    return-object v0
.end method

.method E(I)Z
    .locals 1

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method F(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x101

    if-ge p1, v0, :cond_1

    invoke-static {p1}, Lcom/lua/c/a/a/a/f;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->B:Lcom/lua/c/a/a/a/g$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "char("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lua/c/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->B:Lcom/lua/c/a/a/a/g$a;

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/lua/c/a/a/a/f;->d:[Ljava/lang/String;

    add-int/lit16 v1, p1, -0x101

    aget-object v0, v0, v1

    goto :goto_1
.end method

.method F()V
    .locals 13

    const/16 v12, 0x11f

    const/16 v11, 0x10d

    const/16 v9, 0x104

    const/4 v1, 0x0

    const/4 v10, 0x1

    iget v3, p0, Lcom/lua/c/a/a/a/f;->u:I

    iget v4, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    new-instance v5, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v5}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    iget-object v6, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-short v7, v6, Lcom/lua/c/a/a/a/b;->q:S

    const-string v0, "(try)"

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Lcom/lua/c/a/a/a/f;->l(I)V

    iget v0, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0, v5, v12, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;II)Z

    move-result v0

    iget-short v2, v6, Lcom/lua/c/a/a/a/b;->o:S

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v2

    iget v8, v6, Lcom/lua/c/a/a/a/b;->h:I

    iput v8, v2, Lcom/lua/c/a/a/b;->b:I

    invoke-virtual {p0, v9}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-short v0, v6, Lcom/lua/c/a/a/a/b;->q:S

    const-string v2, "(catch)"

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Lcom/lua/c/a/a/a/f;->l(I)V

    iget v2, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0, v5, v9, v2}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;II)Z

    move-result v2

    iget-short v8, v6, Lcom/lua/c/a/a/a/b;->o:S

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v8

    iget v9, v6, Lcom/lua/c/a/a/a/b;->h:I

    iput v9, v8, Lcom/lua/c/a/a/b;->b:I

    :goto_0
    invoke-virtual {p0, v11}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-short v1, v6, Lcom/lua/c/a/a/a/b;->q:S

    const-string v2, "(finally)"

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Lcom/lua/c/a/a/a/f;->l(I)V

    iget v2, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0, v5, v11, v2}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;II)Z

    move-result v2

    iget-short v5, v6, Lcom/lua/c/a/a/a/b;->o:S

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6, v5}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v5

    iget v8, v6, Lcom/lua/c/a/a/a/b;->h:I

    iput v8, v5, Lcom/lua/c/a/a/b;->b:I

    :cond_0
    iget-boolean v5, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v5, :cond_1

    if-eqz v2, :cond_4

    sget-object v5, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lcom/lua/c/a/a/a/f;->q:I

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lcom/lua/c/a/a/a/f;->x:I

    invoke-direct {v8, v3, v4, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    const/16 v2, 0x10b

    invoke-virtual {p0, v2, v12, v4}, Lcom/lua/c/a/a/a/f;->b(III)V

    :cond_2
    const/16 v2, 0x35

    invoke-virtual {v6, v2, v7, v0, v1}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    return-void

    :cond_3
    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v9, v9, -0x3

    iget v10, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v8, v3, v4, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method G()I
    .locals 5

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    new-instance v1, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    const-string v2, "(when)"

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->l(I)V

    iget v2, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0, v1, v2}, Lcom/lua/c/a/a/a/f;->e(Lcom/lua/c/a/a/a/f$i;I)V

    iget-short v1, v0, Lcom/lua/c/a/a/a/b;->o:S

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v1

    iget v2, v0, Lcom/lua/c/a/a/a/b;->h:I

    iput v2, v1, Lcom/lua/c/a/a/b;->b:I

    const/16 v1, 0x1d

    iget-short v2, v0, Lcom/lua/c/a/a/a/b;->o:S

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    move-result v0

    return v0
.end method

.method G(I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->F(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->D:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/lua/c/a/a/a/f;->E:I

    invoke-static {v0, v1, v2}, Lcom/lua/c/a/a/j;->a([CII)Lcom/lua/c/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/c/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method H(I)V
    .locals 9

    const/4 v1, 0x1

    iget v2, p0, Lcom/lua/c/a/a/a/f;->u:I

    iget v3, p0, Lcom/lua/c/a/a/a/f;->w:I

    iget-object v4, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    new-instance v5, Lcom/lua/c/a/a/a/b$a;

    invoke-direct {v5}, Lcom/lua/c/a/a/a/b$a;-><init>()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    iget-boolean v0, p0, Lcom/lua/c/a/a/a/f;->s:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4}, Lcom/lua/c/a/a/a/b;->b()I

    move-result v6

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->e()I

    move-result v7

    invoke-virtual {v4, v5, v1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b$a;Z)V

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->n(I)V

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const/16 v1, 0x108

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->D(I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->b()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->f()V

    invoke-virtual {v4}, Lcom/lua/c/a/a/a/b;->c()I

    move-result v1

    invoke-virtual {v4, v1, v6}, Lcom/lua/c/a/a/a/b;->g(II)V

    iget-boolean v1, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_4

    sget-object v1, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v6, v6, -0x1

    iget v8, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v5, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    const/16 v0, 0x7d

    :goto_2
    const/16 v1, 0x122

    invoke-virtual {p0, v0, v1, p1}, Lcom/lua/c/a/a/a/f;->b(III)V

    invoke-virtual {v4}, Lcom/lua/c/a/a/a/b;->d()V

    invoke-virtual {v4, v7}, Lcom/lua/c/a/a/a/b;->w(I)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v6, v6, -0x3

    iget v8, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v5, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/16 v0, 0x10b

    goto :goto_2
.end method

.method a(Lcom/lua/c/a/a/a/f$f;)I
    .locals 7

    const/16 v2, 0x5b

    const/16 v1, 0x26

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/16 v0, 0x3d

    :goto_0
    iput v6, p0, Lcom/lua/c/a/a/a/f;->E:I

    :cond_0
    :goto_1
    iget v3, p0, Lcom/lua/c/a/a/a/f;->v:I

    if-eq v3, v5, :cond_23

    const/16 v4, 0xa

    if-eq v3, v4, :cond_22

    const/16 v4, 0xd

    if-eq v3, v4, :cond_22

    const/16 v4, 0x24

    if-eq v3, v4, :cond_21

    const/16 v4, 0x40

    if-eq v3, v4, :cond_20

    if-eq v3, v2, :cond_1d

    const/16 v4, 0x7c

    if-eq v3, v4, :cond_1b

    const/16 v4, 0x7e

    if-eq v3, v4, :cond_19

    const/16 v4, 0x21

    if-eq v3, v4, :cond_17

    const/16 v4, 0x22

    if-eq v3, v4, :cond_16

    if-eq v3, v1, :cond_14

    const/16 v4, 0x27

    if-eq v3, v4, :cond_16

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    invoke-direct {p0, v3}, Lcom/lua/c/a/a/a/f;->N(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->g()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/lua/c/a/a/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-direct {p0, v0}, Lcom/lua/c/a/a/a/f;->M(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->b(Lcom/lua/c/a/a/a/f$f;)V

    const/16 v0, 0x12e

    :cond_2
    :goto_2
    return v0

    :cond_3
    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-direct {p0, v0}, Lcom/lua/c/a/a/a/f;->K(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->y()V

    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-direct {p0, v0}, Lcom/lua/c/a/a/a/f;->J(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->D:[C

    iget v1, p0, Lcom/lua/c/a/a/a/f;->E:I

    invoke-virtual {p0, v0, v6, v1}, Lcom/lua/c/a/a/a/f;->a([CII)Lcom/lua/c/a/a/j;

    move-result-object v0

    sget-object v1, Lcom/lua/c/a/a/a/f;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/lua/c/a/a/a/f;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    goto :goto_2

    :cond_6
    iput-object v0, p1, Lcom/lua/c/a/a/a/f$f;->b:Lcom/lua/c/a/a/j;

    iget v0, p0, Lcom/lua/c/a/a/a/f;->u:I

    iput v0, p0, Lcom/lua/c/a/a/a/f;->t:I

    const/16 v0, 0x12f

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    iget v1, p0, Lcom/lua/c/a/a/a/f;->v:I

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    const/16 v0, 0x12b

    goto :goto_2

    :cond_7
    if-eq v1, v0, :cond_8

    const/16 v0, 0x3e

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    const/16 v0, 0x126

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    iget v1, p0, Lcom/lua/c/a/a/a/f;->v:I

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    const/16 v0, 0x125

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    iget v1, p0, Lcom/lua/c/a/a/a/f;->v:I

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_9

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    const/16 v0, 0x12a

    goto :goto_2

    :cond_9
    if-eq v1, v0, :cond_a

    const/16 v0, 0x3c

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    const/16 v0, 0x127

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_b

    const/16 v0, 0x3a

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    const/16 v0, 0x12c

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->b(Lcom/lua/c/a/a/a/f$f;)V

    const/16 v0, 0x12e

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_c

    const/16 v0, 0x2f

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    const/16 v0, 0x129

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->y()V

    const-string v0, "."

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "."

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x124

    goto/16 :goto_2

    :cond_d
    const/16 v0, 0x123

    goto/16 :goto_2

    :cond_e
    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-direct {p0, v0}, Lcom/lua/c/a/a/a/f;->M(I)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x2e

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->b(Lcom/lua/c/a/a/a/f$f;)V

    const/16 v0, 0x12e

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    iget v3, p0, Lcom/lua/c/a/a/a/f;->v:I

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_10

    const/16 v0, 0x2d

    goto/16 :goto_2

    :cond_10
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    iget v3, p0, Lcom/lua/c/a/a/a/f;->v:I

    if-ne v3, v2, :cond_11

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->z()I

    move-result v3

    if-ltz v3, :cond_11

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$f;I)V

    goto/16 :goto_0

    :cond_11
    iget-boolean v3, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v3, :cond_13

    :goto_3
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->g()Z

    move-result v3

    if-nez v3, :cond_12

    iget v3, p0, Lcom/lua/c/a/a/a/f;->v:I

    if-eq v3, v5, :cond_12

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->y()V

    goto :goto_3

    :cond_12
    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->D:[C

    iget v4, p0, Lcom/lua/c/a/a/a/f;->E:I

    invoke-virtual {p0, v3, v6, v4}, Lcom/lua/c/a/a/a/f;->a([CII)Lcom/lua/c/a/a/j;

    goto/16 :goto_0

    :cond_13
    :goto_4
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->g()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/lua/c/a/a/a/f;->v:I

    if-eq v3, v5, :cond_0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    goto :goto_4

    :cond_14
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    if-eq v0, v1, :cond_15

    move v0, v1

    goto/16 :goto_2

    :cond_15
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    const/16 v0, 0x101

    goto/16 :goto_2

    :cond_16
    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/a/f;->a(ILcom/lua/c/a/a/a/f$f;)V

    const/16 v0, 0x130

    goto/16 :goto_2

    :cond_17
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    iget v1, p0, Lcom/lua/c/a/a/a/f;->v:I

    if-eq v1, v0, :cond_18

    const/16 v0, 0x118

    goto/16 :goto_2

    :cond_18
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    const/16 v0, 0x128

    goto/16 :goto_2

    :cond_19
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    iget v1, p0, Lcom/lua/c/a/a/a/f;->v:I

    if-eq v1, v0, :cond_1a

    const/16 v0, 0x7e

    goto/16 :goto_2

    :cond_1a
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    const/16 v0, 0x128

    goto/16 :goto_2

    :cond_1b
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_1c

    const/16 v0, 0x7c

    goto/16 :goto_2

    :cond_1c
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    const/16 v0, 0x119

    goto/16 :goto_2

    :cond_1d
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->z()I

    move-result v0

    if-ltz v0, :cond_1e

    invoke-virtual {p0, p1, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$f;I)V

    const/16 v0, 0x130

    goto/16 :goto_2

    :cond_1e
    if-ne v0, v5, :cond_1f

    move v0, v2

    goto/16 :goto_2

    :cond_1f
    const-string v0, "invalid long string delimiter"

    const/16 v1, 0x130

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/a/f;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    throw v0

    :cond_20
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    const/16 v0, 0x12c

    goto/16 :goto_2

    :cond_21
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    const/16 v0, 0x115

    goto/16 :goto_2

    :cond_22
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->m()V

    goto/16 :goto_1

    :cond_23
    const/16 v0, 0x12d

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/lua/c/a/a/a/f$i;ILcom/lua/c/a/a/n;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->g(Lcom/lua/c/a/a/a/f$i;)V

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-short v1, v0, Lcom/lua/c/a/a/a/b;->o:S

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v0

    iget-object v1, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    iput-object v1, v0, Lcom/lua/c/a/a/b;->f:Lcom/lua/c/a/a/n;

    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v1, p1}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->g(Lcom/lua/c/a/a/a/f$i;)V

    add-int/lit8 v0, v0, 0x1

    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-short v2, v1, Lcom/lua/c/a/a/a/b;->o:S

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v1

    iget-object v2, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    iput-object v2, v1, Lcom/lua/c/a/a/b;->f:Lcom/lua/c/a/a/n;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-short v1, v0, Lcom/lua/c/a/a/a/b;->o:S

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/lua/c/a/a/b;->a:Lcom/lua/c/a/a/j;

    iget-object v1, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    invoke-virtual {p0, v0, p3, v1}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/n;Lcom/lua/c/a/a/n;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-short v2, v1, Lcom/lua/c/a/a/a/b;->o:S

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/lua/c/a/a/b;->a:Lcom/lua/c/a/a/j;

    iget-object v2, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    invoke-virtual {p0, v1, p3, v2}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/n;Lcom/lua/c/a/a/n;)V

    goto :goto_1

    :cond_2
    return v0
.end method

.method a([Lcom/lua/c/a/a/a/f$d;ILcom/lua/c/a/a/j;II)I
    .locals 2

    new-instance v0, Lcom/lua/c/a/a/a/f$d;

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-short v1, v1, Lcom/lua/c/a/a/a/b;->o:S

    invoke-direct {v0, p3, p5, p4, v1}, Lcom/lua/c/a/a/a/f$d;-><init>(Lcom/lua/c/a/a/j;IIS)V

    aput-object v0, p1, p2

    return p2
.end method

.method a([CII)Lcom/lua/c/a/a/j;
    .locals 3

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->B:Lcom/lua/c/a/a/a/g$a;

    invoke-static {p1, p2, p3}, Lcom/lua/c/a/a/j;->a([CII)Lcom/lua/c/a/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/g$a;->b(Lcom/lua/c/a/a/j;)Lcom/lua/c/a/a/j;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lua/c/a/a/a/f;->u:I

    sub-int/2addr v1, p3

    iput v1, p0, Lcom/lua/c/a/a/a/f;->u:I

    iget v1, p0, Lcom/lua/c/a/a/a/f;->u:I

    invoke-virtual {v0}, Lcom/lua/c/a/a/j;->m()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lua/c/a/a/a/f;->u:I

    :cond_0
    return-object v0
.end method

.method a()Lcom/lua/c/a/a/l;
    .locals 4

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v1, v0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v2, v1, Lcom/lua/c/a/a/l;->e:[Lcom/lua/c/a/a/l;

    if-eqz v2, :cond_0

    iget v0, v0, Lcom/lua/c/a/a/a/b;->l:I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :cond_0
    iget-object v0, v1, Lcom/lua/c/a/a/l;->e:[Lcom/lua/c/a/a/l;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget v3, v3, Lcom/lua/c/a/a/a/b;->l:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Lcom/lua/c/a/a/a/a;->a([Lcom/lua/c/a/a/l;I)[Lcom/lua/c/a/a/l;

    move-result-object v0

    iput-object v0, v1, Lcom/lua/c/a/a/l;->e:[Lcom/lua/c/a/a/l;

    :cond_1
    iget-object v0, v1, Lcom/lua/c/a/a/l;->e:[Lcom/lua/c/a/a/l;

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget v2, v1, Lcom/lua/c/a/a/a/b;->l:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/lua/c/a/a/a/b;->l:I

    new-instance v1, Lcom/lua/c/a/a/l;

    invoke-direct {v1}, Lcom/lua/c/a/a/l;-><init>()V

    aput-object v1, v0, v2

    return-object v1
.end method

.method a(IILcom/lua/c/a/a/a/f$i;)V
    .locals 3

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    sub-int v0, p1, p2

    iget v2, p3, Lcom/lua/c/a/a/a/f$i;->b:I

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->v(I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, p3, v0}, Lcom/lua/c/a/a/a/b;->d(Lcom/lua/c/a/a/a/f$i;I)V

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/lua/c/a/a/a/b;->z(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p3, Lcom/lua/c/a/a/a/f$i;->b:I

    if-eqz v2, :cond_3

    invoke-virtual {v1, p3}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    :cond_3
    if-lez v0, :cond_1

    iget-short v2, v1, Lcom/lua/c/a/a/a/b;->q:S

    invoke-virtual {v1, v0}, Lcom/lua/c/a/a/a/b;->z(I)V

    invoke-virtual {v1, v2, v0}, Lcom/lua/c/a/a/a/b;->e(II)V

    goto :goto_0
.end method

.method a(ILcom/lua/c/a/a/a/f$d;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v1, v1, Lcom/lua/c/a/a/a/f$b;->c:[Lcom/lua/c/a/a/a/f$d;

    aget-object v2, v1, p1

    iget-object v3, v2, Lcom/lua/c/a/a/a/f$d;->a:Lcom/lua/c/a/a/j;

    iget-object v4, p2, Lcom/lua/c/a/a/a/f$d;->a:Lcom/lua/c/a/a/j;

    invoke-virtual {v3, v4}, Lcom/lua/c/a/a/j;->g(Lcom/lua/c/a/a/k;)Z

    move-result v3

    invoke-static {v3}, Lcom/lua/c/a/a/a/a;->a(Z)V

    iget-short v3, v2, Lcom/lua/c/a/a/a/f$d;->d:S

    iget-short v4, p2, Lcom/lua/c/a/a/a/f$d;->d:S

    if-lt v3, v4, :cond_0

    iget v2, v2, Lcom/lua/c/a/a/a/f$d;->b:I

    iget v3, p2, Lcom/lua/c/a/a/a/f$d;->b:I

    invoke-virtual {v0, v2, v3}, Lcom/lua/c/a/a/a/b;->g(II)V

    add-int/lit8 v0, p1, 0x1

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget v2, v2, Lcom/lua/c/a/a/a/f$b;->d:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget v2, v0, Lcom/lua/c/a/a/a/f$b;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/lua/c/a/a/a/f$b;->d:I

    aput-object v5, v1, v2

    return-void

    :cond_0
    invoke-virtual {v0, v3}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/lua/c/a/a/b;->a:Lcom/lua/c/a/a/j;

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->B:Lcom/lua/c/a/a/a/g$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<goto "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/lua/c/a/a/a/f$d;->a:Lcom/lua/c/a/a/j;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "> at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/lua/c/a/a/a/f$d;->c:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " jumps into the scope of local \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lua/c/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lua/c/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->f(Ljava/lang/String;)V

    throw v5
.end method

.method a(ILcom/lua/c/a/a/a/f$f;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/16 v3, 0xd

    const/16 v4, 0xa

    :cond_0
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->y()V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    if-eq v0, p1, :cond_e

    if-eq v0, v7, :cond_d

    if-eq v0, v4, :cond_c

    if-eq v0, v3, :cond_c

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    if-eq v0, v7, :cond_1

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_b

    const/16 v2, 0x66

    if-eq v0, v2, :cond_a

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_f

    const/16 v2, 0x72

    if-eq v0, v2, :cond_9

    const/16 v2, 0x78

    if-eq v0, v2, :cond_8

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_7

    const/16 v2, 0x61

    if-eq v0, v2, :cond_6

    const/16 v2, 0x62

    if-eq v0, v2, :cond_5

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v0}, Lcom/lua/c/a/a/a/f;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    move v2, v1

    :cond_2
    mul-int/lit8 v2, v2, 0xa

    iget v5, p0, Lcom/lua/c/a/a/a/f;->v:I

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x3

    if-ge v0, v5, :cond_3

    iget v5, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-direct {p0, v5}, Lcom/lua/c/a/a/a/f;->M(I)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    const/16 v0, 0xff

    if-gt v2, v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->B(I)V

    goto :goto_0

    :cond_4
    const-string v0, "escape sequence too large"

    const/16 v1, 0x130

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/a/f;->a(Ljava/lang/String;I)V

    throw v6

    :pswitch_0
    const/16 v0, 0xb

    :goto_1
    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->B(I)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->w()I

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x9

    goto :goto_1

    :cond_5
    const/16 v0, 0x8

    goto :goto_1

    :cond_6
    const/4 v0, 0x7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    :goto_2
    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-direct {p0, v0}, Lcom/lua/c/a/a/a/f;->N(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->m()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->v()I

    move-result v0

    goto :goto_1

    :cond_9
    move v0, v3

    goto :goto_1

    :cond_a
    const/16 v0, 0xc

    goto :goto_1

    :cond_b
    invoke-virtual {p0, v4}, Lcom/lua/c/a/a/a/f;->B(I)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->m()V

    goto/16 :goto_0

    :cond_c
    const-string v0, "unfinished string"

    const/16 v1, 0x130

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/a/f;->a(Ljava/lang/String;I)V

    throw v6

    :cond_d
    const-string v0, "unfinished string"

    const/16 v1, 0x12d

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/a/f;->a(Ljava/lang/String;I)V

    throw v6

    :cond_e
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->y()V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->D:[C

    const/4 v1, 0x1

    iget v2, p0, Lcom/lua/c/a/a/a/f;->E:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/lua/c/a/a/a/f;->a([CII)Lcom/lua/c/a/a/j;

    move-result-object v0

    iput-object v0, p2, Lcom/lua/c/a/a/a/f$f;->b:Lcom/lua/c/a/a/j;

    return-void

    :cond_f
    move v0, v4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/lua/c/a/a/a/b;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lua/c/a/a/a/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/lua/c/a/a/a/f;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/lua/c/a/a/a/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/lua/c/a/a/a/f;->h:Ljava/lang/String;

    sput v1, Lcom/lua/c/a/a/a/f;->i:I

    sput v1, Lcom/lua/c/a/a/a/f;->j:I

    iput v2, p0, Lcom/lua/c/a/a/a/f;->L:I

    :cond_0
    new-instance v0, Lcom/lua/c/a/a/a/b$a;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/b$a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/a/b$a;)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v0, v0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iput v3, v0, Lcom/lua/c/a/a/l;->m:I

    new-instance v0, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->H:Lcom/lua/c/a/a/j;

    invoke-virtual {v1, v2, v0}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/a/f$i;)I

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->H:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;)V

    new-instance v0, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->H:Lcom/lua/c/a/a/j;

    invoke-static {v1, v2, v0, v3}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/a/f$i;I)I

    invoke-virtual {p0, v3, v3, v0}, Lcom/lua/c/a/a/a/f;->a(IILcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, v3}, Lcom/lua/c/a/a/a/f;->l(I)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->E(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x130

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->E(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->x()V

    :goto_0
    const/16 v0, 0x12d

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->m(I)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->d()V

    iget-boolean v0, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->C()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/a/b$a;)V
    .locals 3

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iput-object v0, p1, Lcom/lua/c/a/a/a/b;->d:Lcom/lua/c/a/a/a/b;

    iput-object p0, p1, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iput-object p1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iput v2, p1, Lcom/lua/c/a/a/a/b;->h:I

    iput v1, p1, Lcom/lua/c/a/a/a/b;->i:I

    new-instance v0, Lcom/lua/c/a/a/a/d;

    invoke-direct {v0, v1}, Lcom/lua/c/a/a/a/d;-><init>(I)V

    iput-object v0, p1, Lcom/lua/c/a/a/a/b;->j:Lcom/lua/c/a/a/a/d;

    int-to-short v0, v2

    int-to-short v0, v0

    iput-short v0, p1, Lcom/lua/c/a/a/a/b;->q:S

    iput v2, p1, Lcom/lua/c/a/a/a/b;->k:I

    iput v2, p1, Lcom/lua/c/a/a/a/b;->l:I

    int-to-short v0, v2

    int-to-short v0, v0

    iput-short v0, p1, Lcom/lua/c/a/a/a/b;->p:S

    int-to-short v0, v2

    int-to-short v0, v0

    iput-short v0, p1, Lcom/lua/c/a/a/a/b;->n:S

    int-to-short v0, v2

    int-to-short v0, v0

    iput-short v0, p1, Lcom/lua/c/a/a/a/b;->o:S

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget v0, v0, Lcom/lua/c/a/a/a/f$b;->b:I

    iput v0, p1, Lcom/lua/c/a/a/a/b;->m:I

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/lua/c/a/a/a/b;->g:Lcom/lua/c/a/a/a/b$a;

    iget-object v0, p1, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->G:Lcom/lua/c/a/a/j;

    iput-object v1, v0, Lcom/lua/c/a/a/l;->i:Lcom/lua/c/a/a/j;

    const/4 v1, 0x2

    iput v1, v0, Lcom/lua/c/a/a/l;->n:I

    invoke-virtual {p1, p2, v2}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b$a;Z)V

    return-void
.end method

.method a(Lcom/lua/c/a/a/a/d;Lcom/lua/c/a/a/a/f$i;)V
    .locals 9

    const/16 v8, 0x14

    const/4 v7, 0x0

    const/16 v6, 0xd

    new-instance v0, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    new-instance v1, Lcom/lua/c/a/a/a/b$a;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/b$a;-><init>()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    invoke-virtual {p2}, Lcom/lua/c/a/a/a/f$i;->clone()Lcom/lua/c/a/a/a/f$i;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->i()V

    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v3, v6, p2}, Lcom/lua/c/a/a/a/b;->a(ILcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->g(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget v4, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {v3, v6, p2, v0, v4}, Lcom/lua/c/a/a/a/b;->b(ILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;I)V

    :goto_0
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/lua/c/a/a/a/f$i;->clone()Lcom/lua/c/a/a/a/f$i;

    move-result-object v3

    iget-object v4, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v4, v6, v3}, Lcom/lua/c/a/a/a/b;->a(ILcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->g(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v4, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget v5, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {v4, v6, v3, v0, v5}, Lcom/lua/c/a/a/a/b;->b(ILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;I)V

    iget-object v4, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v4, v8, p2}, Lcom/lua/c/a/a/a/b;->a(ILcom/lua/c/a/a/a/f$i;)V

    iget-object v4, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget v5, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {v4, v8, p2, v3, v5}, Lcom/lua/c/a/a/a/b;->b(ILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->n()V

    const/16 v0, 0x11d

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v2, 0x110

    if-eq v0, v2, :cond_1

    const/16 v2, 0x102

    if-eq v0, v2, :cond_1

    const/16 v2, 0x105

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v0, p2}, Lcom/lua/c/a/a/a/b;->l(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v0, v1, v7}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b$a;Z)V

    iget-object v0, p2, Lcom/lua/c/a/a/a/f$i;->d:Lcom/lua/c/a/a/a/d;

    iget v0, v0, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->u(I)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->A()V

    invoke-virtual {p0, v7}, Lcom/lua/c/a/a/a/f;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v0}, Lcom/lua/c/a/a/a/b;->d()V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v0, p2}, Lcom/lua/c/a/a/a/b;->m(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v0, v1, v7}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b$a;Z)V

    iget-object v0, p2, Lcom/lua/c/a/a/a/f$i;->e:Lcom/lua/c/a/a/a/d;

    iget v0, v0, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->C()V

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v1}, Lcom/lua/c/a/a/a/b;->d()V

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v1, v1, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v2, 0x103

    if-eq v1, v2, :cond_3

    const/16 v2, 0x106

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v1}, Lcom/lua/c/a/a/a/b;->c()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/d;I)V

    :cond_4
    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v1, v0}, Lcom/lua/c/a/a/a/b;->w(I)V

    goto :goto_1

    :cond_5
    const-string v0, "unreachable statement"

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method a(Lcom/lua/c/a/a/a/f$a;)V
    .locals 4

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$a;->a:Lcom/lua/c/a/a/a/f$i;

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->g(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget v1, p1, Lcom/lua/c/a/a/a/f$a;->d:I

    const v2, 0x7ffffffd

    const-string v3, "items in a constructor"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lua/c/a/a/a/b;->a(IILjava/lang/String;)V

    iget v0, p1, Lcom/lua/c/a/a/a/f$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/lua/c/a/a/a/f$a;->d:I

    iget v0, p1, Lcom/lua/c/a/a/a/f$a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/lua/c/a/a/a/f$a;->e:I

    return-void
.end method

.method a(Lcom/lua/c/a/a/a/f$c;I)V
    .locals 5

    const/16 v4, 0xb

    new-instance v1, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$c;->b:Lcom/lua/c/a/a/a/f$i;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i;->b:I

    const/4 v2, 0x7

    if-gt v2, v0, :cond_2

    if-gt v0, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v2, "syntax error"

    invoke-virtual {p0, v0, v2}, Lcom/lua/c/a/a/a/f;->b(ZLjava/lang/String;)V

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/lua/c/a/a/a/f$c;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/f$c;-><init>()V

    iput-object p1, v0, Lcom/lua/c/a/a/a/f$c;->a:Lcom/lua/c/a/a/a/f$c;

    iget-object v2, v0, Lcom/lua/c/a/a/a/f$c;->b:Lcom/lua/c/a/a/a/f$i;

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->m(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v2, v0, Lcom/lua/c/a/a/a/f$c;->b:Lcom/lua/c/a/a/a/f$i;

    iget v3, v2, Lcom/lua/c/a/a/a/f$i;->b:I

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$c;Lcom/lua/c/a/a/a/f$i;)V

    :cond_0
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$c;I)V

    :cond_1
    :goto_1
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-short v2, v2, Lcom/lua/c/a/a/a/b;->q:S

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    :goto_2
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v2, p1, Lcom/lua/c/a/a/a/f$c;->b:Lcom/lua/c/a/a/a/f$i;

    invoke-virtual {v0, v2, v1}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->n(I)V

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->f(Lcom/lua/c/a/a/a/f$i;)I

    move-result v0

    if-eq v0, p2, :cond_4

    invoke-virtual {p0, p2, v0, v1}, Lcom/lua/c/a/a/a/f;->a(IILcom/lua/c/a/a/a/f$i;)V

    if-le v0, p2, :cond_1

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-short v3, v2, Lcom/lua/c/a/a/a/b;->q:S

    sub-int/2addr v0, p2

    sub-int v0, v3, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, v2, Lcom/lua/c/a/a/a/b;->q:S

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/b;->p(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_2
.end method

.method a(Lcom/lua/c/a/a/a/f$c;Lcom/lua/c/a/a/a/f$i;)V
    .locals 9

    const/4 v8, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-short v4, v3, Lcom/lua/c/a/a/a/b;->q:S

    move v0, v2

    :goto_0
    if-eqz p1, :cond_2

    iget-object v5, p1, Lcom/lua/c/a/a/a/f$c;->b:Lcom/lua/c/a/a/a/f$i;

    iget v6, v5, Lcom/lua/c/a/a/a/f$i;->b:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_1

    iget-object v5, v5, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget-short v6, v5, Lcom/lua/c/a/a/a/f$i$a;->c:S

    iget v7, p2, Lcom/lua/c/a/a/a/f$i;->b:I

    if-ne v6, v7, :cond_0

    iget-short v6, v5, Lcom/lua/c/a/a/a/f$i$a;->b:S

    iget-object v7, p2, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v7, v7, Lcom/lua/c/a/a/a/f$i$a;->e:I

    if-ne v6, v7, :cond_0

    int-to-short v0, v8

    int-to-short v0, v0

    iput-short v0, v5, Lcom/lua/c/a/a/a/f$i$a;->c:S

    int-to-short v0, v4

    int-to-short v0, v0

    iput-short v0, v5, Lcom/lua/c/a/a/a/f$i$a;->b:S

    move v0, v1

    :cond_0
    iget v5, p2, Lcom/lua/c/a/a/a/f$i;->b:I

    if-ne v5, v8, :cond_1

    iget-object v5, p1, Lcom/lua/c/a/a/a/f$c;->b:Lcom/lua/c/a/a/a/f$i;

    iget-object v5, v5, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget-short v6, v5, Lcom/lua/c/a/a/a/f$i$a;->a:S

    iget-object v7, p2, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v7, v7, Lcom/lua/c/a/a/a/f$i$a;->e:I

    if-ne v6, v7, :cond_1

    int-to-short v0, v4

    int-to-short v0, v0

    iput-short v0, v5, Lcom/lua/c/a/a/a/f$i$a;->a:S

    move v0, v1

    :cond_1
    iget-object p1, p1, Lcom/lua/c/a/a/a/f$c;->a:Lcom/lua/c/a/a/a/f$c;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget v0, p2, Lcom/lua/c/a/a/a/f$i;->b:I

    if-ne v0, v8, :cond_4

    move v0, v2

    :goto_1
    iget-object v5, p2, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v5, v5, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    invoke-virtual {v3, v1}, Lcom/lua/c/a/a/a/b;->z(I)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x5

    goto :goto_1
.end method

.method a(Lcom/lua/c/a/a/a/f$d;)V
    .locals 4

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v1, v0, Lcom/lua/c/a/a/a/f$b;->c:[Lcom/lua/c/a/a/a/f$d;

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v0, v0, Lcom/lua/c/a/a/a/b;->g:Lcom/lua/c/a/a/a/b$a;

    iget-short v0, v0, Lcom/lua/c/a/a/a/b$a;->c:S

    :goto_0
    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget v2, v2, Lcom/lua/c/a/a/a/f$b;->d:I

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/lua/c/a/a/a/f$d;->a:Lcom/lua/c/a/a/j;

    iget-object v3, p1, Lcom/lua/c/a/a/a/f$d;->a:Lcom/lua/c/a/a/j;

    invoke-virtual {v2, v3}, Lcom/lua/c/a/a/j;->g(Lcom/lua/c/a/a/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/a/f;->a(ILcom/lua/c/a/a/a/f$d;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(Lcom/lua/c/a/a/a/f$f;I)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x5b

    const/16 v4, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->y()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->m()V

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_9

    iget v2, p0, Lcom/lua/c/a/a/a/f;->v:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    if-eq v2, v4, :cond_6

    const/16 v3, 0xd

    if-eq v2, v3, :cond_6

    if-eq v2, v5, :cond_5

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_4

    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->y()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->z()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->y()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->z()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->y()V

    if-nez p2, :cond_1

    const-string v0, "nesting of [[...]] is deprecated"

    invoke-virtual {p0, v0, v5}, Lcom/lua/c/a/a/a/f;->a(Ljava/lang/String;I)V

    throw v6

    :cond_6
    invoke-virtual {p0, v4}, Lcom/lua/c/a/a/a/f;->B(I)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->m()V

    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-nez v2, :cond_1

    iput v1, p0, Lcom/lua/c/a/a/a/f;->E:I

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    const-string v0, "unfinished long string"

    :goto_1
    const/16 v1, 0x12d

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/a/f;->a(Ljava/lang/String;I)V

    throw v6

    :cond_8
    const-string v0, "unfinished long comment"

    goto :goto_1

    :cond_9
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->D:[C

    add-int/lit8 v1, p2, 0x2

    iget v2, p0, Lcom/lua/c/a/a/a/f;->E:I

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/lua/c/a/a/a/f;->a([CII)Lcom/lua/c/a/a/j;

    move-result-object v0

    iput-object v0, p1, Lcom/lua/c/a/a/a/f$f;->b:Lcom/lua/c/a/a/j;

    :cond_a
    :goto_2
    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->D:[C

    add-int/lit8 v1, p2, 0x2

    iget v2, p0, Lcom/lua/c/a/a/a/f;->E:I

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/lua/c/a/a/a/f;->a([CII)Lcom/lua/c/a/a/j;

    goto :goto_2
.end method

.method a(Lcom/lua/c/a/a/a/f$i;)V
    .locals 1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->E()Lcom/lua/c/a/a/j;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/j;)V

    return-void
.end method

.method a(Lcom/lua/c/a/a/a/f$i;I)V
    .locals 4

    new-instance v0, Lcom/lua/c/a/a/a/b;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/b;-><init>()V

    new-instance v1, Lcom/lua/c/a/a/a/b$a;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/b$a;-><init>()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->a()Lcom/lua/c/a/a/l;

    move-result-object v2

    iput-object v2, v0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v2, v0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iput p2, v2, Lcom/lua/c/a/a/l;->j:I

    iget v3, p0, Lcom/lua/c/a/a/a/f;->u:I

    iput v3, v2, Lcom/lua/c/a/a/l;->p:I

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/a/b$a;)V

    iget-object v1, v0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    const-string v2, "defer"

    iput-object v2, v1, Lcom/lua/c/a/a/l;->q:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->u()V

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->n(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->B()V

    iget-object v0, v0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget v1, p0, Lcom/lua/c/a/a/a/f;->u:I

    iput v1, v0, Lcom/lua/c/a/a/l;->o:I

    iget v1, p0, Lcom/lua/c/a/a/a/f;->w:I

    iput v1, v0, Lcom/lua/c/a/a/l;->k:I

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->c(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->d()V

    return-void
.end method

.method a(Lcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/j;)V
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v1, p2}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/j;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    return-void
.end method

.method a(Lcom/lua/c/a/a/a/f$i;ZI)V
    .locals 8

    const/4 v1, 0x1

    iget v3, p0, Lcom/lua/c/a/a/a/f;->u:I

    iget v4, p0, Lcom/lua/c/a/a/a/f;->w:I

    new-instance v2, Lcom/lua/c/a/a/a/b;

    invoke-direct {v2}, Lcom/lua/c/a/a/a/b;-><init>()V

    new-instance v0, Lcom/lua/c/a/a/a/b$a;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/b$a;-><init>()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->a()Lcom/lua/c/a/a/l;

    move-result-object v5

    iput-object v5, v2, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v5, v2, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iput p3, v5, Lcom/lua/c/a/a/l;->j:I

    iget v6, p0, Lcom/lua/c/a/a/a/f;->u:I

    iput v6, v5, Lcom/lua/c/a/a/l;->p:I

    invoke-virtual {p0, v2, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/a/b$a;)V

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->n(I)V

    if-eqz p2, :cond_0

    const-string v0, "self"

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->l(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->u()V

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->n(I)V

    iget-boolean v0, p0, Lcom/lua/c/a/a/a/f;->s:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/lua/c/a/a/a/f;->H:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v5}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;)V

    new-instance v5, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v5}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    iget-object v6, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v7, p0, Lcom/lua/c/a/a/a/f;->H:Lcom/lua/c/a/a/j;

    invoke-static {v6, v7, v5, v1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/a/f$i;I)I

    invoke-virtual {p0, v1, v1, v5}, Lcom/lua/c/a/a/a/f;->a(IILcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->l(I)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->C()V

    iget-object v1, v2, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget v2, p0, Lcom/lua/c/a/a/a/f;->u:I

    iput v2, v1, Lcom/lua/c/a/a/l;->o:I

    iget v2, p0, Lcom/lua/c/a/a/a/f;->w:I

    iput v2, v1, Lcom/lua/c/a/a/l;->k:I

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->c(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->d()V

    iget-boolean v1, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_3

    sget-object v2, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Rect;

    iget v5, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v0, :cond_4

    const/16 v0, 0x7d

    :goto_2
    const/16 v1, 0x10f

    invoke-virtual {p0, v0, v1, p3}, Lcom/lua/c/a/a/a/f;->b(III)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Rect;

    iget v5, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v5, v5, -0x3

    iget v6, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x10b

    goto :goto_2
.end method

.method a(Lcom/lua/c/a/a/a/g$a;ILjava/io/InputStream;Lcom/lua/c/a/a/j;)V
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x2e

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/lua/c/a/a/a/f;->I:B

    iput-object p1, p0, Lcom/lua/c/a/a/a/f;->B:Lcom/lua/c/a/a/a/g$a;

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->z:Lcom/lua/c/a/a/a/f$g;

    const/16 v1, 0x12d

    iput v1, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    iput-object p3, p0, Lcom/lua/c/a/a/a/f;->C:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iput v2, p0, Lcom/lua/c/a/a/a/f;->w:I

    iput v2, p0, Lcom/lua/c/a/a/a/f;->x:I

    iput-object p4, p0, Lcom/lua/c/a/a/a/f;->G:Lcom/lua/c/a/a/j;

    sget-object v0, Lcom/lua/c/a/a/k;->j:Lcom/lua/c/a/a/j;

    iput-object v0, p0, Lcom/lua/c/a/a/a/f;->H:Lcom/lua/c/a/a/j;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/c/a/a/a/f;->E:I

    iput p2, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-direct {p0}, Lcom/lua/c/a/a/a/f;->H()V

    return-void
.end method

.method a(Lcom/lua/c/a/a/j;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->b(Lcom/lua/c/a/a/j;)I

    move-result v0

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget v2, v2, Lcom/lua/c/a/a/a/f$b;->b:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xc8

    const-string v4, "local variables"

    invoke-virtual {v1, v2, v3, v4}, Lcom/lua/c/a/a/a/b;->a(IILjava/lang/String;)V

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v2, v1, Lcom/lua/c/a/a/a/f$b;->a:[Lcom/lua/c/a/a/a/f$h;

    if-eqz v2, :cond_0

    iget v1, v1, Lcom/lua/c/a/a/a/f$b;->b:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v2

    if-le v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v2, v1, Lcom/lua/c/a/a/a/f$b;->a:[Lcom/lua/c/a/a/a/f$h;

    const/4 v3, 0x1

    iget v4, v1, Lcom/lua/c/a/a/a/f$b;->b:I

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lua/c/a/a/a/a;->a([Lcom/lua/c/a/a/a/f$h;I)[Lcom/lua/c/a/a/a/f$h;

    move-result-object v2

    iput-object v2, v1, Lcom/lua/c/a/a/a/f$b;->a:[Lcom/lua/c/a/a/a/f$h;

    :cond_1
    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v2, v1, Lcom/lua/c/a/a/a/f$b;->a:[Lcom/lua/c/a/a/a/f$h;

    iget v3, v1, Lcom/lua/c/a/a/a/f$b;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/lua/c/a/a/a/f$b;->b:I

    new-instance v1, Lcom/lua/c/a/a/a/f$h;

    invoke-direct {v1, v0}, Lcom/lua/c/a/a/a/f$h;-><init>(I)V

    aput-object v1, v2, v3

    return-void
.end method

.method a(Lcom/lua/c/a/a/j;I)V
    .locals 6

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v2, v1, Lcom/lua/c/a/a/a/f$b;->e:[Lcom/lua/c/a/a/a/f$d;

    iget v1, v1, Lcom/lua/c/a/a/a/f$b;->f:I

    invoke-virtual {v0, v2, v1, p1}, Lcom/lua/c/a/a/a/b;->a([Lcom/lua/c/a/a/a/f$d;ILcom/lua/c/a/a/j;)V

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v1, v0, Lcom/lua/c/a/a/a/f$b;->e:[Lcom/lua/c/a/a/a/f$d;

    iget v2, v0, Lcom/lua/c/a/a/a/f$b;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/lua/c/a/a/a/a;->a([Lcom/lua/c/a/a/a/f$d;I)[Lcom/lua/c/a/a/a/f$d;

    move-result-object v1

    iput-object v1, v0, Lcom/lua/c/a/a/a/f$b;->e:[Lcom/lua/c/a/a/a/f$d;

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget v2, v0, Lcom/lua/c/a/a/a/f$b;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/lua/c/a/a/a/f$b;->f:I

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v0}, Lcom/lua/c/a/a/a/b;->b()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lua/c/a/a/a/f;->a([Lcom/lua/c/a/a/a/f$d;ILcom/lua/c/a/a/j;II)I

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->A()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v0, v0, Lcom/lua/c/a/a/a/f$b;->e:[Lcom/lua/c/a/a/a/f$d;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v1, v1, Lcom/lua/c/a/a/a/b;->g:Lcom/lua/c/a/a/a/b$a;

    iget-short v1, v1, Lcom/lua/c/a/a/a/b$a;->d:S

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/lua/c/a/a/a/f$d;->d:S

    :cond_0
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v0, v0, Lcom/lua/c/a/a/a/f$b;->e:[Lcom/lua/c/a/a/a/f$d;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$d;)V

    return-void
.end method

.method a(Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/n;)V
    .locals 5

    invoke-virtual {p0, p1, p2}, Lcom/lua/c/a/a/a/f;->b(Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/n;)I

    move-result v0

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget v2, v2, Lcom/lua/c/a/a/a/f$b;->b:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xc8

    const-string v4, "local variables"

    invoke-virtual {v1, v2, v3, v4}, Lcom/lua/c/a/a/a/b;->a(IILjava/lang/String;)V

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v2, v1, Lcom/lua/c/a/a/a/f$b;->a:[Lcom/lua/c/a/a/a/f$h;

    if-eqz v2, :cond_0

    iget v1, v1, Lcom/lua/c/a/a/a/f$b;->b:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v2

    if-le v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v2, v1, Lcom/lua/c/a/a/a/f$b;->a:[Lcom/lua/c/a/a/a/f$h;

    const/4 v3, 0x1

    iget v4, v1, Lcom/lua/c/a/a/a/f$b;->b:I

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lua/c/a/a/a/a;->a([Lcom/lua/c/a/a/a/f$h;I)[Lcom/lua/c/a/a/a/f$h;

    move-result-object v2

    iput-object v2, v1, Lcom/lua/c/a/a/a/f$b;->a:[Lcom/lua/c/a/a/a/f$h;

    :cond_1
    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v2, v1, Lcom/lua/c/a/a/a/f$b;->a:[Lcom/lua/c/a/a/a/f$h;

    iget v3, v1, Lcom/lua/c/a/a/a/f$b;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/lua/c/a/a/a/f$b;->b:I

    new-instance v1, Lcom/lua/c/a/a/a/f$h;

    invoke-direct {v1, v0}, Lcom/lua/c/a/a/a/f$h;-><init>(I)V

    aput-object v1, v2, v3

    return-void
.end method

.method public a(Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/n;Lcom/lua/c/a/a/n;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget v0, p3, Lcom/lua/c/a/a/n;->g:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v1, p3}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%d: local %s type error %s %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/lua/c/a/a/a/f;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v3, p2}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/n;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v3, p3}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/n;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lua/c/a/a/a/f;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method a(Ljava/lang/String;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/lua/c/a/a/a/f;->j:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/f;->G(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lua/c/a/a/a/f;->h:Ljava/lang/String;

    iget v0, p0, Lcom/lua/c/a/a/a/f;->q:I

    sput v0, Lcom/lua/c/a/a/a/f;->j:I

    :cond_0
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->G:Lcom/lua/c/a/a/j;

    invoke-virtual {v0}, Lcom/lua/c/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/c/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->B:Lcom/lua/c/a/a/a/g$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": syntax error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " near "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/f;->G(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lua/c/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    new-instance v1, Lcom/lua/c/a/a/f;

    invoke-direct {v1, v0}, Lcom/lua/c/a/a/f;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->B:Lcom/lua/c/a/a/a/g$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lua/c/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method a(IIIZ)Z
    .locals 5

    const/4 v3, 0x0

    new-instance v0, Lcom/lua/c/a/a/a/b$a;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/b$a;-><init>()V

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->l(I)V

    if-eqz p4, :cond_0

    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->n(I)V

    const/16 v2, 0x7b

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result p4

    :cond_0
    if-nez p4, :cond_1

    const/16 v2, 0x108

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->D(I)Z

    :cond_1
    invoke-virtual {v1}, Lcom/lua/c/a/a/a/b;->c()I

    move-result v2

    invoke-virtual {v1, v0, v3}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b$a;Z)V

    invoke-virtual {p0, p3}, Lcom/lua/c/a/a/a/f;->l(I)V

    invoke-virtual {v1, p3}, Lcom/lua/c/a/a/a/b;->z(I)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->b()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->f()V

    invoke-virtual {v1}, Lcom/lua/c/a/a/a/b;->d()V

    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/a/b;->w(I)V

    const/16 v0, 0x34

    invoke-virtual {v1, v0, p1, v3, p3}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    invoke-virtual {v1, p2}, Lcom/lua/c/a/a/a/b;->n(I)V

    const/16 v0, 0x23

    add-int/lit8 v3, p1, 0x2

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v4}, Lcom/lua/c/a/a/a/b;->c(III)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/lua/c/a/a/a/b;->g(II)V

    invoke-virtual {v1, p2}, Lcom/lua/c/a/a/a/b;->n(I)V

    return p4
.end method

.method a(IIIZZ)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    new-instance v1, Lcom/lua/c/a/a/a/b$a;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/b$a;-><init>()V

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->l(I)V

    if-eqz p5, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->n(I)V

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result p5

    :cond_0
    if-nez p5, :cond_1

    const/16 v0, 0x108

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    :cond_1
    if-eqz p4, :cond_2

    const/16 v0, 0x21

    invoke-virtual {v2, v0, p1, v3}, Lcom/lua/c/a/a/a/b;->c(III)I

    move-result v0

    :goto_0
    invoke-virtual {v2, v1, v4}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b$a;Z)V

    invoke-virtual {p0, p3}, Lcom/lua/c/a/a/a/f;->l(I)V

    invoke-virtual {v2, p3}, Lcom/lua/c/a/a/a/b;->z(I)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->b()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->f()V

    invoke-virtual {v2}, Lcom/lua/c/a/a/a/b;->d()V

    invoke-virtual {v2, v0}, Lcom/lua/c/a/a/a/b;->w(I)V

    if-eqz p4, :cond_3

    const/16 v1, 0x20

    :goto_1
    invoke-virtual {v2, v1, p1, v3}, Lcom/lua/c/a/a/a/b;->c(III)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/lua/c/a/a/a/b;->g(II)V

    invoke-virtual {v2, p2}, Lcom/lua/c/a/a/a/b;->n(I)V

    return p5

    :cond_2
    invoke-virtual {v2}, Lcom/lua/c/a/a/a/b;->c()I

    move-result v0

    goto :goto_0

    :cond_3
    const/16 v1, 0x22

    invoke-virtual {v2, v1, p1, v4, p3}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    invoke-virtual {v2, p2}, Lcom/lua/c/a/a/a/b;->n(I)V

    const/16 v1, 0x23

    add-int/lit8 p1, p1, 0x2

    goto :goto_1
.end method

.method a(Lcom/lua/c/a/a/a/d;)Z
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v2}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    new-instance v3, Lcom/lua/c/a/a/a/b$a;

    invoke-direct {v3}, Lcom/lua/c/a/a/a/b$a;-><init>()V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v4, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    iget v5, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    iget-boolean v0, p0, Lcom/lua/c/a/a/a/f;->s:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->g(Lcom/lua/c/a/a/a/f$i;)V

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->n(I)V

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const/16 v6, 0x11d

    invoke-virtual {p0, v6}, Lcom/lua/c/a/a/a/f;->D(I)Z

    :cond_1
    iget-object v6, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v6, v6, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v7, 0x110

    if-eq v6, v7, :cond_2

    const/16 v7, 0x102

    if-eq v6, v7, :cond_2

    const/16 v7, 0x105

    if-ne v6, v7, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v4, v2}, Lcom/lua/c/a/a/a/b;->l(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v4, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v4, v3, v1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b$a;Z)V

    iget-object v2, v2, Lcom/lua/c/a/a/a/f$i;->d:Lcom/lua/c/a/a/a/d;

    iget v2, v2, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->u(I)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->A()V

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v1}, Lcom/lua/c/a/a/a/b;->d()V

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v6, v2}, Lcom/lua/c/a/a/a/b;->m(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v6, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v6, v3, v1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b$a;Z)V

    iget-object v1, v2, Lcom/lua/c/a/a/a/f$i;->e:Lcom/lua/c/a/a/a/d;

    iget v1, v1, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->C()V

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v2}, Lcom/lua/c/a/a/a/b;->d()V

    if-eqz v0, :cond_5

    const/16 v2, 0x7d

    invoke-virtual {p0, v2, v4, v5}, Lcom/lua/c/a/a/a/f;->b(III)V

    :cond_5
    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v2, v2, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v3, 0x109

    if-eq v2, v3, :cond_6

    const/16 v3, 0x10a

    if-ne v2, v3, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v2}, Lcom/lua/c/a/a/a/b;->c()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/d;I)V

    :cond_7
    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v2, v1}, Lcom/lua/c/a/a/a/b;->w(I)V

    goto :goto_1

    :cond_8
    const-string v0, "unreachable statement"

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method a(Lcom/lua/c/a/a/a/f$i;II)Z
    .locals 4

    new-instance v1, Lcom/lua/c/a/a/a/b;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/b;-><init>()V

    new-instance v0, Lcom/lua/c/a/a/a/b$a;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/b$a;-><init>()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->a()Lcom/lua/c/a/a/l;

    move-result-object v2

    iput-object v2, v1, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v2, v1, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iput p3, v2, Lcom/lua/c/a/a/l;->j:I

    iget v3, p0, Lcom/lua/c/a/a/a/f;->u:I

    iput v3, v2, Lcom/lua/c/a/a/l;->p:I

    invoke-virtual {p0, v1, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/a/b$a;)V

    const/16 v0, 0x104

    if-ne p2, v0, :cond_0

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->u()V

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->n(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/lua/c/a/a/a/f;->s:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->C()V

    iget-object v1, v1, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget v2, p0, Lcom/lua/c/a/a/a/f;->u:I

    iput v2, v1, Lcom/lua/c/a/a/l;->o:I

    iget v2, p0, Lcom/lua/c/a/a/a/f;->w:I

    iput v2, v1, Lcom/lua/c/a/a/l;->k:I

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->c(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->d()V

    if-eqz v0, :cond_1

    const/16 v1, 0x7d

    invoke-virtual {p0, v1, p2, p3}, Lcom/lua/c/a/a/a/f;->b(III)V

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/lua/c/a/a/j;IZ)Z
    .locals 6

    const/16 v4, 0x2c

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-short v1, v0, Lcom/lua/c/a/a/a/b;->q:S

    const-string v2, "(for index)"

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->d(Ljava/lang/String;)V

    const-string v2, "(for limit)"

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->d(Ljava/lang/String;)V

    const-string v2, "(for step)"

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;)V

    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->n(I)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->j()I

    invoke-virtual {p0, v4}, Lcom/lua/c/a/a/a/f;->n(I)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->j()I

    invoke-virtual {p0, v4}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->j()I

    :goto_0
    move-object v0, p0

    move v2, p2

    move v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lua/c/a/a/a/f;->a(IIIZZ)Z

    move-result v0

    return v0

    :cond_0
    iget-short v2, v0, Lcom/lua/c/a/a/a/b;->q:S

    invoke-static {v3}, Lcom/lua/c/a/a/g;->b(I)Lcom/lua/c/a/a/g;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lua/c/a/a/a/b;->b(Lcom/lua/c/a/a/k;)I

    move-result v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/lua/c/a/a/a/b;->b(III)I

    invoke-virtual {v0, v3}, Lcom/lua/c/a/a/a/b;->z(I)V

    goto :goto_0
.end method

.method a(Lcom/lua/c/a/a/j;Z)Z
    .locals 8

    const/4 v7, 0x3

    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    new-instance v4, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v4}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    iget-short v1, v3, Lcom/lua/c/a/a/a/b;->q:S

    const-string v0, "(for generator)"

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->d(Ljava/lang/String;)V

    const-string v0, "(for state)"

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->d(Ljava/lang/String;)V

    const-string v0, "(for control)"

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;)V

    const/4 v0, 0x4

    :goto_0
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->E()Lcom/lua/c/a/a/j;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v5

    const/16 v2, 0x113

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->D(I)Z

    iget v2, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0, v4}, Lcom/lua/c/a/a/a/f;->f(Lcom/lua/c/a/a/a/f$i;)I

    move-result v6

    invoke-virtual {p0, v7, v6, v4}, Lcom/lua/c/a/a/a/f;->a(IILcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {v3, v7}, Lcom/lua/c/a/a/a/b;->l(I)V

    if-eqz v5, :cond_1

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/lua/c/a/a/a/f;->a(IIIZ)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v3, v0, -0x3

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lua/c/a/a/a/f;->a(IIIZZ)Z

    move-result v0

    goto :goto_1
.end method

.method a(Ljava/lang/String;Lcom/lua/c/a/a/a/f$f;)Z
    .locals 2

    const/16 v0, 0x6e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x4e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/lua/c/a/a/k;->f:Lcom/lua/c/a/a/i;

    :goto_0
    iput-object v0, p2, Lcom/lua/c/a/a/a/f$f;->a:Lcom/lua/c/a/a/k;

    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const/16 v0, 0x58

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/lua/c/a/a/a/f;->b(Ljava/lang/String;Lcom/lua/c/a/a/a/f$f;)Lcom/lua/c/a/a/k;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/k;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    goto :goto_0
.end method

.method b(Lcom/lua/c/a/a/j;)I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v1, v0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v2, v1, Lcom/lua/c/a/a/l;->g:[Lcom/lua/c/a/a/b;

    if-eqz v2, :cond_0

    iget-short v3, v0, Lcom/lua/c/a/a/a/b;->n:S

    add-int/lit8 v3, v3, 0x1

    array-length v2, v2

    if-le v3, v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/lua/c/a/a/l;->g:[Lcom/lua/c/a/a/b;

    iget-short v3, v0, Lcom/lua/c/a/a/a/b;->n:S

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lua/c/a/a/a/a;->a([Lcom/lua/c/a/a/b;I)[Lcom/lua/c/a/a/b;

    move-result-object v2

    iput-object v2, v1, Lcom/lua/c/a/a/l;->g:[Lcom/lua/c/a/a/b;

    :cond_1
    new-instance v2, Lcom/lua/c/a/a/b;

    invoke-direct {v2, p1, v4, v4}, Lcom/lua/c/a/a/b;-><init>(Lcom/lua/c/a/a/j;II)V

    iget-object v1, v1, Lcom/lua/c/a/a/l;->g:[Lcom/lua/c/a/a/b;

    iget-short v3, v0, Lcom/lua/c/a/a/a/b;->n:S

    aput-object v2, v1, v3

    iget-boolean v1, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/lua/c/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/lua/c/a/a/a/f;->b(Ljava/lang/String;I)V

    :cond_2
    iget-short v1, v0, Lcom/lua/c/a/a/a/b;->n:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v0, Lcom/lua/c/a/a/a/b;->n:S

    return v1
.end method

.method b(Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/n;)I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v1, v0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v2, v1, Lcom/lua/c/a/a/l;->g:[Lcom/lua/c/a/a/b;

    if-eqz v2, :cond_0

    iget-short v3, v0, Lcom/lua/c/a/a/a/b;->n:S

    add-int/lit8 v3, v3, 0x1

    array-length v2, v2

    if-le v3, v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/lua/c/a/a/l;->g:[Lcom/lua/c/a/a/b;

    iget-short v3, v0, Lcom/lua/c/a/a/a/b;->n:S

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lua/c/a/a/a/a;->a([Lcom/lua/c/a/a/b;I)[Lcom/lua/c/a/a/b;

    move-result-object v2

    iput-object v2, v1, Lcom/lua/c/a/a/l;->g:[Lcom/lua/c/a/a/b;

    :cond_1
    new-instance v2, Lcom/lua/c/a/a/b;

    invoke-direct {v2, p1, v4, v4}, Lcom/lua/c/a/a/b;-><init>(Lcom/lua/c/a/a/j;II)V

    iput-object p2, v2, Lcom/lua/c/a/a/b;->f:Lcom/lua/c/a/a/n;

    iget-object v1, v1, Lcom/lua/c/a/a/l;->g:[Lcom/lua/c/a/a/b;

    iget-short v3, v0, Lcom/lua/c/a/a/a/b;->n:S

    aput-object v2, v1, v3

    iget-boolean v1, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/lua/c/a/a/a/f;->q:I

    iput v1, v2, Lcom/lua/c/a/a/b;->d:I

    invoke-virtual {p1}, Lcom/lua/c/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/lua/c/a/a/a/f;->b(Ljava/lang/String;I)V

    :cond_2
    iget-short v1, v0, Lcom/lua/c/a/a/a/b;->n:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v0, Lcom/lua/c/a/a/a/b;->n:S

    return v1
.end method

.method b(Lcom/lua/c/a/a/a/f$i;)Lcom/lua/c/a/a/j;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->D()Lcom/lua/c/a/a/j;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/j;)V

    return-object v0
.end method

.method b(Ljava/lang/String;Lcom/lua/c/a/a/a/f$f;)Lcom/lua/c/a/a/k;
    .locals 14

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    const/4 v0, 0x0

    :goto_0
    array-length v1, v8

    if-ge v0, v1, :cond_0

    aget-char v1, v8, v0

    invoke-direct {p0, v1}, Lcom/lua/c/a/a/a/f;->N(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v1, v8

    if-ge v0, v1, :cond_c

    aget-char v1, v8, v0

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_c

    add-int/lit8 v2, v0, 0x1

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_1
    add-int/lit8 v3, v2, 0x2

    array-length v4, v8

    if-lt v3, v4, :cond_1

    sget-object v0, Lcom/lua/c/a/a/k;->f:Lcom/lua/c/a/a/i;

    :goto_2
    return-object v0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget-char v2, v8, v2

    const/16 v4, 0x30

    if-eq v2, v4, :cond_2

    sget-object v0, Lcom/lua/c/a/a/k;->f:Lcom/lua/c/a/a/i;

    goto :goto_2

    :cond_2
    aget-char v2, v8, v3

    const/16 v4, 0x78

    if-eq v2, v4, :cond_3

    aget-char v2, v8, v3

    const/16 v4, 0x58

    if-eq v2, v4, :cond_3

    sget-object v0, Lcom/lua/c/a/a/k;->f:Lcom/lua/c/a/a/i;

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v3, 0x1

    const-wide/16 v2, 0x0

    :goto_3
    array-length v5, v8

    if-ge v4, v5, :cond_4

    aget-char v5, v8, v4

    invoke-direct {p0, v5}, Lcom/lua/c/a/a/a/f;->O(I)Z

    move-result v5

    if-eqz v5, :cond_4

    aget-char v5, v8, v4

    invoke-virtual {p0, v5}, Lcom/lua/c/a/a/a/f;->w(I)I

    move-result v5

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    mul-double/2addr v2, v10

    add-double/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    array-length v5, v8

    if-ge v4, v5, :cond_5

    aget-char v5, v8, v4

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_5

    add-int/lit8 v5, v4, 0x1

    const/4 v4, 0x0

    :goto_4
    array-length v6, v8

    if-ge v5, v6, :cond_6

    aget-char v6, v8, v5

    invoke-direct {p0, v6}, Lcom/lua/c/a/a/a/f;->O(I)Z

    move-result v6

    if-eqz v6, :cond_6

    aget-char v6, v8, v5

    invoke-virtual {p0, v6}, Lcom/lua/c/a/a/a/f;->w(I)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    mul-double/2addr v2, v10

    add-double/2addr v2, v6

    add-int/lit8 v4, v4, -0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    move v12, v5

    move v5, v4

    move v4, v12

    :cond_6
    array-length v6, v8

    if-ge v5, v6, :cond_b

    aget-char v6, v8, v5

    const/16 v7, 0x70

    if-eq v6, v7, :cond_7

    aget-char v6, v8, v5

    const/16 v7, 0x50

    if-ne v6, v7, :cond_b

    :cond_7
    add-int/lit8 v6, v5, 0x1

    array-length v5, v8

    if-ge v6, v5, :cond_8

    aget-char v5, v8, v6

    const/16 v7, 0x2d

    if-ne v5, v7, :cond_8

    const/4 v7, 0x0

    const/4 v5, 0x1

    add-int/lit8 v6, v6, 0x1

    :goto_5
    array-length v9, v8

    if-ge v6, v9, :cond_9

    aget-char v9, v8, v6

    invoke-direct {p0, v9}, Lcom/lua/c/a/a/a/f;->M(I)Z

    move-result v9

    if-eqz v9, :cond_9

    mul-int/lit8 v7, v7, 0xa

    aget-char v9, v8, v6

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, -0x30

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_5

    :cond_9
    if-eqz v5, :cond_a

    neg-int v7, v7

    :cond_a
    add-int/2addr v4, v7

    :cond_b
    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/lua/c/a/a/k;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    goto/16 :goto_2

    :cond_c
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v12, v2

    move v2, v0

    move-wide v0, v12

    goto/16 :goto_1
.end method

.method b()V
    .locals 3

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    new-instance v1, Lcom/lua/c/a/a/a/b$a;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/b$a;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b$a;Z)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->C()V

    invoke-virtual {v0}, Lcom/lua/c/a/a/a/b;->d()V

    return-void
.end method

.method b(III)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/lua/c/a/a/a/f;->w:I

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->o(I)V

    throw v3

    :cond_0
    sput p3, Lcom/lua/c/a/a/a/f;->i:I

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->B:Lcom/lua/c/a/a/a/g$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->F(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lua/c/a/a/a/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " expected (to close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/f;->F(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lua/c/a/a/a/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->g(Ljava/lang/String;)V

    throw v3

    :cond_1
    return-void
.end method

.method b(Lcom/lua/c/a/a/a/f$a;)V
    .locals 9

    const/4 v0, 0x1

    const v8, 0x7ffffffd

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-short v4, v3, Lcom/lua/c/a/a/a/b;->q:S

    new-instance v5, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v5}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    new-instance v6, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v6}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v2, v2, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v7, 0x10f

    if-ne v2, v7, :cond_2

    iget v2, p1, Lcom/lua/c/a/a/a/f$a;->c:I

    const-string v7, "items in a constructor"

    invoke-virtual {v3, v2, v8, v7}, Lcom/lua/c/a/a/a/b;->a(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    invoke-virtual {p0, v5}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;)V

    :goto_0
    move v2, v0

    move v0, v1

    :goto_1
    iget v7, p1, Lcom/lua/c/a/a/a/f$a;->c:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Lcom/lua/c/a/a/a/f$a;->c:I

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->n(I)V

    :cond_1
    invoke-virtual {v3, v5}, Lcom/lua/c/a/a/a/b;->d(Lcom/lua/c/a/a/a/f$i;)I

    move-result v0

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0, v6, v1, v2}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;ZI)V

    :goto_2
    const/16 v1, 0xa

    iget-object v2, p1, Lcom/lua/c/a/a/a/f$a;->b:Lcom/lua/c/a/a/a/f$i;

    iget-object v2, v2, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v2, v2, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {v3, v6}, Lcom/lua/c/a/a/a/b;->d(Lcom/lua/c/a/a/a/f$i;)I

    move-result v5

    invoke-virtual {v3, v1, v2, v0, v5}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    int-to-short v0, v4

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, v3, Lcom/lua/c/a/a/a/b;->q:S

    return-void

    :cond_2
    const/16 v7, 0x130

    if-ne v2, v7, :cond_3

    iget v2, p1, Lcom/lua/c/a/a/a/f$a;->c:I

    const-string v7, "items in a constructor"

    invoke-virtual {v3, v2, v8, v7}, Lcom/lua/c/a/a/a/b;->a(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/lua/c/a/a/a/f;->b(Lcom/lua/c/a/a/a/f$i;)Lcom/lua/c/a/a/j;

    move v2, v1

    goto :goto_1

    :cond_3
    const/16 v0, 0x12f

    if-ne v2, v0, :cond_4

    iget v0, p1, Lcom/lua/c/a/a/a/f$a;->c:I

    const-string v2, "items in a constructor"

    invoke-virtual {v3, v0, v8, v2}, Lcom/lua/c/a/a/a/b;->a(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;)V

    :goto_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v5}, Lcom/lua/c/a/a/a/f;->n(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v6}, Lcom/lua/c/a/a/a/f;->g(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_2
.end method

.method b(Lcom/lua/c/a/a/a/f$d;)V
    .locals 3

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->B:Lcom/lua/c/a/a/a/g$a;

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$d;->a:Lcom/lua/c/a/a/j;

    invoke-virtual {v0}, Lcom/lua/c/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/c/a/a/a/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/lua/c/a/a/a/f$d;->a:Lcom/lua/c/a/a/j;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> at line "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/lua/c/a/a/a/f$d;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not inside a loop"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lua/c/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no visible label \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/lua/c/a/a/a/f$d;->a:Lcom/lua/c/a/a/j;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' for <goto> at line "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/lua/c/a/a/a/f$d;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method b(Lcom/lua/c/a/a/a/f$f;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-direct {p0, v0}, Lcom/lua/c/a/a/a/f;->M(I)Z

    move-result v1

    invoke-static {v1}, Lcom/lua/c/a/a/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->y()V

    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    const-string v0, "Xx"

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Pp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "+-"

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->b(Ljava/lang/String;)Z

    :cond_0
    iget v1, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-direct {p0, v1}, Lcom/lua/c/a/a/a/f;->O(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/lua/c/a/a/a/f;->v:I

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->y()V

    goto :goto_0

    :cond_2
    const-string v0, "Ee"

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/lua/c/a/a/a/f;->B(I)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->D:[C

    iget v2, p0, Lcom/lua/c/a/a/a/f;->E:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/a/f;->a(Ljava/lang/String;Lcom/lua/c/a/a/a/f$f;)Z

    return-void
.end method

.method b(Lcom/lua/c/a/a/a/f$i;I)V
    .locals 7

    const/16 v6, 0x29

    const/16 v5, 0x28

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    new-instance v2, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v2}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v4, v3, Lcom/lua/c/a/a/a/f$g;->a:I

    if-eq v4, v5, :cond_3

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_2

    const/16 v5, 0x130

    if-ne v4, v5, :cond_1

    iget-object v3, v3, Lcom/lua/c/a/a/a/f$g;->b:Lcom/lua/c/a/a/a/f$f;

    iget-object v3, v3, Lcom/lua/c/a/a/a/f$f;->b:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v2, v3}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/j;)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    :goto_0
    iget v3, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v3, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    iget v0, v2, Lcom/lua/c/a/a/a/f$i;->b:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->v(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    :goto_1
    const/16 v2, 0xe

    const/16 v4, 0x1d

    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v3, v0, v5}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    invoke-virtual {v1, p2}, Lcom/lua/c/a/a/a/b;->n(I)V

    add-int/lit8 v0, v3, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, v1, Lcom/lua/c/a/a/a/b;->q:S

    return-void

    :cond_1
    const-string v0, "function arguments expected"

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->d(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v3, v3, Lcom/lua/c/a/a/a/f$g;->a:I

    if-ne v3, v6, :cond_4

    iput v0, v2, Lcom/lua/c/a/a/a/f$i;->b:I

    :goto_2
    invoke-virtual {p0, v6, v5, p2}, Lcom/lua/c/a/a/a/f;->b(III)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->f(Lcom/lua/c/a/a/a/f$i;)I

    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/a/b;->o(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_2

    :cond_5
    iget v0, v2, Lcom/lua/c/a/a/a/f$i;->b:I

    if-eqz v0, :cond_6

    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    :cond_6
    iget-short v0, v1, Lcom/lua/c/a/a/a/b;->q:S

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v0, v2

    goto :goto_1
.end method

.method b(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method b(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->y()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x106

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x120

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x103

    if-eq v0, v1, :cond_1

    const/16 v1, 0x104

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1

    :cond_1
    :pswitch_0
    const/4 p1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x109
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method c()V
    .locals 6

    const-string v0, "break"

    invoke-static {v0}, Lcom/lua/c/a/a/j;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v3

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v1, v0, Lcom/lua/c/a/a/a/f$b;->e:[Lcom/lua/c/a/a/a/f$d;

    iget v2, v0, Lcom/lua/c/a/a/a/f$b;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/lua/c/a/a/a/a;->a([Lcom/lua/c/a/a/a/f$d;I)[Lcom/lua/c/a/a/a/f$d;

    move-result-object v1

    iput-object v1, v0, Lcom/lua/c/a/a/a/f$b;->e:[Lcom/lua/c/a/a/a/f$d;

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget v2, v0, Lcom/lua/c/a/a/a/f$b;->f:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/lua/c/a/a/a/f$b;->f:I

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget v5, v0, Lcom/lua/c/a/a/a/b;->h:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lua/c/a/a/a/f;->a([Lcom/lua/c/a/a/a/f$d;ILcom/lua/c/a/a/j;II)I

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v0, v0, Lcom/lua/c/a/a/a/f$b;->e:[Lcom/lua/c/a/a/a/f$d;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$d;)V

    return-void
.end method

.method c(Lcom/lua/c/a/a/a/f$i;)V
    .locals 5

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v0, v0, Lcom/lua/c/a/a/a/b;->d:Lcom/lua/c/a/a/a/b;

    const/16 v1, 0xd

    const/16 v2, 0x25

    const/4 v3, 0x0

    iget v4, v0, Lcom/lua/c/a/a/a/b;->l:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/lua/c/a/a/a/b;->b(III)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    invoke-virtual {v0, p1}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    return-void
.end method

.method c(Lcom/lua/c/a/a/a/f$i;I)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/lua/c/a/a/a/b;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/b;-><init>()V

    new-instance v1, Lcom/lua/c/a/a/a/b$a;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/b$a;-><init>()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->a()Lcom/lua/c/a/a/l;

    move-result-object v2

    iput-object v2, v0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v2, v0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iput p2, v2, Lcom/lua/c/a/a/l;->j:I

    iget v3, p0, Lcom/lua/c/a/a/a/f;->u:I

    iput v3, v2, Lcom/lua/c/a/a/l;->p:I

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/a/b$a;)V

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->u()V

    if-eqz v1, :cond_0

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->n(I)V

    :cond_0
    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->H:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;)V

    new-instance v1, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->H:Lcom/lua/c/a/a/j;

    invoke-static {v2, v3, v1, v4}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/a/f$i;I)I

    invoke-virtual {p0, v4, v4, v1}, Lcom/lua/c/a/a/a/f;->a(IILcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, v4}, Lcom/lua/c/a/a/a/f;->l(I)V

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->n(I)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->x()V

    iget-object v0, v0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget v1, p0, Lcom/lua/c/a/a/a/f;->u:I

    iput v1, v0, Lcom/lua/c/a/a/l;->o:I

    iget v1, p0, Lcom/lua/c/a/a/a/f;->w:I

    iput v1, v0, Lcom/lua/c/a/a/l;->k:I

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->c(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->d()V

    return-void
.end method

.method d(Lcom/lua/c/a/a/a/f$i;I)I
    .locals 5

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->i()V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->t(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    const/16 v2, 0x8

    invoke-virtual {p0, p1, v2}, Lcom/lua/c/a/a/a/f;->d(Lcom/lua/c/a/a/a/f$i;I)I

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v2, v0, p1, v1}, Lcom/lua/c/a/a/a/b;->a(ILcom/lua/c/a/a/a/f$i;I)V

    :goto_0
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->s(I)I

    move-result v0

    :goto_1
    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/lua/c/a/a/a/f;->m:[Lcom/lua/c/a/a/a/f$e;

    aget-object v1, v1, v0

    iget-byte v1, v1, Lcom/lua/c/a/a/a/f$e;->a:B

    if-le v1, p2, :cond_1

    new-instance v2, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v2}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    iget v3, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v1, v0, p1}, Lcom/lua/c/a/a/a/b;->a(ILcom/lua/c/a/a/a/f$i;)V

    sget-object v1, Lcom/lua/c/a/a/a/f;->m:[Lcom/lua/c/a/a/a/f$e;

    aget-object v1, v1, v0

    iget-byte v1, v1, Lcom/lua/c/a/a/a/f$e;->b:B

    invoke-virtual {p0, v2, v1}, Lcom/lua/c/a/a/a/f;->d(Lcom/lua/c/a/a/a/f$i;I)I

    move-result v1

    iget-object v4, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v4, v0, p1, v2, v3}, Lcom/lua/c/a/a/a/b;->b(ILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;I)V

    move v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->k(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->n()V

    return v0
.end method

.method d()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v2, v1, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    invoke-virtual {v1, v0, v0}, Lcom/lua/c/a/a/a/b;->i(II)V

    invoke-virtual {v1}, Lcom/lua/c/a/a/a/b;->d()V

    iget-object v3, v2, Lcom/lua/c/a/a/l;->d:[I

    iget v4, v1, Lcom/lua/c/a/a/a/b;->h:I

    invoke-static {v3, v4}, Lcom/lua/c/a/a/a/a;->a([II)[I

    move-result-object v3

    iput-object v3, v2, Lcom/lua/c/a/a/l;->d:[I

    iget-object v3, v2, Lcom/lua/c/a/a/l;->f:[I

    iget v4, v1, Lcom/lua/c/a/a/a/b;->h:I

    invoke-static {v3, v4}, Lcom/lua/c/a/a/a/a;->a([II)[I

    move-result-object v3

    iput-object v3, v2, Lcom/lua/c/a/a/l;->f:[I

    iget-object v3, v2, Lcom/lua/c/a/a/l;->c:[Lcom/lua/c/a/a/k;

    iget v4, v1, Lcom/lua/c/a/a/a/b;->k:I

    invoke-static {v3, v4}, Lcom/lua/c/a/a/a/a;->a([Lcom/lua/c/a/a/k;I)[Lcom/lua/c/a/a/k;

    move-result-object v3

    iput-object v3, v2, Lcom/lua/c/a/a/l;->c:[Lcom/lua/c/a/a/k;

    iget-object v3, v2, Lcom/lua/c/a/a/l;->e:[Lcom/lua/c/a/a/l;

    iget v4, v1, Lcom/lua/c/a/a/a/b;->l:I

    invoke-static {v3, v4}, Lcom/lua/c/a/a/a/a;->a([Lcom/lua/c/a/a/l;I)[Lcom/lua/c/a/a/l;

    move-result-object v3

    iput-object v3, v2, Lcom/lua/c/a/a/l;->e:[Lcom/lua/c/a/a/l;

    iget-object v3, v2, Lcom/lua/c/a/a/l;->g:[Lcom/lua/c/a/a/b;

    iget-short v4, v1, Lcom/lua/c/a/a/a/b;->n:S

    invoke-static {v3, v4}, Lcom/lua/c/a/a/a/a;->a([Lcom/lua/c/a/a/b;I)[Lcom/lua/c/a/a/b;

    move-result-object v3

    iput-object v3, v2, Lcom/lua/c/a/a/l;->g:[Lcom/lua/c/a/a/b;

    iget-object v3, v2, Lcom/lua/c/a/a/l;->h:[Lcom/lua/c/a/a/m;

    iget-short v4, v1, Lcom/lua/c/a/a/a/b;->p:S

    invoke-static {v3, v4}, Lcom/lua/c/a/a/a/a;->a([Lcom/lua/c/a/a/m;I)[Lcom/lua/c/a/a/m;

    move-result-object v3

    iput-object v3, v2, Lcom/lua/c/a/a/l;->h:[Lcom/lua/c/a/a/m;

    iget-object v2, v1, Lcom/lua/c/a/a/a/b;->g:Lcom/lua/c/a/a/a/b$a;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    iget-object v0, v1, Lcom/lua/c/a/a/a/b;->d:Lcom/lua/c/a/a/a/b;

    iput-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    return-void
.end method

.method d(Lcom/lua/c/a/a/a/f$i;)V
    .locals 12

    const/16 v11, 0x12f

    const/16 v10, 0x7d

    const/16 v9, 0x7b

    const/16 v8, 0x3d

    const/4 v1, 0x0

    iget v2, p0, Lcom/lua/c/a/a/a/f;->u:I

    iget v3, p0, Lcom/lua/c/a/a/a/f;->w:I

    iget-object v4, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    const/16 v0, 0xb

    invoke-virtual {v4, v0, v1, v1, v1}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    move-result v5

    new-instance v6, Lcom/lua/c/a/a/a/f$a;

    invoke-direct {v6}, Lcom/lua/c/a/a/a/f$a;-><init>()V

    iput v1, v6, Lcom/lua/c/a/a/a/f$a;->e:I

    iput v1, v6, Lcom/lua/c/a/a/a/f$a;->c:I

    iput v1, v6, Lcom/lua/c/a/a/a/f$a;->d:I

    iput-object p1, v6, Lcom/lua/c/a/a/a/f$a;->b:Lcom/lua/c/a/a/a/f$i;

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v5}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    iget-object v0, v6, Lcom/lua/c/a/a/a/f$a;->a:Lcom/lua/c/a/a/a/f$i;

    invoke-virtual {v0, v1, v1}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    invoke-virtual {v4, p1}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, v9}, Lcom/lua/c/a/a/a/f;->n(I)V

    :cond_0
    iget-object v0, v6, Lcom/lua/c/a/a/a/f$a;->a:Lcom/lua/c/a/a/a/f$i;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i;->b:I

    if-eqz v0, :cond_1

    iget v0, v6, Lcom/lua/c/a/a/a/f$a;->e:I

    if-lez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    if-ne v0, v10, :cond_4

    :goto_1
    iget-boolean v0, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Rect;

    iget v7, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v1, v2, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0, v10, v9, v3}, Lcom/lua/c/a/a/a/f;->b(III)V

    invoke-virtual {v4, v6}, Lcom/lua/c/a/a/a/b;->b(Lcom/lua/c/a/a/a/f$a;)V

    new-instance v0, Lcom/lua/c/a/a/a/c;

    iget-object v1, v4, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v1, v1, Lcom/lua/c/a/a/l;->d:[I

    invoke-direct {v0, v1, v5}, Lcom/lua/c/a/a/a/c;-><init>([II)V

    iget v1, v6, Lcom/lua/c/a/a/a/f$a;->d:I

    invoke-static {v1}, Lcom/lua/c/a/a/a/f;->z(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/a/a;->b(Lcom/lua/c/a/a/a/c;I)V

    iget v1, v6, Lcom/lua/c/a/a/a/f$a;->c:I

    invoke-static {v1}, Lcom/lua/c/a/a/a/f;->z(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/a/a;->d(Lcom/lua/c/a/a/a/c;I)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v6}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/f$a;)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v7, 0x5b

    if-eq v0, v7, :cond_7

    const/16 v7, 0x10f

    if-eq v0, v7, :cond_9

    if-eq v0, v11, :cond_8

    const/16 v7, 0x130

    if-eq v0, v7, :cond_6

    :cond_5
    :goto_2
    invoke-virtual {p0, v6}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$a;)V

    :goto_3
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->q()V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->z:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    if-eq v0, v8, :cond_7

    const/16 v7, 0x3a

    if-ne v0, v7, :cond_5

    :cond_7
    invoke-virtual {p0, v6}, Lcom/lua/c/a/a/a/f;->b(Lcom/lua/c/a/a/a/f$a;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->q()V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->z:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    if-eq v0, v8, :cond_7

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->q()V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->z:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    if-eq v0, v11, :cond_7

    goto :goto_2
.end method

.method d(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->e(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;)V

    return-void
.end method

.method e()I
    .locals 3

    new-instance v0, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->g(Lcom/lua/c/a/a/a/f$i;)V

    iget v1, v0, Lcom/lua/c/a/a/a/f$i;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    iput v1, v0, Lcom/lua/c/a/a/a/f$i;->b:I

    :cond_0
    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v1, v0}, Lcom/lua/c/a/a/a/b;->m(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v0, v0, Lcom/lua/c/a/a/a/f$i;->e:Lcom/lua/c/a/a/a/d;

    iget v0, v0, Lcom/lua/c/a/a/a/d;->a:I

    return v0
.end method

.method e(Ljava/lang/String;)Lcom/lua/c/a/a/j;
    .locals 1

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->B:Lcom/lua/c/a/a/a/g$a;

    invoke-virtual {v0, p1}, Lcom/lua/c/a/a/a/g$a;->a(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method e(Lcom/lua/c/a/a/a/f$i;)V
    .locals 8

    const/16 v7, 0x5d

    const/16 v6, 0x5b

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget v3, p0, Lcom/lua/c/a/a/a/f;->w:I

    const/16 v0, 0x30

    invoke-virtual {v2, v0, v1, v1}, Lcom/lua/c/a/a/a/b;->b(III)I

    move-result v4

    new-instance v5, Lcom/lua/c/a/a/a/f$a;

    invoke-direct {v5}, Lcom/lua/c/a/a/a/f$a;-><init>()V

    iput v1, v5, Lcom/lua/c/a/a/a/f$a;->e:I

    iput v1, v5, Lcom/lua/c/a/a/a/f$a;->c:I

    iput v1, v5, Lcom/lua/c/a/a/a/f$a;->d:I

    iput-object p1, v5, Lcom/lua/c/a/a/a/f$a;->b:Lcom/lua/c/a/a/a/f$i;

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v4}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    iget-object v0, v5, Lcom/lua/c/a/a/a/f$a;->a:Lcom/lua/c/a/a/a/f$i;

    invoke-virtual {v0, v1, v1}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    invoke-virtual {v2, p1}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, v6}, Lcom/lua/c/a/a/a/f;->n(I)V

    :cond_0
    iget-object v0, v5, Lcom/lua/c/a/a/a/f$a;->a:Lcom/lua/c/a/a/a/f$i;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i;->b:I

    if-eqz v0, :cond_1

    iget v0, v5, Lcom/lua/c/a/a/a/f$a;->e:I

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    if-ne v0, v7, :cond_3

    :goto_1
    invoke-virtual {p0, v7, v6, v3}, Lcom/lua/c/a/a/a/f;->b(III)V

    invoke-virtual {v2, v5}, Lcom/lua/c/a/a/a/b;->b(Lcom/lua/c/a/a/a/f$a;)V

    new-instance v0, Lcom/lua/c/a/a/a/c;

    iget-object v1, v2, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v1, v1, Lcom/lua/c/a/a/l;->d:[I

    invoke-direct {v0, v1, v4}, Lcom/lua/c/a/a/a/c;-><init>([II)V

    iget v1, v5, Lcom/lua/c/a/a/a/f$a;->d:I

    invoke-static {v1}, Lcom/lua/c/a/a/a/f;->z(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/a/a;->b(Lcom/lua/c/a/a/a/c;I)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v5}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/f$a;)V

    invoke-virtual {p0, v5}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$a;)V

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method e(Lcom/lua/c/a/a/a/f$i;I)V
    .locals 8

    iget v3, p0, Lcom/lua/c/a/a/a/f;->u:I

    iget v4, p0, Lcom/lua/c/a/a/a/f;->w:I

    new-instance v1, Lcom/lua/c/a/a/a/b;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/b;-><init>()V

    new-instance v0, Lcom/lua/c/a/a/a/b$a;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/b$a;-><init>()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->a()Lcom/lua/c/a/a/l;

    move-result-object v2

    iput-object v2, v1, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v2, v1, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iput p2, v2, Lcom/lua/c/a/a/l;->j:I

    iget v5, p0, Lcom/lua/c/a/a/a/f;->u:I

    iput v5, v2, Lcom/lua/c/a/a/l;->p:I

    invoke-virtual {p0, v1, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/a/b$a;)V

    iget-object v0, v1, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    const-string v2, "when"

    iput-object v2, v0, Lcom/lua/c/a/a/l;->q:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/lua/c/a/a/a/f;->s:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v2}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->g(Lcom/lua/c/a/a/a/f$i;)V

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->n(I)V

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    :cond_0
    new-instance v5, Lcom/lua/c/a/a/a/d;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/lua/c/a/a/a/d;-><init>(I)V

    :goto_1
    iget-object v6, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v6, v6, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v7, 0x103

    if-ne v6, v7, :cond_2

    invoke-virtual {v2}, Lcom/lua/c/a/a/a/f$i;->clone()Lcom/lua/c/a/a/a/f$i;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/d;Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x106

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->b()V

    :cond_3
    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget v5, v5, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {v2, v5}, Lcom/lua/c/a/a/a/b;->w(I)V

    iget-object v1, v1, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget v2, p0, Lcom/lua/c/a/a/a/f;->u:I

    iput v2, v1, Lcom/lua/c/a/a/l;->o:I

    iget v2, p0, Lcom/lua/c/a/a/a/f;->w:I

    iput v2, v1, Lcom/lua/c/a/a/l;->k:I

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->c(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->d()V

    iget-boolean v1, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_5

    sget-object v1, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    iget v5, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v0, :cond_6

    const/16 v0, 0x7d

    :goto_3
    const/16 v1, 0x121

    invoke-virtual {p0, v0, v1, p2}, Lcom/lua/c/a/a/a/f;->b(III)V

    return-void

    :cond_5
    sget-object v1, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    iget v5, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v5, v5, -0x3

    iget v6, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    :cond_6
    const/16 v0, 0x10b

    goto :goto_3
.end method

.method f(Lcom/lua/c/a/a/a/f$i;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->g(Lcom/lua/c/a/a/a/f$i;)V

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v1, p1}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->g(Lcom/lua/c/a/a/a/f$i;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method f()V
    .locals 6

    const-string v0, "continue"

    invoke-static {v0}, Lcom/lua/c/a/a/j;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v3

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v1, v0, Lcom/lua/c/a/a/a/f$b;->e:[Lcom/lua/c/a/a/a/f$d;

    iget v2, v0, Lcom/lua/c/a/a/a/f$b;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/lua/c/a/a/a/a;->a([Lcom/lua/c/a/a/a/f$d;I)[Lcom/lua/c/a/a/a/f$d;

    move-result-object v1

    iput-object v1, v0, Lcom/lua/c/a/a/a/f$b;->e:[Lcom/lua/c/a/a/a/f$d;

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget v2, v0, Lcom/lua/c/a/a/a/f$b;->f:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/lua/c/a/a/a/f$b;->f:I

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget v5, v0, Lcom/lua/c/a/a/a/b;->h:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lua/c/a/a/a/f;->a([Lcom/lua/c/a/a/a/f$d;ILcom/lua/c/a/a/j;II)I

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v0, v0, Lcom/lua/c/a/a/a/f$b;->e:[Lcom/lua/c/a/a/a/f$d;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$d;)V

    return-void
.end method

.method f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method g(Lcom/lua/c/a/a/a/f$i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lua/c/a/a/a/f;->d(Lcom/lua/c/a/a/a/f$i;I)I

    return-void
.end method

.method g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    invoke-virtual {p0, p1, v0}, Lcom/lua/c/a/a/a/f;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    throw v0
.end method

.method g()Z
    .locals 2

    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    new-instance v1, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    const-string v2, "(defer)"

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->l(I)V

    iget v2, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0, v1, v2}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;I)V

    const/16 v1, 0x33

    iget-short v2, v0, Lcom/lua/c/a/a/a/b;->o:S

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    iget-short v1, v0, Lcom/lua/c/a/a/a/b;->o:S

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v1

    iget v0, v0, Lcom/lua/c/a/a/a/b;->h:I

    iput v0, v1, Lcom/lua/c/a/a/b;->b:I

    return-void
.end method

.method h(Lcom/lua/c/a/a/a/f$i;)V
    .locals 2

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    new-instance v1, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    invoke-virtual {v0, p1}, Lcom/lua/c/a/a/a/b;->f(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {v0, p1, v1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)V

    return-void
.end method

.method i()V
    .locals 2

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->B:Lcom/lua/c/a/a/a/g$a;

    iget v1, v0, Lcom/lua/c/a/a/a/g$a;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lua/c/a/a/a/g$a;->a:I

    const/16 v0, 0xc8

    if-gt v1, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "chunk has too many syntax levels"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/a/f;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    throw v0
.end method

.method i(Lcom/lua/c/a/a/a/f$i;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->l(Lcom/lua/c/a/a/a/f$i;)V

    :goto_0
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->h(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->h(Lcom/lua/c/a/a/a/f$i;)V

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method j()I
    .locals 3

    new-instance v0, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->g(Lcom/lua/c/a/a/a/f$i;)V

    iget v1, v0, Lcom/lua/c/a/a/a/f$i;->b:I

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v2, v0}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    return v1
.end method

.method j(Lcom/lua/c/a/a/a/f$i;)V
    .locals 3

    const/16 v2, 0x28

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    if-eq v0, v2, :cond_1

    const/16 v1, 0x12f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->l(Lcom/lua/c/a/a/a/f$i;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected symbol "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v1, v1, Lcom/lua/c/a/a/a/f$g;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    iget v0, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->g(Lcom/lua/c/a/a/a/f$i;)V

    const/16 v1, 0x29

    invoke-virtual {p0, v1, v2, v0}, Lcom/lua/c/a/a/a/f;->b(III)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0
.end method

.method k()V
    .locals 6

    const/16 v5, 0xe

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    new-instance v3, Lcom/lua/c/a/a/a/f$c;

    invoke-direct {v3}, Lcom/lua/c/a/a/a/f$c;-><init>()V

    iget-object v0, v3, Lcom/lua/c/a/a/a/f$c;->b:Lcom/lua/c/a/a/a/f$i;

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->m(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v4, 0x3d

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2c

    if-ne v0, v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/lua/c/a/a/a/f$c;->a:Lcom/lua/c/a/a/a/f$c;

    invoke-virtual {p0, v3, v1}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$c;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, v3, Lcom/lua/c/a/a/a/f$c;->b:Lcom/lua/c/a/a/a/f$i;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i;->b:I

    if-ne v0, v5, :cond_3

    move v0, v1

    :goto_1
    const-string v4, "syntax error"

    invoke-virtual {p0, v0, v4}, Lcom/lua/c/a/a/a/f;->b(ZLjava/lang/String;)V

    iget-object v0, v3, Lcom/lua/c/a/a/a/f$c;->b:Lcom/lua/c/a/a/a/f$i;

    iget v3, v0, Lcom/lua/c/a/a/a/f$i;->b:I

    if-ne v3, v5, :cond_1

    invoke-virtual {v2, v0}, Lcom/lua/c/a/a/a/b;->k(Lcom/lua/c/a/a/a/f$i;)Lcom/lua/c/a/a/a/c;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/a/a;->d(Lcom/lua/c/a/a/a/c;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method k(Lcom/lua/c/a/a/a/f$i;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v3, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->m(Lcom/lua/c/a/a/a/f$i;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, v0, Lcom/lua/c/a/a/a/f$g;->b:Lcom/lua/c/a/a/a/f$f;

    iget-object v0, v0, Lcom/lua/c/a/a/a/f$f;->b:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, p1, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/j;)V

    sget-object v0, Lcom/lua/c/a/a/n;->c:Lcom/lua/c/a/a/n;

    :goto_1
    iput-object v0, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    :goto_2
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget-object v1, v1, Lcom/lua/c/a/a/a/f$g;->b:Lcom/lua/c/a/a/a/f$f;

    iget-object v1, v1, Lcom/lua/c/a/a/a/f$f;->a:Lcom/lua/c/a/a/k;

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/f$i$a;->a(Lcom/lua/c/a/a/k;)V

    sget-object v0, Lcom/lua/c/a/a/n;->a:Lcom/lua/c/a/a/n;

    goto :goto_1

    :sswitch_2
    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v0, v3, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget v0, v0, Lcom/lua/c/a/a/l;->m:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot use "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-static {v5}, Lcom/lua/c/a/a/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " outside a vararg function"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/lua/c/a/a/a/f;->b(ZLjava/lang/String;)V

    const/16 v0, 0xf

    const/16 v4, 0x26

    invoke-virtual {v3, v4, v2, v1, v2}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_3

    :sswitch_3
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->G()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x2

    :goto_4
    invoke-virtual {p1, v0, v2}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    sget-object v0, Lcom/lua/c/a/a/n;->e:Lcom/lua/c/a/a/n;

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1, v1, v2}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    sget-object v0, Lcom/lua/c/a/a/n;->f:Lcom/lua/c/a/a/n;

    goto :goto_1

    :sswitch_6
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    iget v0, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0, p1, v0}, Lcom/lua/c/a/a/a/f;->c(Lcom/lua/c/a/a/a/f$i;I)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    iget v0, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0, p1, v2, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;ZI)V

    sget-object v0, Lcom/lua/c/a/a/n;->b:Lcom/lua/c/a/a/n;

    iput-object v0, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    goto/16 :goto_0

    :sswitch_8
    const/4 v0, 0x3

    goto :goto_4

    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->d(Lcom/lua/c/a/a/a/f$i;)V

    sget-object v0, Lcom/lua/c/a/a/n;->d:Lcom/lua/c/a/a/n;

    iput-object v0, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->e(Lcom/lua/c/a/a/a/f$i;)V

    sget-object v0, Lcom/lua/c/a/a/n;->d:Lcom/lua/c/a/a/n;

    iput-object v0, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5b -> :sswitch_a
        0x7b -> :sswitch_9
        0x10c -> :sswitch_8
        0x10f -> :sswitch_7
        0x114 -> :sswitch_6
        0x117 -> :sswitch_5
        0x11e -> :sswitch_4
        0x121 -> :sswitch_3
        0x124 -> :sswitch_2
        0x12e -> :sswitch_1
        0x130 -> :sswitch_0
    .end sparse-switch
.end method

.method l()V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v2

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v3, v3, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v4, 0x12f

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->E()Lcom/lua/c/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/c/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->D()Lcom/lua/c/a/a/j;

    move-result-object v3

    if-nez v0, :cond_2

    invoke-virtual {v3}, Lcom/lua/c/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v4, p0, Lcom/lua/c/a/a/a/f;->K:Ljava/util/HashMap;

    new-instance v5, Lcom/lua/c/a/a/n;

    invoke-virtual {v3}, Lcom/lua/c/a/a/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/lua/c/a/a/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/lua/c/a/a/j;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v0

    new-instance v4, Lcom/lua/c/a/a/n;

    invoke-virtual {v3}, Lcom/lua/c/a/a/j;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lua/c/a/a/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/n;)V

    invoke-virtual {p0, v7}, Lcom/lua/c/a/a/a/f;->l(I)V

    const/16 v0, 0x36

    iget-short v4, v1, Lcom/lua/c/a/a/a/b;->o:S

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/j;)I

    move-result v3

    invoke-virtual {v1, v0, v4, v3}, Lcom/lua/c/a/a/a/b;->b(III)I

    invoke-virtual {v1, v7}, Lcom/lua/c/a/a/a/b;->z(I)V

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v2, :cond_3

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->n(I)V

    :cond_3
    return-void
.end method

.method l(I)V
    .locals 3

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-short v1, v0, Lcom/lua/c/a/a/a/b;->o:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/lua/c/a/a/a/b;->o:S

    :goto_0
    if-lez p1, :cond_0

    iget-short v1, v0, Lcom/lua/c/a/a/a/b;->o:S

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v1

    iget v2, v0, Lcom/lua/c/a/a/a/b;->h:I

    iput v2, v1, Lcom/lua/c/a/a/b;->b:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method l(Lcom/lua/c/a/a/a/f$i;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->E()Lcom/lua/c/a/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-static {v2, v1, p1, v0}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/a/f$i;I)I

    move-result v3

    iget-boolean v4, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/lua/c/a/a/j;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/lua/c/a/a/a/f;->b(Ljava/lang/String;I)V

    :cond_0
    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/lua/c/a/a/a/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v3}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    iget-object v4, p0, Lcom/lua/c/a/a/a/f;->H:Lcom/lua/c/a/a/j;

    invoke-static {v2, v4, p1, v0}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/a/f$i;I)I

    iget v4, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_2

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    invoke-virtual {p0, v3, v1}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/j;)V

    invoke-virtual {v2, p1, v3}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method m()V
    .locals 2

    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->g()Z

    move-result v1

    invoke-static {v1}, Lcom/lua/c/a/a/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lua/c/a/a/a/f;->v:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    :cond_0
    iget v0, p0, Lcom/lua/c/a/a/a/f;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/c/a/a/a/f;->w:I

    const v1, 0x7ffffffd

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    const-string v0, "chunk has too many lines"

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method m(I)V
    .locals 1

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->o(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method m(Lcom/lua/c/a/a/a/f$i;)V
    .locals 3

    iget v0, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->j(Lcom/lua/c/a/a/a/f$i;)V

    :goto_0
    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v1, v1, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v2, 0x28

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_3

    const/16 v2, 0x130

    if-eq v1, v2, :cond_3

    return-void

    :cond_0
    new-instance v1, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v2, p1}, Lcom/lua/c/a/a/a/b;->f(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->n(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v2, p1, v1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v2, p1, v1}, Lcom/lua/c/a/a/a/b;->b(Lcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)V

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/lua/c/a/a/a/f;->b(Lcom/lua/c/a/a/a/f$i;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->h(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v1, p1}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_1
.end method

.method n()V
    .locals 2

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->B:Lcom/lua/c/a/a/a/g$a;

    iget v1, v0, Lcom/lua/c/a/a/a/g$a;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/lua/c/a/a/a/g$a;->a:I

    return-void
.end method

.method n(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->m(I)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    return-void
.end method

.method n(Lcom/lua/c/a/a/a/f$i;)V
    .locals 1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->g(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/lua/c/a/a/a/b;->h(Lcom/lua/c/a/a/a/f$i;)V

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->n(I)V

    return-void
.end method

.method o()V
    .locals 4

    new-instance v0, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->E()Lcom/lua/c/a/a/j;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->l(I)V

    const/4 v2, 0x0

    iget v3, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;ZI)V

    iget-short v0, v1, Lcom/lua/c/a/a/a/b;->o:S

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v0

    iget v1, v1, Lcom/lua/c/a/a/a/b;->h:I

    iput v1, v0, Lcom/lua/c/a/a/b;->b:I

    return-void
.end method

.method o(I)V
    .locals 3

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->B:Lcom/lua/c/a/a/a/g$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->F(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lua/c/a/a/a/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " expected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method p()V
    .locals 8

    const/16 v7, 0x3d

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v5, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v5}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->E()Lcom/lua/c/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/c/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->K:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->K:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/c/a/a/n;

    :goto_0
    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->n(I)V

    :goto_1
    invoke-virtual {p0, v7}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_2
    move v4, v2

    :cond_1
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->E()Lcom/lua/c/a/a/j;

    move-result-object v6

    invoke-virtual {p0, v6, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/n;)V

    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x2c

    invoke-virtual {p0, v6}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v4}, Lcom/lua/c/a/a/a/f;->y(I)V

    :goto_3
    return-void

    :cond_2
    new-instance v0, Lcom/lua/c/a/a/n;

    invoke-direct {v0, v1}, Lcom/lua/c/a/a/n;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    if-ne v4, v3, :cond_6

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->E(I)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    invoke-virtual {p0, v3}, Lcom/lua/c/a/a/a/f;->l(I)V

    iget v1, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;ZI)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-short v1, v0, Lcom/lua/c/a/a/a/b;->o:S

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget v1, v1, Lcom/lua/c/a/a/a/b;->h:I

    iput v1, v0, Lcom/lua/c/a/a/b;->b:I

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v7}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v5, v4, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;ILcom/lua/c/a/a/n;)I

    move-result v2

    :goto_4
    invoke-virtual {p0, v4, v2, v5}, Lcom/lua/c/a/a/a/f;->a(IILcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, v4}, Lcom/lua/c/a/a/a/f;->l(I)V

    goto :goto_3

    :cond_7
    iput v2, v5, Lcom/lua/c/a/a/a/f$i;->b:I

    goto :goto_4
.end method

.method p(I)Z
    .locals 7

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v1, v0, Lcom/lua/c/a/a/a/b;->g:Lcom/lua/c/a/a/a/b$a;

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v0, v2, Lcom/lua/c/a/a/a/f$b;->c:[Lcom/lua/c/a/a/a/f$d;

    aget-object v3, v0, p1

    iget-short v0, v1, Lcom/lua/c/a/a/a/b$a;->b:S

    :goto_0
    iget v4, v2, Lcom/lua/c/a/a/a/f$b;->f:I

    if-ge v0, v4, :cond_3

    iget-object v4, v2, Lcom/lua/c/a/a/a/f$b;->e:[Lcom/lua/c/a/a/a/f$d;

    aget-object v4, v4, v0

    iget-object v5, v4, Lcom/lua/c/a/a/a/f$d;->a:Lcom/lua/c/a/a/j;

    iget-object v6, v3, Lcom/lua/c/a/a/a/f$d;->a:Lcom/lua/c/a/a/j;

    invoke-virtual {v5, v6}, Lcom/lua/c/a/a/j;->g(Lcom/lua/c/a/a/k;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-short v0, v3, Lcom/lua/c/a/a/a/f$d;->d:S

    iget-short v5, v4, Lcom/lua/c/a/a/a/f$d;->d:S

    if-le v0, v5, :cond_1

    iget-boolean v0, v1, Lcom/lua/c/a/a/a/b$a;->e:Z

    if-nez v0, :cond_0

    iget v0, v2, Lcom/lua/c/a/a/a/f$b;->f:I

    iget-short v1, v1, Lcom/lua/c/a/a/a/b$a;->b:S

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget v1, v3, Lcom/lua/c/a/a/a/f$d;->b:I

    iget-short v2, v4, Lcom/lua/c/a/a/a/f$d;->d:S

    invoke-virtual {v0, v1, v2}, Lcom/lua/c/a/a/a/b;->f(II)V

    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/lua/c/a/a/a/f;->a(ILcom/lua/c/a/a/a/f$d;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method q()V
    .locals 2

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->z:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->z:Lcom/lua/c/a/a/a/f$g;

    iget-object v1, v0, Lcom/lua/c/a/a/a/f$g;->b:Lcom/lua/c/a/a/a/f$f;

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$f;)I

    move-result v1

    iput v1, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method q(I)V
    .locals 8

    const/4 v0, 0x1

    iget v1, p0, Lcom/lua/c/a/a/a/f;->u:I

    iget v2, p0, Lcom/lua/c/a/a/a/f;->w:I

    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    new-instance v4, Lcom/lua/c/a/a/a/b$a;

    invoke-direct {v4}, Lcom/lua/c/a/a/a/b$a;-><init>()V

    invoke-virtual {v3, v4, v0}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b$a;Z)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    iget-boolean v4, p0, Lcom/lua/c/a/a/a/f;->s:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->E()Lcom/lua/c/a/a/j;

    move-result-object v4

    iget-object v5, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v5, v5, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_0

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_3

    :cond_0
    invoke-virtual {p0, v4, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;Z)Z

    move-result v0

    :goto_1
    iget-boolean v4, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v4, :cond_1

    if-eqz v0, :cond_4

    sget-object v4, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v5, v1, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    if-eqz v0, :cond_5

    const/16 v0, 0x7d

    :goto_3
    const/16 v1, 0x10e

    invoke-virtual {p0, v0, v1, p1}, Lcom/lua/c/a/a/a/f;->b(III)V

    invoke-virtual {v3}, Lcom/lua/c/a/a/a/b;->d()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4, p1, v0}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;IZ)Z

    move-result v0

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v6, v6, -0x3

    iget v7, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v5, v1, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/16 v0, 0x10b

    goto :goto_3
.end method

.method r()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->D()Lcom/lua/c/a/a/j;

    move-result-object v2

    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->H:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v3}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;)V

    invoke-virtual {p0, v5}, Lcom/lua/c/a/a/a/f;->l(I)V

    const/16 v3, 0x37

    iget-short v4, v0, Lcom/lua/c/a/a/a/b;->o:S

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v2}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/j;)I

    move-result v2

    invoke-virtual {v0, v3, v4, v2}, Lcom/lua/c/a/a/a/b;->b(III)I

    invoke-virtual {v0, v5}, Lcom/lua/c/a/a/a/b;->z(I)V

    if-eqz v1, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->n(I)V

    :cond_0
    return-void
.end method

.method r(I)V
    .locals 3

    new-instance v0, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    new-instance v1, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->i(Lcom/lua/c/a/a/a/f$i;)Z

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$i;ZI)V

    iget-object v2, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v2, v0, v1}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)Z

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/lua/c/a/a/a/b;->n(I)V

    return-void
.end method

.method s(I)I
    .locals 1

    const/16 v0, 0x25

    if-eq p1, v0, :cond_d

    const/16 v0, 0x26

    if-eq p1, v0, :cond_c

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_b

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_a

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_9

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_8

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_7

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x101

    if-eq p1, v0, :cond_2

    const/16 v0, 0x119

    if-eq p1, v0, :cond_1

    const/16 v0, 0x123

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x15

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x12

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xd

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    goto :goto_0

    :cond_2
    const/16 v0, 0x13

    goto :goto_0

    :cond_3
    const/16 v0, 0x9

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    const/16 v0, 0x11

    goto :goto_0

    :cond_7
    const/16 v0, 0xe

    goto :goto_0

    :cond_8
    const/4 v0, 0x5

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    goto :goto_0

    :cond_b
    const/4 v0, 0x2

    goto :goto_0

    :cond_c
    const/4 v0, 0x7

    goto :goto_0

    :cond_d
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x125
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method s()V
    .locals 4

    const/16 v3, 0x12d

    iget v0, p0, Lcom/lua/c/a/a/a/f;->w:I

    iput v0, p0, Lcom/lua/c/a/a/a/f;->x:I

    iget v0, p0, Lcom/lua/c/a/a/a/f;->u:I

    iput v0, p0, Lcom/lua/c/a/a/a/f;->q:I

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v1, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    iput v1, p0, Lcom/lua/c/a/a/a/f;->r:I

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->z:Lcom/lua/c/a/a/a/f$g;

    iget v2, v1, Lcom/lua/c/a/a/a/f$g;->a:I

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/f$g;->a(Lcom/lua/c/a/a/a/f$g;)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->z:Lcom/lua/c/a/a/a/f$g;

    iput v3, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/lua/c/a/a/a/f$g;->b:Lcom/lua/c/a/a/a/f$f;

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/f$f;)I

    move-result v1

    iput v1, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    goto :goto_0
.end method

.method t(I)I
    .locals 1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x118

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method t()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->C:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    iget v0, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/c/a/a/a/f;->u:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    goto :goto_0
.end method

.method u()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v2, v1, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iput v0, v2, Lcom/lua/c/a/a/l;->m:I

    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v3, v3, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v4, 0x29

    if-eq v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v3, v3, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v4, 0x124

    if-eq v3, v4, :cond_3

    const/16 v4, 0x12f

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->E()Lcom/lua/c/a/a/j;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/j;)V

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v3, v2, Lcom/lua/c/a/a/l;->m:I

    if-nez v3, :cond_1

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->l(I)V

    iget-short v0, v1, Lcom/lua/c/a/a/a/b;->o:S

    iput v0, v2, Lcom/lua/c/a/a/l;->l:I

    invoke-virtual {v1, v0}, Lcom/lua/c/a/a/a/b;->z(I)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<name> or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-static {v1}, Lcom/lua/c/a/a/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    const/4 v3, 0x1

    iput v3, v2, Lcom/lua/c/a/a/l;->m:I

    goto :goto_0
.end method

.method u(I)V
    .locals 6

    iget v4, p0, Lcom/lua/c/a/a/a/f;->w:I

    const/16 v0, 0x110

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->E()Lcom/lua/c/a/a/j;

    move-result-object v3

    :goto_0
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v1, v0, Lcom/lua/c/a/a/a/f$b;->c:[Lcom/lua/c/a/a/a/f$d;

    iget v2, v0, Lcom/lua/c/a/a/a/f$b;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/lua/c/a/a/a/a;->a([Lcom/lua/c/a/a/a/f$d;I)[Lcom/lua/c/a/a/a/f$d;

    move-result-object v1

    iput-object v1, v0, Lcom/lua/c/a/a/a/f$b;->c:[Lcom/lua/c/a/a/a/f$d;

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget v2, v0, Lcom/lua/c/a/a/a/f$b;->d:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lcom/lua/c/a/a/a/f$b;->d:I

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lua/c/a/a/a/f;->a([Lcom/lua/c/a/a/a/f$d;ILcom/lua/c/a/a/j;II)I

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->p(I)Z

    return-void

    :cond_0
    const/16 v0, 0x105

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "continue"

    :goto_1
    invoke-static {v0}, Lcom/lua/c/a/a/j;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->s()V

    const-string v0, "break"

    goto :goto_1
.end method

.method v()I
    .locals 4

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    iget v1, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-direct {p0, v0}, Lcom/lua/c/a/a/a/f;->O(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/lua/c/a/a/a/f;->O(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->w(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/f;->w(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hexadecimal digit expected \'x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x130

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/a/f;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    throw v0
.end method

.method v(I)Z
    .locals 1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method w()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    move v1, v0

    :cond_0
    shl-int/lit8 v0, v0, 0x4

    iget v2, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->w(I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-direct {p0, v2}, Lcom/lua/c/a/a/a/f;->O(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/lua/c/a/a/a/f;->P(I)I

    int-to-char v0, v0

    return v0
.end method

.method w(I)I
    .locals 1

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    add-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, -0x41

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, -0x61

    goto :goto_0
.end method

.method x()V
    .locals 8

    const/16 v7, 0x3b

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    new-instance v2, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v2}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    invoke-virtual {p0, v3}, Lcom/lua/c/a/a/a/f;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v0, v0, Lcom/lua/c/a/a/a/f$g;->a:I

    if-ne v0, v7, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v4, v1, v0}, Lcom/lua/c/a/a/a/b;->i(II)V

    invoke-virtual {p0, v7}, Lcom/lua/c/a/a/a/f;->D(I)Z

    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/f;->f(Lcom/lua/c/a/a/a/f$i;)I

    move-result v0

    iget v5, v2, Lcom/lua/c/a/a/a/f$i;->b:I

    invoke-virtual {p0, v5}, Lcom/lua/c/a/a/a/f;->v(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v2}, Lcom/lua/c/a/a/a/b;->o(Lcom/lua/c/a/a/a/f$i;)V

    iget v5, v2, Lcom/lua/c/a/a/a/f$i;->b:I

    const/16 v6, 0xe

    if-ne v5, v6, :cond_3

    if-ne v0, v3, :cond_3

    invoke-virtual {v4, v2}, Lcom/lua/c/a/a/a/b;->k(Lcom/lua/c/a/a/a/f$i;)Lcom/lua/c/a/a/a/c;

    move-result-object v0

    const/16 v5, 0x1e

    invoke-static {v0, v5}, Lcom/lua/c/a/a/a/a;->f(Lcom/lua/c/a/a/a/c;I)V

    invoke-virtual {v4, v2}, Lcom/lua/c/a/a/a/b;->j(Lcom/lua/c/a/a/a/f$i;)I

    move-result v0

    invoke-static {v0}, Lcom/lua/c/a/a/c;->a(I)I

    move-result v0

    iget-short v2, v4, Lcom/lua/c/a/a/a/b;->o:S

    if-ne v0, v2, :cond_2

    move v1, v3

    :cond_2
    invoke-static {v1}, Lcom/lua/c/a/a/a/a;->a(Z)V

    :cond_3
    iget-short v1, v4, Lcom/lua/c/a/a/a/b;->o:S

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_5

    invoke-virtual {v4, v2}, Lcom/lua/c/a/a/a/b;->e(Lcom/lua/c/a/a/a/f$i;)I

    move-result v1

    goto :goto_0

    :cond_5
    invoke-virtual {v4, v2}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    iget-short v2, v4, Lcom/lua/c/a/a/a/b;->o:S

    iget-short v5, v4, Lcom/lua/c/a/a/a/b;->q:S

    sub-int/2addr v5, v2

    if-ne v0, v5, :cond_6

    :goto_1
    invoke-static {v3}, Lcom/lua/c/a/a/a/a;->a(Z)V

    move v1, v2

    goto :goto_0

    :cond_6
    move v3, v1

    goto :goto_1
.end method

.method x(I)V
    .locals 9

    const/16 v8, 0x111

    iget v1, p0, Lcom/lua/c/a/a/a/f;->u:I

    iget v2, p0, Lcom/lua/c/a/a/a/f;->w:I

    new-instance v3, Lcom/lua/c/a/a/a/d;

    const/4 v0, -0x1

    invoke-direct {v3, v0}, Lcom/lua/c/a/a/a/d;-><init>(I)V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/d;)Z

    move-result v0

    iget-object v4, p0, Lcom/lua/c/a/a/a/f;->y:Lcom/lua/c/a/a/a/f$g;

    iget v4, v4, Lcom/lua/c/a/a/a/f$g;->a:I

    const/16 v5, 0x10a

    if-eq v4, v5, :cond_0

    const/16 v4, 0x109

    invoke-virtual {p0, v4}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/lua/c/a/a/a/f;->s:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->b()V

    if-eqz v0, :cond_1

    const/16 v4, 0x7d

    invoke-virtual {p0, v4, v8, p1}, Lcom/lua/c/a/a/a/f;->b(III)V

    :cond_1
    iget-boolean v4, p0, Lcom/lua/c/a/a/a/f;->J:Z

    if-eqz v4, :cond_2

    if-eqz v0, :cond_5

    sget-object v4, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/lua/c/a/a/a/f;->q:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/lua/c/a/a/a/f;->x:I

    invoke-direct {v5, v1, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/16 v0, 0x10b

    invoke-virtual {p0, v0, v8, p1}, Lcom/lua/c/a/a/a/f;->b(III)V

    :cond_3
    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget v1, v3, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/b;->w(I)V

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/lua/c/a/a/a/f;->u:I

    add-int/lit8 v6, v6, -0x3

    iget v7, p0, Lcom/lua/c/a/a/a/f;->w:I

    invoke-direct {v5, v1, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method y()V
    .locals 1

    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/f;->B(I)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->t()V

    return-void
.end method

.method y(I)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-object v0, v0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v1, v0, Lcom/lua/c/a/a/l;->g:[Lcom/lua/c/a/a/b;

    new-instance v2, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v2}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    iget-object v0, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    iget-short v3, v0, Lcom/lua/c/a/a/a/b;->n:S

    sub-int v4, v3, p1

    aget-object v5, v1, v4

    iget-object v5, v5, Lcom/lua/c/a/a/b;->a:Lcom/lua/c/a/a/j;

    invoke-static {v0, v5, v2, v6}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/a/f$i;I)I

    add-int/lit8 v0, v4, 0x1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    iget-object v4, v4, Lcom/lua/c/a/a/b;->a:Lcom/lua/c/a/a/j;

    iget-object v5, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {v5, v2}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v5, p0, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-static {v5, v4, v2, v6}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/a/f$i;I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p1, v2}, Lcom/lua/c/a/a/a/f;->a(IILcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/f;->l(I)V

    return-void
.end method

.method z()I
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/lua/c/a/a/a/f;->v:I

    const/16 v0, 0x5b

    if-eq v2, v0, :cond_0

    const/16 v0, 0x5d

    if-ne v2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->y()V

    :goto_1
    iget v0, p0, Lcom/lua/c/a/a/a/f;->v:I

    const/16 v3, 0x3d

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/f;->y()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    :goto_2
    return v1

    :cond_3
    neg-int v0, v1

    add-int/lit8 v1, v0, -0x1

    goto :goto_2
.end method
