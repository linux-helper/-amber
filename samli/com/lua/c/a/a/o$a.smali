.class final Lcom/lua/c/a/a/o$a;
.super Lcom/lua/c/a/a/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/c/a/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:[Lcom/lua/c/a/a/k;

.field private final b:Lcom/lua/c/a/a/o;


# direct methods
.method constructor <init>([Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/lua/c/a/a/o;-><init>()V

    iput-object p1, p0, Lcom/lua/c/a/a/o$a;->a:[Lcom/lua/c/a/a/k;

    iput-object p2, p0, Lcom/lua/c/a/a/o$a;->b:Lcom/lua/c/a/a/o;

    return-void
.end method


# virtual methods
.method public a()Lcom/lua/c/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/lua/c/a/a/o$a;->a:[Lcom/lua/c/a/a/k;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lua/c/a/a/o$a;->b:Lcom/lua/c/a/a/o;

    invoke-virtual {v0}, Lcom/lua/c/a/a/o;->a()Lcom/lua/c/a/a/k;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)Lcom/lua/c/a/a/k;
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/lua/c/a/a/k;->b:Lcom/lua/c/a/a/k;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lua/c/a/a/o$a;->a:[Lcom/lua/c/a/a/k;

    array-length v1, v0

    if-gt p1, v1, :cond_1

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lua/c/a/a/o$a;->b:Lcom/lua/c/a/a/o;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/lua/c/a/a/o;->a(I)Lcom/lua/c/a/a/k;

    move-result-object v0

    goto :goto_0
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/lua/c/a/a/o$a;->a:[Lcom/lua/c/a/a/k;

    array-length v0, v0

    iget-object v1, p0, Lcom/lua/c/a/a/o$a;->b:Lcom/lua/c/a/a/o;

    invoke-virtual {v1}, Lcom/lua/c/a/a/o;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
