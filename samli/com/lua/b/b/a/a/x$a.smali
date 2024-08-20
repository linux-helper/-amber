.class Lcom/lua/b/b/a/a/x$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/b/b/a/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/graphics/Rect;

.field public final c:Landroid/graphics/Rect;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:Landroid/graphics/Paint;

.field private k:Z

.field final l:Lcom/lua/b/b/a/a/x;


# direct methods
.method public constructor <init>(Lcom/lua/b/b/a/a/x;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/lua/b/b/a/a/x$a;->l:Lcom/lua/b/b/a/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/x$a;->l:Lcom/lua/b/b/a/a/x;

    invoke-static {v0}, Lcom/lua/b/b/a/a/x;->a(Lcom/lua/b/b/a/a/x;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lua/b/b/a/a/x$a;->a:I

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lua/b/b/a/a/x$a;->l:Lcom/lua/b/b/a/a/x;

    invoke-static {v1}, Lcom/lua/b/b/a/a/x;->a(Lcom/lua/b/b/a/a/x;)I

    move-result v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/x$a;->l:Lcom/lua/b/b/a/a/x;

    invoke-static {v2}, Lcom/lua/b/b/a/a/x;->a(Lcom/lua/b/b/a/a/x;)I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/x$a;->b:Landroid/graphics/Rect;

    iput v4, p0, Lcom/lua/b/b/a/a/x$a;->d:I

    iput v4, p0, Lcom/lua/b/b/a/a/x$a;->e:I

    iput v4, p0, Lcom/lua/b/b/a/a/x$a;->f:I

    iput v4, p0, Lcom/lua/b/b/a/a/x$a;->g:I

    iput v4, p0, Lcom/lua/b/b/a/a/x$a;->h:I

    iput v4, p0, Lcom/lua/b/b/a/a/x$a;->i:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/x$a;->b()I

    move-result v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/x$a;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/lua/b/b/a/a/x$a;->a:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v4, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/x$a;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lua/b/b/a/a/x$a;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/lua/b/b/a/a/x$a;->j:Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->getColorScheme()Lcom/lua/b/b/a/b/c;

    move-result-object v1

    sget-object v2, Lcom/lua/b/b/a/b/c$a;->f:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v1, v2}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/x$a;->j:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private f()V
    .locals 6

    iget v0, p0, Lcom/lua/b/b/a/a/x$a;->f:I

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/x$a;->b()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/lua/b/b/a/a/x$a;->d:I

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    iget v2, p0, Lcom/lua/b/b/a/a/x$a;->g:I

    iget v3, p0, Lcom/lua/b/b/a/a/x$a;->e:I

    if-lt v2, v3, :cond_0

    move v5, v3

    move v3, v2

    move v2, v5

    :cond_0
    iget-object v4, p0, Lcom/lua/b/b/a/a/x$a;->l:Lcom/lua/b/b/a/a/x;

    iget-object v4, v4, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/x$a;->d()V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/b/b/a/a/x$a;->h:I

    iput v0, p0, Lcom/lua/b/b/a/a/x$a;->i:I

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/x$a;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public a(II)V
    .locals 0

    invoke-direct {p0}, Lcom/lua/b/b/a/a/x$a;->f()V

    invoke-virtual {p0, p1, p2}, Lcom/lua/b/b/a/a/x$a;->e(II)V

    invoke-direct {p0}, Lcom/lua/b/b/a/a/x$a;->f()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .locals 8

    const/4 v4, 0x1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/x$a;->b()I

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/lua/b/b/a/a/x$a;->d:I

    mul-int/lit8 v5, v0, 0x2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, p0, Lcom/lua/b/b/a/a/x$a;->e:I

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/lua/b/b/a/a/x$a;->a:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/lua/b/b/a/a/x$a;->f:I

    mul-int/lit8 v7, v0, 0x3

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/lua/b/b/a/a/x$a;->g:I

    add-int/2addr v0, v7

    int-to-float v0, v0

    invoke-direct {v1, v3, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lcom/lua/b/b/a/a/x$a;->j:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/lua/b/b/a/a/x$a;->f:I

    int-to-float v2, v0

    iget v3, p0, Lcom/lua/b/b/a/a/x$a;->g:I

    int-to-float v5, v3

    iget-object v6, p0, Lcom/lua/b/b/a/a/x$a;->b:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v7

    int-to-float v0, v0

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    invoke-direct {v1, v2, v5, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/lua/b/b/a/a/x$a;->j:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/x$a;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public b(II)Lcom/lua/b/b/a/b/q;
    .locals 5

    iget-object v0, p0, Lcom/lua/b/b/a/a/x$a;->l:Lcom/lua/b/b/a/a/x;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/v;->a(I)I

    move-result v0

    iget v1, p0, Lcom/lua/b/b/a/a/x$a;->h:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/x$a;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/lua/b/b/a/a/x$a;->l:Lcom/lua/b/b/a/a/x;

    invoke-virtual {v1, p2}, Lcom/lua/b/b/a/a/v;->b(I)I

    move-result v1

    iget v2, p0, Lcom/lua/b/b/a/a/x$a;->i:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/lua/b/b/a/a/x$a;->a:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    new-instance v2, Lcom/lua/b/b/a/b/q;

    iget-object v3, p0, Lcom/lua/b/b/a/a/x$a;->l:Lcom/lua/b/b/a/a/x;

    iget-object v3, v3, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v3, v0, v1}, Lcom/lua/b/b/a/a/q;->a(II)I

    move-result v3

    iget-object v4, p0, Lcom/lua/b/b/a/a/x$a;->l:Lcom/lua/b/b/a/a/x;

    iget-object v4, v4, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v4, v0, v1}, Lcom/lua/b/b/a/a/q;->b(II)I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    return-object v2
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/x$a;->k:Z

    return-void
.end method

.method public c(II)Z
    .locals 3

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/x$a;->k:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lua/b/b/a/a/x$a;->f:I

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/x$a;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/lua/b/b/a/a/x$a;->g:I

    if-lt p2, v0, :cond_0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 5

    iget v0, p0, Lcom/lua/b/b/a/a/x$a;->f:I

    iget v1, p0, Lcom/lua/b/b/a/a/x$a;->g:I

    iget-object v2, p0, Lcom/lua/b/b/a/a/x$a;->b:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    invoke-direct {v3, v0, v1, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/x$a;->l:Lcom/lua/b/b/a/a/x;

    iget-object v0, v0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public d(II)V
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/x$a;->f:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/lua/b/b/a/a/x$a;->h:I

    iget v0, p0, Lcom/lua/b/b/a/a/x$a;->g:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/lua/b/b/a/a/x$a;->i:I

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/x$a;->k:Z

    return-void
.end method

.method public e(II)V
    .locals 1

    iput p1, p0, Lcom/lua/b/b/a/a/x$a;->d:I

    iput p2, p0, Lcom/lua/b/b/a/a/x$a;->e:I

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/x$a;->b()I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Lcom/lua/b/b/a/a/x$a;->f:I

    iget v0, p0, Lcom/lua/b/b/a/a/x$a;->a:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/lua/b/b/a/a/x$a;->g:I

    return-void
.end method
