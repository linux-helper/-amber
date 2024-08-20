.class public Lcom/nirenr/ColorFinder;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:[[I

.field private d:[[F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/nirenr/ColorFinder;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nirenr/ColorFinder;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(II[[IIII)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/nirenr/ColorFinder;->b:I

    sub-int v2, v1, p2

    sub-int/2addr v2, p4

    if-ge v0, v2, :cond_3

    aget-object v1, p3, p1

    add-int v2, p2, v0

    aget v1, v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    add-int v1, p1, p6

    aget-object v3, p3, v1

    aget v3, v3, v2

    if-nez v3, :cond_0

    add-int/2addr v1, p5

    aget-object v1, p3, v1

    aget v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    if-le v0, p4, :cond_2

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    sub-int v0, v1, p2

    sub-int/2addr v0, p4

    goto :goto_1
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nirenr/ColorFinder;->a:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nirenr/ColorFinder;->b:I

    iget v3, p0, Lcom/nirenr/ColorFinder;->a:I

    iget v7, p0, Lcom/nirenr/ColorFinder;->b:I

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    iget v3, p0, Lcom/nirenr/ColorFinder;->b:I

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/nirenr/ColorFinder;->c:[[I

    move v0, v2

    :goto_0
    iget v3, p0, Lcom/nirenr/ColorFinder;->b:I

    if-ge v0, v3, :cond_1

    move v3, v2

    :goto_1
    iget v4, p0, Lcom/nirenr/ColorFinder;->a:I

    if-ge v3, v4, :cond_0

    iget-object v5, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v5, v5, v3

    mul-int/2addr v4, v0

    add-int/2addr v4, v3

    aget v4, v1, v4

    aput v4, v5, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public find(I)Lcom/nirenr/Point;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, -0x1

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/nirenr/ColorFinder;->b:I

    if-ge v0, v2, :cond_2

    move v2, v1

    :goto_1
    iget v3, p0, Lcom/nirenr/ColorFinder;->a:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v3, v3, v2

    aget v3, v3, v0

    if-ne v3, p1, :cond_0

    new-instance v1, Lcom/nirenr/Point;

    invoke-direct {v1, v2, v0}, Lcom/nirenr/Point;-><init>(II)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/nirenr/Point;

    invoke-direct {v0, v4, v4}, Lcom/nirenr/Point;-><init>(II)V

    goto :goto_2
.end method

.method public find(III)Lcom/nirenr/Point;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, -0x1

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/nirenr/ColorFinder;->b:I

    if-ge v0, v2, :cond_2

    move v2, v1

    :goto_1
    iget v3, p0, Lcom/nirenr/ColorFinder;->a:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v3, v3, v2

    aget v3, v3, v0

    shl-int/lit8 v4, v3, 0x8

    ushr-int/lit8 v4, v4, 0x18

    if-ne v4, p1, :cond_0

    shl-int/lit8 v4, v3, 0x10

    ushr-int/lit8 v4, v4, 0x18

    if-ne v4, p2, :cond_0

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x18

    if-ne v3, p3, :cond_0

    new-instance v1, Lcom/nirenr/Point;

    invoke-direct {v1, v2, v0}, Lcom/nirenr/Point;-><init>(II)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/nirenr/Point;

    invoke-direct {v0, v5, v5}, Lcom/nirenr/Point;-><init>(II)V

    goto :goto_2
.end method

.method public find(IIII)Lcom/nirenr/Point;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, -0x1

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/nirenr/ColorFinder;->b:I

    if-ge v0, v2, :cond_2

    move v2, v1

    :goto_1
    iget v3, p0, Lcom/nirenr/ColorFinder;->a:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v3, v3, v2

    aget v3, v3, v0

    shl-int/lit8 v4, v3, 0x8

    ushr-int/lit8 v4, v4, 0x18

    shl-int/lit8 v5, v3, 0x10

    ushr-int/lit8 v5, v5, 0x18

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x18

    sub-int v6, p1, p4

    if-lt v4, v6, :cond_0

    add-int v6, p1, p4

    if-gt v4, v6, :cond_0

    sub-int v4, p2, p4

    if-lt v5, v4, :cond_0

    add-int v4, p2, p4

    if-gt v5, v4, :cond_0

    sub-int v4, p3, p4

    if-lt v3, v4, :cond_0

    add-int v4, p3, p4

    if-gt v3, v4, :cond_0

    new-instance v1, Lcom/nirenr/Point;

    invoke-direct {v1, v2, v0}, Lcom/nirenr/Point;-><init>(II)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/nirenr/Point;

    invoke-direct {v0, v7, v7}, Lcom/nirenr/Point;-><init>(II)V

    goto :goto_2
.end method

.method public find(IIIII)Lcom/nirenr/Point;
    .locals 3

    const/4 v2, -0x1

    :goto_0
    if-ge p2, p4, :cond_2

    move v1, p1

    :goto_1
    if-ge v1, p3, :cond_1

    iget-object v0, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v0, v0, v1

    aget v0, v0, p2

    if-ne v0, p5, :cond_0

    new-instance v0, Lcom/nirenr/Point;

    invoke-direct {v0, v1, p2}, Lcom/nirenr/Point;-><init>(II)V

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/nirenr/Point;

    invoke-direct {v0, v2, v2}, Lcom/nirenr/Point;-><init>(II)V

    goto :goto_2
.end method

.method public find(IIIIIII)Lcom/nirenr/Point;
    .locals 4

    const/4 v3, -0x1

    :goto_0
    if-ge p2, p4, :cond_2

    move v1, p1

    :goto_1
    if-ge v1, p3, :cond_1

    iget-object v0, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v0, v0, v1

    aget v0, v0, p2

    shl-int/lit8 v2, v0, 0x8

    ushr-int/lit8 v2, v2, 0x18

    if-ne v2, p5, :cond_0

    shl-int/lit8 v2, v0, 0x10

    ushr-int/lit8 v2, v2, 0x18

    if-ne v2, p6, :cond_0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    if-ne v0, p7, :cond_0

    new-instance v0, Lcom/nirenr/Point;

    invoke-direct {v0, v1, p2}, Lcom/nirenr/Point;-><init>(II)V

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/nirenr/Point;

    invoke-direct {v0, v3, v3}, Lcom/nirenr/Point;-><init>(II)V

    goto :goto_2
.end method

.method public find(IIIIIIII)Lcom/nirenr/Point;
    .locals 6

    const/4 v5, -0x1

    :goto_0
    if-ge p2, p4, :cond_2

    move v1, p1

    :goto_1
    if-ge v1, p3, :cond_1

    iget-object v0, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v0, v0, v1

    aget v0, v0, p2

    shl-int/lit8 v2, v0, 0x8

    ushr-int/lit8 v2, v2, 0x18

    shl-int/lit8 v3, v0, 0x10

    ushr-int/lit8 v3, v3, 0x18

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    sub-int v4, p5, p8

    if-lt v2, v4, :cond_0

    add-int v4, p5, p8

    if-gt v2, v4, :cond_0

    sub-int v2, p6, p8

    if-lt v3, v2, :cond_0

    add-int v2, p6, p8

    if-gt v3, v2, :cond_0

    sub-int v2, p7, p8

    if-lt v0, v2, :cond_0

    add-int v2, p7, p8

    if-gt v0, v2, :cond_0

    new-instance v0, Lcom/nirenr/Point;

    invoke-direct {v0, v1, p2}, Lcom/nirenr/Point;-><init>(II)V

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/nirenr/Point;

    invoke-direct {v0, v5, v5}, Lcom/nirenr/Point;-><init>(II)V

    goto :goto_2
.end method

.method public find(IIIIIIII[Lcom/nirenr/ColorPoint;)Lcom/nirenr/Point;
    .locals 6

    move v2, p2

    :goto_0
    if-ge v2, p4, :cond_4

    move v1, p1

    :goto_1
    if-ge v1, p3, :cond_3

    iget-object v0, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v0, v0, v1

    aget v0, v0, v2

    shl-int/lit8 v3, v0, 0x8

    ushr-int/lit8 v3, v3, 0x18

    shl-int/lit8 v4, v0, 0x10

    ushr-int/lit8 v4, v4, 0x18

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    sub-int v5, p5, p8

    if-lt v3, v5, :cond_2

    add-int v5, p5, p8

    if-gt v3, v5, :cond_2

    sub-int v3, p6, p8

    if-lt v4, v3, :cond_2

    add-int v3, p6, p8

    if-gt v4, v3, :cond_2

    sub-int v3, p7, p8

    if-lt v0, v3, :cond_2

    add-int v3, p7, p8

    if-gt v0, v3, :cond_2

    array-length v3, p9

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_1

    aget-object v4, p9, v0

    iget-object v5, p0, Lcom/nirenr/ColorFinder;->c:[[I

    invoke-virtual {v4, v5, p1, p2}, Lcom/nirenr/ColorPoint;->check([[III)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_2

    new-instance v0, Lcom/nirenr/Point;

    invoke-direct {v0, v1, v2}, Lcom/nirenr/Point;-><init>(II)V

    :goto_4
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/nirenr/Point;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/nirenr/Point;-><init>(II)V

    goto :goto_4
.end method

.method public find(IIIIIIII[[I)Lcom/nirenr/Point;
    .locals 11

    move-object/from16 v0, p9

    array-length v1, v0

    new-array v10, v1, [Lcom/nirenr/ColorPoint;

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p9

    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/nirenr/ColorPoint;

    aget-object v3, p9, v1

    invoke-direct {v2, v3}, Lcom/nirenr/ColorPoint;-><init>([I)V

    aput-object v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Lcom/nirenr/ColorFinder;->find(IIIIIIII[Lcom/nirenr/ColorPoint;)Lcom/nirenr/Point;

    move-result-object v1

    return-object v1
.end method

.method public find(Lcom/nirenr/Color;)Lcom/nirenr/Point;
    .locals 3

    iget v0, p1, Lcom/nirenr/Color;->red:I

    iget v1, p1, Lcom/nirenr/Color;->green:I

    iget v2, p1, Lcom/nirenr/Color;->blue:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/nirenr/ColorFinder;->find(III)Lcom/nirenr/Point;

    move-result-object v0

    return-object v0
.end method

.method public find(Lcom/nirenr/Color;I)Lcom/nirenr/Point;
    .locals 3

    iget v0, p1, Lcom/nirenr/Color;->red:I

    iget v1, p1, Lcom/nirenr/Color;->green:I

    iget v2, p1, Lcom/nirenr/Color;->blue:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/nirenr/ColorFinder;->find(IIII)Lcom/nirenr/Point;

    move-result-object v0

    return-object v0
.end method

.method public find(Lcom/nirenr/Point;Lcom/nirenr/Point;Lcom/nirenr/Color;)Lcom/nirenr/Point;
    .locals 8

    iget v1, p1, Lcom/nirenr/Point;->x:I

    iget v2, p1, Lcom/nirenr/Point;->y:I

    iget v3, p2, Lcom/nirenr/Point;->x:I

    iget v4, p2, Lcom/nirenr/Point;->y:I

    iget v5, p3, Lcom/nirenr/Color;->red:I

    iget v6, p3, Lcom/nirenr/Color;->green:I

    iget v7, p3, Lcom/nirenr/Color;->blue:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/nirenr/ColorFinder;->find(IIIIIII)Lcom/nirenr/Point;

    move-result-object v0

    return-object v0
.end method

.method public find(Lcom/nirenr/Point;Lcom/nirenr/Point;Lcom/nirenr/Color;I)Lcom/nirenr/Point;
    .locals 9

    iget v1, p1, Lcom/nirenr/Point;->x:I

    iget v2, p1, Lcom/nirenr/Point;->y:I

    iget v3, p2, Lcom/nirenr/Point;->x:I

    iget v4, p2, Lcom/nirenr/Point;->y:I

    iget v5, p3, Lcom/nirenr/Color;->red:I

    iget v6, p3, Lcom/nirenr/Color;->green:I

    iget v7, p3, Lcom/nirenr/Color;->blue:I

    move-object v0, p0

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/nirenr/ColorFinder;->find(IIIIIIII)Lcom/nirenr/Point;

    move-result-object v0

    return-object v0
.end method

.method public findLine(FI)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    div-int/lit8 v1, v0, 0x2

    const/16 v2, 0xa

    add-int/lit8 v3, v0, -0xa

    iget v0, p0, Lcom/nirenr/ColorFinder;->b:I

    mul-int/lit8 v4, p2, 0x10

    sub-int v4, v0, v4

    mul-int/lit8 v6, p2, 0x8

    mul-int/lit8 v7, p2, 0x4

    move-object v0, p0

    move v5, p1

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/nirenr/ColorFinder;->findLine(IIIIFIII)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findLine(FII)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FII)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/nirenr/ColorFinder;->b:I

    iget v4, p0, Lcom/nirenr/ColorFinder;->a:I

    if-ge v0, v4, :cond_0

    div-int/lit8 v1, v4, 0x2

    const/4 v2, 0x0

    add-int/lit8 v3, v4, -0xa

    sub-int v4, v0, p2

    :goto_0
    mul-int/lit8 v7, p3, 0x4

    move-object v0, p0

    move v5, p1

    move v6, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/nirenr/ColorFinder;->findLine(IIIIFIII)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    div-int/lit8 v1, v4, 0x2

    div-int/lit8 v2, v4, 0x3

    add-int/lit8 v3, v4, -0xa

    goto :goto_0
.end method

.method public findLine(FIII)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FIII)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/nirenr/ColorFinder;->b:I

    iget v4, p0, Lcom/nirenr/ColorFinder;->a:I

    if-ge v0, v4, :cond_0

    div-int/lit8 v1, v4, 0x2

    const/4 v2, 0x0

    add-int/lit8 v3, v4, -0xa

    sub-int v4, v0, p2

    :goto_0
    move-object v0, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/nirenr/ColorFinder;->findLine(IIIIFIII)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    div-int/lit8 v1, v4, 0x2

    div-int/lit8 v2, v4, 0x3

    add-int/lit8 v3, v4, -0xa

    goto :goto_0
.end method

.method public findLine(I)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    div-int/lit8 v1, v0, 0x2

    const/16 v2, 0xa

    add-int/lit8 v3, v0, -0xa

    iget v0, p0, Lcom/nirenr/ColorFinder;->b:I

    mul-int/lit8 v4, p1, 0x10

    sub-int v4, v0, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-int/lit8 v6, p1, 0x8

    mul-int/lit8 v7, p1, 0x4

    move-object v0, p0

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/nirenr/ColorFinder;->findLine(IIIIFIII)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findLine(IIIIFIII)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIFIII)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nirenr/ColorFinder;->d:[[F

    if-nez v0, :cond_2

    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    iget v1, p0, Lcom/nirenr/ColorFinder;->b:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/nirenr/ColorFinder;->d:[[F

    const/4 v0, 0x3

    new-array v3, v0, [F

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/nirenr/ColorFinder;->b:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lcom/nirenr/ColorFinder;->a:I

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/nirenr/ColorFinder;->c:[[I

    aget-object v4, v4, v2

    aget v4, v4, v1

    invoke-static {v4, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v4, p0, Lcom/nirenr/ColorFinder;->d:[[F

    aget-object v4, v4, v2

    const/4 v5, 0x2

    aget v5, v3, v5

    aput v5, v4, v1

    const/4 v4, 0x2

    aget v4, v3, v4

    add-int/lit8 v2, v2, 0x1

    add-float/2addr v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/nirenr/ColorFinder;->a:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nirenr/ColorFinder;->e:F

    :cond_2
    iget v0, p0, Lcom/nirenr/ColorFinder;->a:I

    iget v1, p0, Lcom/nirenr/ColorFinder;->b:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iget v2, p0, Lcom/nirenr/ColorFinder;->e:F

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/nirenr/ColorFinder;->b:I

    if-ge v0, v1, :cond_5

    const/4 v1, 0x0

    :goto_3
    iget v4, p0, Lcom/nirenr/ColorFinder;->a:I

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/nirenr/ColorFinder;->d:[[F

    aget-object v4, v4, v1

    aget v4, v4, v0

    mul-float v5, v2, p5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    aget-object v4, v3, v1

    const/4 v5, 0x1

    aput v5, v4, v0

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    aget-object v4, v3, v1

    const/4 v5, 0x0

    aput v5, v4, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, p1

    :goto_5
    if-ge v1, p3, :cond_8

    move v2, p2

    :goto_6
    if-ge v2, p4, :cond_6

    move-object v0, p0

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/nirenr/ColorFinder;->a(II[[IIII)I

    move-result v0

    const/4 v4, -0x1

    if-le v0, v4, :cond_7

    add-int v1, v1, p8

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v1

    invoke-direct {v4, v1, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    return-object v7
.end method

.method public getPixels()[[I
    .locals 1

    iget-object v0, p0, Lcom/nirenr/ColorFinder;->c:[[I

    return-object v0
.end method
