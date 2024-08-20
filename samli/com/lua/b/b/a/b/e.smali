.class public Lcom/lua/b/b/a/b/e;
.super Lcom/lua/b/b/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 3

    const v2, -0xf0f13

    invoke-direct {p0}, Lcom/lua/b/b/a/b/c;-><init>()V

    sget-object v0, Lcom/lua/b/b/a/b/c$a;->a:Lcom/lua/b/b/a/b/c$a;

    const v1, -0xcccccd

    invoke-virtual {p0, v0, v1}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;I)V

    sget-object v0, Lcom/lua/b/b/a/b/c$a;->b:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {p0, v0, v2}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;I)V

    sget-object v0, Lcom/lua/b/b/a/b/c$a;->c:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {p0, v0, v2}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;I)V

    sget-object v0, Lcom/lua/b/b/a/b/c$a;->e:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {p0, v0, v2}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;I)V

    return-void
.end method
