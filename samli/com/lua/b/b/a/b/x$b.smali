.class Lcom/lua/b/b/a/b/x$b;
.super Lcom/lua/b/b/a/b/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/b/b/a/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final f:Lcom/lua/b/b/a/b/x;


# direct methods
.method public constructor <init>(Lcom/lua/b/b/a/b/x;III)V
    .locals 1

    iput-object p1, p0, Lcom/lua/b/b/a/b/x$b;->f:Lcom/lua/b/b/a/b/x;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lua/b/b/a/b/x$a;-><init>(Lcom/lua/b/b/a/b/x;Lcom/lua/b/b/a/b/w;)V

    iput p2, p0, Lcom/lua/b/b/a/b/x$a;->a:I

    iput p3, p0, Lcom/lua/b/b/a/b/x$a;->b:I

    iput p4, p0, Lcom/lua/b/b/a/b/x$a;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/b/x$a;->a:I

    return v0
.end method

.method public a(IIJ)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lua/b/b/a/b/x$b;->f:Lcom/lua/b/b/a/b/x;

    iget-wide v2, v1, Lcom/lua/b/b/a/b/x;->f:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-long v2, p3, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget v2, p0, Lcom/lua/b/b/a/b/x$a;->a:I

    iget v3, p0, Lcom/lua/b/b/a/b/x$a;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x1

    if-ne p1, v2, :cond_0

    iput p1, p0, Lcom/lua/b/b/a/b/x$a;->a:I

    add-int v0, v3, p2

    iput v0, p0, Lcom/lua/b/b/a/b/x$a;->b:I

    invoke-static {v1}, Lcom/lua/b/b/a/b/x;->a(Lcom/lua/b/b/a/b/x;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lcom/lua/b/b/a/b/x$a;->a:I

    iget v1, p0, Lcom/lua/b/b/a/b/x$a;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public c()V
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/lua/b/b/a/b/x$b;->f:Lcom/lua/b/b/a/b/x;

    invoke-static {v1}, Lcom/lua/b/b/a/b/x;->b(Lcom/lua/b/b/a/b/x;)Lcom/lua/b/b/a/b/t;

    move-result-object v1

    iget v2, p0, Lcom/lua/b/b/a/b/x$a;->b:I

    invoke-virtual {v1, v2}, Lcom/lua/b/b/a/b/t;->b(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/lua/b/b/a/b/x$a;->c:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 7

    iget-object v0, p0, Lcom/lua/b/b/a/b/x$b;->f:Lcom/lua/b/b/a/b/x;

    invoke-static {v0}, Lcom/lua/b/b/a/b/x;->b(Lcom/lua/b/b/a/b/x;)Lcom/lua/b/b/a/b/t;

    move-result-object v1

    iget v2, p0, Lcom/lua/b/b/a/b/x$a;->a:I

    iget v3, p0, Lcom/lua/b/b/a/b/x$a;->b:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/lua/b/b/a/b/t;->a(IIJZ)V

    return-void
.end method

.method public e()V
    .locals 7

    iget-object v0, p0, Lcom/lua/b/b/a/b/x$a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lua/b/b/a/b/x$b;->c()V

    iget-object v0, p0, Lcom/lua/b/b/a/b/x$b;->f:Lcom/lua/b/b/a/b/x;

    invoke-static {v0}, Lcom/lua/b/b/a/b/x;->b(Lcom/lua/b/b/a/b/x;)Lcom/lua/b/b/a/b/t;

    move-result-object v0

    iget v1, p0, Lcom/lua/b/b/a/b/x$a;->b:I

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/t;->m(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/x$b;->f:Lcom/lua/b/b/a/b/x;

    invoke-static {v0}, Lcom/lua/b/b/a/b/x;->b(Lcom/lua/b/b/a/b/x;)Lcom/lua/b/b/a/b/t;

    move-result-object v1

    iget-object v0, p0, Lcom/lua/b/b/a/b/x$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget v3, p0, Lcom/lua/b/b/a/b/x$a;->a:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/lua/b/b/a/b/t;->a([CIJZ)V

    goto :goto_0
.end method
