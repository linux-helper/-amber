.class public Lcom/androlua/LoadingDrawable;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private final a:Landroid/util/DisplayMetrics;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Paint;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput v0, p0, Lcom/androlua/LoadingDrawable;->b:I

    iput v0, p0, Lcom/androlua/LoadingDrawable;->c:I

    iput v0, p0, Lcom/androlua/LoadingDrawable;->d:I

    iput v0, p0, Lcom/androlua/LoadingDrawable;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/androlua/LoadingDrawable;->f:I

    iput v2, p0, Lcom/androlua/LoadingDrawable;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LoadingDrawable;->a:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {p0, v1}, Lcom/androlua/LoadingDrawable;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    const v1, -0x77777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(F)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/androlua/LoadingDrawable;->a:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v3, 0x6

    const/4 v10, -0x6

    const/high16 v9, 0x3f400000    # 0.75f

    const v8, 0x3f333333    # 0.7f

    const/16 v7, 0x168

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v0, v6, Landroid/graphics/Rect;->right:I

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    float-to-int v0, v0

    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v0, v0

    const v1, 0x3e19999a    # 0.15f

    mul-float v2, v1, v0

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/androlua/LoadingDrawable;->b:I

    if-lt v0, v7, :cond_4

    iget v0, p0, Lcom/androlua/LoadingDrawable;->i:I

    if-nez v0, :cond_4

    const/16 v0, 0x8

    iput v0, p0, Lcom/androlua/LoadingDrawable;->g:I

    iput v10, p0, Lcom/androlua/LoadingDrawable;->f:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/androlua/LoadingDrawable;->b:I

    if-lt v0, v7, :cond_1

    iget v0, p0, Lcom/androlua/LoadingDrawable;->i:I

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/androlua/LoadingDrawable;->i:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/androlua/LoadingDrawable;->b:I

    iget v2, p0, Lcom/androlua/LoadingDrawable;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/androlua/LoadingDrawable;->b:I

    iget v0, p0, Lcom/androlua/LoadingDrawable;->c:I

    iget v2, p0, Lcom/androlua/LoadingDrawable;->g:I

    :goto_1
    add-int/2addr v0, v2

    iput v0, p0, Lcom/androlua/LoadingDrawable;->c:I

    iget v0, p0, Lcom/androlua/LoadingDrawable;->c:I

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/androlua/LoadingDrawable;->c:I

    :cond_2
    iget v0, p0, Lcom/androlua/LoadingDrawable;->c:I

    int-to-float v2, v0

    iget v0, p0, Lcom/androlua/LoadingDrawable;->b:I

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/androlua/LoadingDrawable;->b:I

    if-lt v0, v7, :cond_3

    iput v10, p0, Lcom/androlua/LoadingDrawable;->f:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/androlua/LoadingDrawable;->g:I

    iget v0, p0, Lcom/androlua/LoadingDrawable;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, v6, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v1, v6, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v1, v2

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, v6, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v1, v9

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_4
    iget v0, p0, Lcom/androlua/LoadingDrawable;->b:I

    if-gt v0, v3, :cond_0

    iput v3, p0, Lcom/androlua/LoadingDrawable;->f:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/androlua/LoadingDrawable;->g:I

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/androlua/LoadingDrawable;->b:I

    iget v2, p0, Lcom/androlua/LoadingDrawable;->f:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/androlua/LoadingDrawable;->b:I

    iget v0, p0, Lcom/androlua/LoadingDrawable;->c:I

    iget v2, p0, Lcom/androlua/LoadingDrawable;->g:I

    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_6
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget v0, v6, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    const/high16 v2, 0x3e800000    # 0.25f

    int-to-float v3, v4

    mul-float/2addr v2, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    int-to-float v0, v4

    const v4, 0x3f266666    # 0.65f

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v6, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v4

    mul-float/2addr v2, v8

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    int-to-float v0, v4

    mul-float v4, v0, v9

    iget-object v5, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/androlua/LoadingDrawable;->i:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
