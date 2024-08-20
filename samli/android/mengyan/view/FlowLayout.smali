.class public Landroid/mengyan/view/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# static fields
.field private static final DEFAULT_CHILD_SPACING:I = 0x0

.field private static final DEFAULT_CHILD_SPACING_FOR_LAST_ROW:I = -0x10002

.field private static final DEFAULT_FLOW:Z = true

.field private static final DEFAULT_MAX_ROWS:I = 0x7fffffff

.field private static final DEFAULT_ROW_SPACING:F = 0.0f

.field private static final DEFAULT_RTL:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final ROW_VERTICAL_GRAVITY_AUTO:I = -0x10000

.field public static final SPACING_ALIGN:I = -0x10001

.field public static final SPACING_AUTO:I = -0x10000

.field private static final SPACING_UNDEFINED:I = -0x10002

.field private static final UNSPECIFIED_GRAVITY:I = -0x1


# instance fields
.field private mAdjustedRowSpacing:F

.field private mChildNumForRow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChildSpacing:I

.field private mChildSpacingForLastRow:I

.field private mExactMeasuredHeight:I

.field private mFlow:Z

.field private mGravity:I

.field private mHeightForRow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalSpacingForRow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxRows:I

.field private mMinChildSpacing:I

.field private mRowSpacing:F

.field private mRowVerticalGravity:I

.field private mRtl:Z

.field private mWidthForRow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Landroid/mengyan/view/FlowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mengyan/view/FlowLayout;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/mengyan/view/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x10000

    const v3, -0x10002

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mengyan/view/FlowLayout;->mFlow:Z

    .line 47
    iput v2, p0, Landroid/mengyan/view/FlowLayout;->mChildSpacing:I

    .line 48
    iput v2, p0, Landroid/mengyan/view/FlowLayout;->mMinChildSpacing:I

    .line 49
    iput v3, p0, Landroid/mengyan/view/FlowLayout;->mChildSpacingForLastRow:I

    .line 50
    iput v1, p0, Landroid/mengyan/view/FlowLayout;->mRowSpacing:F

    .line 51
    iput v1, p0, Landroid/mengyan/view/FlowLayout;->mAdjustedRowSpacing:F

    .line 52
    iput-boolean v2, p0, Landroid/mengyan/view/FlowLayout;->mRtl:Z

    .line 53
    const v0, 0x7fffffff

    iput v0, p0, Landroid/mengyan/view/FlowLayout;->mMaxRows:I

    .line 54
    iput v5, p0, Landroid/mengyan/view/FlowLayout;->mGravity:I

    .line 55
    iput v4, p0, Landroid/mengyan/view/FlowLayout;->mRowVerticalGravity:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/mengyan/view/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/mengyan/view/FlowLayout;->mHeightForRow:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/mengyan/view/FlowLayout;->mWidthForRow:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/mengyan/view/FlowLayout;->mChildNumForRow:Ljava/util/List;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroid/mengyan/view/R$styleable;->FlowLayout:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 73
    :try_start_0
    sget v0, Landroid/mengyan/view/R$styleable;->FlowLayout_flFlow:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/mengyan/view/FlowLayout;->mFlow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    sget v0, Landroid/mengyan/view/R$styleable;->FlowLayout_flChildSpacing:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/mengyan/view/FlowLayout;->mChildSpacing:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :goto_0
    :try_start_2
    sget v0, Landroid/mengyan/view/R$styleable;->FlowLayout_flMinChildSpacing:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/mengyan/view/FlowLayout;->mMinChildSpacing:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :goto_1
    :try_start_3
    sget v0, Landroid/mengyan/view/R$styleable;->FlowLayout_flChildSpacingForLastRow:I

    const v2, -0x10002

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/mengyan/view/FlowLayout;->mChildSpacingForLastRow:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    :goto_2
    :try_start_4
    sget v0, Landroid/mengyan/view/R$styleable;->FlowLayout_flRowSpacing:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/mengyan/view/FlowLayout;->mRowSpacing:F
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    :goto_3
    :try_start_5
    sget v0, Landroid/mengyan/view/R$styleable;->FlowLayout_flMaxRows:I

    const v2, 0x7fffffff

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/mengyan/view/FlowLayout;->mMaxRows:I

    .line 95
    sget v0, Landroid/mengyan/view/R$styleable;->FlowLayout_flRtl:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/mengyan/view/FlowLayout;->mRtl:Z

    .line 96
    sget v0, Landroid/mengyan/view/R$styleable;->FlowLayout_android_gravity:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/mengyan/view/FlowLayout;->mGravity:I

    .line 97
    sget v0, Landroid/mengyan/view/R$styleable;->FlowLayout_flRowVerticalGravity:I

    const/high16 v2, -0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/mengyan/view/FlowLayout;->mRowVerticalGravity:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 99
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :try_start_6
    sget v0, Landroid/mengyan/view/R$styleable;->FlowLayout_flChildSpacing:I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/mengyan/view/FlowLayout;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/mengyan/view/FlowLayout;->mChildSpacing:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    throw v0

    .line 81
    :catch_1
    move-exception v0

    .line 82
    :try_start_7
    sget v0, Landroid/mengyan/view/R$styleable;->FlowLayout_flMinChildSpacing:I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/mengyan/view/FlowLayout;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/mengyan/view/FlowLayout;->mMinChildSpacing:I

    goto :goto_1

    .line 86
    :catch_2
    move-exception v0

    .line 87
    sget v0, Landroid/mengyan/view/R$styleable;->FlowLayout_flChildSpacingForLastRow:I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/mengyan/view/FlowLayout;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/mengyan/view/FlowLayout;->mChildSpacingForLastRow:I

    goto :goto_2

    .line 91
    :catch_3
    move-exception v0

    .line 92
    sget v0, Landroid/mengyan/view/R$styleable;->FlowLayout_flRowSpacing:I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/mengyan/view/FlowLayout;->dpToPx(F)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Landroid/mengyan/view/FlowLayout;->mRowSpacing:F
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method private dpToPx(F)F
    .locals 2

    .prologue
    .line 499
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/mengyan/view/FlowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private getHorizontalGravityOffsetForRow(IIII)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 319
    iget v0, p0, Landroid/mengyan/view/FlowLayout;->mChildSpacing:I

    const/high16 v2, -0x10000

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Landroid/mengyan/view/FlowLayout;->mWidthForRow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_0

    iget-object v0, p0, Landroid/mengyan/view/FlowLayout;->mChildNumForRow:Ljava/util/List;

    .line 320
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_0

    iget-object v0, p0, Landroid/mengyan/view/FlowLayout;->mChildNumForRow:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    .line 335
    :goto_0
    return v0

    .line 325
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    goto :goto_0

    .line 327
    :sswitch_0
    sub-int v1, p2, p3

    iget-object v0, p0, Landroid/mengyan/view/FlowLayout;->mWidthForRow:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 330
    :sswitch_1
    sub-int v1, p2, p3

    iget-object v0, p0, Landroid/mengyan/view/FlowLayout;->mWidthForRow:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    .line 331
    goto :goto_0

    .line 325
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSpacingForRow(IIII)F
    .locals 2

    .prologue
    .line 486
    const/high16 v0, -0x10000

    if-ne p1, v0, :cond_1

    .line 487
    const/4 v0, 0x1

    if-le p4, v0, :cond_0

    .line 488
    sub-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 495
    :goto_0
    return v0

    .line 490
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 493
    :cond_1
    int-to-float v0, p1

    goto :goto_0
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 345
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/mengyan/view/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 340
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getChildSpacing()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Landroid/mengyan/view/FlowLayout;->mChildSpacing:I

    return v0
.end method

.method public getChildSpacingForLastRow()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Landroid/mengyan/view/FlowLayout;->mChildSpacingForLastRow:I

    return v0
.end method

.method public getMaxRows()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Landroid/mengyan/view/FlowLayout;->mMaxRows:I

    return v0
.end method

.method public getMinChildSpacing()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Landroid/mengyan/view/FlowLayout;->mMinChildSpacing:I

    return v0
.end method

.method public getRowSpacing()F
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Landroid/mengyan/view/FlowLayout;->mRowSpacing:F

    return v0
.end method

.method public getRowsCount()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Landroid/mengyan/view/FlowLayout;->mChildNumForRow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isFlow()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/mengyan/view/FlowLayout;->mFlow:Z

    return v0
.end method

.method public isRtl()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Landroid/mengyan/view/FlowLayout;->mRtl:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 27

    .prologue
    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getPaddingRight()I

    move-result v13

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getPaddingBottom()I

    move-result v6

    .line 241
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/mengyan/view/FlowLayout;->mRtl:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v13

    .line 244
    :goto_0
    move-object/from16 v0, p0

    iget v7, v0, Landroid/mengyan/view/FlowLayout;->mGravity:I

    .line 245
    move-object/from16 v0, p0

    iget v8, v0, Landroid/mengyan/view/FlowLayout;->mGravity:I

    and-int/lit8 v14, v8, 0x7

    .line 247
    and-int/lit8 v7, v7, 0x70

    sparse-switch v7, :sswitch_data_0

    .line 262
    :goto_1
    add-int v15, v4, v13

    sub-int v16, p4, p2

    .line 263
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v1, v15, v6}, Landroid/mengyan/view/FlowLayout;->getHorizontalGravityOffsetForRow(IIII)I

    move-result v6

    add-int/2addr v6, v3

    .line 265
    move-object/from16 v0, p0

    iget v3, v0, Landroid/mengyan/view/FlowLayout;->mRowVerticalGravity:I

    and-int/lit8 v17, v3, 0x70

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mChildNumForRow:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v18

    const/4 v7, 0x0

    .line 268
    const/4 v3, 0x0

    move v11, v5

    move v12, v3

    move v5, v6

    move v6, v7

    :goto_2
    move/from16 v0, v18

    if-ge v12, v0, :cond_8

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mChildNumForRow:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 270
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mHeightForRow:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .line 272
    const/4 v3, 0x0

    move v8, v5

    move v9, v3

    move v5, v6

    :goto_3
    move/from16 v0, v19

    if-ge v9, v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getChildCount()I

    move-result v3

    if-ge v5, v3, :cond_4

    .line 273
    add-int/lit8 v10, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/mengyan/view/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 274
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_1

    move v5, v10

    .line 275
    goto :goto_3

    :cond_0
    move v3, v4

    .line 241
    goto :goto_0

    .line 249
    :sswitch_0
    sub-int v7, p5, p3

    sub-int/2addr v7, v5

    sub-int v6, v7, v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/mengyan/view/FlowLayout;->mExactMeasuredHeight:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 250
    add-int/2addr v5, v6

    .line 251
    goto :goto_1

    .line 254
    :sswitch_1
    move-object/from16 v0, p0

    iget v7, v0, Landroid/mengyan/view/FlowLayout;->mExactMeasuredHeight:I

    .line 255
    sub-int v8, p5, p3

    sub-int/2addr v8, v5

    sub-int v6, v8, v6

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 256
    goto/16 :goto_1

    .line 277
    :cond_1
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 281
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 282
    instance-of v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_6

    .line 283
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 284
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 285
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 286
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 287
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v26, v5

    move v5, v6

    move v6, v7

    move v7, v3

    move/from16 v3, v26

    .line 290
    :goto_4
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 291
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    .line 292
    const/16 v25, 0x50

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 294
    add-int v3, v11, v20

    sub-int/2addr v3, v7

    sub-int v3, v3, v24

    .line 298
    :goto_5
    add-int v7, v3, v24

    .line 299
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/mengyan/view/FlowLayout;->mRtl:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 300
    sub-int v24, v8, v5

    sub-int v24, v24, v23

    sub-int v25, v8, v5

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v2, v7}, Landroid/view/View;->layout(IIII)V

    .line 303
    int-to-float v3, v8

    move/from16 v0, v23

    int-to-float v7, v0

    add-float v7, v7, v21

    int-to-float v6, v6

    add-float/2addr v6, v7

    int-to-float v5, v5

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    :goto_6
    add-int/lit8 v5, v9, 0x1

    move v8, v3

    move v9, v5

    move v5, v10

    .line 310
    goto/16 :goto_3

    .line 295
    :cond_2
    const/16 v25, 0x10

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 296
    sub-int v25, v20, v3

    sub-int v7, v25, v7

    sub-int v7, v7, v24

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v11

    add-int/2addr v3, v7

    goto :goto_5

    .line 305
    :cond_3
    add-int v24, v8, v6

    add-int v25, v8, v6

    add-int v25, v25, v23

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v2, v7}, Landroid/view/View;->layout(IIII)V

    .line 308
    int-to-float v3, v8

    move/from16 v0, v23

    int-to-float v7, v0

    add-float v7, v7, v21

    int-to-float v6, v6

    add-float/2addr v6, v7

    int-to-float v5, v5

    add-float/2addr v5, v6

    add-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_6

    .line 311
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/mengyan/view/FlowLayout;->mRtl:Z

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v13

    .line 312
    :goto_7
    add-int/lit8 v6, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v1, v15, v6}, Landroid/mengyan/view/FlowLayout;->getHorizontalGravityOffsetForRow(IIII)I

    move-result v6

    add-int v7, v3, v6

    .line 314
    int-to-float v3, v11

    move/from16 v0, v20

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v8, v0, Landroid/mengyan/view/FlowLayout;->mAdjustedRowSpacing:F

    add-float/2addr v6, v8

    add-float/2addr v3, v6

    float-to-int v3, v3

    .line 268
    add-int/lit8 v6, v12, 0x1

    move v11, v3

    move v12, v6

    move v6, v5

    move v5, v7

    goto/16 :goto_2

    :cond_5
    move v3, v4

    .line 311
    goto :goto_7

    .line 316
    :cond_6
    const/4 v3, 0x0

    const/4 v7, 0x0

    move/from16 v26, v5

    move v5, v6

    move v6, v3

    move/from16 v3, v26

    goto/16 :goto_4

    :cond_7
    add-int/2addr v3, v11

    goto/16 :goto_5

    :cond_8
    return-void

    .line 247
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 25

    .prologue
    .line 105
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 107
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 108
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    .line 109
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 110
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mHeightForRow:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mWidthForRow:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mChildNumForRow:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 117
    const/4 v8, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getChildCount()I

    move-result v23

    .line 118
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, v17, v3

    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getPaddingRight()I

    move-result v4

    sub-int v24, v3, v4

    .line 120
    const/4 v15, 0x0

    .line 121
    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/mengyan/view/FlowLayout;->mFlow:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v10, v3

    .line 122
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/mengyan/view/FlowLayout;->mChildSpacing:I

    const/high16 v4, -0x10000

    if-ne v3, v4, :cond_1

    if-nez v21, :cond_1

    const/4 v3, 0x0

    move/from16 v20, v3

    .line 124
    :goto_1
    const/high16 v3, -0x10000

    move/from16 v0, v20

    if-ne v0, v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/mengyan/view/FlowLayout;->mMinChildSpacing:I

    int-to-float v3, v3

    move v11, v3

    .line 126
    :goto_2
    const/4 v3, 0x0

    move/from16 v19, v3

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 127
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/mengyan/view/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 128
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_3

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    .line 126
    :goto_4
    add-int/lit8 v9, v19, 0x1

    move/from16 v19, v9

    move v15, v6

    move v14, v5

    move v13, v4

    move v12, v3

    move/from16 v16, v7

    goto :goto_3

    .line 121
    :cond_0
    const/4 v3, 0x0

    move v10, v3

    goto :goto_0

    .line 122
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/mengyan/view/FlowLayout;->mChildSpacing:I

    move/from16 v20, v3

    goto :goto_1

    .line 124
    :cond_2
    move/from16 v0, v20

    int-to-float v3, v0

    move v11, v3

    goto :goto_2

    .line 132
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 133
    const/4 v3, 0x0

    .line 134
    instance-of v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_5

    .line 135
    const/4 v6, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/mengyan/view/FlowLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    move-object v3, v9

    .line 136
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 137
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 138
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v3

    add-int v3, v6, v7

    .line 143
    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v3

    .line 144
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v4, v3, v5

    .line 145
    if-eqz v10, :cond_6

    add-int v3, v12, v6

    move/from16 v0, v24

    if-le v3, v0, :cond_6

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    .line 148
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v15, v14}, Landroid/mengyan/view/FlowLayout;->getSpacingForRow(IIII)F

    move-result v5

    .line 147
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mChildNumForRow:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mHeightForRow:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mWidthForRow:Ljava/util/List;

    float-to-int v5, v11

    sub-int v5, v12, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/mengyan/view/FlowLayout;->mMaxRows:I

    if-gt v3, v5, :cond_4

    .line 153
    add-int/2addr v8, v13

    .line 155
    :cond_4
    move/from16 v0, v16

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 158
    const/4 v5, 0x1

    .line 159
    float-to-int v3, v11

    add-int/2addr v3, v6

    .line 161
    goto/16 :goto_4

    .line 140
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v4, v1, v2}, Landroid/mengyan/view/FlowLayout;->measureChild(Landroid/view/View;II)V

    const/4 v5, 0x0

    goto :goto_5

    .line 163
    :cond_6
    add-int/lit8 v5, v14, 0x1

    .line 164
    int-to-float v3, v12

    int-to-float v7, v6

    add-float/2addr v7, v11

    add-float/2addr v3, v7

    float-to-int v3, v3

    .line 165
    add-int/2addr v6, v15

    .line 166
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v7, v16

    goto/16 :goto_4

    .line 171
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/mengyan/view/FlowLayout;->mChildSpacingForLastRow:I

    const v4, -0x10001

    if-ne v3, v4, :cond_c

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_b

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mengyan/view/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mengyan/view/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    .line 176
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 175
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mChildNumForRow:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mHeightForRow:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mWidthForRow:Ljava/util/List;

    float-to-int v4, v11

    sub-int v4, v12, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/mengyan/view/FlowLayout;->mMaxRows:I

    if-gt v3, v4, :cond_8

    .line 195
    add-int/2addr v8, v13

    .line 197
    :cond_8
    move/from16 v0, v16

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 199
    const/high16 v4, -0x10000

    move/from16 v0, v20

    if-ne v0, v4, :cond_e

    move/from16 v3, v17

    .line 207
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v8

    .line 208
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mengyan/view/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/mengyan/view/FlowLayout;->mMaxRows:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 209
    move-object/from16 v0, p0

    iget v5, v0, Landroid/mengyan/view/FlowLayout;->mRowSpacing:F

    const/high16 v7, -0x38800000    # -65536.0f

    cmpl-float v5, v5, v7

    if-nez v5, :cond_10

    if-nez v22, :cond_10

    const/4 v5, 0x0

    .line 211
    :goto_8
    const/high16 v7, -0x38800000    # -65536.0f

    cmpl-float v7, v5, v7

    if-nez v7, :cond_12

    .line 212
    const/4 v5, 0x1

    if-le v6, v5, :cond_11

    .line 213
    sub-int v4, v18, v4

    add-int/lit8 v5, v6, -0x1

    div-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/mengyan/view/FlowLayout;->mAdjustedRowSpacing:F

    :goto_9
    move/from16 v4, v18

    .line 228
    :cond_9
    :goto_a
    move-object/from16 v0, p0

    iput v4, v0, Landroid/mengyan/view/FlowLayout;->mExactMeasuredHeight:I

    .line 230
    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-ne v0, v5, :cond_14

    .line 231
    :goto_b
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-ne v0, v3, :cond_a

    move/from16 v4, v18

    .line 233
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/mengyan/view/FlowLayout;->setMeasuredDimension(II)V

    .line 234
    return-void

    .line 178
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    .line 179
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v15, v14}, Landroid/mengyan/view/FlowLayout;->getSpacingForRow(IIII)F

    move-result v4

    .line 178
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 181
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/mengyan/view/FlowLayout;->mChildSpacingForLastRow:I

    const v4, -0x10002

    if-eq v3, v4, :cond_d

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/mengyan/view/FlowLayout;->mChildSpacingForLastRow:I

    .line 184
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v4, v1, v15, v14}, Landroid/mengyan/view/FlowLayout;->getSpacingForRow(IIII)F

    move-result v4

    .line 183
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 187
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mengyan/view/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    .line 188
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v15, v14}, Landroid/mengyan/view/FlowLayout;->getSpacingForRow(IIII)F

    move-result v4

    .line 187
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 201
    :cond_e
    if-nez v21, :cond_f

    .line 202
    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    goto/16 :goto_7

    .line 204
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/mengyan/view/FlowLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto/16 :goto_7

    .line 209
    :cond_10
    move-object/from16 v0, p0

    iget v5, v0, Landroid/mengyan/view/FlowLayout;->mRowSpacing:F

    goto/16 :goto_8

    .line 215
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/mengyan/view/FlowLayout;->mAdjustedRowSpacing:F

    goto/16 :goto_9

    .line 219
    :cond_12
    move-object/from16 v0, p0

    iput v5, v0, Landroid/mengyan/view/FlowLayout;->mAdjustedRowSpacing:F

    .line 220
    const/4 v5, 0x1

    if-le v6, v5, :cond_9

    .line 221
    if-nez v22, :cond_13

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/mengyan/view/FlowLayout;->mAdjustedRowSpacing:F

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    goto/16 :goto_a

    :cond_13
    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/mengyan/view/FlowLayout;->mAdjustedRowSpacing:F

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 223
    move/from16 v0, v18

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_a

    :cond_14
    move/from16 v17, v3

    goto/16 :goto_b
.end method

.method public setChildSpacing(I)V
    .locals 0

    .prologue
    .line 383
    iput p1, p0, Landroid/mengyan/view/FlowLayout;->mChildSpacing:I

    .line 384
    invoke-virtual {p0}, Landroid/mengyan/view/FlowLayout;->requestLayout()V

    .line 385
    return-void
.end method

.method public setChildSpacingForLastRow(I)V
    .locals 0

    .prologue
    .line 404
    iput p1, p0, Landroid/mengyan/view/FlowLayout;->mChildSpacingForLastRow:I

    .line 405
    invoke-virtual {p0}, Landroid/mengyan/view/FlowLayout;->requestLayout()V

    .line 406
    return-void
.end method

.method public setFlow(Z)V
    .locals 0

    .prologue
    .line 363
    iput-boolean p1, p0, Landroid/mengyan/view/FlowLayout;->mFlow:Z

    .line 364
    invoke-virtual {p0}, Landroid/mengyan/view/FlowLayout;->requestLayout()V

    .line 365
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Landroid/mengyan/view/FlowLayout;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 450
    iput p1, p0, Landroid/mengyan/view/FlowLayout;->mGravity:I

    .line 451
    invoke-virtual {p0}, Landroid/mengyan/view/FlowLayout;->requestLayout()V

    .line 453
    :cond_0
    return-void
.end method

.method public setMaxRows(I)V
    .locals 0

    .prologue
    .line 444
    iput p1, p0, Landroid/mengyan/view/FlowLayout;->mMaxRows:I

    .line 445
    invoke-virtual {p0}, Landroid/mengyan/view/FlowLayout;->requestLayout()V

    .line 446
    return-void
.end method

.method public setMinChildSpacing(I)V
    .locals 0

    .prologue
    .line 476
    iput p1, p0, Landroid/mengyan/view/FlowLayout;->mMinChildSpacing:I

    .line 477
    invoke-virtual {p0}, Landroid/mengyan/view/FlowLayout;->requestLayout()V

    .line 478
    return-void
.end method

.method public setRowSpacing(F)V
    .locals 0

    .prologue
    .line 425
    iput p1, p0, Landroid/mengyan/view/FlowLayout;->mRowSpacing:F

    .line 426
    invoke-virtual {p0}, Landroid/mengyan/view/FlowLayout;->requestLayout()V

    .line 427
    return-void
.end method

.method public setRowVerticalGravity(I)V
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Landroid/mengyan/view/FlowLayout;->mRowVerticalGravity:I

    if-eq v0, p1, :cond_0

    .line 457
    iput p1, p0, Landroid/mengyan/view/FlowLayout;->mRowVerticalGravity:I

    .line 458
    invoke-virtual {p0}, Landroid/mengyan/view/FlowLayout;->requestLayout()V

    .line 460
    :cond_0
    return-void
.end method

.method public setRtl(Z)V
    .locals 0

    .prologue
    .line 467
    iput-boolean p1, p0, Landroid/mengyan/view/FlowLayout;->mRtl:Z

    .line 468
    invoke-virtual {p0}, Landroid/mengyan/view/FlowLayout;->requestLayout()V

    .line 469
    return-void
.end method
