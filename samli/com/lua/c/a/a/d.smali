.class public final Lcom/lua/c/a/a/d;
.super Lcom/lua/c/a/a/k;


# static fields
.field static final M:Lcom/lua/c/a/a/d;

.field static final N:Lcom/lua/c/a/a/d;

.field public static O:Lcom/lua/c/a/a/k;


# instance fields
.field public final P:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/lua/c/a/a/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/lua/c/a/a/d;-><init>(Z)V

    sput-object v0, Lcom/lua/c/a/a/d;->M:Lcom/lua/c/a/a/d;

    new-instance v0, Lcom/lua/c/a/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lua/c/a/a/d;-><init>(Z)V

    sput-object v0, Lcom/lua/c/a/a/d;->N:Lcom/lua/c/a/a/d;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/lua/c/a/a/k;-><init>()V

    iput-boolean p1, p0, Lcom/lua/c/a/a/d;->P:Z

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/lua/c/a/a/d;->P:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public g()Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/d;->O:Lcom/lua/c/a/a/k;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const-string v0, "boolean"

    return-object v0
.end method
