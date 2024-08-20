.class public Lcom/lua/c/a/a/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Lcom/lua/c/a/a/m;

.field private static final b:[Lcom/lua/c/a/a/l;


# instance fields
.field public c:[Lcom/lua/c/a/a/k;

.field public d:[I

.field public e:[Lcom/lua/c/a/a/l;

.field public f:[I

.field public g:[Lcom/lua/c/a/a/b;

.field public h:[Lcom/lua/c/a/a/m;

.field public i:Lcom/lua/c/a/a/j;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Lcom/lua/c/a/a/m;

    sput-object v0, Lcom/lua/c/a/a/l;->a:[Lcom/lua/c/a/a/m;

    new-array v0, v1, [Lcom/lua/c/a/a/l;

    sput-object v0, Lcom/lua/c/a/a/l;->b:[Lcom/lua/c/a/a/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/lua/c/a/a/l;->b:[Lcom/lua/c/a/a/l;

    iput-object v0, p0, Lcom/lua/c/a/a/l;->e:[Lcom/lua/c/a/a/l;

    sget-object v0, Lcom/lua/c/a/a/l;->a:[Lcom/lua/c/a/a/m;

    iput-object v0, p0, Lcom/lua/c/a/a/l;->h:[Lcom/lua/c/a/a/m;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lua/c/a/a/l;->i:Lcom/lua/c/a/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lua/c/a/a/l;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lua/c/a/a/l;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
