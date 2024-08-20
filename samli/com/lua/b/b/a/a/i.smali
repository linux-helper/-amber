.class Lcom/lua/b/b/a/a/i;
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

    iput-object p1, p0, Lcom/lua/b/b/a/a/i;->a:Lcom/lua/b/b/a/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/lua/b/b/a/a/i;->a:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->b(Z)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/i;->a:Lcom/lua/b/b/a/a/q;

    iget v1, v0, Lcom/lua/b/b/a/a/q;->j:I

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->j(Lcom/lua/b/b/a/a/q;)I

    move-result v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/i;->a:Lcom/lua/b/b/a/a/q;

    iget-object v2, v1, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v1, v1, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/i;->a:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->m(Lcom/lua/b/b/a/a/q;)Ljava/lang/Runnable;

    move-result-object v1

    sget-wide v2, Lcom/lua/b/b/a/a/q;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
