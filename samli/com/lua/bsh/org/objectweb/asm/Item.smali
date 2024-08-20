.class final Lcom/lua/bsh/org/objectweb/asm/Item;
.super Ljava/lang/Object;


# instance fields
.field a:S

.field b:I

.field c:I

.field d:J

.field e:F

.field f:D

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:Lcom/lua/bsh/org/objectweb/asm/Item;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(SLcom/lua/bsh/org/objectweb/asm/Item;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-short v0, p1

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    iget v0, p2, Lcom/lua/bsh/org/objectweb/asm/Item;->b:I

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->b:I

    iget v0, p2, Lcom/lua/bsh/org/objectweb/asm/Item;->c:I

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->c:I

    iget-wide v0, p2, Lcom/lua/bsh/org/objectweb/asm/Item;->d:J

    iput-wide v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->d:J

    iget v0, p2, Lcom/lua/bsh/org/objectweb/asm/Item;->e:F

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->e:F

    iget-wide v0, p2, Lcom/lua/bsh/org/objectweb/asm/Item;->f:D

    iput-wide v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->f:D

    iget-object v0, p2, Lcom/lua/bsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v0, p2, Lcom/lua/bsh/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iget-object v0, p2, Lcom/lua/bsh/org/objectweb/asm/Item;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->i:Ljava/lang/String;

    iget v0, p2, Lcom/lua/bsh/org/objectweb/asm/Item;->j:I

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->j:I

    return-void
.end method


# virtual methods
.method a(D)V
    .locals 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->b:I

    iput-wide p1, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->f:D

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->b:I

    double-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->j:I

    return-void
.end method

.method a(F)V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->b:I

    iput p1, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->e:F

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->b:I

    float-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->j:I

    return-void
.end method

.method a(I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->b:I

    iput p1, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->c:I

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->j:I

    return-void
.end method

.method a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput p1, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->b:I

    iput-object p2, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->i:Ljava/lang/String;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/2addr v0, v1

    :goto_1
    add-int/2addr v0, p1

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->j:I

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method a(J)V
    .locals 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->b:I

    iput-wide p1, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->d:J

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->b:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->j:I

    return-void
.end method

.method a(Lcom/lua/bsh/org/objectweb/asm/Item;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lcom/lua/bsh/org/objectweb/asm/Item;->b:I

    iget v3, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->b:I

    if-ne v2, v3, :cond_5

    if-eq v3, v0, :cond_4

    const/16 v2, 0xc

    if-eq v3, v2, :cond_2

    packed-switch v3, :pswitch_data_0

    iget-object v2, p1, Lcom/lua/bsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/lua/bsh/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/lua/bsh/org/objectweb/asm/Item;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-wide v2, p1, Lcom/lua/bsh/org/objectweb/asm/Item;->f:D

    iget-wide v4, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->f:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-wide v2, p1, Lcom/lua/bsh/org/objectweb/asm/Item;->d:J

    iget-wide v4, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget v2, p1, Lcom/lua/bsh/org/objectweb/asm/Item;->e:F

    iget v3, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->e:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget v2, p1, Lcom/lua/bsh/org/objectweb/asm/Item;->c:I

    iget v3, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->c:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/lua/bsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/lua/bsh/org/objectweb/asm/Item;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    :pswitch_4
    iget-object v0, p1, Lcom/lua/bsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
