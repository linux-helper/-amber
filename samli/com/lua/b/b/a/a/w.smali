.class public Lcom/lua/b/b/a/a/w;
.super Lcom/lua/b/b/a/a/v;


# static fields
.field private static m:I = 0x10


# instance fields
.field private n:I

.field private o:F

.field private p:F


# direct methods
.method public constructor <init>(Lcom/lua/b/b/a/a/q;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/v;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput v0, p0, Lcom/lua/b/b/a/a/w;->o:F

    iput v0, p0, Lcom/lua/b/b/a/a/w;->p:F

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/lua/b/b/a/a/w;->m:I

    return-void
.end method

.method private b(FF)V
    .locals 9

    const/4 v8, 0x1

    const/4 v5, -0x1

    const-wide v6, 0x3fd49ba5e353f7cfL    # 0.322

    const/4 v1, 0x0

    iget v0, p0, Lcom/lua/b/b/a/a/w;->o:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    cmpl-float v0, p1, v1

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/lua/b/b/a/a/w;->o:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    :cond_1
    iput v1, p0, Lcom/lua/b/b/a/a/w;->o:F

    :cond_2
    iget v0, p0, Lcom/lua/b/b/a/a/w;->p:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/lua/b/b/a/a/w;->p:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    cmpg-float v0, p2, v1

    if-gez v0, :cond_5

    :cond_4
    iput v1, p0, Lcom/lua/b/b/a/a/w;->p:F

    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    cmpl-double v0, v2, v6

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/lua/b/b/a/a/w;->o:F

    add-float v1, v0, p1

    float-to-int v0, v1

    sget v4, Lcom/lua/b/b/a/a/w;->m:I

    div-int/2addr v0, v4

    mul-int/2addr v4, v0

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/lua/b/b/a/a/w;->o:F

    :cond_6
    :goto_0
    if-lez v0, :cond_7

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->moveCaretRight()V

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/lua/b/b/a/a/w;->n:I

    if-nez v1, :cond_6

    iput v8, p0, Lcom/lua/b/b/a/a/w;->n:I

    goto :goto_0

    :cond_7
    :goto_1
    if-gez v0, :cond_8

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->moveCaretLeft()V

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/lua/b/b/a/a/w;->n:I

    if-nez v1, :cond_7

    iput v8, p0, Lcom/lua/b/b/a/a/w;->n:I

    goto :goto_1

    :cond_8
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, v2

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/lua/b/b/a/a/w;->p:F

    add-float v1, v0, p2

    float-to-int v0, v1

    sget v2, Lcom/lua/b/b/a/a/w;->m:I

    div-int/2addr v0, v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/lua/b/b/a/a/w;->p:F

    move v1, v0

    :goto_2
    if-lez v1, :cond_a

    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2}, Lcom/lua/b/b/a/a/q;->moveCaretDown()V

    iget v2, p0, Lcom/lua/b/b/a/a/w;->n:I

    if-nez v2, :cond_9

    iput v5, p0, Lcom/lua/b/b/a/a/w;->n:I

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_a
    :goto_3
    if-gez v0, :cond_c

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->moveCaretUp()V

    iget v1, p0, Lcom/lua/b/b/a/a/w;->n:I

    if-nez v1, :cond_b

    iput v5, p0, Lcom/lua/b/b/a/a/w;->n:I

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    return-void
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/b/b/a/a/w;->o:F

    iput v0, p0, Lcom/lua/b/b/a/a/w;->p:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/b/b/a/a/w;->n:I

    invoke-super {p0, p1}, Lcom/lua/b/b/a/a/v;->b(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->isSelectText()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->getCaretPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lua/b/b/a/a/q;->setSelectionRange(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/b/b/a/a/w;->n:I

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/lua/b/b/a/a/w;->m:I

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/a/w;->b(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->isSelectText()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->getCaretPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lua/b/b/a/a/q;->setSelectionRange(II)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    iget v1, p0, Lcom/lua/b/b/a/a/w;->n:I

    if-ne v1, v3, :cond_2

    move p4, v0

    :cond_0
    :goto_0
    neg-float v0, p3

    neg-float v1, p4

    invoke-direct {p0, v0, v1}, Lcom/lua/b/b/a/a/w;->b(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/a/w;->b(Landroid/view/MotionEvent;)Z

    :cond_1
    return v3

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move p3, v0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
