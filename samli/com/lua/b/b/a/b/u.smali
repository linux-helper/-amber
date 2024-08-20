.class public Lcom/lua/b/b/a/b/u;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lcom/lua/b/b/a/b/q;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [Lcom/lua/b/b/a/b/q;

    iput-object v0, p0, Lcom/lua/b/b/a/b/u;->a:[Lcom/lua/b/b/a/b/q;

    iget-object v0, p0, Lcom/lua/b/b/a/b/u;->a:[Lcom/lua/b/b/a/b/q;

    new-instance v1, Lcom/lua/b/b/a/b/q;

    invoke-direct {v1, v2, v2}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    aput-object v1, v0, v2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/b/u;->a:[Lcom/lua/b/b/a/b/q;

    new-instance v2, Lcom/lua/b/b/a/b/q;

    invoke-direct {v2, v3, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(II)V
    .locals 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/lua/b/b/a/b/u;->d(I)V

    iget-object v0, p0, Lcom/lua/b/b/a/b/u;->a:[Lcom/lua/b/b/a/b/q;

    const/4 v1, 0x1

    new-instance v2, Lcom/lua/b/b/a/b/q;

    invoke-direct {v2, p1, p2}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    aput-object v2, v0, v1

    return-void
.end method

.method private c(II)Z
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/lua/b/b/a/b/u;->a:[Lcom/lua/b/b/a/b/q;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/lua/b/b/a/b/u;->a:[Lcom/lua/b/b/a/b/q;

    aget-object v1, v2, v1

    invoke-virtual {v1, p2}, Lcom/lua/b/b/a/b/q;->b(I)V

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d(I)V
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/u;->a:[Lcom/lua/b/b/a/b/q;

    aget-object v0, v0, p1

    :goto_1
    if-le p1, v3, :cond_1

    iget-object v1, p0, Lcom/lua/b/b/a/b/u;->a:[Lcom/lua/b/b/a/b/q;

    add-int/lit8 v2, p1, -0x1

    aget-object v2, v1, v2

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/lua/b/b/a/b/u;->a:[Lcom/lua/b/b/a/b/q;

    aput-object v0, v1, v3

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/lua/b/b/a/b/q;
    .locals 4

    const/4 v1, 0x0

    const v3, 0x7fffffff

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/lua/b/b/a/b/u;->a:[Lcom/lua/b/b/a/b/q;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/q;->b()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_1

    move v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/lua/b/b/a/b/u;->a:[Lcom/lua/b/b/a/b/q;

    aget-object v1, v1, v0

    invoke-direct {p0, v0}, Lcom/lua/b/b/a/b/u;->d(I)V

    return-object v1

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public a(II)V
    .locals 1

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lua/b/b/a/b/u;->c(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/lua/b/b/a/b/u;->b(II)V

    goto :goto_0
.end method

.method public b(I)Lcom/lua/b/b/a/b/q;
    .locals 4

    const/4 v1, 0x0

    const v3, 0x7fffffff

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/lua/b/b/a/b/u;->a:[Lcom/lua/b/b/a/b/q;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_1

    move v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/lua/b/b/a/b/u;->a:[Lcom/lua/b/b/a/b/q;

    aget-object v1, v1, v0

    invoke-direct {p0, v0}, Lcom/lua/b/b/a/b/u;->d(I)V

    return-object v1

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method protected final c(I)V
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/lua/b/b/a/b/u;->a:[Lcom/lua/b/b/a/b/q;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/q;->b()I

    move-result v1

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/b/u;->a:[Lcom/lua/b/b/a/b/q;

    new-instance v2, Lcom/lua/b/b/a/b/q;

    invoke-direct {v2, v3, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
