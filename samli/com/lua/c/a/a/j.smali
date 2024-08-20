.class public Lcom/lua/c/a/a/j;
.super Lcom/lua/c/a/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/c/a/a/j$a;
    }
.end annotation


# static fields
.field public static M:Lcom/lua/c/a/a/k;


# instance fields
.field public final N:[B

.field public final O:I

.field public final P:I

.field private final Q:I

.field private R:Ljava/lang/String;


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Lcom/lua/c/a/a/k;-><init>()V

    iput-object p1, p0, Lcom/lua/c/a/a/j;->N:[B

    iput p2, p0, Lcom/lua/c/a/a/j;->O:I

    iput p3, p0, Lcom/lua/c/a/a/j;->P:I

    invoke-static {p1, p2, p3}, Lcom/lua/c/a/a/j;->b([BII)I

    move-result v0

    iput v0, p0, Lcom/lua/c/a/a/j;->Q:I

    return-void
.end method

.method private a(II)D
    .locals 6

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    add-int/lit8 v0, p1, 0x40

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    iget-object v1, p0, Lcom/lua/c/a/a/j;->N:[B

    aget-byte v1, v1, v0

    const/16 v4, 0x2b

    if-eq v1, v4, :cond_1

    const/16 v4, 0x45

    if-eq v1, v4, :cond_1

    const/16 v4, 0x65

    if-eq v1, v4, :cond_1

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_1

    const/16 v4, 0x2e

    if-eq v1, v4, :cond_1

    packed-switch v1, :pswitch_data_0

    move-wide v0, v2

    :goto_1
    return-wide v0

    :cond_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int v0, p2, p1

    new-array v1, v0, [C

    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_3

    sub-int v4, v0, p1

    iget-object v5, p0, Lcom/lua/c/a/a/j;->N:[B

    aget-byte v5, v5, v0

    int-to-char v5, v5

    int-to-char v5, v5

    int-to-char v5, v5

    aput-char v5, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(III)D
    .locals 12

    const-wide/16 v6, 0x0

    const/16 v3, 0x30

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iget-object v2, p0, Lcom/lua/c/a/a/j;->N:[B

    aget-byte v2, v2, p2

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    move v8, v2

    :goto_0
    if-eqz v8, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    move-wide v4, v6

    :goto_1
    if-ge p2, p3, :cond_6

    iget-object v2, p0, Lcom/lua/c/a/a/j;->N:[B

    aget-byte v9, v2, p2

    const/16 v10, 0xa

    if-le p1, v10, :cond_8

    aget-byte v10, v2, p2

    if-lt v10, v3, :cond_3

    aget-byte v2, v2, p2

    const/16 v10, 0x39

    if-gt v2, v10, :cond_3

    move v2, v3

    :goto_2
    sub-int v2, v9, v2

    if-ltz v2, :cond_1

    if-lt v2, p1, :cond_5

    :cond_1
    :goto_3
    return-wide v0

    :cond_2
    const/4 v2, 0x0

    move v8, v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/lua/c/a/a/j;->N:[B

    aget-byte v10, v2, p2

    const/16 v11, 0x41

    if-lt v10, v11, :cond_4

    aget-byte v2, v2, p2

    const/16 v10, 0x5a

    if-gt v2, v10, :cond_4

    const/16 v2, 0x37

    goto :goto_2

    :cond_4
    const/16 v2, 0x57

    goto :goto_2

    :cond_5
    int-to-long v10, p1

    mul-long/2addr v4, v10

    int-to-long v10, v2

    add-long/2addr v4, v10

    cmp-long v2, v4, v6

    if-ltz v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    if-eqz v8, :cond_7

    neg-long v0, v4

    long-to-double v0, v0

    goto :goto_3

    :cond_7
    long-to-double v0, v4

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_2
.end method

.method public static a([C)I
    .locals 4

    array-length v0, p0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_1

    aget-char v0, p0, v2

    const/16 v3, 0x80

    if-lt v0, v3, :cond_2

    const/16 v3, 0x800

    if-lt v0, v3, :cond_0

    const/4 v0, 0x2

    :goto_1
    add-int/2addr v0, v1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static a([CI[BI)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v0, p3

    :goto_0
    if-ge v1, p1, :cond_2

    aget-char v2, p0, v1

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x800

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, p2, v0

    add-int/lit8 v0, v3, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, p2, v0

    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v0, p3

    return v0
.end method

.method public static a([CII)Lcom/lua/c/a/a/j;
    .locals 4

    const/4 v1, 0x0

    new-array v2, p2, [B

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v3, v0, p1

    aget-char v3, p0, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v1, p2}, Lcom/lua/c/a/a/j;->d([BII)Lcom/lua/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    add-int v4, p2, p1

    move v2, p1

    move v3, v1

    :goto_0
    if-ge v2, v4, :cond_2

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xe0

    const/16 v5, 0xc0

    if-eq v2, v5, :cond_1

    const/16 v5, 0xe0

    if-eq v2, v5, :cond_0

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-array v3, v3, [C

    move v2, v1

    :goto_2
    if-ge p1, v4, :cond_7

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, p0, p1

    if-gez v0, :cond_3

    if-lt v1, v4, :cond_4

    :cond_3
    :goto_3
    int-to-char v0, v0

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move p1, v1

    goto :goto_2

    :cond_4
    const/16 v5, -0x20

    if-lt v0, v5, :cond_5

    add-int/lit8 v5, v1, 0x1

    if-lt v5, v4, :cond_6

    :cond_5
    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x6

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    aget-byte v6, p0, v1

    add-int/lit8 v1, v5, 0x1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v0, v6

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v0, v5

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a([BI[BII)Z
    .locals 3

    const/4 v0, 0x0

    array-length v1, p0

    add-int v2, p1, p4

    if-lt v1, v2, :cond_0

    array-length v1, p2

    add-int v2, p3, p4

    if-ge v1, v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    :cond_2
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_3

    aget-byte v1, p0, p1

    aget-byte v2, p2, p3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b([BII)I
    .locals 4

    shr-int/lit8 v0, p2, 0x5

    add-int/lit8 v1, v0, 0x1

    move v0, p2

    :goto_0
    if-lt p2, v1, :cond_0

    shl-int/lit8 v2, v0, 0x5

    shr-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    add-int v3, p1, p2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    xor-int/2addr v0, v2

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static c([BII)Lcom/lua/c/a/a/j;
    .locals 4

    const/16 v0, 0x20

    if-le p2, v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/lua/c/a/a/j;->f([BII)Lcom/lua/c/a/a/j;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/lua/c/a/a/j;->b([BII)I

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    invoke-static {}, Lcom/lua/c/a/a/j$a;->a()[Lcom/lua/c/a/a/j;

    move-result-object v0

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget v3, v0, Lcom/lua/c/a/a/j;->Q:I

    if-ne v3, v1, :cond_2

    invoke-direct {v0, p0, p1, p2}, Lcom/lua/c/a/a/j;->e([BII)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/lua/c/a/a/j;->f([BII)Lcom/lua/c/a/a/j;

    move-result-object v0

    invoke-static {}, Lcom/lua/c/a/a/j$a;->a()[Lcom/lua/c/a/a/j;

    move-result-object v1

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Lcom/lua/c/a/a/j;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/lua/c/a/a/j;->a([C)I

    move-result v1

    new-array v1, v1, [B

    array-length v2, v0

    invoke-static {v0, v2, v1, v3}, Lcom/lua/c/a/a/j;->a([CI[BI)I

    array-length v0, v1

    invoke-static {v1, v3, v0}, Lcom/lua/c/a/a/j;->d([BII)Lcom/lua/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public static d([BII)Lcom/lua/c/a/a/j;
    .locals 4

    array-length v0, p0

    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    new-instance v0, Lcom/lua/c/a/a/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/lua/c/a/a/j;-><init>([BII)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/lua/c/a/a/j;->b([BII)I

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    invoke-static {}, Lcom/lua/c/a/a/j$a;->a()[Lcom/lua/c/a/a/j;

    move-result-object v0

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget v3, v0, Lcom/lua/c/a/a/j;->Q:I

    if-ne v3, v1, :cond_2

    invoke-direct {v0, p0, p1, p2}, Lcom/lua/c/a/a/j;->e([BII)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    new-instance v0, Lcom/lua/c/a/a/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/lua/c/a/a/j;-><init>([BII)V

    invoke-static {}, Lcom/lua/c/a/a/j$a;->a()[Lcom/lua/c/a/a/j;

    move-result-object v1

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method private e([BII)Z
    .locals 2

    iget v0, p0, Lcom/lua/c/a/a/j;->P:I

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/lua/c/a/a/j;->N:[B

    iget v1, p0, Lcom/lua/c/a/a/j;->O:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/lua/c/a/a/j;->a([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f([BII)Lcom/lua/c/a/a/j;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p2, [B

    invoke-static {p0, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/lua/c/a/a/j;

    invoke-direct {v1, v0, v2, p2}, Lcom/lua/c/a/a/j;-><init>([BII)V

    return-object v1
.end method

.method private o()D
    .locals 3

    invoke-virtual {p0}, Lcom/lua/c/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/lua/c/a/a/k;->d()Lcom/lua/c/a/a/k;

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public a(D)Lcom/lua/c/a/a/k;
    .locals 3

    invoke-direct {p0}, Lcom/lua/c/a/a/j;->o()D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/k;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lcom/lua/c/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/lua/c/a/a/k;->p:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->a(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/lua/c/a/a/j;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p1, Lcom/lua/c/a/a/j;->P:I

    iget v3, p0, Lcom/lua/c/a/a/j;->P:I

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lcom/lua/c/a/a/j;->N:[B

    iget-object v3, p0, Lcom/lua/c/a/a/j;->N:[B

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/lua/c/a/a/j;->O:I

    iget v3, p0, Lcom/lua/c/a/a/j;->O:I

    if-eq v2, v3, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/lua/c/a/a/j;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/lua/c/a/a/j;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_3

    move v2, v1

    :goto_1
    iget v3, p0, Lcom/lua/c/a/a/j;->P:I

    if-ge v2, v3, :cond_0

    iget-object v3, p1, Lcom/lua/c/a/a/j;->N:[B

    iget v4, p1, Lcom/lua/c/a/a/j;->O:I

    add-int/2addr v4, v2

    aget-byte v3, v3, v4

    iget-object v4, p0, Lcom/lua/c/a/a/j;->N:[B

    iget v5, p0, Lcom/lua/c/a/a/j;->O:I

    add-int/2addr v5, v2

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public b(D)Lcom/lua/c/a/a/k;
    .locals 3

    invoke-direct {p0}, Lcom/lua/c/a/a/j;->o()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/lua/c/a/a/e;->a(DD)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public c(D)Lcom/lua/c/a/a/k;
    .locals 3

    invoke-direct {p0}, Lcom/lua/c/a/a/j;->o()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/lua/c/a/a/e;->b(DD)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/lua/c/a/a/j;->R:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/c/a/a/j;->N:[B

    iget v1, p0, Lcom/lua/c/a/a/j;->O:I

    iget v2, p0, Lcom/lua/c/a/a/j;->P:I

    invoke-static {v0, v1, v2}, Lcom/lua/c/a/a/j;->a([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/c/a/a/j;->R:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/lua/c/a/a/j;->R:Ljava/lang/String;

    return-object v0
.end method

.method public d(D)Lcom/lua/c/a/a/k;
    .locals 3

    invoke-direct {p0}, Lcom/lua/c/a/a/j;->o()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/k;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public e(D)Lcom/lua/c/a/a/k;
    .locals 3

    invoke-direct {p0}, Lcom/lua/c/a/a/j;->o()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/k;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/lua/c/a/a/j;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/lua/c/a/a/j;

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/j;->a(Lcom/lua/c/a/a/j;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lcom/lua/c/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/lua/c/a/a/k;->r:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->b(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/j;->M:Lcom/lua/c/a/a/k;

    return-object v0
.end method

.method public g(D)Lcom/lua/c/a/a/k;
    .locals 3

    invoke-direct {p0}, Lcom/lua/c/a/a/j;->o()D

    move-result-wide v0

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/k;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/lua/c/a/a/k;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/j;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/lua/c/a/a/j;->Q:I

    return v0
.end method

.method public i()Lcom/lua/c/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lcom/lua/c/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0}, Lcom/lua/c/a/a/k;->i()Lcom/lua/c/a/a/k;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-double v0, v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/k;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    goto :goto_0
.end method

.method public j()Lcom/lua/c/a/a/j;
    .locals 0

    return-object p0
.end method

.method public j(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lcom/lua/c/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/lua/c/a/a/k;->u:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->c(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    goto :goto_0
.end method

.method public k()D
    .locals 3

    invoke-virtual {p0}, Lcom/lua/c/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public k(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lcom/lua/c/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/lua/c/a/a/k;->s:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->d(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    goto :goto_0
.end method

.method public l(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lcom/lua/c/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/lua/c/a/a/k;->t:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->e(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const-string v0, "string"

    return-object v0
.end method

.method public m()I
    .locals 6

    iget v3, p0, Lcom/lua/c/a/a/j;->O:I

    iget v4, p0, Lcom/lua/c/a/a/j;->P:I

    const/4 v0, 0x0

    move v1, v0

    move v2, v3

    :goto_0
    add-int v0, v4, v3

    if-ge v2, v0, :cond_2

    iget-object v5, p0, Lcom/lua/c/a/a/j;->N:[B

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v5, v2

    and-int/lit16 v2, v2, 0xe0

    const/16 v5, 0xc0

    if-eq v2, v5, :cond_1

    const/16 v5, 0xe0

    if-eq v2, v5, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public n()D
    .locals 6

    const/16 v4, 0x20

    iget v1, p0, Lcom/lua/c/a/a/j;->O:I

    iget v0, p0, Lcom/lua/c/a/a/j;->P:I

    add-int/2addr v0, v1

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_5

    iget-object v1, p0, Lcom/lua/c/a/a/j;->N:[B

    aget-byte v1, v1, v3

    if-ne v1, v4, :cond_5

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v0, p0, Lcom/lua/c/a/a/j;->N:[B

    add-int/lit8 v1, v2, -0x1

    aget-byte v0, v0, v1

    if-ne v0, v4, :cond_0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_0
    if-lt v3, v2, :cond_2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :cond_1
    :goto_2
    return-wide v0

    :cond_2
    iget-object v0, p0, Lcom/lua/c/a/a/j;->N:[B

    aget-byte v1, v0, v3

    const/16 v4, 0x30

    if-ne v1, v4, :cond_4

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v2, :cond_4

    aget-byte v4, v0, v1

    const/16 v5, 0x78

    if-eq v4, v5, :cond_3

    aget-byte v0, v0, v1

    const/16 v1, 0x58

    if-ne v0, v1, :cond_4

    :cond_3
    const/16 v0, 0x10

    add-int/lit8 v1, v3, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/lua/c/a/a/j;->a(III)D

    move-result-wide v0

    goto :goto_2

    :cond_4
    const/16 v0, 0xa

    invoke-direct {p0, v0, v3, v2}, Lcom/lua/c/a/a/j;->a(III)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3, v2}, Lcom/lua/c/a/a/j;->a(II)D

    move-result-wide v0

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_1
.end method

.method public p(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lcom/lua/c/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/lua/c/a/a/k;->q:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->g(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    goto :goto_0
.end method
