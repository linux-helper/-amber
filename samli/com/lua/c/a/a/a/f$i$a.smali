.class Lcom/lua/c/a/a/a/f$i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/c/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:S

.field b:S

.field c:S

.field private d:Lcom/lua/c/a/a/k;

.field e:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lua/c/a/a/a/f$i$a;)Lcom/lua/c/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/lua/c/a/a/a/f$i$a;->d:Lcom/lua/c/a/a/k;

    return-object v0
.end method

.method static synthetic a(Lcom/lua/c/a/a/a/f$i$a;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 0

    iput-object p1, p0, Lcom/lua/c/a/a/a/f$i$a;->d:Lcom/lua/c/a/a/k;

    return-object p1
.end method


# virtual methods
.method public a()Lcom/lua/c/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/lua/c/a/a/a/f$i$a;->d:Lcom/lua/c/a/a/k;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lua/c/a/a/a/f$i$a;->e:I

    invoke-static {v0}, Lcom/lua/c/a/a/g;->b(I)Lcom/lua/c/a/a/g;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/lua/c/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/c/a/a/a/f$i$a;->d:Lcom/lua/c/a/a/k;

    return-void
.end method
