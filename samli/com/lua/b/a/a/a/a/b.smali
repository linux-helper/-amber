.class public final Lcom/lua/b/a/a/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lua/b/a/a/a/a/b;->a:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x3d

    const/4 v2, 0x0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    div-int/lit8 v1, v0, 0x4c

    add-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    new-array v4, v0, [B

    array-length v0, p0

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    sub-int v5, v0, v1

    move v0, v2

    move v3, v2

    move v1, v2

    :goto_0
    if-ge v3, v5, :cond_1

    add-int/lit8 v6, v1, 0x1

    sget-object v7, Lcom/lua/b/a/a/a/a/b;->a:[B

    aget-byte v8, p0, v3

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v8, v7, v8

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v4, v1

    add-int/lit8 v1, v6, 0x1

    aget-byte v8, p0, v3

    add-int/lit8 v9, v3, 0x1

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    aget-byte v10, p0, v9

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v10, v10, 0x4

    or-int/2addr v8, v10

    aget-byte v8, v7, v8

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    add-int/lit8 v6, v1, 0x1

    aget-byte v8, p0, v9

    add-int/lit8 v9, v3, 0x2

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x2

    aget-byte v10, p0, v9

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v10, v10, 0x6

    or-int/2addr v8, v10

    aget-byte v8, v7, v8

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v4, v1

    add-int/lit8 v1, v6, 0x1

    aget-byte v8, p0, v9

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    sub-int v6, v1, v0

    rem-int/lit8 v6, v6, 0x4c

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    const/16 v6, 0xa

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    move v0, v1

    :goto_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4, v2, v0, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    sget-object v3, Lcom/lua/b/a/a/a/a/b;->a:[B

    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x2

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v1

    add-int/lit8 v1, v0, 0x1

    aget-byte v6, p0, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    add-int/lit8 v6, v1, 0x1

    aget-byte v0, p0, v5

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x2

    aget-byte v0, v3, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    add-int/lit8 v0, v6, 0x1

    int-to-byte v1, v11

    int-to-byte v1, v1

    aput-byte v1, v4, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    sget-object v3, Lcom/lua/b/a/a/a/a/b;->a:[B

    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x2

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v1

    add-int/lit8 v1, v0, 0x1

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    aget-byte v3, v3, v5

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    add-int/lit8 v3, v1, 0x1

    int-to-byte v0, v11

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    add-int/lit8 v0, v3, 0x1

    int-to-byte v1, v11

    int-to-byte v1, v1

    aput-byte v1, v4, v3

    goto :goto_1
.end method

.method public static a([B)[B
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/lua/b/a/a/a/a/b;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)[B
    .locals 13

    const/16 v12, 0x20

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v1, 0x0

    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    new-array v0, v1, [B

    :goto_0
    return-object v0

    :cond_0
    new-array v7, v0, [B

    move v0, v1

    :goto_1
    add-int/lit8 v2, p1, -0x1

    aget-byte v2, p0, v2

    if-eq v2, v10, :cond_1

    if-eq v2, v11, :cond_1

    if-eq v2, v12, :cond_1

    if-ne v2, v9, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v3, v1

    move v6, v1

    move v2, v1

    move v4, v1

    :goto_3
    if-ge v6, p1, :cond_c

    aget-byte v5, p0, v6

    if-eq v5, v10, :cond_4

    if-eq v5, v11, :cond_4

    if-eq v5, v12, :cond_4

    if-ne v5, v9, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_3

    :cond_5
    const/16 v8, 0x41

    if-lt v5, v8, :cond_7

    const/16 v8, 0x5a

    if-gt v5, v8, :cond_7

    add-int/lit8 v5, v5, -0x41

    :goto_5
    shl-int/lit8 v2, v2, 0x6

    int-to-byte v5, v5

    or-int/2addr v2, v5

    rem-int/lit8 v5, v3, 0x4

    const/4 v8, 0x3

    if-ne v5, v8, :cond_6

    add-int/lit8 v5, v4, 0x1

    const/high16 v8, 0xff0000

    and-int/2addr v8, v2

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v7, v4

    add-int/lit8 v8, v5, 0x1

    const v4, 0xff00

    and-int/2addr v4, v2

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v7, v5

    add-int/lit8 v4, v8, 0x1

    and-int/lit16 v5, v2, 0xff

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v7, v8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    const/16 v8, 0x61

    if-lt v5, v8, :cond_8

    const/16 v8, 0x7a

    if-gt v5, v8, :cond_8

    add-int/lit8 v5, v5, -0x47

    goto :goto_5

    :cond_8
    const/16 v8, 0x30

    if-lt v5, v8, :cond_9

    const/16 v8, 0x39

    if-gt v5, v8, :cond_9

    add-int/lit8 v5, v5, 0x4

    goto :goto_5

    :cond_9
    const/16 v8, 0x2b

    if-ne v5, v8, :cond_a

    const/16 v5, 0x3e

    goto :goto_5

    :cond_a
    const/16 v8, 0x2f

    if-ne v5, v8, :cond_b

    const/16 v5, 0x3f

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    if-lez v0, :cond_d

    mul-int/lit8 v3, v0, 0x6

    shl-int v3, v2, v3

    add-int/lit8 v2, v4, 0x1

    const/high16 v5, 0xff0000

    and-int/2addr v5, v3

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v7, v4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_e

    const v0, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v7, v2

    add-int/lit8 v4, v2, 0x1

    :cond_d
    :goto_6
    new-array v0, v4, [B

    invoke-static {v7, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_e
    move v4, v2

    goto :goto_6
.end method
