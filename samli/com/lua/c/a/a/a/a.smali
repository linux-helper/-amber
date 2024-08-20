.class public Lcom/lua/c/a/a/a/a;
.super Lcom/lua/c/a/a/c;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lua/c/a/a/c;-><init>()V

    return-void
.end method

.method static a(II)I
    .locals 2

    shl-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, -0x40

    or-int/2addr v0, v1

    return v0
.end method

.method static a(III)I
    .locals 2

    shl-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v1, p1, 0x6

    and-int/lit16 v1, v1, 0x3fc0

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0xe

    and-int/lit16 v1, v1, -0x4000

    or-int/2addr v0, v1

    return v0
.end method

.method static a(IIII)I
    .locals 3

    shl-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v1, p1, 0x6

    and-int/lit16 v1, v1, 0x3fc0

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x17

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0xe

    const v2, 0x7fc000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method static a(Lcom/lua/c/a/a/a/c;I)V
    .locals 2

    shl-int/lit8 v0, p1, 0x6

    and-int/lit16 v0, v0, 0x3fc0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/c;->a()I

    move-result v1

    and-int/lit16 v1, v1, -0x3fc1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/c;->a(I)V

    return-void
.end method

.method protected static a(Z)V
    .locals 0

    return-void
.end method

.method protected static a(ZLjava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compiler assert failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/lua/c/a/a/f;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/c/a/a/f;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static a([III)V
    .locals 2

    shl-int/lit8 v0, p2, 0x6

    and-int/lit16 v0, v0, 0x3fc0

    aget v1, p0, p1

    and-int/lit16 v1, v1, -0x3fc1

    or-int/2addr v0, v1

    aput v0, p0, p1

    return-void
.end method

.method static a([CI)[C
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [C

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static a([II)[I
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [I

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static a([Lcom/lua/c/a/a/a/f$d;I)[Lcom/lua/c/a/a/a/f$d;
    .locals 1

    if-nez p0, :cond_1

    const/4 v0, 0x2

    new-array p0, v0, [Lcom/lua/c/a/a/a/f$d;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p0

    if-ge v0, p1, :cond_0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lcom/lua/c/a/a/a/a;->b([Lcom/lua/c/a/a/a/f$d;I)[Lcom/lua/c/a/a/a/f$d;

    move-result-object p0

    goto :goto_0
.end method

.method static a([Lcom/lua/c/a/a/a/f$h;I)[Lcom/lua/c/a/a/a/f$h;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lcom/lua/c/a/a/a/f$h;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static a([Lcom/lua/c/a/a/b;I)[Lcom/lua/c/a/a/b;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lcom/lua/c/a/a/b;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static a([Lcom/lua/c/a/a/k;I)[Lcom/lua/c/a/a/k;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lcom/lua/c/a/a/k;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static a([Lcom/lua/c/a/a/l;I)[Lcom/lua/c/a/a/l;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lcom/lua/c/a/a/l;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static a([Lcom/lua/c/a/a/m;I)[Lcom/lua/c/a/a/m;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lcom/lua/c/a/a/m;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static b(Lcom/lua/c/a/a/a/c;I)V
    .locals 3

    shl-int/lit8 v0, p1, 0x17

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/c;->a()I

    move-result v1

    const v2, 0x7fffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/c;->a(I)V

    return-void
.end method

.method static b([Lcom/lua/c/a/a/a/f$d;I)[Lcom/lua/c/a/a/a/f$d;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lcom/lua/c/a/a/a/f$d;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static c(Lcom/lua/c/a/a/a/c;I)V
    .locals 2

    shl-int/lit8 v0, p1, 0xe

    and-int/lit16 v0, v0, -0x4000

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/c;->a()I

    move-result v1

    and-int/lit16 v1, v1, 0x3fff

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/c;->a(I)V

    return-void
.end method

.method static d(Lcom/lua/c/a/a/a/c;I)V
    .locals 3

    shl-int/lit8 v0, p1, 0xe

    const v1, 0x7fc000

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/c;->a()I

    move-result v1

    const v2, -0x7fc001

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/c;->a(I)V

    return-void
.end method

.method static e(Lcom/lua/c/a/a/a/c;I)V
    .locals 1

    const v0, 0x1ffff

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lcom/lua/c/a/a/a/a;->c(Lcom/lua/c/a/a/a/c;I)V

    return-void
.end method

.method static f(Lcom/lua/c/a/a/a/c;I)V
    .locals 2

    shl-int/lit8 v0, p1, 0x0

    and-int/lit8 v0, v0, 0x3f

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/c;->a()I

    move-result v1

    and-int/lit8 v1, v1, -0x40

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/c;->a(I)V

    return-void
.end method
