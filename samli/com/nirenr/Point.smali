.class public Lcom/nirenr/Point;
.super Ljava/lang/Object;


# instance fields
.field public t:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nirenr/Point;->x:I

    iput p2, p0, Lcom/nirenr/Point;->y:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nirenr/Point;->x:I

    iput p2, p0, Lcom/nirenr/Point;->y:I

    iput p3, p0, Lcom/nirenr/Point;->t:I

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/Point;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/nirenr/Point;->x:I

    iput v0, p0, Lcom/nirenr/Point;->x:I

    iget v0, p1, Lcom/nirenr/Point;->y:I

    iput v0, p0, Lcom/nirenr/Point;->y:I

    return-void
.end method


# virtual methods
.method public final equals(II)Z
    .locals 1

    iget v0, p0, Lcom/nirenr/Point;->x:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/nirenr/Point;->y:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_1

    const-class v1, Lcom/nirenr/Point;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    check-cast p1, Lcom/nirenr/Point;

    iget v1, p0, Lcom/nirenr/Point;->x:I

    iget v2, p1, Lcom/nirenr/Point;->x:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/nirenr/Point;->y:I

    iget v2, p1, Lcom/nirenr/Point;->y:I

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/nirenr/Point;->x:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nirenr/Point;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final negate()V
    .locals 1

    iget v0, p0, Lcom/nirenr/Point;->x:I

    neg-int v0, v0

    iput v0, p0, Lcom/nirenr/Point;->x:I

    iget v0, p0, Lcom/nirenr/Point;->y:I

    neg-int v0, v0

    iput v0, p0, Lcom/nirenr/Point;->y:I

    return-void
.end method

.method public final offset(II)V
    .locals 1

    iget v0, p0, Lcom/nirenr/Point;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/nirenr/Point;->x:I

    iget v0, p0, Lcom/nirenr/Point;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/nirenr/Point;->y:I

    return-void
.end method

.method public set(II)V
    .locals 0

    iput p1, p0, Lcom/nirenr/Point;->x:I

    iput p2, p0, Lcom/nirenr/Point;->y:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nirenr/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nirenr/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nirenr/Point;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
