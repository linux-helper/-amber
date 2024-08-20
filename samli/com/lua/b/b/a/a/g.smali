.class Lcom/lua/b/b/a/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/b/b/a/a/q;
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

    iput-object p1, p0, Lcom/lua/b/b/a/a/g;->a:Lcom/lua/b/b/a/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/lua/b/b/a/a/g;->a:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->e()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/g;->a:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/g;->a:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->b(Lcom/lua/b/b/a/a/q;)Ljava/lang/Runnable;

    move-result-object v1

    sget-wide v2, Lcom/lua/b/b/a/a/q;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
