.class public Lcom/lua/b/b/a/b/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field protected b:[C

.field protected c:I

.field protected d:I

.field protected e:I

.field private f:I

.field private g:Lcom/lua/b/b/a/b/u;

.field private h:Lcom/lua/b/b/a/b/x;

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lua/b/b/a/b/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x32

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x33

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/lua/b/b/a/b/t;->b:[C

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->b:[C

    const v1, 0xffff

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v0, v3

    iput v2, p0, Lcom/lua/b/b/a/b/t;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/b/b/a/b/t;->c:I

    iput v3, p0, Lcom/lua/b/b/a/b/t;->d:I

    iput v2, p0, Lcom/lua/b/b/a/b/t;->e:I

    new-instance v0, Lcom/lua/b/b/a/b/u;

    invoke-direct {v0}, Lcom/lua/b/b/a/b/u;-><init>()V

    iput-object v0, p0, Lcom/lua/b/b/a/b/t;->g:Lcom/lua/b/b/a/b/u;

    new-instance v0, Lcom/lua/b/b/a/b/x;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/b/x;-><init>(Lcom/lua/b/b/a/b/t;)V

    iput-object v0, p0, Lcom/lua/b/b/a/b/t;->h:Lcom/lua/b/b/a/b/x;

    return-void
.end method

.method private a(II)I
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/lua/b/b/a/b/t;->b:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private a(III)I
    .locals 4

    invoke-virtual {p0, p3}, Lcom/lua/b/b/a/b/t;->h(I)I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/lua/b/b/a/b/t;->g(I)Z

    move-result v1

    const-string v2, "findCharOffsetBackward: Invalid startingOffset given"

    invoke-static {v1, v2}, Lcom/lua/b/b/a/b/v;->a(ZLjava/lang/String;)V

    move v1, v0

    move v0, p2

    :cond_0
    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v2, p0, Lcom/lua/b/b/a/b/t;->b:[C

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/lua/b/b/a/b/t;->c:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/lua/b/b/a/b/t;->d:I

    goto :goto_0

    :cond_2
    if-eq v0, p1, :cond_3

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/b/t;->j(I)I

    move-result v0

    goto :goto_1
.end method

.method private b(III)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/lua/b/b/a/b/t;->g(I)Z

    move-result v1

    const-string v2, "findCharOffsetBackward: Invalid startOffset given"

    invoke-static {v1, v2}, Lcom/lua/b/b/a/b/v;->a(ZLjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/lua/b/b/a/b/t;->h(I)I

    move-result v1

    :cond_1
    :goto_1
    add-int/lit8 v2, p1, -0x1

    if-le p2, v2, :cond_3

    if-ltz v1, :cond_3

    iget v2, p0, Lcom/lua/b/b/a/b/t;->d:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    :cond_2
    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/lua/b/b/a/b/t;->b:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    if-ltz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/b/t;->j(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "findCharOffsetBackward: Invalid cache entry or line arguments"

    invoke-static {v0, v1}, Lcom/lua/b/b/a/b/v;->a(ZLjava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private b(II)V
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/lua/b/b/a/b/t;->n(I)Lcom/lua/b/b/a/b/q;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/b/b/a/b/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/q;->a(I)V

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-le v2, p1, :cond_3

    add-int/2addr v2, p2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_3
    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v2, p1, :cond_2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private c(II)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->clearSpans()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/lua/b/b/a/b/t;->o(I)Lcom/lua/b/b/a/b/q;

    move-result-object v1

    if-ne p2, v3, :cond_6

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/b/b/a/b/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v2

    if-le v2, v3, :cond_5

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/q;->a(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-le v2, p1, :cond_4

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_4
    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v2, p1, :cond_3

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/lua/b/b/a/b/q;->b()I

    move-result v0

    sub-int v2, p1, v0

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/b/b/a/b/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v3

    if-le v3, v2, :cond_7

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/lua/b/b/a/b/q;->a(I)V

    :goto_2
    sub-int/2addr p2, v2

    if-lez p2, :cond_2

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v0

    move v1, v0

    :goto_3
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/b/b/a/b/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v2

    if-le p2, v2, :cond_8

    sub-int/2addr p2, v2

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/q;->a(I)V

    goto/16 :goto_0
.end method

.method public static i(I)I
    .locals 4

    add-int/lit8 v0, p0, 0x32

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private n(I)Lcom/lua/b/b/a/b/q;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    move v3, v2

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/b/b/a/b/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v5

    add-int/2addr v3, v5

    if-lt v3, p1, :cond_0

    new-instance v0, Lcom/lua/b/b/a/b/q;

    sub-int v2, v3, v5

    invoke-direct {v0, v1, v2}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/lua/b/b/a/b/q;

    invoke-direct {v0, v2, v2}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    goto :goto_1
.end method

.method private o(I)Lcom/lua/b/b/a/b/q;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    move v3, v2

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/b/b/a/b/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v5

    add-int/2addr v3, v5

    if-le v3, p1, :cond_0

    new-instance v0, Lcom/lua/b/b/a/b/q;

    sub-int v2, v3, v5

    invoke-direct {v0, v1, v2}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/lua/b/b/a/b/q;

    invoke-direct {v0, v2, v2}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    goto :goto_1
.end method


# virtual methods
.method public a(I)I
    .locals 9

    const/16 v7, 0xa

    const/4 v0, -0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/b/t;->g(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/lua/b/b/a/b/t;->g:Lcom/lua/b/b/a/b/u;

    invoke-virtual {v1, p1}, Lcom/lua/b/b/a/b/u;->a(I)Lcom/lua/b/b/a/b/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/q;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/b/t;->h(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/b/t;->h(I)I

    move-result v5

    if-le v5, v1, :cond_3

    move v4, v1

    move v3, v0

    move v1, v0

    :cond_1
    :goto_1
    if-ge v4, v5, :cond_a

    iget-object v6, p0, Lcom/lua/b/b/a/b/t;->b:[C

    array-length v6, v6

    if-ge v4, v6, :cond_a

    iget-object v6, p0, Lcom/lua/b/b/a/b/t;->b:[C

    aget-char v6, v6, v4

    if-ne v6, v7, :cond_2

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v4}, Lcom/lua/b/b/a/b/t;->j(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    move v2, v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lcom/lua/b/b/a/b/t;->c:I

    if-ne v4, v6, :cond_1

    iget v4, p0, Lcom/lua/b/b/a/b/t;->d:I

    goto :goto_1

    :cond_3
    if-ge v5, v1, :cond_6

    move v3, v0

    move v4, v2

    move v2, v0

    :cond_4
    :goto_2
    if-le v1, v5, :cond_9

    if-lez v1, :cond_9

    iget v6, p0, Lcom/lua/b/b/a/b/t;->d:I

    if-ne v1, v6, :cond_5

    iget v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    :cond_5
    add-int/lit8 v1, v1, -0x1

    iget-object v6, p0, Lcom/lua/b/b/a/b/t;->b:[C

    aget-char v6, v6, v1

    if-ne v6, v7, :cond_4

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/b/t;->j(I)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v2, v4, -0x1

    move v8, v4

    move v4, v2

    move v2, v8

    goto :goto_2

    :cond_6
    move v3, v0

    move v4, v0

    move v8, v1

    move v1, v2

    move v2, v8

    :goto_3
    if-ne v2, v5, :cond_8

    if-eq v3, v0, :cond_7

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->g:Lcom/lua/b/b/a/b/u;

    invoke-virtual {v0, v3, v4}, Lcom/lua/b/b/a/b/u;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit p0

    move v0, v1

    goto :goto_0

    :cond_8
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9
    move v8, v1

    move v1, v4

    move v4, v3

    move v3, v2

    move v2, v8

    goto :goto_3

    :cond_a
    move v8, v4

    move v4, v3

    move v3, v1

    move v1, v2

    move v2, v8

    goto :goto_3
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->h:Lcom/lua/b/b/a/b/x;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/x;->a()V

    return-void
.end method

.method public a(IIJZ)V
    .locals 3

    monitor-enter p0

    if-eqz p5, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->h:Lcom/lua/b/b/a/b/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lua/b/b/a/b/x;->a(IIJ)V

    :cond_0
    add-int v0, p1, p2

    iget v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/b/t;->f(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/b/t;->k(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_4

    iget v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    iget-object v1, p0, Lcom/lua/b/b/a/b/t;->b:[C

    iget v2, p0, Lcom/lua/b/b/a/b/t;->c:I

    aget-char v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/lua/b/b/a/b/t;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lua/b/b/a/b/t;->e:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->c()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/b/t;->l(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->g:Lcom/lua/b/b/a/b/u;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/b/u;->c(I)V

    invoke-direct {p0, p1, p2}, Lcom/lua/b/b/a/b/t;->c(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lua/b/b/a/b/t;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lua/b/b/a/b/q;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    return-void
.end method

.method public a([CII)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/lua/b/b/a/b/t;->b:[C

    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/b/t;->e(I)V

    iput p3, p0, Lcom/lua/b/b/a/b/t;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/lua/b/b/a/b/t;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a([CIJZ)V
    .locals 5

    monitor-enter p0

    if-eqz p5, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->h:Lcom/lua/b/b/a/b/x;

    array-length v1, p1

    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/lua/b/b/a/b/x;->b(IIJ)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/b/t;->h(I)I

    move-result v0

    iget v1, p0, Lcom/lua/b/b/a/b/t;->d:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/b/t;->f(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/b/t;->k(I)V

    :cond_1
    :goto_0
    array-length v0, p1

    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->c()I

    move-result v1

    if-lt v0, v1, :cond_2

    array-length v0, p1

    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->c()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/b/t;->d(I)V

    :cond_2
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_5

    aget-char v1, p1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    :try_start_1
    iget v1, p0, Lcom/lua/b/b/a/b/t;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lua/b/b/a/b/t;->e:I

    :cond_3
    iget-object v1, p0, Lcom/lua/b/b/a/b/t;->b:[C

    iget v2, p0, Lcom/lua/b/b/a/b/t;->c:I

    aget-char v3, p1, v0

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    iget v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/b/t;->l(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->g:Lcom/lua/b/b/a/b/u;

    invoke-virtual {v0, p2}, Lcom/lua/b/b/a/b/u;->c(I)V

    array-length v0, p1

    invoke-direct {p0, p2, v0}, Lcom/lua/b/b/a/b/t;->b(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->h:Lcom/lua/b/b/a/b/x;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/x;->d()V

    return-void
.end method

.method b(I)[C
    .locals 4

    new-array v1, p1, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v2, p0, Lcom/lua/b/b/a/b/t;->b:[C

    iget v3, p0, Lcom/lua/b/b/a/b/t;->c:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected final c()I
    .locals 2

    iget v0, p0, Lcom/lua/b/b/a/b/t;->d:I

    iget v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c(I)I
    .locals 2

    monitor-enter p0

    if-gez p1, :cond_0

    monitor-exit p0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->g:Lcom/lua/b/b/a/b/u;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/b/u;->b(I)Lcom/lua/b/b/a/b/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->b()I

    move-result v0

    if-le p1, v1, :cond_3

    invoke-direct {p0, p1, v1, v0}, Lcom/lua/b/b/a/b/t;->a(III)I

    move-result v0

    :cond_1
    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/lua/b/b/a/b/t;->g:Lcom/lua/b/b/a/b/u;

    invoke-virtual {v1, p1, v0}, Lcom/lua/b/b/a/b/u;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    goto :goto_0

    :cond_3
    if-ge p1, v1, :cond_1

    :try_start_1
    invoke-direct {p0, p1, v1, v0}, Lcom/lua/b/b/a/b/t;->b(III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public charAt(I)C
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->b:[C

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/b/t;->h(I)I

    move-result v1

    aget-char v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearSpans()V
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    new-instance v1, Lcom/lua/b/b/a/b/q;

    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected d(I)V
    .locals 5

    iget v0, p0, Lcom/lua/b/b/a/b/t;->f:I

    mul-int/lit8 v0, v0, 0x32

    add-int v1, p1, v0

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->b:[C

    array-length v0, v0

    add-int/2addr v0, v1

    new-array v2, v0, [C

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/lua/b/b/a/b/t;->c:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/lua/b/b/a/b/t;->b:[C

    aget-char v3, v3, v0

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/lua/b/b/a/b/t;->d:I

    :goto_1
    iget-object v3, p0, Lcom/lua/b/b/a/b/t;->b:[C

    array-length v4, v3

    if-ge v0, v4, :cond_1

    add-int v4, v0, v1

    aget-char v3, v3, v0

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/lua/b/b/a/b/t;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lua/b/b/a/b/t;->d:I

    iput-object v2, p0, Lcom/lua/b/b/a/b/t;->b:[C

    iget v0, p0, Lcom/lua/b/b/a/b/t;->f:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/b/b/a/b/t;->f:I

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lua/b/b/a/b/q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->i:Ljava/util/List;

    return-object v0
.end method

.method protected e(I)V
    .locals 4

    iget-object v1, p0, Lcom/lua/b/b/a/b/t;->b:[C

    array-length v0, v1

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    const v3, 0xffff

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v1, p1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/lua/b/b/a/b/t;->b:[C

    aget-char v3, v2, v1

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/b/b/a/b/t;->d:I

    return-void
.end method

.method public final f()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->b:[C

    array-length v0, v0

    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->c()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    sub-int/2addr v0, v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final f(I)Z
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/b/t;->c:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->h:Lcom/lua/b/b/a/b/x;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/x;->e()Z

    move-result v0

    return v0
.end method

.method public final g(I)Z
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->f()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->h:Lcom/lua/b/b/a/b/x;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/x;->f()I

    move-result v0

    return v0
.end method

.method protected final h(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/b/t;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->c()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->h:Lcom/lua/b/b/a/b/x;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/x;->g()I

    move-result v0

    return v0
.end method

.method protected final j(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/b/t;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->c()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0
.end method

.method protected final k(I)V
    .locals 3

    :goto_0
    iget v0, p0, Lcom/lua/b/b/a/b/t;->c:I

    if-le v0, p1, :cond_0

    iget v1, p0, Lcom/lua/b/b/a/b/t;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lua/b/b/a/b/t;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lua/b/b/a/b/t;->c:I

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->b:[C

    iget v1, p0, Lcom/lua/b/b/a/b/t;->d:I

    iget v2, p0, Lcom/lua/b/b/a/b/t;->c:I

    aget-char v2, v0, v2

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final l(I)V
    .locals 4

    :goto_0
    iget v0, p0, Lcom/lua/b/b/a/b/t;->d:I

    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/b/t;->b:[C

    iget v2, p0, Lcom/lua/b/b/a/b/t;->c:I

    aget-char v3, v1, v0

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/b/b/a/b/t;->d:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method m(I)V
    .locals 3

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/lua/b/b/a/b/t;->c:I

    invoke-direct {p0, v0, p1}, Lcom/lua/b/b/a/b/t;->b(II)V

    iget v0, p0, Lcom/lua/b/b/a/b/t;->e:I

    iget v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    invoke-direct {p0, v1, p1}, Lcom/lua/b/b/a/b/t;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lua/b/b/a/b/t;->e:I

    :goto_0
    iget v0, p0, Lcom/lua/b/b/a/b/t;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lua/b/b/a/b/t;->c:I

    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->g:Lcom/lua/b/b/a/b/u;

    iget v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/b/t;->j(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/u;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/lua/b/b/a/b/t;->c:I

    rsub-int/lit8 v1, p1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lua/b/b/a/b/t;->c(II)V

    iget v0, p0, Lcom/lua/b/b/a/b/t;->e:I

    iget v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    add-int/2addr v1, p1

    neg-int v2, p1

    invoke-direct {p0, v1, v2}, Lcom/lua/b/b/a/b/t;->a(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lua/b/b/a/b/t;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/b/t;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_1
    add-int v0, p1, p2

    :try_start_1
    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->f()I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->f()I

    move-result v0

    sub-int p2, v0, p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/b/t;->h(I)I

    move-result v1

    new-array v2, p2, [C

    const/4 v0, 0x0

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_1
    if-ge v1, p2, :cond_4

    iget-object v3, p0, Lcom/lua/b/b/a/b/t;->b:[C

    aget-char v3, v3, v0

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/lua/b/b/a/b/t;->c:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/lua/b/b/a/b/t;->d:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->f()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/b/t;->charAt(I)C

    move-result v3

    const v4, 0xffff

    if-ne v3, v4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
