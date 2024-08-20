.class Lcom/lua/c/a/a/a/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/c/a/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field private b:Ljava/util/Hashtable;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/c/a/a/a/g$a;->a:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/lua/c/a/a/a/g$a;->b:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic a(Lcom/lua/c/a/a/a/g$a;Ljava/io/InputStream;Ljava/lang/String;Lcom/lua/b/b/a/b/h;)Lcom/lua/c/a/a/l;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/lua/c/a/a/a/g$a;->a(Ljava/io/InputStream;Ljava/lang/String;Lcom/lua/b/b/a/b/h;)Lcom/lua/c/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/InputStream;Ljava/lang/String;Lcom/lua/b/b/a/b/h;)Lcom/lua/c/a/a/l;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Lcom/lua/c/a/a/a/f;

    invoke-direct {v3, p0, p1, v1, p3}, Lcom/lua/c/a/a/a/f;-><init>(Lcom/lua/c/a/a/a/g$a;Ljava/io/InputStream;ZLcom/lua/b/b/a/b/h;)V

    new-instance v4, Lcom/lua/c/a/a/a/b;

    invoke-direct {v4}, Lcom/lua/c/a/a/a/b;-><init>()V

    iput-object v4, v3, Lcom/lua/c/a/a/a/f;->A:Lcom/lua/c/a/a/a/b;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p2}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v5

    invoke-virtual {v3, p0, v0, p1, v5}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/g$a;ILjava/io/InputStream;Lcom/lua/c/a/a/j;)V

    new-instance v0, Lcom/lua/c/a/a/l;

    invoke-direct {v0}, Lcom/lua/c/a/a/l;-><init>()V

    iput-object v0, v4, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    iget-object v0, v4, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    invoke-static {p2}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v5

    iput-object v5, v0, Lcom/lua/c/a/a/l;->i:Lcom/lua/c/a/a/j;

    invoke-virtual {v3, v4}, Lcom/lua/c/a/a/a/f;->a(Lcom/lua/c/a/a/a/b;)V

    iget-object v0, v4, Lcom/lua/c/a/a/a/b;->d:Lcom/lua/c/a/a/a/b;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/lua/c/a/a/a/a;->a(Z)V

    iget-object v0, v3, Lcom/lua/c/a/a/a/f;->F:Lcom/lua/c/a/a/a/f$b;

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/lua/c/a/a/a/f$b;->b:I

    if-nez v3, :cond_1

    iget v3, v0, Lcom/lua/c/a/a/a/f$b;->d:I

    if-nez v3, :cond_1

    iget v0, v0, Lcom/lua/c/a/a/a/f$b;->f:I

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-static {v2}, Lcom/lua/c/a/a/a/a;->a(Z)V

    iget-object v0, v4, Lcom/lua/c/a/a/a/b;->b:Lcom/lua/c/a/a/l;

    return-object v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/lua/c/a/a/j;)Lcom/lua/c/a/a/j;
    .locals 1

    iget-object v0, p0, Lcom/lua/c/a/a/a/g$a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/c/a/a/j;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lua/c/a/a/a/g$a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/lua/c/a/a/j;
    .locals 1

    invoke-static {p1}, Lcom/lua/c/a/a/j;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/a/g$a;->a(Lcom/lua/c/a/a/j;)Lcom/lua/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/lua/c/a/a/j;)Lcom/lua/c/a/a/j;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/a/g$a;->a(Lcom/lua/c/a/a/j;)Lcom/lua/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
