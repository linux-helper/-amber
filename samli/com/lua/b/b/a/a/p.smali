.class Lcom/lua/b/b/a/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lua/b/b/a/a/q$a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/util/List;

.field final b:Lcom/lua/b/b/a/a/q$a;


# direct methods
.method constructor <init>(Lcom/lua/b/b/a/a/q$a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/b/a/a/p;->b:Lcom/lua/b/b/a/a/q$a;

    iput-object p2, p0, Lcom/lua/b/b/a/a/p;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/p;->b:Lcom/lua/b/b/a/a/q$a;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget-object v1, p0, Lcom/lua/b/b/a/a/p;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/g;->a(Ljava/util/List;)V

    sget-object v0, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lua/c/a/a/a/f;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/p;->b:Lcom/lua/b/b/a/a/q$a;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v1, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/lua/b/b/a/b/m;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lua/b/b/a/b/g;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/p;->b:Lcom/lua/b/b/a/a/q$a;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/p;->b:Lcom/lua/b/b/a/a/q$a;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q$a;->d:Lcom/lua/b/b/a/a/q;

    iget-object v1, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method
