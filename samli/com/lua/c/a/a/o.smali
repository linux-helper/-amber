.class public abstract Lcom/lua/c/a/a/o;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/lua/c/a/a/k;
.end method

.method public abstract a(I)Lcom/lua/c/a/a/k;
.end method

.method public abstract b()I
.end method

.method public c()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    new-instance v2, Lcom/lua/c/a/a/a;

    invoke-direct {v2}, Lcom/lua/c/a/a/a;-><init>()V

    const-string v0, "("

    invoke-virtual {v2, v0}, Lcom/lua/c/a/a/a;->a(Ljava/lang/String;)Lcom/lua/c/a/a/a;

    invoke-virtual {p0}, Lcom/lua/c/a/a/o;->b()I

    move-result v3

    move v0, v1

    :goto_0
    if-gt v0, v3, :cond_1

    if-le v0, v1, :cond_0

    const-string v4, ","

    invoke-virtual {v2, v4}, Lcom/lua/c/a/a/a;->a(Ljava/lang/String;)Lcom/lua/c/a/a/a;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/o;->a(I)Lcom/lua/c/a/a/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lua/c/a/a/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lua/c/a/a/a;->a(Ljava/lang/String;)Lcom/lua/c/a/a/a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ")"

    invoke-virtual {v2, v0}, Lcom/lua/c/a/a/a;->a(Ljava/lang/String;)Lcom/lua/c/a/a/a;

    invoke-virtual {v2}, Lcom/lua/c/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/c/a/a/o;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
