.class public Lcom/lua/b/b/a/b/f;
.super Lcom/lua/b/b/a/b/t;


# instance fields
.field private j:Z

.field private k:Lcom/lua/b/b/a/b/f$a;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lua/b/b/a/b/f$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/lua/b/b/a/b/t;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lua/b/b/a/b/f;->j:Z

    iput-object p1, p0, Lcom/lua/b/b/a/b/f;->k:Lcom/lua/b/b/a/b/f$a;

    invoke-direct {p0}, Lcom/lua/b/b/a/b/f;->n()V

    return-void
.end method

.method private c(III)V
    .locals 12

    const/16 v10, 0xa

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/lua/b/b/a/b/f;->j:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/b/t;->h(I)I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/lua/b/b/a/b/t;->h(I)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_2

    iget v3, p0, Lcom/lua/b/b/a/b/t;->c:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/lua/b/b/a/b/t;->d:I

    :cond_0
    iget-object v3, p0, Lcom/lua/b/b/a/b/t;->b:[C

    aget-char v3, v3, v0

    if-ne v3, v10, :cond_1

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/b/t;->j(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    :goto_1
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/lua/b/b/a/b/f;->m()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Not enough space to do word wrap"

    invoke-static {v0}, Lcom/lua/b/b/a/b/v;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/b/t;->h(I)I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/lua/b/b/a/b/t;->h(I)I

    move-result v8

    iget-object v1, p0, Lcom/lua/b/b/a/b/f;->k:Lcom/lua/b/b/a/b/f$a;

    invoke-interface {v1}, Lcom/lua/b/b/a/b/f$a;->getRowWidth()I

    move-result v2

    move v4, p2

    move v6, v5

    move v3, v2

    :goto_2
    if-ge v0, v8, :cond_f

    iget v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    if-ne v0, v1, :cond_11

    iget v0, p0, Lcom/lua/b/b/a/b/t;->d:I

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/lua/b/b/a/b/t;->b:[C

    aget-char v9, v0, v1

    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->k:Lcom/lua/b/b/a/b/f$a;

    invoke-interface {v0, v9}, Lcom/lua/b/b/a/b/f$a;->getAdvance(C)I

    move-result v0

    add-int/2addr v0, v6

    const/16 v6, 0x20

    if-eq v9, v6, :cond_5

    const/16 v6, 0x9

    if-eq v9, v6, :cond_5

    if-eq v9, v10, :cond_5

    const v6, 0xffff

    if-ne v9, v6, :cond_8

    :cond_5
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_10

    if-gt v0, v3, :cond_9

    sub-int v0, v3, v0

    :cond_6
    :goto_5
    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/b/t;->j(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    :goto_6
    if-ne v9, v10, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    move v6, v4

    move v4, v3

    move v3, v0

    move v0, v1

    goto :goto_2

    :cond_8
    move v6, v5

    goto :goto_4

    :cond_9
    if-le v0, v2, :cond_e

    invoke-virtual {p0, v4}, Lcom/lua/b/b/a/b/t;->h(I)I

    move-result v3

    if-eq v4, p2, :cond_b

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v4, v0, :cond_b

    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move v0, v2

    :goto_7
    if-gt v3, v1, :cond_6

    iget v4, p0, Lcom/lua/b/b/a/b/t;->c:I

    if-ne v3, v4, :cond_c

    iget v3, p0, Lcom/lua/b/b/a/b/t;->d:I

    :cond_c
    iget-object v4, p0, Lcom/lua/b/b/a/b/f;->k:Lcom/lua/b/b/a/b/f$a;

    iget-object v6, p0, Lcom/lua/b/b/a/b/t;->b:[C

    aget-char v6, v6, v3

    invoke-interface {v4, v6}, Lcom/lua/b/b/a/b/f$a;->getAdvance(C)I

    move-result v4

    if-le v4, v0, :cond_d

    invoke-virtual {p0, v3}, Lcom/lua/b/b/a/b/t;->j(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int v0, v2, v4

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_d
    sub-int/2addr v0, v4

    goto :goto_8

    :cond_e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int v0, v2, v0

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto/16 :goto_1

    :cond_10
    move v11, v4

    move v4, v0

    move v0, v3

    move v3, v11

    goto :goto_6

    :cond_11
    move v1, v0

    goto/16 :goto_3
.end method

.method private d(II)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(III)V
    .locals 3

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int v2, p2, p3

    invoke-direct {p0, v1, v2}, Lcom/lua/b/b/a/b/f;->e(II)V

    invoke-direct {p0, v1, p3}, Lcom/lua/b/b/a/b/f;->d(II)V

    invoke-direct {p0, v1, v0, p2}, Lcom/lua/b/b/a/b/f;->c(III)V

    return-void
.end method

.method private e(II)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, p2, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private m()Z
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->k:Lcom/lua/b/b/a/b/f$a;

    invoke-interface {v0}, Lcom/lua/b/b/a/b/f$a;->getRowWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lua/b/b/a/b/f;->k:Lcom/lua/b/b/a/b/f$a;

    const/16 v2, 0x4d

    invoke-interface {v1, v2}, Lcom/lua/b/b/a/b/f$a;->getAdvance(C)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    return-void
.end method

.method private s(I)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/b/t;->h(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/lua/b/b/a/b/t;->b:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/lua/b/b/a/b/t;->d:I

    :cond_0
    iget-object v1, p0, Lcom/lua/b/b/a/b/t;->b:[C

    aget-char v2, v1, v0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    aget-char v1, v1, v0

    const v2, 0xffff

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/b/t;->j(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(IIJZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/lua/b/b/a/b/t;->a(IIJZ)V

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/b/f;->n(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/b/f;->s(I)I

    move-result v1

    neg-int v2, p2

    invoke-direct {p0, v0, v1, v2}, Lcom/lua/b/b/a/b/f;->d(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v2}, Lcom/lua/b/b/a/b/t;->i(I)I

    move-result v0

    new-array v3, v0, [C

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v3, v1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v2, v0}, Lcom/lua/b/b/a/b/t;->a([CII)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/lua/b/b/a/b/f;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lua/b/b/a/b/f;->j:Z

    invoke-virtual {p0}, Lcom/lua/b/b/a/b/f;->j()V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/lua/b/b/a/b/f;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([CIJZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/lua/b/b/a/b/t;->a([CIJZ)V

    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/b/f;->n(I)I

    move-result v0

    array-length v1, p1

    add-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/lua/b/b/a/b/f;->s(I)I

    move-result v1

    array-length v2, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/lua/b/b/a/b/f;->d(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()V
    .locals 3

    invoke-direct {p0}, Lcom/lua/b/b/a/b/f;->n()V

    iget-boolean v0, p0, Lcom/lua/b/b/a/b/f;->j:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/lua/b/b/a/b/f;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->k:Lcom/lua/b/b/a/b/f$a;

    invoke-interface {v0}, Lcom/lua/b/b/a/b/f$a;->getRowWidth()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Text field has non-zero width but still too small for word wrap"

    invoke-static {v0}, Lcom/lua/b/b/a/b/v;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->f()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/lua/b/b/a/b/f;->c(III)V

    goto :goto_0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lua/b/b/a/b/f;->j:Z

    return v0
.end method

.method m(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/lua/b/b/a/b/t;->m(I)V

    if-eqz p1, :cond_0

    if-lez p1, :cond_1

    iget v0, p0, Lcom/lua/b/b/a/b/t;->c:I

    sub-int/2addr v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/b/f;->n(I)I

    move-result v0

    iget v1, p0, Lcom/lua/b/b/a/b/t;->c:I

    invoke-direct {p0, v1}, Lcom/lua/b/b/a/b/f;->s(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/lua/b/b/a/b/f;->d(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/lua/b/b/a/b/t;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n(I)I
    .locals 7

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/b/t;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    add-int/lit8 v2, v2, -0x1

    move v4, v0

    move v6, v2

    :goto_1
    if-lt v6, v4, :cond_4

    add-int v0, v4, v6

    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v5, v2, 0x1

    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    :goto_2
    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_2

    if-ge p1, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->f()I

    move-result v0

    move v3, v0

    goto :goto_2

    :cond_2
    if-lt p1, v3, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v6, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public o(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/b/f;->q(I)I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/lua/b/b/a/b/t;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public p(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/b/f;->r(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public q(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/b/f;->r(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/lua/b/b/a/b/t;->f()I

    move-result v0

    move v1, v0

    goto :goto_1
.end method

.method protected r(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/b/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
