.class public Lcom/lua/c/a/a/h;
.super Lcom/lua/c/a/a/k;


# static fields
.field static final M:Lcom/lua/c/a/a/h;

.field public static N:Lcom/lua/c/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lua/c/a/a/h;

    invoke-direct {v0}, Lcom/lua/c/a/a/h;-><init>()V

    sput-object v0, Lcom/lua/c/a/a/h;->M:Lcom/lua/c/a/a/h;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lua/c/a/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "nil"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/lua/c/a/a/h;

    return v0
.end method

.method public g()Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/h;->N:Lcom/lua/c/a/a/k;

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const-string v0, "nil"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "nil"

    return-object v0
.end method
