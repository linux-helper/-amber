.class final Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/util/TimerX$TimerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimerHeap"
.end annotation


# instance fields
.field private a:I

.field private b:[Lcom/androlua/util/TimerTaskX;

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a:I

    iget v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a:I

    new-array v0, v0, [Lcom/androlua/util/TimerTaskX;

    iput-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    iput v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    iput v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/androlua/util/TimerX$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;-><init>()V

    return-void
.end method

.method private a(Lcom/androlua/util/TimerTaskX;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;)I
    .locals 1

    iget v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->d:I

    return v0
.end method

.method static synthetic a(Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;I)I
    .locals 0

    iput p1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->d:I

    return p1
.end method

.method static synthetic a(Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;Lcom/androlua/util/TimerTaskX;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a(Lcom/androlua/util/TimerTaskX;)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 9

    iget v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    div-int/lit8 v0, v0, 0x2

    :goto_0
    iget-object v2, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v3, v2, v1

    iget-wide v4, v3, Lcom/androlua/util/TimerTaskX;->c:J

    aget-object v3, v2, v0

    iget-wide v6, v3, Lcom/androlua/util/TimerTaskX;->c:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    aget-object v3, v2, v1

    aget-object v4, v2, v0

    aput-object v4, v2, v1

    aput-object v3, v2, v0

    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x2

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 6

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v2, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    if-ge v0, v2, :cond_1

    if-lez v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v3, v2, v1

    iget-wide v4, v3, Lcom/androlua/util/TimerTaskX;->c:J

    aget-object v2, v2, v0

    iget-wide v2, v2, Lcom/androlua/util/TimerTaskX;->c:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v2, v1, p1

    iget-wide v2, v2, Lcom/androlua/util/TimerTaskX;->c:J

    aget-object v4, v1, v0

    iget-wide v4, v4, Lcom/androlua/util/TimerTaskX;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    :cond_1
    return-void

    :cond_2
    aget-object v2, v1, p1

    aget-object v3, v1, v0

    aput-object v3, v1, p1

    aput-object v2, v1, v0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    move p1, v0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public adjustMinimum()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a(I)V

    return-void
.end method

.method public delete(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    aget-object v0, v1, v0

    aput-object v0, v1, p1

    iget v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    const/4 v2, 0x0

    aput-object v2, v1, v0

    invoke-direct {p0, p1}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a(I)V

    :cond_0
    return-void
.end method

.method public deleteIfCancelled()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/androlua/util/TimerTaskX;->b:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->d:I

    invoke-virtual {p0, v0}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->delete(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public insert(Lcom/androlua/util/TimerTaskX;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    array-length v1, v0

    iget v2, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    if-ne v1, v2, :cond_0

    mul-int/lit8 v1, v2, 0x2

    new-array v1, v1, [Lcom/androlua/util/TimerTaskX;

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    :cond_0
    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    iget v1, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    aput-object p1, v0, v1

    invoke-direct {p0}, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minimum()Lcom/androlua/util/TimerTaskX;
    .locals 2

    iget-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->a:I

    new-array v0, v0, [Lcom/androlua/util/TimerTaskX;

    iput-object v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->b:[Lcom/androlua/util/TimerTaskX;

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;->c:I

    return-void
.end method
