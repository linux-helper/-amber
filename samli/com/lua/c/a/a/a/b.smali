.class public Lcom/lua/c/a/a/a/b;
.super Lcom/lua/c/a/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/c/a/a/a/b$a;
    }
.end annotation


# instance fields
.field b:Lcom/lua/c/a/a/l;

.field c:Ljava/util/Hashtable;

.field d:Lcom/lua/c/a/a/a/b;

.field e:Lcom/lua/c/a/a/a/f;

.field f:Lcom/lua/c/a/a/a/g$a;

.field g:Lcom/lua/c/a/a/a/b$a;

.field h:I

.field i:I

.field j:Lcom/lua/c/a/a/a/d;

.field k:I

.field l:I

.field m:I

.field n:S

.field o:S

.field p:S

.field q:S


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lua/c/a/a/a/a;-><init>()V

    return-void
.end method

.method static A(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/a/f$i;I)I
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Lcom/lua/c/a/a/n;

    invoke-direct {v0, v3}, Lcom/lua/c/a/a/n;-><init>(I)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/a/f$i;ILcom/lua/c/a/a/n;)I

    move-result v1

    iget v2, v0, Lcom/lua/c/a/a/n;->g:I

    if-eq v2, v3, :cond_0

    iput-object v0, p2, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    :cond_0
    return v1
.end method

.method static a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/a/f$i;ILcom/lua/c/a/a/n;)I
    .locals 4

    const/16 v2, 0xa

    const/4 v0, 0x7

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->b(Lcom/lua/c/a/a/j;)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {p2, v0, v3}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    invoke-virtual {p0, v3}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/lua/c/a/a/b;->f:Lcom/lua/c/a/a/n;

    iput-object v1, p2, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    iget-object v1, p2, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    if-eqz v1, :cond_2

    iget v2, v1, Lcom/lua/c/a/a/n;->g:I

    iput v2, p4, Lcom/lua/c/a/a/n;->g:I

    iget-object v1, v1, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    iput-object v1, p4, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    :cond_2
    if-nez p3, :cond_0

    invoke-virtual {p0, v3}, Lcom/lua/c/a/a/a/b;->u(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/j;)I

    move-result v0

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->d:Lcom/lua/c/a/a/a/b;

    invoke-static {v0, p1, p2, v1, p4}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b;Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/a/f$i;ILcom/lua/c/a/a/n;)I

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    const/16 v2, 0xff

    invoke-virtual {p2, v0, v2}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    iget-object v0, p2, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/j;)I

    move-result v2

    iput v2, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/a/f$i;)I

    move-result v0

    :cond_5
    :goto_1
    invoke-virtual {p2, v2, v0}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    move v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->s(I)Lcom/lua/c/a/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/lua/c/a/a/m;->b:Lcom/lua/c/a/a/n;

    iput-object v1, p2, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    iget-object v1, p2, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    if-eqz v1, :cond_5

    iget v3, v1, Lcom/lua/c/a/a/n;->g:I

    iput v3, p4, Lcom/lua/c/a/a/n;->g:I

    iget-object v1, v1, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    iput-object v1, p4, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method a(Lcom/lua/c/a/a/j;)I
    .locals 3

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v1, v0, Lcom/lua/c/a/a/l;->h:[Lcom/lua/c/a/a/m;

    const/4 v0, 0x0

    :goto_0
    iget-short v2, p0, Lcom/lua/c/a/a/a/b;->p:S

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/lua/c/a/a/m;->a:Lcom/lua/c/a/a/j;

    invoke-virtual {v2, p1}, Lcom/lua/c/a/a/j;->g(Lcom/lua/c/a/a/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method a(Lcom/lua/c/a/a/j;Lcom/lua/c/a/a/a/f$i;)I
    .locals 5

    const/4 v1, 0x1

    iget-short v0, p0, Lcom/lua/c/a/a/a/b;->p:S

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xff

    const-string v3, "upvalues"

    invoke-virtual {p0, v0, v2, v3}, Lcom/lua/c/a/a/a/b;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v0, v0, Lcom/lua/c/a/a/l;->h:[Lcom/lua/c/a/a/m;

    if-eqz v0, :cond_0

    iget-short v2, p0, Lcom/lua/c/a/a/a/b;->p:S

    add-int/lit8 v2, v2, 0x1

    array-length v0, v0

    if-le v2, v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v3, v2, Lcom/lua/c/a/a/l;->h:[Lcom/lua/c/a/a/m;

    iget-short v0, p0, Lcom/lua/c/a/a/a/b;->p:S

    if-lez v0, :cond_2

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-static {v3, v0}, Lcom/lua/c/a/a/a/a;->a([Lcom/lua/c/a/a/m;I)[Lcom/lua/c/a/a/m;

    move-result-object v0

    iput-object v0, v2, Lcom/lua/c/a/a/l;->h:[Lcom/lua/c/a/a/m;

    :cond_1
    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v0, v0, Lcom/lua/c/a/a/l;->h:[Lcom/lua/c/a/a/m;

    iget-short v2, p0, Lcom/lua/c/a/a/a/b;->p:S

    iget v3, p2, Lcom/lua/c/a/a/a/f$i;->b:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    :goto_1
    new-instance v3, Lcom/lua/c/a/a/m;

    iget-object v4, p2, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v4, v4, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-direct {v3, p1, v1, v4}, Lcom/lua/c/a/a/m;-><init>(Lcom/lua/c/a/a/j;ZI)V

    aput-object v3, v0, v2

    iget-short v0, p0, Lcom/lua/c/a/a/a/b;->p:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/lua/c/a/a/a/b;->p:S

    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method a(Lcom/lua/c/a/a/k;)I
    .locals 4

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->c:Ljava/util/Hashtable;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/lua/c/a/a/a/b;->c:Ljava/util/Hashtable;

    :cond_0
    iget v0, p0, Lcom/lua/c/a/a/a/b;->k:I

    iget-object v1, p0, Lcom/lua/c/a/a/a/b;->c:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v2, v1, Lcom/lua/c/a/a/l;->c:[Lcom/lua/c/a/a/k;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/lua/c/a/a/a/b;->k:I

    add-int/lit8 v3, v3, 0x1

    array-length v2, v2

    if-lt v3, v2, :cond_2

    :cond_1
    iget-object v2, v1, Lcom/lua/c/a/a/l;->c:[Lcom/lua/c/a/a/k;

    iget v3, p0, Lcom/lua/c/a/a/a/b;->k:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lua/c/a/a/a/a;->a([Lcom/lua/c/a/a/k;I)[Lcom/lua/c/a/a/k;

    move-result-object v2

    iput-object v2, v1, Lcom/lua/c/a/a/l;->c:[Lcom/lua/c/a/a/k;

    :cond_2
    iget-object v1, v1, Lcom/lua/c/a/a/l;->c:[Lcom/lua/c/a/a/k;

    iget v2, p0, Lcom/lua/c/a/a/a/b;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/lua/c/a/a/a/b;->k:I

    aput-object p1, v1, v2

    :goto_0
    return v0

    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/lua/c/a/a/n;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method a()V
    .locals 3

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->j:Lcom/lua/c/a/a/a/d;

    iget v0, v0, Lcom/lua/c/a/a/a/d;->a:I

    iget v1, p0, Lcom/lua/c/a/a/a/b;->h:I

    const/16 v2, 0xff

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/lua/c/a/a/a/b;->d(IIII)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->j:Lcom/lua/c/a/a/a/d;

    const/4 v1, -0x1

    iput v1, v0, Lcom/lua/c/a/a/a/d;->a:I

    return-void
.end method

.method a(IILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)V
    .locals 4

    invoke-virtual {p0, p3}, Lcom/lua/c/a/a/a/b;->d(Lcom/lua/c/a/a/a/f$i;)I

    move-result v0

    invoke-virtual {p0, p4}, Lcom/lua/c/a/a/a/b;->d(Lcom/lua/c/a/a/a/f$i;)I

    move-result v1

    invoke-virtual {p0, p4}, Lcom/lua/c/a/a/a/b;->i(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, p3}, Lcom/lua/c/a/a/a/b;->i(Lcom/lua/c/a/a/a/f$i;)V

    if-nez p2, :cond_0

    const/16 v2, 0x18

    if-eq p1, v2, :cond_0

    const/4 p2, 0x1

    :goto_0
    iget-object v2, p3, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/lua/c/a/a/a/b;->c(IIII)I

    move-result v0

    iput v0, v2, Lcom/lua/c/a/a/a/f$i$a;->e:I

    const/16 v0, 0xc

    iput v0, p3, Lcom/lua/c/a/a/a/f$i;->b:I

    return-void

    :cond_0
    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0
.end method

.method a(IILjava/lang/String;)V
    .locals 1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/lua/c/a/a/a/b;->a(ILjava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method a(ILcom/lua/c/a/a/a/f$i;)V
    .locals 1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->d(Lcom/lua/c/a/a/a/f$i;)I

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Lcom/lua/c/a/a/a/f$i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->l(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->m(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(ILcom/lua/c/a/a/a/f$i;I)V
    .locals 3

    const/4 v2, 0x0

    new-instance v1, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v1}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    const/4 v0, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/lua/c/a/a/a/f$i;->a(II)V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-static {v2}, Lcom/lua/c/a/a/a/a;->a(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/lua/c/a/a/a/f$i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    invoke-virtual {v0}, Lcom/lua/c/a/a/a/f$i$a;->a()Lcom/lua/c/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/c/a/a/k;->e()Lcom/lua/c/a/a/k;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/f$i$a;->a(Lcom/lua/c/a/a/k;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->e(Lcom/lua/c/a/a/a/f$i;)I

    const/16 v0, 0x2a

    :goto_2
    invoke-virtual {p0, v0, p2, v1, p3}, Lcom/lua/c/a/a/a/b;->a(ILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->e(Lcom/lua/c/a/a/a/f$i;)I

    const/16 v0, 0x15

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/lua/c/a/a/a/f$i;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    invoke-virtual {v0}, Lcom/lua/c/a/a/a/f$i$a;->a()Lcom/lua/c/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/c/a/a/k;->i()Lcom/lua/c/a/a/k;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->e(Lcom/lua/c/a/a/a/f$i;)I

    const/16 v0, 0x13

    goto :goto_2
.end method

.method a(ILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;I)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/lua/c/a/a/a/b;->a(ILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/lua/c/a/a/a/b;->d(Lcom/lua/c/a/a/a/f$i;)I

    move-result v0

    :goto_1
    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->d(Lcom/lua/c/a/a/a/f$i;)I

    move-result v2

    if-le v2, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->i(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, p3}, Lcom/lua/c/a/a/a/b;->i(Lcom/lua/c/a/a/a/f$i;)V

    :goto_2
    iget-object v3, p2, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    move-result v0

    iput v0, v3, Lcom/lua/c/a/a/a/f$i$a;->e:I

    const/16 v0, 0xd

    iput v0, p2, Lcom/lua/c/a/a/a/f$i;->b:I

    invoke-virtual {p0, p4}, Lcom/lua/c/a/a/a/b;->n(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3}, Lcom/lua/c/a/a/a/b;->i(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->i(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_2
.end method

.method a(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget v0, v0, Lcom/lua/c/a/a/l;->j:I

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/lua/c/a/a/a/b;->f:Lcom/lua/c/a/a/a/g$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "main function has more than "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/lua/c/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/lua/c/a/a/a/f;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/lua/c/a/a/a/b;->f:Lcom/lua/c/a/a/a/g$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "function at line "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget v0, v0, Lcom/lua/c/a/a/l;->j:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has more than "

    goto :goto_0
.end method

.method a(Lcom/lua/c/a/a/a/b$a;)V
    .locals 5

    iget-short v0, p1, Lcom/lua/c/a/a/a/b$a;->c:S

    iget-object v1, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iget-object v1, v1, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v1, v1, Lcom/lua/c/a/a/a/f$b;->c:[Lcom/lua/c/a/a/a/f$d;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iget-object v2, v2, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget v2, v2, Lcom/lua/c/a/a/a/f$b;->d:I

    if-ge v0, v2, :cond_3

    aget-object v2, v1, v0

    iget-short v3, v2, Lcom/lua/c/a/a/a/f$d;->d:S

    iget-short v4, p1, Lcom/lua/c/a/a/a/b$a;->d:S

    if-le v3, v4, :cond_2

    iget-boolean v3, p1, Lcom/lua/c/a/a/a/b$a;->e:Z

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/lua/c/a/a/a/f$d;->b:I

    invoke-virtual {p0, v3, v4}, Lcom/lua/c/a/a/a/b;->f(II)V

    :cond_1
    iget-short v3, p1, Lcom/lua/c/a/a/a/b$a;->d:S

    int-to-short v3, v3

    int-to-short v3, v3

    iput-short v3, v2, Lcom/lua/c/a/a/a/f$d;->d:S

    :cond_2
    iget-object v2, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    invoke-virtual {v2, v0}, Lcom/lua/c/a/a/a/f;->p(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method a(Lcom/lua/c/a/a/a/b$a;Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean p2, p1, Lcom/lua/c/a/a/a/b$a;->f:Z

    iget-short v1, p0, Lcom/lua/c/a/a/a/b;->o:S

    int-to-short v2, v1

    int-to-short v2, v2

    iput-short v2, p1, Lcom/lua/c/a/a/a/b$a;->d:S

    iget-object v2, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iget-object v2, v2, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget v3, v2, Lcom/lua/c/a/a/a/f$b;->f:I

    int-to-short v3, v3

    int-to-short v3, v3

    int-to-short v3, v3

    iput-short v3, p1, Lcom/lua/c/a/a/a/b$a;->b:S

    iget v2, v2, Lcom/lua/c/a/a/a/f$b;->d:I

    int-to-short v2, v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, p1, Lcom/lua/c/a/a/a/b$a;->c:S

    iput-boolean v0, p1, Lcom/lua/c/a/a/a/b$a;->e:Z

    iget-object v2, p0, Lcom/lua/c/a/a/a/b;->g:Lcom/lua/c/a/a/a/b$a;

    iput-object v2, p1, Lcom/lua/c/a/a/a/b$a;->a:Lcom/lua/c/a/a/a/b$a;

    iput-object p1, p0, Lcom/lua/c/a/a/a/b;->g:Lcom/lua/c/a/a/a/b$a;

    iget-short v2, p0, Lcom/lua/c/a/a/a/b;->q:S

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    return-void
.end method

.method a(Lcom/lua/c/a/a/a/d;I)V
    .locals 3

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/lua/c/a/a/a/d;->a:I

    if-ne v0, v2, :cond_1

    iput p2, p1, Lcom/lua/c/a/a/a/d;->a:I

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->p(I)I

    move-result v1

    if-eq v1, v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/lua/c/a/a/a/b;->d(II)V

    goto :goto_0
.end method

.method a(Lcom/lua/c/a/a/a/f$a;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$a;->a:Lcom/lua/c/a/a/a/f$i;

    iget v1, v0, Lcom/lua/c/a/a/a/f$i;->b:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$a;->a:Lcom/lua/c/a/a/a/f$i;

    iput v3, v0, Lcom/lua/c/a/a/a/f$i;->b:I

    iget v0, p1, Lcom/lua/c/a/a/a/f$a;->e:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    iget-object v1, p1, Lcom/lua/c/a/a/a/f$a;->b:Lcom/lua/c/a/a/a/f$i;

    iget-object v1, v1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v1, v1, Lcom/lua/c/a/a/a/f$i$a;->e:I

    iget v2, p1, Lcom/lua/c/a/a/a/f$a;->d:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/lua/c/a/a/a/b;->e(III)V

    iput v3, p1, Lcom/lua/c/a/a/a/f$a;->e:I

    goto :goto_0
.end method

.method a(Lcom/lua/c/a/a/a/f$i;)V
    .locals 5

    const/16 v4, 0xd

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/a/f$i;)V

    iget v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    if-eq v0, v4, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-static {v3}, Lcom/lua/c/a/a/a/a;->a(Z)V

    :goto_0
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->e:Lcom/lua/c/a/a/a/d;

    iget v1, v0, Lcom/lua/c/a/a/a/d;->a:I

    iget-object v2, p1, Lcom/lua/c/a/a/a/f$i;->d:Lcom/lua/c/a/a/a/d;

    iget v3, v2, Lcom/lua/c/a/a/a/d;->a:I

    iput v3, v0, Lcom/lua/c/a/a/a/d;->a:I

    iput v1, v2, Lcom/lua/c/a/a/a/d;->a:I

    iget v0, v0, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->x(I)V

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->d:Lcom/lua/c/a/a/a/d;

    iget v0, v0, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->x(I)V

    return-void

    :pswitch_0
    const/4 v0, 0x3

    :goto_1
    iput v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->b(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->i(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    const/16 v1, 0x14

    iget v2, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    move-result v1

    iput v1, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    iput v4, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->n(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method a(Lcom/lua/c/a/a/a/f$i;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/a/f$i;)V

    iget v2, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    if-eqz v2, :cond_0

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    if-eq p2, v0, :cond_2

    invoke-virtual {p0, v1, p2, v0, v1}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    :cond_2
    :goto_2
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iput p2, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    const/4 v0, 0x6

    iput v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    invoke-virtual {v0}, Lcom/lua/c/a/a/a/f$i$a;->a()Lcom/lua/c/a/a/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->b(Lcom/lua/c/a/a/k;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/lua/c/a/a/a/b;->c(II)I

    sget-object v0, Lcom/lua/c/a/a/n;->a:Lcom/lua/c/a/a/n;

    :goto_3
    iput-object v0, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    goto :goto_2

    :pswitch_2
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, p2, v0}, Lcom/lua/c/a/a/a/b;->c(II)I

    sget-object v0, Lcom/lua/c/a/a/n;->c:Lcom/lua/c/a/a/n;

    goto :goto_3

    :pswitch_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :goto_4
    const/4 v2, 0x3

    invoke-virtual {p0, v2, p2, v0, v1}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    sget-object v0, Lcom/lua/c/a/a/n;->e:Lcom/lua/c/a/a/n;

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_4

    :pswitch_4
    invoke-virtual {p0, p2, v0}, Lcom/lua/c/a/a/a/b;->e(II)V

    sget-object v0, Lcom/lua/c/a/a/n;->f:Lcom/lua/c/a/a/n;

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->k(Lcom/lua/c/a/a/a/f$i;)Lcom/lua/c/a/a/a/c;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lua/c/a/a/a/a;->a(Lcom/lua/c/a/a/a/c;I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)V
    .locals 3

    const/16 v1, 0xa

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v2, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    int-to-short v2, v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v0, Lcom/lua/c/a/a/a/f$i$a;->b:S

    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->d(Lcom/lua/c/a/a/a/f$i;)I

    move-result v2

    int-to-short v2, v2

    int-to-short v2, v2

    int-to-short v2, v2

    iput-short v2, v0, Lcom/lua/c/a/a/a/f$i$a;->a:S

    iget v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/lua/c/a/a/a/b;->A(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    iget-object v2, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, v2, Lcom/lua/c/a/a/a/f$i$a;->c:S

    const/16 v0, 0xb

    iput v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    goto :goto_1
.end method

.method a([Lcom/lua/c/a/a/a/f$d;ILcom/lua/c/a/a/j;)V
    .locals 4

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->g:Lcom/lua/c/a/a/a/b$a;

    iget-short v0, v0, Lcom/lua/c/a/a/a/b$a;->b:S

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/lua/c/a/a/a/f$d;->a:Lcom/lua/c/a/a/j;

    invoke-virtual {p3, v1}, Lcom/lua/c/a/a/j;->g(Lcom/lua/c/a/a/k;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iget-object v1, v1, Lcom/lua/c/a/a/a/f;->B:Lcom/lua/c/a/a/a/g$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "label \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already defined on line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v0

    iget v0, v0, Lcom/lua/c/a/a/a/f$d;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lua/c/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    invoke-virtual {v1, v0}, Lcom/lua/c/a/a/a/f;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    return-void
.end method

.method a(ILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/lua/c/a/a/a/f$i;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/lua/c/a/a/a/f$i;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x10

    if-eq p1, v1, :cond_2

    const/16 v1, 0x11

    if-ne p1, v1, :cond_3

    :cond_2
    iget-object v1, p3, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    invoke-virtual {v1}, Lcom/lua/c/a/a/a/f$i$a;->a()Lcom/lua/c/a/a/k;

    move-result-object v1

    sget-object v2, Lcom/lua/c/a/a/k;->f:Lcom/lua/c/a/a/i;

    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/k;->g(Lcom/lua/c/a/a/k;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p2, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    invoke-virtual {v1}, Lcom/lua/c/a/a/a/f$i$a;->a()Lcom/lua/c/a/a/k;

    move-result-object v1

    iget-object v2, p3, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    invoke-virtual {v2}, Lcom/lua/c/a/a/a/f$i$a;->a()Lcom/lua/c/a/a/k;

    move-result-object v2

    const/16 v3, 0x15

    if-eq p1, v3, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/lua/c/a/a/k;->k()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p2, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/f$i$a;->a(Lcom/lua/c/a/a/k;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Lcom/lua/c/a/a/k;->e()Lcom/lua/c/a/a/k;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/k;->o(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/k;->n(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/k;->d(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/k;->c(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v1

    goto :goto_1

    :pswitch_5
    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/k;->b(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v1

    goto :goto_1

    :pswitch_6
    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/k;->h(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v1

    goto :goto_1

    :pswitch_7
    invoke-virtual {v1}, Lcom/lua/c/a/a/k;->i()Lcom/lua/c/a/a/k;

    move-result-object v1

    goto :goto_1

    :pswitch_8
    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/k;->l(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v1

    goto :goto_1

    :pswitch_9
    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/k;->j(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v1

    goto :goto_1

    :pswitch_a
    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/k;->f(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v1

    goto :goto_1

    :pswitch_b
    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/k;->k(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v1

    goto :goto_1

    :pswitch_c
    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/k;->p(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v1

    goto :goto_1

    :pswitch_d
    invoke-virtual {v1, v2}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/lua/c/a/a/a/b;->h:I

    iput v0, p0, Lcom/lua/c/a/a/a/b;->i:I

    return v0
.end method

.method b(II)I
    .locals 3

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/b;->a()V

    iget-object v1, v0, Lcom/lua/c/a/a/l;->d:[I

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/lua/c/a/a/a/b;->h:I

    add-int/lit8 v2, v2, 0x1

    array-length v1, v1

    if-le v2, v1, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/lua/c/a/a/l;->d:[I

    iget v2, p0, Lcom/lua/c/a/a/a/b;->h:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/lua/c/a/a/a/a;->a([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/lua/c/a/a/l;->d:[I

    :cond_1
    iget-object v1, v0, Lcom/lua/c/a/a/l;->d:[I

    iget v2, p0, Lcom/lua/c/a/a/a/b;->h:I

    aput p1, v1, v2

    iget-object v1, v0, Lcom/lua/c/a/a/l;->f:[I

    if-eqz v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    array-length v1, v1

    if-le v2, v1, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/lua/c/a/a/l;->f:[I

    iget v2, p0, Lcom/lua/c/a/a/a/b;->h:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/lua/c/a/a/a/a;->a([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/lua/c/a/a/l;->f:[I

    :cond_3
    iget-object v0, v0, Lcom/lua/c/a/a/l;->f:[I

    iget v1, p0, Lcom/lua/c/a/a/a/b;->h:I

    aput p2, v0, v1

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/lua/c/a/a/a/b;->h:I

    return v1
.end method

.method b(III)I
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/lua/c/a/a/c;->j(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-static {p1}, Lcom/lua/c/a/a/c;->j(I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    invoke-static {p1}, Lcom/lua/c/a/a/c;->i(I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    if-ltz p3, :cond_1

    const v0, 0x3ffff

    if-gt p3, v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lcom/lua/c/a/a/a/a;->a(Z)V

    invoke-static {p1, p2, p3}, Lcom/lua/c/a/a/a/a;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iget v1, v1, Lcom/lua/c/a/a/a/f;->x:I

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/a/b;->b(II)I

    move-result v0

    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method b(IIII)I
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/lua/c/a/a/c;->j(I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    invoke-static {p1}, Lcom/lua/c/a/a/c;->h(I)I

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_3

    :cond_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    invoke-static {p1}, Lcom/lua/c/a/a/c;->i(I)I

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_4

    :cond_1
    :goto_2
    invoke-static {v1}, Lcom/lua/c/a/a/a/a;->a(Z)V

    invoke-static {p1, p2, p3, p4}, Lcom/lua/c/a/a/a/a;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iget v1, v1, Lcom/lua/c/a/a/a/f;->x:I

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/a/b;->b(II)I

    move-result v0

    return v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method b(Lcom/lua/c/a/a/j;)I
    .locals 2

    iget-short v0, p0, Lcom/lua/c/a/a/a/b;->o:S

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/lua/c/a/a/b;->a:Lcom/lua/c/a/a/j;

    invoke-virtual {p1, v1}, Lcom/lua/c/a/a/j;->g(Lcom/lua/c/a/a/k;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method b(Lcom/lua/c/a/a/k;)I
    .locals 6

    instance-of v0, p1, Lcom/lua/c/a/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/lua/c/a/a/k;->k()D

    move-result-wide v0

    double-to-long v2, v0

    long-to-double v4, v2

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    invoke-static {v2, v3}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/k;)I

    move-result v0

    return v0
.end method

.method b(Z)I
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/lua/c/a/a/k;->c:Lcom/lua/c/a/a/d;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/k;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/lua/c/a/a/k;->d:Lcom/lua/c/a/a/d;

    goto :goto_0
.end method

.method b(ILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;I)V
    .locals 6

    const/16 v5, 0x16

    const/4 v3, -0x1

    const/16 v4, 0xd

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-static {v1}, Lcom/lua/c/a/a/a/a;->a(Z)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p2, Lcom/lua/c/a/a/a/f$i;->e:Lcom/lua/c/a/a/a/d;

    iget v2, v2, Lcom/lua/c/a/a/a/d;->a:I

    if-ne v2, v3, :cond_3

    :goto_1
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    invoke-virtual {p0, p3}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v1, p3, Lcom/lua/c/a/a/a/f$i;->d:Lcom/lua/c/a/a/a/d;

    iget-object v0, p2, Lcom/lua/c/a/a/a/f$i;->d:Lcom/lua/c/a/a/a/d;

    :goto_2
    iget v0, v0, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {p0, v1, v0}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/d;I)V

    invoke-virtual {p2, p3}, Lcom/lua/c/a/a/a/f$i;->a(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p2, Lcom/lua/c/a/a/a/f$i;->d:Lcom/lua/c/a/a/a/d;

    iget v2, v2, Lcom/lua/c/a/a/a/d;->a:I

    if-ne v2, v3, :cond_0

    :goto_3
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    invoke-virtual {p0, p3}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v1, p3, Lcom/lua/c/a/a/a/f$i;->e:Lcom/lua/c/a/a/a/d;

    iget-object v0, p2, Lcom/lua/c/a/a/a/f$i;->e:Lcom/lua/c/a/a/a/d;

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_3

    :pswitch_2
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/lua/c/a/a/a/b;->a(IILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x19

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/lua/c/a/a/a/b;->a(IILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x18

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/lua/c/a/a/a/b;->a(IILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/lua/c/a/a/a/b;->a(IILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x19

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/lua/c/a/a/a/b;->a(IILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0

    :pswitch_7
    const/16 v1, 0x18

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/lua/c/a/a/a/b;->a(IILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, p3}, Lcom/lua/c/a/a/a/b;->h(Lcom/lua/c/a/a/a/f$i;)V

    iget v2, p3, Lcom/lua/c/a/a/a/f$i;->b:I

    if-ne v2, v4, :cond_2

    invoke-virtual {p0, p3}, Lcom/lua/c/a/a/a/b;->j(Lcom/lua/c/a/a/a/f$i;)I

    move-result v2

    invoke-static {v2}, Lcom/lua/c/a/a/c;->e(I)I

    move-result v2

    if-ne v2, v5, :cond_2

    iget-object v2, p2, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v2, v2, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, p3}, Lcom/lua/c/a/a/a/b;->j(Lcom/lua/c/a/a/a/f$i;)I

    move-result v3

    invoke-static {v3}, Lcom/lua/c/a/a/c;->b(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    move v1, v0

    :cond_1
    invoke-static {v1}, Lcom/lua/c/a/a/a/a;->a(Z)V

    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->i(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, p3}, Lcom/lua/c/a/a/a/b;->k(Lcom/lua/c/a/a/a/f$i;)Lcom/lua/c/a/a/a/c;

    move-result-object v0

    iget-object v1, p2, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v1, v1, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-static {v0, v1}, Lcom/lua/c/a/a/a/a;->b(Lcom/lua/c/a/a/a/c;I)V

    iput v4, p2, Lcom/lua/c/a/a/a/f$i;->b:I

    iget-object v0, p2, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget-object v1, p3, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v1, v1, Lcom/lua/c/a/a/a/f$i$a;->e:I

    iput v1, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, v5, p2, p3, p4}, Lcom/lua/c/a/a/a/b;->a(ILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;I)V

    goto/16 :goto_0

    :pswitch_9
    const/16 v0, 0x2c

    :goto_4
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/lua/c/a/a/a/b;->a(ILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;I)V

    goto/16 :goto_0

    :pswitch_a
    const/16 v0, 0x2b

    goto :goto_4

    :pswitch_b
    const/16 v0, 0x2a

    goto :goto_4

    :pswitch_c
    const/16 v0, 0x29

    goto :goto_4

    :pswitch_d
    const/16 v0, 0x28

    goto :goto_4

    :pswitch_e
    const/16 v0, 0x27

    goto :goto_4

    :pswitch_f
    const/16 v0, 0x10

    goto :goto_4

    :pswitch_10
    const/16 v0, 0x12

    goto :goto_4

    :pswitch_11
    const/16 v0, 0x11

    goto :goto_4

    :pswitch_12
    const/16 v0, 0xf

    goto :goto_4

    :pswitch_13
    const/16 v0, 0xe

    goto :goto_4

    :pswitch_14
    invoke-virtual {p0, v4, p2, p3, p4}, Lcom/lua/c/a/a/a/b;->a(ILcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;I)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method b(Lcom/lua/c/a/a/a/f$a;)V
    .locals 3

    iget v0, p1, Lcom/lua/c/a/a/a/f$a;->e:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$a;->a:Lcom/lua/c/a/a/a/f$i;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i;->b:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->t(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$a;->a:Lcom/lua/c/a/a/a/f$i;

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->o(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$a;->b:Lcom/lua/c/a/a/a/f$i;

    iget-object v0, v0, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    iget v1, p1, Lcom/lua/c/a/a/a/f$a;->d:I

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lua/c/a/a/a/b;->e(III)V

    iget v0, p1, Lcom/lua/c/a/a/a/f$a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/lua/c/a/a/a/f$a;->d:I

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$a;->a:Lcom/lua/c/a/a/a/f$i;

    iget v1, v0, Lcom/lua/c/a/a/a/f$i;->b:I

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    :cond_2
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$a;->b:Lcom/lua/c/a/a/a/f$i;

    iget-object v0, v0, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    iget v1, p1, Lcom/lua/c/a/a/a/f$a;->d:I

    iget v2, p1, Lcom/lua/c/a/a/a/f$a;->e:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/lua/c/a/a/a/b;->e(III)V

    goto :goto_0
.end method

.method b(Lcom/lua/c/a/a/a/f$i;)V
    .locals 2

    iget v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->z(I)V

    iget-short v0, p0, Lcom/lua/c/a/a/a/b;->q:S

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/f$i;I)V

    :cond_0
    return-void
.end method

.method b(Lcom/lua/c/a/a/a/f$i;I)V
    .locals 6

    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/f$i;I)V

    iget v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    if-ne v0, v5, :cond_0

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->d:Lcom/lua/c/a/a/a/d;

    iget-object v2, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v2, v2, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v0, v2}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/d;I)V

    :cond_0
    invoke-virtual {p1}, Lcom/lua/c/a/a/a/f$i;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->d:Lcom/lua/c/a/a/a/d;

    iget v0, v0, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->v(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->e:Lcom/lua/c/a/a/a/d;

    iget v0, v0, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->v(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    if-ne v0, v5, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0, p2, v3, v4}, Lcom/lua/c/a/a/a/b;->d(III)I

    move-result v2

    invoke-virtual {p0, p2, v4, v3}, Lcom/lua/c/a/a/a/b;->d(III)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->w(I)V

    move v0, v2

    move v2, v3

    :goto_1
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/b;->b()I

    move-result v3

    iget-object v4, p1, Lcom/lua/c/a/a/a/f$i;->e:Lcom/lua/c/a/a/a/d;

    iget v4, v4, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {p0, v4, v3, p2, v0}, Lcom/lua/c/a/a/a/b;->d(IIII)V

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->d:Lcom/lua/c/a/a/a/d;

    iget v0, v0, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {p0, v0, v3, p2, v2}, Lcom/lua/c/a/a/a/b;->d(IIII)V

    :cond_2
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->e:Lcom/lua/c/a/a/a/d;

    iget-object v2, p1, Lcom/lua/c/a/a/a/f$i;->d:Lcom/lua/c/a/a/a/d;

    iput v1, v2, Lcom/lua/c/a/a/a/d;->a:I

    iput v1, v0, Lcom/lua/c/a/a/a/d;->a:I

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iput p2, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    const/4 v0, 0x6

    iput v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    return-void

    :cond_3
    move v0, v1

    move v2, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/lua/c/a/a/a/b;->c()I

    move-result v0

    goto :goto_0
.end method

.method b(Lcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->e(Lcom/lua/c/a/a/a/f$i;)I

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->i(Lcom/lua/c/a/a/a/f$i;)V

    iget-short v0, p0, Lcom/lua/c/a/a/a/b;->q:S

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/b;->z(I)V

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v2, v2, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->d(Lcom/lua/c/a/a/a/f$i;)I

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->i(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v1, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iput v0, v1, Lcom/lua/c/a/a/a/f$i$a;->e:I

    const/4 v0, 0x6

    iput v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    return-void
.end method

.method c()I
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->j:Lcom/lua/c/a/a/a/d;

    iget v1, v0, Lcom/lua/c/a/a/a/d;->a:I

    iput v4, v0, Lcom/lua/c/a/a/a/d;->a:I

    new-instance v0, Lcom/lua/c/a/a/a/d;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/lua/c/a/a/a/b;->c(III)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/lua/c/a/a/a/d;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/d;I)V

    iget v0, v0, Lcom/lua/c/a/a/a/d;->a:I

    return v0
.end method

.method c(II)I
    .locals 2

    const v0, 0x3ffff

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/lua/c/a/a/a/b;->b(III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/lua/c/a/a/a/b;->b(III)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->m(I)I

    goto :goto_0
.end method

.method c(III)I
    .locals 1

    const v0, 0x1ffff

    add-int/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/lua/c/a/a/a/b;->b(III)I

    move-result v0

    return v0
.end method

.method c(IIII)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/b;->c()I

    move-result v0

    return v0
.end method

.method c(Lcom/lua/c/a/a/a/f$i;I)I
    .locals 4

    const/4 v1, 0x0

    iget v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->j(Lcom/lua/c/a/a/a/f$i;)I

    move-result v2

    invoke-static {v2}, Lcom/lua/c/a/a/c;->e(I)I

    move-result v0

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/lua/c/a/a/a/b;->h:I

    const/4 v0, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/lua/c/a/a/a/b;->h:I

    invoke-static {v2}, Lcom/lua/c/a/a/c;->b(I)I

    move-result v2

    if-eqz p2, :cond_0

    move v0, v1

    :cond_0
    const/16 v3, 0x1b

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/lua/c/a/a/a/b;->c(IIII)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->b(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->i(Lcom/lua/c/a/a/a/f$i;)V

    const/16 v0, 0x1c

    const/16 v1, 0xff

    iget-object v2, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v2, v2, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/lua/c/a/a/a/b;->c(IIII)I

    move-result v0

    goto :goto_0
.end method

.method c(Lcom/lua/c/a/a/j;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/k;)I

    move-result v0

    return v0
.end method

.method c(Lcom/lua/c/a/a/a/f$i;)V
    .locals 6

    const/16 v5, 0xd

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v4, 0x0

    iget v2, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->p(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget-short v2, v2, Lcom/lua/c/a/a/a/f$i$a;->a:S

    invoke-virtual {p0, v2}, Lcom/lua/c/a/a/a/b;->o(I)V

    iget-object v2, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget-short v3, v2, Lcom/lua/c/a/a/a/f$i$a;->c:S

    if-ne v3, v0, :cond_0

    iget-short v1, v2, Lcom/lua/c/a/a/a/f$i$a;->b:S

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/b;->o(I)V

    :goto_1
    iget-object v1, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget-short v2, v1, Lcom/lua/c/a/a/a/f$i$a;->b:S

    iget-short v3, v1, Lcom/lua/c/a/a/a/f$i$a;->a:S

    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    move-result v0

    iput v0, v1, Lcom/lua/c/a/a/a/f$i$a;->e:I

    iput v5, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    const/4 v0, 0x0

    :goto_2
    iput-object v0, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->s(I)Lcom/lua/c/a/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/lua/c/a/a/m;->b:Lcom/lua/c/a/a/n;

    iput-object v0, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    const/4 v1, 0x5

    iget v2, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v1, v4, v2, v4}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    move-result v1

    :goto_3
    iput v1, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    iput v5, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    const/16 v1, 0x31

    :goto_4
    iget v2, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v1, v4, v2}, Lcom/lua/c/a/a/a/b;->b(III)I

    move-result v1

    goto :goto_3

    :pswitch_5
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    const/16 v1, 0x2e

    goto :goto_4

    :pswitch_6
    iput v1, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/lua/c/a/a/b;->f:Lcom/lua/c/a/a/n;

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method c(Lcom/lua/c/a/a/a/f$i;Lcom/lua/c/a/a/a/f$i;)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    if-eqz v0, :cond_0

    iget-object v3, p2, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    iget-object v3, v3, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    iget v0, v0, Lcom/lua/c/a/a/n;->g:I

    if-nez v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    if-nez v3, :cond_1

    iget v3, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    iget-object v3, p2, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    iput-object v3, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    :cond_1
    iget v3, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    packed-switch v3, :pswitch_data_0

    invoke-static {v1}, Lcom/lua/c/a/a/a/a;->a(Z)V

    :cond_2
    :goto_1
    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->i(Lcom/lua/c/a/a/a/f$i;)V

    :cond_3
    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v1, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget-short v1, v1, Lcom/lua/c/a/a/a/f$i$a;->c:S

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    const/16 v1, 0xa

    :goto_3
    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->d(Lcom/lua/c/a/a/a/f$i;)I

    move-result v2

    iget-object v3, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget-short v4, v3, Lcom/lua/c/a/a/a/f$i$a;->b:S

    iget-short v3, v3, Lcom/lua/c/a/a/a/f$i$a;->a:S

    invoke-virtual {p0, v1, v4, v3, v2}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    goto :goto_3

    :pswitch_1
    const/16 v3, 0x9

    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->e(Lcom/lua/c/a/a/a/f$i;)I

    move-result v4

    iget-object v5, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v5, v5, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    iget-object v3, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v3, v3, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v3}, Lcom/lua/c/a/a/a/b;->s(I)Lcom/lua/c/a/a/m;

    move-result-object v3

    iget-object v3, v3, Lcom/lua/c/a/a/m;->b:Lcom/lua/c/a/a/n;

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v3, v3, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v3}, Lcom/lua/c/a/a/a/b;->s(I)Lcom/lua/c/a/a/m;

    move-result-object v3

    iget-object v4, p2, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    iput-object v4, v3, Lcom/lua/c/a/a/m;->b:Lcom/lua/c/a/a/n;

    :cond_6
    if-nez v0, :cond_2

    const-string v3, "%d: upvalue %s type error %s %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iget v5, v5, Lcom/lua/c/a/a/a/f;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v1, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v1, v1, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/b;->s(I)Lcom/lua/c/a/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/lua/c/a/a/m;->a:Lcom/lua/c/a/a/j;

    aput-object v1, v4, v2

    iget-object v1, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/n;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    iget-object v1, p2, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/n;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/a/f;->h:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->e(Lcom/lua/c/a/a/a/f$i;)I

    move-result v1

    const/16 v2, 0x32

    :goto_4
    iget-object v3, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v3, v3, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v2, v1, v3}, Lcom/lua/c/a/a/a/b;->b(III)I

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->e(Lcom/lua/c/a/a/a/f$i;)I

    move-result v1

    const/16 v2, 0x2f

    goto :goto_4

    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/lua/c/a/a/a/b;->i(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v3, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v3, v3, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, p2, v3}, Lcom/lua/c/a/a/a/b;->b(Lcom/lua/c/a/a/a/f$i;I)V

    iget-object v3, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v3, v3, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v3}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v3

    iget-object v3, v3, Lcom/lua/c/a/a/b;->f:Lcom/lua/c/a/a/n;

    if-nez v3, :cond_7

    iget-object v3, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v3, v3, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v3}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v3

    iget-object v4, p2, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    iput-object v4, v3, Lcom/lua/c/a/a/b;->f:Lcom/lua/c/a/a/n;

    :cond_7
    if-nez v0, :cond_3

    const-string v3, "%d: local %s type error %s %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iget v5, v5, Lcom/lua/c/a/a/a/f;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v1, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v1, v1, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/lua/c/a/a/b;->a:Lcom/lua/c/a/a/j;

    aput-object v1, v4, v2

    iget-object v1, p1, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/n;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    iget-object v1, p2, Lcom/lua/c/a/a/a/f$i;->a:Lcom/lua/c/a/a/n;

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/n;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/a/f;->h:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method d(III)I
    .locals 1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/b;->b()I

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    move-result v0

    return v0
.end method

.method d(Lcom/lua/c/a/a/a/f$i;)I
    .locals 6

    const/16 v5, 0xff

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->h(Lcom/lua/c/a/a/a/f$i;)V

    iget v1, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    if-eq v1, v0, :cond_3

    if-eq v1, v4, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->e(Lcom/lua/c/a/a/a/f$i;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    invoke-virtual {v0}, Lcom/lua/c/a/a/a/f$i$a;->a()Lcom/lua/c/a/a/k;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/b;->b(Lcom/lua/c/a/a/k;)I

    move-result v1

    iput v1, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    iput v3, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    :cond_2
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    if-gt v0, v5, :cond_0

    invoke-static {v0}, Lcom/lua/c/a/a/c;->g(I)I

    move-result v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/lua/c/a/a/a/b;->k:I

    if-gt v1, v5, :cond_0

    iget-object v1, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v2, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    if-ne v2, v0, :cond_4

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/b;->e()I

    move-result v0

    :goto_1
    iput v0, v1, Lcom/lua/c/a/a/a/f$i$a;->e:I

    iput v3, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-static {v0}, Lcom/lua/c/a/a/c;->g(I)I

    move-result v0

    goto :goto_0

    :cond_4
    if-ne v2, v4, :cond_5

    :goto_2
    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->b(Z)I

    move-result v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method d()V
    .locals 4

    iget-object v1, p0, Lcom/lua/c/a/a/a/b;->g:Lcom/lua/c/a/a/a/b$a;

    iget-object v0, v1, Lcom/lua/c/a/a/a/b$a;->a:Lcom/lua/c/a/a/a/b$a;

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/lua/c/a/a/a/b$a;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/b;->c()I

    move-result v0

    iget-short v2, v1, Lcom/lua/c/a/a/a/b$a;->d:S

    invoke-virtual {p0, v0, v2}, Lcom/lua/c/a/a/a/b;->f(II)V

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->w(I)V

    :cond_0
    iget-boolean v0, v1, Lcom/lua/c/a/a/a/b$a;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    invoke-virtual {v0}, Lcom/lua/c/a/a/a/f;->c()V

    :cond_1
    iget-object v0, v1, Lcom/lua/c/a/a/a/b$a;->a:Lcom/lua/c/a/a/a/b$a;

    iput-object v0, p0, Lcom/lua/c/a/a/a/b;->g:Lcom/lua/c/a/a/a/b$a;

    iget-short v0, v1, Lcom/lua/c/a/a/a/b$a;->d:S

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->y(I)V

    iget-short v0, v1, Lcom/lua/c/a/a/a/b$a;->d:S

    iget-short v2, p0, Lcom/lua/c/a/a/a/b;->o:S

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    iget-short v0, p0, Lcom/lua/c/a/a/a/b;->o:S

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/c/a/a/a/b;->q:S

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iget-object v2, v0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-short v3, v1, Lcom/lua/c/a/a/a/b$a;->b:S

    iput v3, v2, Lcom/lua/c/a/a/a/f$b;->f:I

    iget-object v3, v1, Lcom/lua/c/a/a/a/b$a;->a:Lcom/lua/c/a/a/a/b$a;

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/b$a;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-short v1, v1, Lcom/lua/c/a/a/a/b$a;->c:S

    iget v3, v2, Lcom/lua/c/a/a/a/f$b;->d:I

    if-ge v1, v3, :cond_2

    iget-object v2, v2, Lcom/lua/c/a/a/a/f$b;->c:[Lcom/lua/c/a/a/a/f$d;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/f;->b(Lcom/lua/c/a/a/a/f$d;)V

    const/4 v0, 0x0

    throw v0
.end method

.method d(II)V
    .locals 4

    new-instance v1, Lcom/lua/c/a/a/a/c;

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v0, v0, Lcom/lua/c/a/a/l;->d:[I

    invoke-direct {v1, v0, p1}, Lcom/lua/c/a/a/a/c;-><init>([II)V

    const/4 v0, 0x1

    add-int/lit8 v2, p1, 0x1

    sub-int v2, p2, v2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v3, 0x1ffff

    if-gt v0, v3, :cond_1

    invoke-static {v1, v2}, Lcom/lua/c/a/a/a/a;->e(Lcom/lua/c/a/a/a/c;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    const-string v1, "control structure too long"

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method d(IIII)V
    .locals 2

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->p(I)I

    move-result v0

    invoke-virtual {p0, p1, p3}, Lcom/lua/c/a/a/a/b;->h(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/lua/c/a/a/a/b;->d(II)V

    :goto_1
    move p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/lua/c/a/a/a/b;->d(II)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method d(Lcom/lua/c/a/a/a/f$i;I)V
    .locals 2

    iget v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->k(Lcom/lua/c/a/a/a/f$i;)Lcom/lua/c/a/a/a/c;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/a/a;->d(Lcom/lua/c/a/a/a/c;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->k(Lcom/lua/c/a/a/a/f$i;)Lcom/lua/c/a/a/a/c;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/a/a;->b(Lcom/lua/c/a/a/a/c;I)V

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->k(Lcom/lua/c/a/a/a/f$i;)Lcom/lua/c/a/a/a/c;

    move-result-object v0

    iget-short v1, p0, Lcom/lua/c/a/a/a/b;->q:S

    invoke-static {v0, v1}, Lcom/lua/c/a/a/a/a;->a(Lcom/lua/c/a/a/a/c;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->z(I)V

    goto :goto_0
.end method

.method e()I
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->b:Lcom/lua/c/a/a/k;

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/k;)I

    move-result v0

    return v0
.end method

.method e(Lcom/lua/c/a/a/a/f$i;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/a/f$i;)V

    iget v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/lua/c/a/a/a/f$i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    return v0

    :cond_0
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    iget-short v1, p0, Lcom/lua/c/a/a/a/b;->o:S

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/lua/c/a/a/a/b;->b(Lcom/lua/c/a/a/a/f$i;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->g(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0
.end method

.method e(II)V
    .locals 5

    const/4 v4, 0x4

    add-int v0, p1, p2

    add-int/lit8 v1, v0, -0x1

    iget v0, p0, Lcom/lua/c/a/a/a/b;->h:I

    iget v2, p0, Lcom/lua/c/a/a/a/b;->i:I

    if-le v0, v2, :cond_3

    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v2, v2, Lcom/lua/c/a/a/l;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    invoke-static {v0}, Lcom/lua/c/a/a/c;->e(I)I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-static {v0}, Lcom/lua/c/a/a/c;->a(I)I

    move-result v2

    invoke-static {v0}, Lcom/lua/c/a/a/c;->b(I)I

    move-result v0

    add-int/2addr v0, v2

    if-gt v2, p1, :cond_0

    add-int/lit8 v3, v0, 0x1

    if-le p1, v3, :cond_1

    :cond_0
    if-gt p1, v2, :cond_3

    add-int/lit8 v3, v1, 0x1

    if-gt v2, v3, :cond_3

    :cond_1
    if-ge v2, p1, :cond_2

    move p1, v2

    :cond_2
    if-le v0, v1, :cond_4

    :goto_0
    new-instance v1, Lcom/lua/c/a/a/a/c;

    iget-object v2, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v2, v2, Lcom/lua/c/a/a/l;->d:[I

    iget v3, p0, Lcom/lua/c/a/a/a/b;->h:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/lua/c/a/a/a/c;-><init>([II)V

    invoke-static {v1, p1}, Lcom/lua/c/a/a/a/a;->a(Lcom/lua/c/a/a/a/c;I)V

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Lcom/lua/c/a/a/a/a;->b(Lcom/lua/c/a/a/a/c;I)V

    :goto_1
    return-void

    :cond_3
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v4, p1, v0, v1}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method e(III)V
    .locals 5

    const/16 v4, 0x24

    const/4 v1, 0x0

    add-int/lit8 v0, p2, -0x1

    div-int/lit8 v0, v0, 0x32

    add-int/lit8 v3, v0, 0x1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    move v2, v1

    :goto_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    const/16 v0, 0x1ff

    if-gt v3, v0, :cond_2

    invoke-virtual {p0, v4, p1, v2, v3}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    :goto_2
    add-int/lit8 v0, p1, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/c/a/a/a/b;->q:S

    return-void

    :cond_0
    move v2, p3

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4, p1, v2, v1}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iget v0, v0, Lcom/lua/c/a/a/a/f;->x:I

    invoke-virtual {p0, v3, v0}, Lcom/lua/c/a/a/a/b;->b(II)I

    goto :goto_2
.end method

.method f(II)V
    .locals 4

    add-int/lit8 v2, p2, 0x1

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->p(I)I

    move-result v1

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v0, v0, Lcom/lua/c/a/a/l;->d:[I

    aget v0, v0, p1

    invoke-static {v0}, Lcom/lua/c/a/a/c;->e(I)I

    move-result v0

    const/16 v3, 0x17

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v0, v0, Lcom/lua/c/a/a/l;->d:[I

    aget v0, v0, p1

    invoke-static {v0}, Lcom/lua/c/a/a/c;->a(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v0, v0, Lcom/lua/c/a/a/l;->d:[I

    aget v0, v0, p1

    invoke-static {v0}, Lcom/lua/c/a/a/c;->a(I)I

    move-result v0

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v0, v0, Lcom/lua/c/a/a/l;->d:[I

    invoke-static {v0, p1, v2}, Lcom/lua/c/a/a/a/a;->a([III)V

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method f(Lcom/lua/c/a/a/a/f$i;)V
    .locals 2

    iget v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/lua/c/a/a/a/f$i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->e(Lcom/lua/c/a/a/a/f$i;)I

    :cond_1
    return-void
.end method

.method g(II)V
    .locals 1

    iget v0, p0, Lcom/lua/c/a/a/a/b;->h:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->w(I)V

    :goto_0
    return-void

    :cond_0
    if-ge p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    const/16 v0, 0xff

    invoke-virtual {p0, p1, p2, v0, p2}, Lcom/lua/c/a/a/a/b;->d(IIII)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method g(Lcom/lua/c/a/a/a/f$i;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/a/f$i;)V

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->i(Lcom/lua/c/a/a/a/f$i;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->z(I)V

    iget-short v0, p0, Lcom/lua/c/a/a/a/b;->q:S

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/lua/c/a/a/a/b;->b(Lcom/lua/c/a/a/a/f$i;I)V

    return-void
.end method

.method h(Lcom/lua/c/a/a/a/f$i;)V
    .locals 1

    invoke-virtual {p1}, Lcom/lua/c/a/a/a/f$i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->e(Lcom/lua/c/a/a/a/f$i;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/a/f$i;)V

    goto :goto_0
.end method

.method h(II)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->q(I)Lcom/lua/c/a/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/c/a/a/a/c;->a()I

    move-result v2

    invoke-static {v2}, Lcom/lua/c/a/a/c;->e(I)I

    move-result v2

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v2, 0xff

    if-eq p2, v2, :cond_1

    invoke-virtual {v1}, Lcom/lua/c/a/a/a/c;->a()I

    move-result v2

    invoke-static {v2}, Lcom/lua/c/a/a/c;->b(I)I

    move-result v2

    if-eq p2, v2, :cond_1

    invoke-static {v1, p2}, Lcom/lua/c/a/a/a/a;->a(Lcom/lua/c/a/a/a/c;I)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x1b

    invoke-virtual {v1}, Lcom/lua/c/a/a/a/c;->a()I

    move-result v3

    invoke-static {v3}, Lcom/lua/c/a/a/c;->b(I)I

    move-result v3

    invoke-virtual {v1}, Lcom/lua/c/a/a/a/c;->a()I

    move-result v4

    invoke-static {v4}, Lcom/lua/c/a/a/c;->c(I)I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Lcom/lua/c/a/a/a/a;->a(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lua/c/a/a/a/c;->a(I)V

    goto :goto_1
.end method

.method i(II)V
    .locals 3

    const/16 v0, 0x1f

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/lua/c/a/a/a/b;->b(IIII)I

    return-void
.end method

.method i(Lcom/lua/c/a/a/a/f$i;)V
    .locals 2

    iget v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->o(I)V

    :cond_0
    return-void
.end method

.method j(Lcom/lua/c/a/a/a/f$i;)I
    .locals 2

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v0, v0, Lcom/lua/c/a/a/l;->d:[I

    iget-object v1, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v1, v1, Lcom/lua/c/a/a/a/f$i$a;->e:I

    aget v0, v0, v1

    return v0
.end method

.method k(Lcom/lua/c/a/a/a/f$i;)Lcom/lua/c/a/a/a/c;
    .locals 3

    new-instance v0, Lcom/lua/c/a/a/a/c;

    iget-object v1, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v1, v1, Lcom/lua/c/a/a/l;->d:[I

    iget-object v2, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v2, v2, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-direct {v0, v1, v2}, Lcom/lua/c/a/a/a/c;-><init>([II)V

    return-object v0
.end method

.method l(I)V
    .locals 3

    iget-short v0, p0, Lcom/lua/c/a/a/a/b;->q:S

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget v2, v1, Lcom/lua/c/a/a/l;->n:I

    if-le v0, v2, :cond_0

    const/16 v2, 0xfa

    if-ge v0, v2, :cond_1

    iput v0, v1, Lcom/lua/c/a/a/l;->n:I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    const-string v1, "function or expression too complex"

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method l(Lcom/lua/c/a/a/a/f$i;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/a/f$i;)V

    iget v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/a/f$i;I)I

    move-result v0

    :goto_0
    iget-object v2, p1, Lcom/lua/c/a/a/a/f$i;->d:Lcom/lua/c/a/a/a/d;

    invoke-virtual {p0, v2, v0}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/d;I)V

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->e:Lcom/lua/c/a/a/a/d;

    iget v0, v0, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->w(I)V

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->e:Lcom/lua/c/a/a/a/d;

    iput v1, v0, Lcom/lua/c/a/a/a/d;->a:I

    return-void

    :cond_0
    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method m(I)I
    .locals 2

    const v0, 0x3ffffff

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    const/16 v0, 0x38

    invoke-static {v0, p1}, Lcom/lua/c/a/a/a/a;->a(II)I

    move-result v0

    iget-object v1, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iget v1, v1, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/a/b;->b(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method m(Lcom/lua/c/a/a/a/f$i;)V
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/a/f$i;)V

    iget v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lua/c/a/a/a/b;->c(Lcom/lua/c/a/a/a/f$i;I)I

    move-result v0

    :goto_0
    iget-object v2, p1, Lcom/lua/c/a/a/a/f$i;->e:Lcom/lua/c/a/a/a/d;

    invoke-virtual {p0, v2, v0}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/d;I)V

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->d:Lcom/lua/c/a/a/a/d;

    iget v0, v0, Lcom/lua/c/a/a/a/d;->a:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->w(I)V

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->d:Lcom/lua/c/a/a/a/d;

    iput v1, v0, Lcom/lua/c/a/a/a/d;->a:I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->n(Lcom/lua/c/a/a/a/f$i;)V

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method n(I)V
    .locals 2

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v0, v0, Lcom/lua/c/a/a/l;->f:[I

    iget v1, p0, Lcom/lua/c/a/a/a/b;->h:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method n(Lcom/lua/c/a/a/a/f$i;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    iget v0, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->q(I)Lcom/lua/c/a/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lua/c/a/a/a/c;->a()I

    move-result v0

    invoke-static {v0}, Lcom/lua/c/a/a/c;->e(I)I

    move-result v0

    invoke-static {v0}, Lcom/lua/c/a/a/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/lua/c/a/a/a/c;->a()I

    move-result v0

    invoke-static {v0}, Lcom/lua/c/a/a/c;->e(I)I

    move-result v0

    const/16 v4, 0x1c

    if-eq v0, v4, :cond_1

    invoke-virtual {v3}, Lcom/lua/c/a/a/a/c;->a()I

    move-result v0

    invoke-static {v0}, Lcom/lua/c/a/a/c;->e(I)I

    move-result v0

    const/16 v4, 0x1b

    if-eq v0, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    invoke-virtual {v3}, Lcom/lua/c/a/a/a/c;->a()I

    move-result v0

    invoke-static {v0}, Lcom/lua/c/a/a/c;->a(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v1}, Lcom/lua/c/a/a/a/a;->a(Lcom/lua/c/a/a/a/c;I)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method o(I)V
    .locals 2

    invoke-static {p1}, Lcom/lua/c/a/a/c;->f(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/lua/c/a/a/a/b;->o:S

    if-lt p1, v0, :cond_0

    iget-short v1, p0, Lcom/lua/c/a/a/a/b;->q:S

    const/4 v0, 0x1

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/lua/c/a/a/a/b;->q:S

    iget-short v1, p0, Lcom/lua/c/a/a/a/b;->q:S

    if-ne p1, v1, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method o(Lcom/lua/c/a/a/a/f$i;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/lua/c/a/a/a/b;->d(Lcom/lua/c/a/a/a/f$i;I)V

    return-void
.end method

.method p(I)I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v1, v1, Lcom/lua/c/a/a/l;->d:[I

    aget v1, v1, p1

    invoke-static {v1}, Lcom/lua/c/a/a/c;->d(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method p(Lcom/lua/c/a/a/a/f$i;)V
    .locals 2

    iget v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    const/4 v0, 0x6

    iput v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    iget-object v0, p1, Lcom/lua/c/a/a/a/f$i;->c:Lcom/lua/c/a/a/a/f$i$a;

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->j(Lcom/lua/c/a/a/a/f$i;)I

    move-result v1

    invoke-static {v1}, Lcom/lua/c/a/a/c;->a(I)I

    move-result v1

    iput v1, v0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->k(Lcom/lua/c/a/a/a/f$i;)Lcom/lua/c/a/a/a/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/lua/c/a/a/a/a;->b(Lcom/lua/c/a/a/a/c;I)V

    const/16 v0, 0xd

    iput v0, p1, Lcom/lua/c/a/a/a/f$i;->b:I

    goto :goto_0
.end method

.method q(I)Lcom/lua/c/a/a/a/c;
    .locals 3

    new-instance v1, Lcom/lua/c/a/a/a/c;

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v0, v0, Lcom/lua/c/a/a/l;->d:[I

    invoke-direct {v1, v0, p1}, Lcom/lua/c/a/a/a/c;-><init>([II)V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget-object v0, v1, Lcom/lua/c/a/a/a/c;->a:[I

    iget v2, v1, Lcom/lua/c/a/a/a/c;->b:I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    invoke-static {v0}, Lcom/lua/c/a/a/c;->e(I)I

    move-result v0

    invoke-static {v0}, Lcom/lua/c/a/a/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lua/c/a/a/a/c;

    iget-object v2, v1, Lcom/lua/c/a/a/a/c;->a:[I

    iget v1, v1, Lcom/lua/c/a/a/a/c;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v2, v1}, Lcom/lua/c/a/a/a/c;-><init>([II)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method r(I)Lcom/lua/c/a/a/b;
    .locals 4

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iget-object v0, v0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget-object v0, v0, Lcom/lua/c/a/a/a/f$b;->a:[Lcom/lua/c/a/a/a/f$h;

    iget v1, p0, Lcom/lua/c/a/a/a/b;->m:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    iget-short v1, v0, Lcom/lua/c/a/a/a/f$h;->a:S

    iget-short v0, p0, Lcom/lua/c/a/a/a/b;->n:S

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iget v3, v3, Lcom/lua/c/a/a/a/f;->w:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lua/c/a/a/a/a;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v0, v0, Lcom/lua/c/a/a/l;->g:[Lcom/lua/c/a/a/b;

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method s(I)Lcom/lua/c/a/a/m;
    .locals 1

    iget-short v0, p0, Lcom/lua/c/a/a/a/b;->p:S

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v0, v0, Lcom/lua/c/a/a/l;->h:[Lcom/lua/c/a/a/m;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method t(I)Z
    .locals 1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method u(I)V
    .locals 2

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->g:Lcom/lua/c/a/a/a/b$a;

    :goto_0
    iget-short v1, v0, Lcom/lua/c/a/a/a/b$a;->d:S

    if-le v1, p1, :cond_0

    iget-object v0, v0, Lcom/lua/c/a/a/a/b$a;->a:Lcom/lua/c/a/a/a/b$a;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lua/c/a/a/a/b$a;->e:Z

    return-void
.end method

.method v(I)Z
    .locals 2

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->q(I)Lcom/lua/c/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/c/a/a/a/c;->a()I

    move-result v0

    invoke-static {v0}, Lcom/lua/c/a/a/c;->e(I)I

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->p(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method w(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a/b;->b()I

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->j:Lcom/lua/c/a/a/a/d;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/a/b;->a(Lcom/lua/c/a/a/a/d;I)V

    return-void
.end method

.method x(I)V
    .locals 1

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Lcom/lua/c/a/a/a/b;->h(II)Z

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->p(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method y(I)V
    .locals 3

    iget-object v0, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iget-object v0, v0, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    iget v1, v0, Lcom/lua/c/a/a/a/f$b;->b:I

    iget-short v2, p0, Lcom/lua/c/a/a/a/b;->o:S

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/lua/c/a/a/a/f$b;->b:I

    :goto_0
    iget-short v0, p0, Lcom/lua/c/a/a/a/b;->o:S

    if-le v0, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    int-to-short v1, v0

    int-to-short v1, v1

    iput-short v1, p0, Lcom/lua/c/a/a/a/b;->o:S

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/b;->r(I)Lcom/lua/c/a/a/b;

    move-result-object v0

    iget v1, p0, Lcom/lua/c/a/a/a/b;->h:I

    iput v1, v0, Lcom/lua/c/a/a/b;->c:I

    iget-object v1, p0, Lcom/lua/c/a/a/a/b;->e:Lcom/lua/c/a/a/a/f;

    iget v1, v1, Lcom/lua/c/a/a/a/f;->q:I

    iput v1, v0, Lcom/lua/c/a/a/b;->e:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method z(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/b;->l(I)V

    iget-short v0, p0, Lcom/lua/c/a/a/a/b;->q:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/c/a/a/a/b;->q:S

    return-void
.end method
