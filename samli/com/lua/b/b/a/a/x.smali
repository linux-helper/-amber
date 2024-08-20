.class public Lcom/lua/b/b/a/a/x;
.super Lcom/lua/b/b/a/a/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/b/b/a/a/x$a;
    }
.end annotation


# instance fields
.field private final m:Lcom/lua/b/b/a/a/x$a;

.field private final n:Lcom/lua/b/b/a/a/x$a;

.field private final o:Lcom/lua/b/b/a/a/x$a;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I


# direct methods
.method public constructor <init>(Lcom/lua/b/b/a/a/q;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/v;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/x;->p:Z

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/x;->q:Z

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/x;->r:Z

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/x;->s:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget v1, Lcom/lua/b/b/a/a/q;->c:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v1, 0x2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lua/b/b/a/a/x;->t:I

    new-instance v0, Lcom/lua/b/b/a/a/x$a;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/x$a;-><init>(Lcom/lua/b/b/a/a/x;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/x;->m:Lcom/lua/b/b/a/a/x$a;

    new-instance v0, Lcom/lua/b/b/a/a/x$a;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/x$a;-><init>(Lcom/lua/b/b/a/a/x;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/x;->n:Lcom/lua/b/b/a/a/x$a;

    new-instance v0, Lcom/lua/b/b/a/a/x$a;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/x$a;-><init>(Lcom/lua/b/b/a/a/x;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/x;->o:Lcom/lua/b/b/a/a/x$a;

    return-void
.end method

.method static synthetic a(Lcom/lua/b/b/a/a/x;)I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/x;->t:I

    return v0
.end method

.method private a(Lcom/lua/b/b/a/a/x$a;Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/lua/b/b/a/a/x$a;->b(II)Lcom/lua/b/b/a/b/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1, v0}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1, v0}, Lcom/lua/b/b/a/a/q;->b(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/lua/b/b/a/a/x$a;->a(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->m:Lcom/lua/b/b/a/a/x$a;

    iget-object v0, v0, Lcom/lua/b/b/a/a/x$a;->c:Landroid/graphics/Rect;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->isSelectText2()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->m:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/x$a;->e()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->n:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/x$a;->c()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->o:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/x$a;->c()V

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/x;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->getCaretPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q;->b(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/lua/b/b/a/a/x;->m:Lcom/lua/b/b/a/a/x$a;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-virtual {v4, v1, v0}, Lcom/lua/b/b/a/a/x$a;->e(II)V

    :cond_0
    iget-boolean v0, p0, Lcom/lua/b/b/a/a/x;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->m:Lcom/lua/b/b/a/a/x$a;

    iget-boolean v1, p0, Lcom/lua/b/b/a/a/x;->r:Z

    invoke-virtual {v0, p1, v1}, Lcom/lua/b/b/a/a/x$a;->a(Landroid/graphics/Canvas;Z)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/x;->s:Z

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->m:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/x$a;->c()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->n:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/x$a;->e()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->o:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/x$a;->e()V

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/x;->p:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/x;->q:Z

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q;->b(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/lua/b/b/a/a/x;->n:Lcom/lua/b/b/a/a/x$a;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-virtual {v4, v1, v0}, Lcom/lua/b/b/a/a/x$a;->e(II)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q;->b(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/lua/b/b/a/a/x;->o:Lcom/lua/b/b/a/a/x$a;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-virtual {v4, v1, v0}, Lcom/lua/b/b/a/a/x$a;->e(II)V

    :cond_4
    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->n:Lcom/lua/b/b/a/a/x$a;

    iget-boolean v1, p0, Lcom/lua/b/b/a/a/x;->p:Z

    invoke-virtual {v0, p1, v1}, Lcom/lua/b/b/a/a/x$a;->a(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->o:Lcom/lua/b/b/a/a/x$a;

    iget-boolean v1, p0, Lcom/lua/b/b/a/a/x;->p:Z

    invoke-virtual {v0, p1, v1}, Lcom/lua/b/b/a/a/x$a;->a(Landroid/graphics/Canvas;Z)V

    goto :goto_0
.end method

.method public a(Lcom/lua/b/b/a/b/c;)V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->m:Lcom/lua/b/b/a/a/x$a;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->f:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {p1, v1}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/x$a;->a(I)V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/x;->r:Z

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/x;->p:Z

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/x;->q:Z

    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->m:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/x$a;->a()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->n:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/x$a;->a()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->o:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/x$a;->a()V

    invoke-super {p0, p1}, Lcom/lua/b/b/a/a/v;->b(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/lua/b/b/a/a/x;->m:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v3, v1, v2}, Lcom/lua/b/b/a/a/x$a;->c(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1, v0}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/lua/b/b/a/a/x;->n:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v3, v1, v2}, Lcom/lua/b/b/a/a/x$a;->c(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/lua/b/b/a/a/v;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/lua/b/b/a/a/v;->onDown(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/v;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/lua/b/b/a/a/x;->m:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v2, v0, v1}, Lcom/lua/b/b/a/a/x$a;->c(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/x;->r:Z

    iget-object v2, p0, Lcom/lua/b/b/a/a/x;->n:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v2, v0, v1}, Lcom/lua/b/b/a/a/x$a;->c(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/x;->p:Z

    iget-object v2, p0, Lcom/lua/b/b/a/a/x;->o:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v2, v0, v1}, Lcom/lua/b/b/a/a/x$a;->c(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/x;->q:Z

    iget-boolean v2, p0, Lcom/lua/b/b/a/a/x;->r:Z

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/lua/b/b/a/a/x;->s:Z

    iget-object v2, p0, Lcom/lua/b/b/a/a/x;->m:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v2, v0, v1}, Lcom/lua/b/b/a/a/x$a;->d(II)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->m:Lcom/lua/b/b/a/a/x$a;

    :goto_0
    invoke-virtual {v0}, Lcom/lua/b/b/a/a/x$a;->d()V

    :cond_0
    return v3

    :cond_1
    iget-boolean v2, p0, Lcom/lua/b/b/a/a/x;->p:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lua/b/b/a/a/x;->n:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v2, v0, v1}, Lcom/lua/b/b/a/a/x$a;->d(II)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->focusSelectionStart()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->n:Lcom/lua/b/b/a/a/x$a;

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/lua/b/b/a/a/x;->q:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lua/b/b/a/a/x;->o:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v2, v0, v1}, Lcom/lua/b/b/a/a/x$a;->d(II)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->focusSelectionEnd()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/x;->o:Lcom/lua/b/b/a/a/x$a;

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/x;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/x;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/x;->q:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/a/x;->b(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lua/b/b/a/a/v;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/a/x;->onDoubleTap(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/lua/b/b/a/a/x;->r:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/a/x;->b(Landroid/view/MotionEvent;)Z

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/lua/b/b/a/a/x;->s:Z

    iget-object v1, p0, Lcom/lua/b/b/a/a/x;->m:Lcom/lua/b/b/a/a/x$a;

    invoke-direct {p0, v1, p2}, Lcom/lua/b/b/a/a/x;->a(Lcom/lua/b/b/a/a/x$a;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/lua/b/b/a/a/x;->p:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/a/x;->b(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/lua/b/b/a/a/x;->n:Lcom/lua/b/b/a/a/x$a;

    invoke-direct {p0, v1, p2}, Lcom/lua/b/b/a/a/x;->a(Lcom/lua/b/b/a/a/x$a;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/lua/b/b/a/a/x;->q:Z

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/a/x;->b(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/lua/b/b/a/a/x;->o:Lcom/lua/b/b/a/a/x$a;

    invoke-direct {p0, v1, p2}, Lcom/lua/b/b/a/a/x;->a(Lcom/lua/b/b/a/a/x$a;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lua/b/b/a/a/v;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/lua/b/b/a/a/x;->m:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v3, v1, v2}, Lcom/lua/b/b/a/a/x$a;->c(II)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lua/b/b/a/a/x;->n:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v3, v1, v2}, Lcom/lua/b/b/a/a/x$a;->c(II)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lua/b/b/a/a/x;->o:Lcom/lua/b/b/a/a/x$a;

    invoke-virtual {v3, v1, v2}, Lcom/lua/b/b/a/a/x$a;->c(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-boolean v0, p0, Lcom/lua/b/b/a/a/x;->s:Z

    invoke-super {p0, p1}, Lcom/lua/b/b/a/a/v;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
