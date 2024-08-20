.class public Lcom/lua/c/a/a/m;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/lua/c/a/a/j;

.field public b:Lcom/lua/c/a/a/n;

.field public final c:Z

.field public final d:S


# direct methods
.method public constructor <init>(Lcom/lua/c/a/a/j;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lua/c/a/a/m;->a:Lcom/lua/c/a/a/j;

    iput-boolean p2, p0, Lcom/lua/c/a/a/m;->c:Z

    int-to-short v0, p3

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/c/a/a/m;->d:S

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v0, p0, Lcom/lua/c/a/a/m;->d:S

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/lua/c/a/a/m;->c:Z

    if-eqz v0, :cond_0

    const-string v0, " instack "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lua/c/a/a/m;->a:Lcom/lua/c/a/a/j;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, " closed "

    goto :goto_0
.end method
