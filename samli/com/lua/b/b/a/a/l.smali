.class Lcom/lua/b/b/a/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lua/b/b/a/a/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lua/b/b/a/a/q;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/lua/b/b/a/a/q;


# direct methods
.method constructor <init>(Lcom/lua/b/b/a/a/q;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/b/a/a/l;->a:Lcom/lua/b/b/a/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZII)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/l;->a:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->o(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/e;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/l;->a:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->o(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/e;->a()V

    goto :goto_0
.end method
