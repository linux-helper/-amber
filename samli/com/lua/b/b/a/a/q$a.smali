.class Lcom/lua/b/b/a/a/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lua/b/b/a/b/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/b/b/a/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/lua/b/b/a/b/m;

.field private b:Z

.field private c:Z

.field final d:Lcom/lua/b/b/a/a/q;


# direct methods
.method private constructor <init>(Lcom/lua/b/b/a/a/q;)V
    .locals 1

    iput-object p1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lua/b/b/a/b/m;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/b/m;-><init>(Lcom/lua/b/b/a/b/m$a;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q$a;->a:Lcom/lua/b/b/a/b/m;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/q$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lua/b/b/a/a/q;Lcom/lua/b/b/a/a/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/q$a;-><init>(Lcom/lua/b/b/a/a/q;)V

    return-void
.end method

.method private b(II)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->p(Lcom/lua/b/b/a/a/q;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    const/high16 v0, 0x20000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    sub-int v0, p1, p2

    mul-int/2addr v0, v0

    if-ne v0, v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    :cond_0
    if-le p1, p2, :cond_2

    const/16 v0, 0x200

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q$a;->b:Z

    if-nez v0, :cond_3

    :goto_1
    return-void

    :cond_2
    const/16 v0, 0x100

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v1, v0, Lcom/lua/b/b/a/a/q;->l:I

    if-ge p1, v1, :cond_5

    if-le p2, v1, :cond_6

    iput v1, v0, Lcom/lua/b/b/a/a/q;->k:I

    :cond_4
    iput p2, v0, Lcom/lua/b/b/a/a/q;->l:I

    goto :goto_1

    :cond_5
    iget v1, v0, Lcom/lua/b/b/a/a/q;->k:I

    if-ge p2, v1, :cond_4

    iput v1, v0, Lcom/lua/b/b/a/a/q;->l:I

    :cond_6
    iput p2, v0, Lcom/lua/b/b/a/a/q;->k:I

    goto :goto_1
.end method

.method private k()[C
    .locals 8

    const/16 v7, 0x20

    const/16 v6, 0xa

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v0, v0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-virtual {v2, v0}, Lcom/lua/b/b/a/b/g;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v2, v2, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v2, v0}, Lcom/lua/b/b/a/b/g;->c(I)I

    move-result v2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v2}, Lcom/lua/b/b/a/b/g;->g(I)I

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v3, v3, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v3}, Lcom/lua/b/b/a/b/g;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v3, v3, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v3}, Lcom/lua/b/b/a/b/g;->k()C

    move-result v3

    if-eq v3, v7, :cond_0

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    :cond_0
    add-int v3, v2, v0

    iget-object v4, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v4, v4, Lcom/lua/b/b/a/a/q;->j:I

    if-lt v3, v4, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v4, v3, Lcom/lua/b/b/a/a/q;->r:I

    iget-object v5, v3, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v3, v3, Lcom/lua/b/b/a/a/q;->j:I

    sub-int/2addr v3, v2

    invoke-virtual {v5, v2, v3}, Lcom/lua/b/b/a/b/g;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/lua/b/b/a/b/b;->a(Ljava/lang/CharSequence;)I

    move-result v3

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    if-gez v3, :cond_4

    const/4 v0, 0x1

    new-array v0, v0, [C

    int-to-char v2, v6

    aput-char v2, v0, v1

    :cond_2
    return-object v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [C

    int-to-char v4, v6

    int-to-char v4, v4

    aput-char v4, v0, v1

    iget-object v4, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v4, v4, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v4, v2}, Lcom/lua/b/b/a/b/g;->g(I)I

    :goto_1
    if-ge v1, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    int-to-char v2, v7

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->j()V

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v2, v1, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {v1, v2}, Lcom/lua/b/b/a/a/q;->b(Lcom/lua/b/b/a/a/q;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;II)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->e(Lcom/lua/b/b/a/a/q;)V

    :cond_0
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->i()V

    return-void
.end method


# virtual methods
.method a(I)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->c()I

    move-result v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v2, v1, Lcom/lua/b/b/a/a/q;->j:I

    add-int v3, v2, p1

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_0

    iget-object v1, v1, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/lua/b/b/a/b/g;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v1, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v2, p1}, Lcom/lua/b/b/a/b/g;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->a:Lcom/lua/b/b/a/b/m;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/m;->a()V

    return-void
.end method

.method public a(C)V
    .locals 8

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q$a;->b:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->h()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v2}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v2

    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v3, v3, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v3, v2}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v3

    const/16 v4, 0x8

    if-eq p1, v4, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v4, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v0, v0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, p1, v0, v6, v7}, Lcom/lua/b/b/a/b/g;->a(CIJ)V

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/q$a;->c(Z)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->c(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/u;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v5, v5, Lcom/lua/b/b/a/a/q;->j:I

    invoke-interface {v0, v4, v5, v1}, Lcom/lua/b/b/a/a/u;->b(Ljava/lang/CharSequence;II)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v2}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v0

    if-eq v3, v0, :cond_9

    :cond_0
    add-int/lit8 v0, v2, -0x1

    :goto_1
    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v2, v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;I)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->b()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-boolean v4, v0, Lcom/lua/b/b/a/a/q;->q:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/lua/b/b/a/a/q$a;->k()[C

    move-result-object v0

    iget-object v4, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v5, v4, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v4, v4, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v5, v0, v4, v6, v7}, Lcom/lua/b/b/a/b/g;->a([CIJ)V

    iget-object v4, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v4, v4, Lcom/lua/b/b/a/a/q;->j:I

    array-length v0, v0

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q$a;->d(I)V

    :goto_3
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v2}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v0

    if-eq v3, v0, :cond_a

    add-int/lit8 v0, v2, -0x1

    :goto_4
    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v2}, Lcom/lua/b/b/a/a/q;->c(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/u;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v4, v4, Lcom/lua/b/b/a/a/q;->j:I

    invoke-interface {v2, v3, v4, v1}, Lcom/lua/b/b/a/a/u;->a(Ljava/lang/String;II)V

    goto :goto_1

    :cond_4
    iget-object v4, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v0, v0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, p1, v0, v6, v7}, Lcom/lua/b/b/a/b/g;->a(CIJ)V

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/q$a;->c(Z)V

    goto :goto_3

    :cond_5
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v4, v0, Lcom/lua/b/b/a/a/q;->j:I

    if-lez v4, :cond_1

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->c(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/u;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v5, v5, Lcom/lua/b/b/a/a/q;->j:I

    invoke-interface {v0, v4, v5, v1}, Lcom/lua/b/b/a/a/u;->a(Ljava/lang/CharSequence;II)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v4, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v0, v0, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, v0, v6, v7}, Lcom/lua/b/b/a/b/g;->a(IJ)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v4, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v0, v0, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v4, v0}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v0

    const v4, 0xd83d

    if-eq v0, v4, :cond_6

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v4, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v0, v0, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v4, v0}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v0

    const v4, 0xd83c

    if-ne v0, v4, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v4, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v0, v0, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v0, v0, -0x2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, v0, v6, v7}, Lcom/lua/b/b/a/b/g;->a(IJ)V

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/q$a;->b(Z)V

    :cond_7
    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/q$a;->b(Z)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v0

    if-ge v0, v2, :cond_8

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;I)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v2}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v0

    if-ne v3, v0, :cond_0

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto/16 :goto_4
.end method

.method a(II)V
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v0, v0, Lcom/lua/b/b/a/a/q;->j:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v2, v1, Lcom/lua/b/b/a/a/q;->j:I

    add-int/2addr v2, p2

    iget-object v1, v1, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/g;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v2, v1, :cond_1

    :goto_0
    sub-int/2addr v1, v0

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/lua/b/b/a/a/q$a;->a(IILjava/lang/String;)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method a(IILjava/lang/String;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q$a;->b:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v3, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v0, v0, Lcom/lua/b/b/a/a/q;->k:I

    invoke-virtual {v3, v0}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v5

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v5}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v4

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v3, v0, Lcom/lua/b/b/a/a/q;->l:I

    iget v6, v0, Lcom/lua/b/b/a/a/q;->k:I

    sub-int/2addr v3, v6

    if-lez v3, :cond_5

    iput v6, v0, Lcom/lua/b/b/a/a/q;->j:I

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v0, v6, v3, v8, v9}, Lcom/lua/b/b/a/b/g;->a(IIJ)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v0

    if-eq v5, v0, :cond_4

    move v0, v1

    :goto_0
    move v3, v0

    move v0, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/q$a;->d(Z)V

    move v10, v0

    move v0, v4

    move v4, v5

    move v5, v3

    move v3, v10

    :goto_2
    if-lez p2, :cond_0

    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v3, v3, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v3, p1}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v3

    if-ge v3, v4, :cond_c

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v3}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v0

    :goto_3
    iget-object v4, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v4}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v4

    if-eq v3, v4, :cond_b

    move v4, v1

    :goto_4
    iget-object v5, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iput p1, v5, Lcom/lua/b/b/a/a/q;->j:I

    iget-object v5, v5, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v5, p1, p2, v6, v7}, Lcom/lua/b/b/a/b/g;->a(IIJ)V

    move v5, v4

    move v4, v3

    move v3, v2

    :cond_0
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v3, v3, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v3, p1}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v3

    if-ge v3, v4, :cond_9

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v3}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v0

    :goto_5
    iget-object v4, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v4, v4, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iget-object v7, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v7, v7, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/lua/b/b/a/b/g;->a([CIJ)V

    iget-object v4, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v6, v4, Lcom/lua/b/b/a/a/q;->j:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v4, Lcom/lua/b/b/a/a/q;->j:I

    move v4, v3

    move v3, v0

    move v0, v2

    :goto_6
    iget-object v6, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v6}, Lcom/lua/b/b/a/a/q;->c(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/u;

    move-result-object v6

    iget-object v7, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v7, v7, Lcom/lua/b/b/a/a/q;->j:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-interface {v6, p3, v7, v8}, Lcom/lua/b/b/a/a/u;->b(Ljava/lang/CharSequence;II)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0, v2}, Lcom/lua/b/b/a/a/q;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->b()V

    :cond_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->j()V

    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v2}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v2

    if-eq v0, v2, :cond_7

    :goto_7
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v2, v0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {v0, v2}, Lcom/lua/b/b/a/a/q;->b(Lcom/lua/b/b/a/a/q;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v4}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v0

    if-eq v3, v0, :cond_2

    add-int/lit8 v4, v4, -0x1

    :cond_2
    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v2}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;II)V

    :cond_3
    :goto_8
    return-void

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    move v0, v1

    move v3, v2

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v4

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v3, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v0

    move v3, v1

    move v5, v2

    goto/16 :goto_2

    :cond_7
    move v1, v5

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0, v4}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;I)V

    goto :goto_8

    :cond_9
    move v3, v4

    goto/16 :goto_5

    :cond_a
    move v10, v3

    move v3, v0

    move v0, v10

    goto/16 :goto_6

    :cond_b
    move v4, v5

    goto/16 :goto_4

    :cond_c
    move v3, v4

    goto/16 :goto_3
.end method

.method public a(IIZZ)V
    .locals 4

    const/4 v1, 0x1

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_3

    if-ltz p2, :cond_3

    move v0, v1

    :goto_0
    const-string v2, "Invalid range to select"

    invoke-static {v0, v2}, Lcom/lua/b/b/a/b/v;->a(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q$a;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->h(Lcom/lua/b/b/a/a/q;)V

    :goto_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iput p1, v0, Lcom/lua/b/b/a/a/q;->k:I

    iget v1, v0, Lcom/lua/b/b/a/a/q;->k:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/lua/b/b/a/a/q;->l:I

    iget v1, v0, Lcom/lua/b/b/a/a/q;->l:I

    iput v1, v0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->i()V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->j()V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->g(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/t;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->c()Z

    move-result v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v3, v2, Lcom/lua/b/b/a/a/q;->k:I

    iget v2, v2, Lcom/lua/b/b/a/a/q;->l:I

    invoke-interface {v0, v1, v3, v2}, Lcom/lua/b/b/a/a/t;->a(ZII)V

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v1, v0, Lcom/lua/b/b/a/a/q;->l:I

    invoke-static {v0, v1}, Lcom/lua/b/b/a/a/q;->b(Lcom/lua/b/b/a/a/q;I)Z

    move-result v0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v1, v0, Lcom/lua/b/b/a/a/q;->k:I

    invoke-static {v0, v1}, Lcom/lua/b/b/a/a/q;->b(Lcom/lua/b/b/a/a/q;I)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->h(Lcom/lua/b/b/a/a/q;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->e(Lcom/lua/b/b/a/a/q;)V

    if-eqz p4, :cond_5

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/q$a;->d(Z)V

    goto :goto_1

    :cond_5
    iput-boolean v1, p0, Lcom/lua/b/b/a/a/q$a;->b:Z

    goto :goto_1
.end method

.method public a(Landroid/text/ClipboardManager;)V
    .locals 3

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v1, v0, Lcom/lua/b/b/a/a/q;->k:I

    iget v2, v0, Lcom/lua/b/b/a/a/q;->l:I

    if-ge v1, v2, :cond_0

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/lua/b/b/a/b/g;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->b()V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->h()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v0

    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v2, v2, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iget-object v4, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v4, v4, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/lua/b/b/a/b/g;->a([CIJ)V

    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v2, v2, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/g;->d()V

    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v3, v2, Lcom/lua/b/b/a/a/q;->j:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/lua/b/b/a/a/q;->j:I

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->j()V

    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lua/b/b/a/a/q;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->b()V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->i()V

    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v3, v2, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {v2, v3}, Lcom/lua/b/b/a/a/q;->b(Lcom/lua/b/b/a/a/q;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v2, v2, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v2, v2, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v2, v1}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v2

    if-eq v0, v2, :cond_2

    add-int/lit8 v0, v1, -0x1

    :goto_1
    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v2}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v1, v1, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;II)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v1, v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;I)V

    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lua/b/b/a/b/q;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    new-instance v1, Lcom/lua/b/b/a/a/p;

    invoke-direct {v1, p0, p1}, Lcom/lua/b/b/a/a/p;-><init>(Lcom/lua/b/b/a/a/q$a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q$a;->b:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v1, v0, Lcom/lua/b/b/a/a/q;->j:I

    iget v2, v0, Lcom/lua/b/b/a/a/q;->k:I

    if-eq v1, v2, :cond_1

    iput v2, v0, Lcom/lua/b/b/a/a/q;->j:I

    :goto_0
    invoke-direct {p0}, Lcom/lua/b/b/a/a/q$a;->l()V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v1, v0, Lcom/lua/b/b/a/a/q;->j:I

    iget v2, v0, Lcom/lua/b/b/a/a/q;->l:I

    if-eq v1, v2, :cond_0

    iput v2, v0, Lcom/lua/b/b/a/a/q;->j:I

    goto :goto_0
.end method

.method b(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v0, v0, Lcom/lua/b/b/a/a/q;->j:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v2, v1, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v1, v1, Lcom/lua/b/b/a/a/q;->j:I

    sub-int/2addr v1, v0

    invoke-virtual {v2, v0, v1}, Lcom/lua/b/b/a/b/g;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    const/4 v0, -0x1

    sput v0, Lcom/lua/c/a/a/a/f;->j:I

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->a:Lcom/lua/b/b/a/b/m;

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v1, v1, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/m;->b(Lcom/lua/b/b/a/b/g;)V

    return-void
.end method

.method b(IILjava/lang/String;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q$a;->b:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v3, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v0, v0, Lcom/lua/b/b/a/a/q;->k:I

    invoke-virtual {v3, v0}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v5

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v5}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v4

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v3, v0, Lcom/lua/b/b/a/a/q;->l:I

    iget v6, v0, Lcom/lua/b/b/a/a/q;->k:I

    sub-int/2addr v3, v6

    if-lez v3, :cond_5

    iput v6, v0, Lcom/lua/b/b/a/a/q;->j:I

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v0, v6, v3, v8, v9}, Lcom/lua/b/b/a/b/g;->a(IIJ)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v0

    if-eq v5, v0, :cond_4

    move v0, v1

    :goto_0
    move v3, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/q$a;->d(Z)V

    move v10, v0

    move v0, v4

    move v4, v5

    move v5, v10

    :goto_2
    if-lez p2, :cond_0

    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v3, v3, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v3, p1}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v3

    if-ge v3, v4, :cond_c

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v3}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v0

    :goto_3
    iget-object v4, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v4}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v4

    if-eq v3, v4, :cond_b

    move v4, v1

    :goto_4
    iget-object v5, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iput p1, v5, Lcom/lua/b/b/a/a/q;->j:I

    iget-object v5, v5, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v5, p1, p2, v6, v7}, Lcom/lua/b/b/a/b/g;->a(IIJ)V

    move v5, v4

    move v4, v3

    move v3, v2

    :cond_0
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v3, v3, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v3, p1}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v3

    if-ge v3, v4, :cond_9

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v3}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v0

    :goto_5
    iget-object v4, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v4, v4, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iget-object v7, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v7, v7, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/lua/b/b/a/b/g;->a([CIJ)V

    iget-object v4, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v6, v4, Lcom/lua/b/b/a/a/q;->j:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v4, Lcom/lua/b/b/a/a/q;->j:I

    move v4, v0

    move v0, v3

    move v3, v2

    :goto_6
    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v3, v2}, Lcom/lua/b/b/a/a/q;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->b()V

    :cond_1
    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v2}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->j()V

    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v3}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v3

    if-eq v2, v3, :cond_7

    :goto_7
    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v3, v2, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {v2, v3}, Lcom/lua/b/b/a/a/q;->b(Lcom/lua/b/b/a/a/q;I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v2, v2, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v2, v2, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v2, v0}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v2

    if-eq v4, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v1, v1, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v2}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;II)V

    :cond_3
    :goto_8
    return-void

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    move v0, v2

    move v3, v1

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v4

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v3, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v0

    move v5, v2

    move v3, v1

    goto/16 :goto_2

    :cond_7
    move v1, v5

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v1, v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;I)V

    goto :goto_8

    :cond_9
    move v3, v4

    goto/16 :goto_5

    :cond_a
    move v10, v0

    move v0, v4

    move v4, v10

    goto/16 :goto_6

    :cond_b
    move v4, v5

    goto/16 :goto_4

    :cond_c
    move v3, v4

    goto/16 :goto_3
.end method

.method public b(Landroid/text/ClipboardManager;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/a/q$a;->a(Landroid/text/ClipboardManager;)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->h()V

    return-void
.end method

.method public b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v1, v0, Lcom/lua/b/b/a/a/q;->j:I

    if-lez v1, :cond_1

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v2, v1, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/lua/b/b/a/a/q;->j:I

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->j()V

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v1, v1, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2, v1}, Lcom/lua/b/b/a/a/q$a;->b(II)V

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v2, v1, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {v1, v2}, Lcom/lua/b/b/a/a/q;->b(Lcom/lua/b/b/a/a/q;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v1}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;II)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->i()V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v2, v1, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/lua/b/b/a/a/q;->j:I

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->j()V

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v1, v1, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2, v1}, Lcom/lua/b/b/a/a/q$a;->b(II)V

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v2, v1, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {v1, v2}, Lcom/lua/b/b/a/a/q;->b(Lcom/lua/b/b/a/a/q;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v1}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;II)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->i()V

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q$a;->b:Z

    return v0
.end method

.method public c(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v2, v1, Lcom/lua/b/b/a/a/q;->k:I

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gt v2, p1, :cond_0

    iget v1, v1, Lcom/lua/b/b/a/a/q;->l:I

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->c()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, "Invalid caret position"

    invoke-static {v0}, Lcom/lua/b/b/a/b/v;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v0, v0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-direct {p0, v0, p1}, Lcom/lua/b/b/a/a/q$a;->b(II)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iput p1, v0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-direct {p0}, Lcom/lua/b/b/a/a/q$a;->l()V

    goto :goto_0
.end method

.method public d(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q$a;->b:Z

    xor-int/2addr v0, p1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v0, v1, Lcom/lua/b/b/a/a/q;->j:I

    :goto_1
    iput v0, v1, Lcom/lua/b/b/a/a/q;->k:I

    iput v0, v1, Lcom/lua/b/b/a/a/q;->l:I

    iput-boolean p1, p0, Lcom/lua/b/b/a/a/q$a;->b:Z

    iput-boolean p1, p0, Lcom/lua/b/b/a/a/q$a;->c:Z

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->g(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/t;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2}, Lcom/lua/b/b/a/a/q;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/lua/b/b/a/a/t;->a(ZII)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q$a;->c:Z

    return v0
.end method

.method public e()V
    .locals 7

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v1, v0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v3, v1}, Lcom/lua/b/b/a/a/q;->d(I)I

    move-result v3

    iget-object v4, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v4, v4, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v4, v0}, Lcom/lua/b/b/a/b/g;->f(I)I

    move-result v4

    iget-object v5, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v5, v5, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v5, v2}, Lcom/lua/b/b/a/b/g;->f(I)I

    move-result v5

    if-ge v3, v5, :cond_2

    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v5, v3, Lcom/lua/b/b/a/a/q;->j:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/lua/b/b/a/a/q;->j:I

    :goto_0
    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v3}, Lcom/lua/b/b/a/a/q;->k(Lcom/lua/b/b/a/a/q;)I

    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v3, v3, Lcom/lua/b/b/a/a/q;->j:I

    invoke-direct {p0, v1, v3}, Lcom/lua/b/b/a/a/q$a;->b(II)V

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v3, v1, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {v1, v3}, Lcom/lua/b/b/a/a/q;->b(Lcom/lua/b/b/a/a/q;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v0, v3}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;II)V

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->d(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/b/r;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lua/b/b/a/b/r;->a(I)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->i()V

    :cond_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    sub-int v3, v4, v3

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    iget v4, v6, Lcom/lua/b/b/a/a/q;->j:I

    add-int/2addr v3, v4

    iput v3, v6, Lcom/lua/b/b/a/a/q;->j:I

    goto :goto_0
.end method

.method public f()V
    .locals 6

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v1, v0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v3, v1}, Lcom/lua/b/b/a/a/q;->d(I)I

    move-result v3

    iget-object v4, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v4, v4, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v4, v2}, Lcom/lua/b/b/a/b/g;->f(I)I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v5, v3, Lcom/lua/b/b/a/a/q;->j:I

    sub-int v4, v5, v4

    iput v4, v3, Lcom/lua/b/b/a/a/q;->j:I

    :goto_0
    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v3}, Lcom/lua/b/b/a/a/q;->l(Lcom/lua/b/b/a/a/q;)I

    iget-object v3, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v3, v3, Lcom/lua/b/b/a/a/q;->j:I

    invoke-direct {p0, v1, v3}, Lcom/lua/b/b/a/a/q$a;->b(II)V

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v3, v1, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {v1, v3}, Lcom/lua/b/b/a/a/q;->b(Lcom/lua/b/b/a/a/q;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;II)V

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->d(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/b/r;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lua/b/b/a/b/r;->a(I)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->i()V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v5, v4, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v3, v3, 0x1

    sub-int v3, v5, v3

    iput v3, v4, Lcom/lua/b/b/a/a/q;->j:I

    goto :goto_0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    return-void
.end method

.method public h()V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q$a;->b:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v3, v0, Lcom/lua/b/b/a/a/q;->l:I

    iget v4, v0, Lcom/lua/b/b/a/a/q;->k:I

    sub-int v5, v3, v4

    if-lez v5, :cond_4

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v4}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v3}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v4

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v6, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v0, v0, Lcom/lua/b/b/a/a/q;->l:I

    invoke-virtual {v6, v0}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    iget-object v6, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v6}, Lcom/lua/b/b/a/a/q;->c(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/u;

    move-result-object v6

    const-string v7, ""

    iget-object v8, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v8, v8, Lcom/lua/b/b/a/a/q;->j:I

    invoke-interface {v6, v7, v8, v5}, Lcom/lua/b/b/a/a/u;->a(Ljava/lang/CharSequence;II)V

    iget-object v6, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v7, v6, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v6, v6, Lcom/lua/b/b/a/a/q;->k:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v7, v6, v5, v8, v9}, Lcom/lua/b/b/a/b/g;->a(IIJ)V

    iget-object v5, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v6, v5, Lcom/lua/b/b/a/a/q;->k:I

    iput v6, v5, Lcom/lua/b/b/a/a/q;->j:I

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->j()V

    iget-object v5, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v5, v1}, Lcom/lua/b/b/a/a/q;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->b()V

    invoke-virtual {p0, v2}, Lcom/lua/b/b/a/a/q$a;->d(Z)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$a;->i()V

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget v2, v1, Lcom/lua/b/b/a/a/q;->j:I

    invoke-static {v1, v2}, Lcom/lua/b/b/a/a/q;->b(Lcom/lua/b/b/a/a/q;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v1, v1, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v1, v1, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v1, v3}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v1

    if-eq v4, v1, :cond_5

    add-int/lit8 v1, v3, -0x1

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;II)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0, v1}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lcom/lua/b/b/a/a/q$a;->d(Z)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->e(Lcom/lua/b/b/a/a/q;)V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->f(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->f(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->f(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$b;->b()V

    :cond_0
    return-void
.end method

.method j()V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v1, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v0, v0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-virtual {v1, v0}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v1}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v1, v0}, Lcom/lua/b/b/a/a/q;->c(Lcom/lua/b/b/a/a/q;I)I

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v1}, Lcom/lua/b/b/a/a/q;->d(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/b/r;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lua/b/b/a/b/r;->a(I)V

    :cond_0
    return-void
.end method
