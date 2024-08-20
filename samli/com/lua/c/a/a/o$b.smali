.class final Lcom/lua/c/a/a/o$b;
.super Lcom/lua/c/a/a/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/c/a/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/lua/c/a/a/k;

.field private final b:Lcom/lua/c/a/a/o;


# direct methods
.method constructor <init>(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/lua/c/a/a/o;-><init>()V

    iput-object p1, p0, Lcom/lua/c/a/a/o$b;->a:Lcom/lua/c/a/a/k;

    iput-object p2, p0, Lcom/lua/c/a/a/o$b;->b:Lcom/lua/c/a/a/o;

    return-void
.end method


# virtual methods
.method public a()Lcom/lua/c/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/lua/c/a/a/o$b;->a:Lcom/lua/c/a/a/k;

    return-object v0
.end method

.method public a(I)Lcom/lua/c/a/a/k;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/lua/c/a/a/o$b;->a:Lcom/lua/c/a/a/k;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lua/c/a/a/o$b;->b:Lcom/lua/c/a/a/o;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/o;->a(I)Lcom/lua/c/a/a/k;

    move-result-object v0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/lua/c/a/a/o$b;->b:Lcom/lua/c/a/a/o;

    invoke-virtual {v0}, Lcom/lua/c/a/a/o;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
