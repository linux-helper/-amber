.class public Lcom/nirenr/ColorPoint;
.super Ljava/lang/Object;


# instance fields
.field public blue:I

.field public green:I

.field public offset:I

.field public red:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nirenr/ColorPoint;->x:I

    iput p2, p0, Lcom/nirenr/ColorPoint;->y:I

    iput p3, p0, Lcom/nirenr/ColorPoint;->red:I

    iput p4, p0, Lcom/nirenr/ColorPoint;->green:I

    iput p5, p0, Lcom/nirenr/ColorPoint;->blue:I

    iput p6, p0, Lcom/nirenr/ColorPoint;->offset:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Lcom/nirenr/Color;I)V
    .locals 7

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Lcom/nirenr/Color;->red:I

    iget v4, p2, Lcom/nirenr/Color;->green:I

    iget v5, p2, Lcom/nirenr/Color;->blue:I

    move-object v0, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/nirenr/ColorPoint;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/nirenr/ColorPoint;->x:I

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/nirenr/ColorPoint;->y:I

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/nirenr/ColorPoint;->red:I

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/nirenr/ColorPoint;->green:I

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/nirenr/ColorPoint;->blue:I

    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/nirenr/ColorPoint;->offset:I

    return-void
.end method


# virtual methods
.method public check([[I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/nirenr/ColorPoint;->check([[III)Z

    move-result v0

    return v0
.end method

.method public check([[III)Z
    .locals 8

    iget v0, p0, Lcom/nirenr/ColorPoint;->red:I

    iget v1, p0, Lcom/nirenr/ColorPoint;->offset:I

    iget v2, p0, Lcom/nirenr/ColorPoint;->green:I

    iget v3, p0, Lcom/nirenr/ColorPoint;->blue:I

    iget v4, p0, Lcom/nirenr/ColorPoint;->y:I

    add-int/2addr v4, p3

    aget-object v4, p1, v4

    iget v5, p0, Lcom/nirenr/ColorPoint;->x:I

    add-int/2addr v5, p2

    aget v4, v4, v5

    shl-int/lit8 v5, v4, 0x8

    ushr-int/lit8 v5, v5, 0x18

    shl-int/lit8 v6, v4, 0x10

    ushr-int/lit8 v6, v6, 0x18

    shl-int/lit8 v4, v4, 0x18

    ushr-int/lit8 v4, v4, 0x18

    sub-int v7, v0, v1

    if-lt v5, v7, :cond_0

    add-int/2addr v0, v1

    if-gt v5, v0, :cond_0

    sub-int v0, v2, v1

    if-lt v6, v0, :cond_0

    add-int v0, v2, v1

    if-gt v6, v0, :cond_0

    sub-int v0, v3, v1

    if-lt v4, v0, :cond_0

    add-int v0, v3, v1

    if-gt v4, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
