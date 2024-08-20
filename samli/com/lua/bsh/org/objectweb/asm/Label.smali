.class public Lcom/lua/bsh/org/objectweb/asm/Label;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:I

.field private c:I

.field private d:[I

.field e:I

.field f:I

.field g:Lcom/lua/bsh/org/objectweb/asm/Edge;

.field h:Lcom/lua/bsh/org/objectweb/asm/Label;

.field i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->d:[I

    if-nez v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->d:[I

    :cond_0
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->c:I

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->d:[I

    array-length v2, v1

    if-lt v0, v2, :cond_1

    array-length v0, v1

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [I

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->d:[I

    :cond_1
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->d:[I

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->c:I

    aput p1, v0, v1

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->c:I

    aput p2, v0, v1

    return-void
.end method


# virtual methods
.method a(Lcom/lua/bsh/org/objectweb/asm/CodeWriter;Lcom/lua/bsh/org/objectweb/asm/ByteVector;IZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->a:Z

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->b:I

    sub-int/2addr v0, p3

    :goto_0
    invoke-virtual {p2, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->b:I

    sub-int/2addr v0, p3

    :goto_2
    invoke-virtual {p2, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    if-eqz p4, :cond_2

    rsub-int/lit8 v1, p3, -0x1

    iget v2, p2, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    invoke-direct {p0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/Label;->a(II)V

    goto :goto_0

    :cond_2
    iget v1, p2, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    invoke-direct {p0, p3, v1}, Lcom/lua/bsh/org/objectweb/asm/Label;->a(II)V

    goto :goto_2
.end method

.method a(Lcom/lua/bsh/org/objectweb/asm/CodeWriter;I[B)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v1, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->a:Z

    iput p2, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->b:I

    move v2, v0

    :goto_0
    iget v3, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->c:I

    if-lt v2, v3, :cond_0

    return v0

    :cond_0
    iget-object v3, p0, Lcom/lua/bsh/org/objectweb/asm/Label;->d:[I

    add-int/lit8 v4, v2, 0x1

    aget v2, v3, v2

    aget v3, v3, v4

    if-ltz v2, :cond_4

    sub-int v2, p2, v2

    const/16 v5, -0x8000

    if-lt v2, v5, :cond_1

    const/16 v5, 0x7fff

    if-le v2, v5, :cond_2

    :cond_1
    add-int/lit8 v0, v3, -0x1

    aget-byte v5, p3, v0

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xa8

    if-gt v5, v6, :cond_3

    add-int/lit8 v5, v5, 0x31

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v0

    :goto_1
    move v0, v1

    :cond_2
    ushr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    :goto_2
    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x14

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v0

    goto :goto_1

    :cond_4
    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v3, 0x1

    ushr-int/lit8 v6, v2, 0x18

    int-to-byte v6, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p3, v3

    add-int/lit8 v3, v5, 0x1

    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    ushr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    goto :goto_2
.end method
