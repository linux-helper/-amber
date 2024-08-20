.class public Lcom/lua/b/b/a/a/v;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# static fields
.field private static final a:Landroid/graphics/Rect;

.field protected static b:I

.field protected static c:I


# instance fields
.field protected d:Lcom/lua/b/b/a/a/q;

.field protected e:Z

.field private f:Landroid/view/GestureDetector;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/lua/b/b/a/a/v;->a:Landroid/graphics/Rect;

    const/16 v0, 0xa

    sput v0, Lcom/lua/b/b/a/a/v;->b:I

    const/16 v0, 0xc

    sput v0, Lcom/lua/b/b/a/a/v;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/lua/b/b/a/a/q;)V
    .locals 2

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/v;->e:Z

    iput-object p1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/v;->f:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->f:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method private a(FF)V
    .locals 5

    const/4 v1, 0x0

    float-to-int v0, p1

    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int/2addr v2, v0

    float-to-int v0, p2

    iget-object v3, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->getMaxScrollX()I

    move-result v0

    iget-object v4, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v2, v0, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2}, Lcom/lua/b/b/a/a/q;->getMaxScrollY()I

    move-result v2

    iget-object v4, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-le v3, v2, :cond_2

    move v1, v2

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2, v0, v1}, Lcom/lua/b/b/a/a/q;->smoothScrollTo(II)V

    return-void

    :cond_1
    if-gez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    if-ltz v3, :cond_0

    move v1, v3

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2}, Lcom/lua/b/b/a/a/q;->isSelectText()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/lua/b/b/a/a/v;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2, v1}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Lcom/lua/b/b/a/a/v;->b:I

    if-ge v2, v4, :cond_3

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q;->a(I)Z

    move-result v0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->e()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/v;->a(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/lua/b/b/a/a/v;->b(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lua/b/b/a/a/q;->a(II)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1, v0}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v4}, Lcom/lua/b/b/a/a/q;->getContentWidth()I

    move-result v4

    sget v5, Lcom/lua/b/b/a/a/v;->b:I

    sub-int/2addr v4, v5

    if-lt v2, v4, :cond_4

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    if-ge v3, v5, :cond_5

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1, v0}, Lcom/lua/b/b/a/a/q;->a(I)Z

    move-result v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2}, Lcom/lua/b/b/a/a/q;->getContentHeight()I

    move-result v2

    sget v4, Lcom/lua/b/b/a/a/v;->b:I

    sub-int/2addr v2, v4

    if-lt v3, v2, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    goto :goto_0
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v3, 0x2

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/lua/b/b/a/a/v;->g:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/lua/b/b/a/a/v;->g:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    iput v2, p0, Lcom/lua/b/b/a/a/v;->h:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, p0, Lcom/lua/b/b/a/a/v;->i:F

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/lua/b/b/a/a/v;->j:F

    :cond_0
    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/v;->e(Landroid/view/MotionEvent;)F

    move-result v1

    iget v2, p0, Lcom/lua/b/b/a/a/v;->g:F

    cmpl-float v3, v2, v5

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    iget v4, p0, Lcom/lua/b/b/a/a/v;->j:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Lcom/lua/b/b/a/a/q;->setTextSize(I)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iput v5, p0, Lcom/lua/b/b/a/a/v;->g:F

    move v0, v1

    goto :goto_0
.end method

.method private e(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method protected final a(I)I
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/lua/b/b/a/a/v;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/lua/b/b/a/b/c;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(III)Z
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0, p3}, Lcom/lua/b/b/a/a/q;->b(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/lua/b/b/a/a/v;->c:I

    sub-int/2addr v1, v2

    if-lt p2, v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/v;->d(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->f:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/a/v;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected final b(I)I
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->e()V

    iput-boolean v1, p0, Lcom/lua/b/b/a/a/v;->e:Z

    iput-boolean v1, p0, Lcom/lua/b/b/a/a/v;->l:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/b/b/a/a/v;->g:F

    iput v1, p0, Lcom/lua/b/b/a/a/v;->k:I

    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lua/b/b/a/a/v;->e:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/v;->a(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/v;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2, v0, v1}, Lcom/lua/b/b/a/a/q;->a(II)I

    move-result v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->isSelectText()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1, v0}, Lcom/lua/b/b/a/a/q;->inSelectionRange(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->createDocumentProvider()Lcom/lua/b/b/a/b/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lua/b/b/a/b/g;->a(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/lua/b/b/a/b/g;->c(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/lua/b/b/a/b/g;->c(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v1, v0}, Lcom/lua/b/b/a/a/q;->setSelectionRange(II)V

    :cond_0
    return v4

    :cond_1
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1, v0}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->createDocumentProvider()Lcom/lua/b/b/a/b/g;

    move-result-object v2

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {v2, v1}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    if-eq v1, v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_2
    if-ltz v0, :cond_4

    invoke-virtual {v2, v0}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2, v4}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/v;->a(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/v;->b(I)I

    move-result v4

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->getCaretPosition()I

    move-result v0

    invoke-virtual {p0, v3, v4, v0}, Lcom/lua/b/b/a/a/v;->a(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/v;->e:Z

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->getLeftOffset()I

    move-result v0

    if-ge v3, v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/lua/b/b/a/a/v;->l:Z

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->isFlingScrolling()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->stopFlingScrolling()V

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/lua/b/b/a/a/v;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->isSelectText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0, v3, v4, v0}, Lcom/lua/b/b/a/a/v;->a(III)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->focusSelectionStart()V

    :goto_2
    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    iput-boolean v1, p0, Lcom/lua/b/b/a/a/v;->e:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p0, v3, v4, v0}, Lcom/lua/b/b/a/a/v;->a(III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->focusSelectionEnd()V

    goto :goto_2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/lua/b/b/a/a/v;->e:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/lua/b/b/a/a/v;->k:I

    if-ne v1, v3, :cond_2

    move p4, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    neg-float v1, p3

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    neg-float v2, p4

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/lua/b/b/a/a/q;->c(II)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/a/v;->b(Landroid/view/MotionEvent;)Z

    return v3

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move p3, v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/a/v;->onDoubleTap(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/lua/b/b/a/a/v;->e:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/lua/b/b/a/a/v;->c(Landroid/view/MotionEvent;)V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/a/v;->b(Landroid/view/MotionEvent;)Z

    :cond_1
    return v3

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/lua/b/b/a/a/v;->k:I

    if-nez v1, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    iput v3, p0, Lcom/lua/b/b/a/a/v;->k:I

    :cond_3
    :goto_1
    iget v1, p0, Lcom/lua/b/b/a/a/v;->k:I

    if-ne v1, v3, :cond_7

    move p4, v0

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/lua/b/b/a/a/v;->l:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->getMaxScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p4, v0

    :cond_5
    invoke-direct {p0, p3, p4}, Lcom/lua/b/b/a/a/v;->a(FF)V

    goto :goto_0

    :cond_6
    iput v4, p0, Lcom/lua/b/b/a/a/v;->k:I

    goto :goto_1

    :cond_7
    if-ne v1, v4, :cond_4

    move p3, v0

    goto :goto_2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0, v5}, Lcom/lua/b/b/a/a/q;->a(Z)V

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/v;->a(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/v;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v2, v0, v1}, Lcom/lua/b/b/a/a/q;->a(II)I

    move-result v2

    iget-object v3, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v3}, Lcom/lua/b/b/a/a/q;->isSelectText()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v3, v0, v1}, Lcom/lua/b/b/a/a/q;->b(II)I

    move-result v3

    iget-object v4, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v4, v3}, Lcom/lua/b/b/a/a/q;->inSelectionRange(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v4}, Lcom/lua/b/b/a/a/q;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/lua/b/b/a/a/v;->a(III)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v4}, Lcom/lua/b/b/a/a/q;->getSelectionEnd()I

    move-result v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/lua/b/b/a/a/v;->a(III)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0, v5}, Lcom/lua/b/b/a/a/q;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    if-ltz v3, :cond_1

    :goto_2
    iget-object v0, p0, Lcom/lua/b/b/a/a/v;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0, v2}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    goto :goto_1

    :cond_3
    if-ltz v2, :cond_1

    goto :goto_2
.end method
