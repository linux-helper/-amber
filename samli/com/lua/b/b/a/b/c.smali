.class public abstract Lcom/lua/b/b/a/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/b/b/a/b/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lua/b/b/a/b/c$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/lua/b/b/a/b/c;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/b/b/a/b/c;->a:Ljava/util/HashMap;

    return-void
.end method

.method private a()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/lua/b/b/a/b/c$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/lua/b/b/a/b/c$a;->values()[Lcom/lua/b/b/a/b/c$a;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->o:Lcom/lua/b/b/a/b/c$a;

    const v2, -0x775578

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->p:Lcom/lua/b/b/a/b/c$a;

    const v2, -0x777756

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->q:Lcom/lua/b/b/a/b/c$a;

    const v2, -0x555578

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->a:Lcom/lua/b/b/a/b/c$a;

    const/high16 v2, -0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->b:Lcom/lua/b/b/a/b/c$a;

    const/16 v2, -0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->c:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->d:Lcom/lua/b/b/a/b/c$a;

    const v3, -0x683fdc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->e:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->f:Lcom/lua/b/b/a/b/c$a;

    const v2, -0xbf4f01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->g:Lcom/lua/b/b/a/b/c$a;

    const v2, -0x7f7f80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->h:Lcom/lua/b/b/a/b/c$a;

    const v3, 0x20888888

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->i:Lcom/lua/b/b/a/b/c$a;

    const v3, -0x555556

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->j:Lcom/lua/b/b/a/b/c$a;

    const v3, -0xc080a1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->k:Lcom/lua/b/b/a/b/c$a;

    const v3, -0x2fbf23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->l:Lcom/lua/b/b/a/b/c$a;

    const v3, -0xd5bf01

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->m:Lcom/lua/b/b/a/b/c$a;

    const v3, -0x9f7f01

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->n:Lcom/lua/b/b/a/b/c$a;

    const v3, -0x22bb78

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->r:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x32

    if-eq p1, v0, :cond_0

    const/16 v0, 0x33

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "Invalid token type"

    invoke-static {v0}, Lcom/lua/b/b/a/b/v;->a(Ljava/lang/String;)V

    :pswitch_0
    sget-object v0, Lcom/lua/b/b/a/b/c$a;->a:Lcom/lua/b/b/a/b/c$a;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;)I

    move-result v0

    return v0

    :pswitch_1
    sget-object v0, Lcom/lua/b/b/a/b/c$a;->q:Lcom/lua/b/b/a/b/c$a;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/lua/b/b/a/b/c$a;->p:Lcom/lua/b/b/a/b/c$a;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/lua/b/b/a/b/c$a;->o:Lcom/lua/b/b/a/b/c$a;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/lua/b/b/a/b/c$a;->m:Lcom/lua/b/b/a/b/c$a;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/lua/b/b/a/b/c$a;->l:Lcom/lua/b/b/a/b/c$a;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/lua/b/b/a/b/c$a;->k:Lcom/lua/b/b/a/b/c$a;

    goto :goto_0

    :cond_0
    :pswitch_7
    sget-object v0, Lcom/lua/b/b/a/b/c$a;->n:Lcom/lua/b/b/a/b/c$a;

    goto :goto_0

    :cond_1
    :pswitch_8
    sget-object v0, Lcom/lua/b/b/a/b/c$a;->j:Lcom/lua/b/b/a/b/c$a;

    goto :goto_0

    :cond_2
    :pswitch_9
    sget-object v0, Lcom/lua/b/b/a/b/c$a;->r:Lcom/lua/b/b/a/b/c$a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public a(Lcom/lua/b/b/a/b/c$a;)I
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/b/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color not specified for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/b/b/a/b/v;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/lua/b/b/a/b/c$a;I)V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/b/c;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
