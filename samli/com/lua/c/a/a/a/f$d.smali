.class Lcom/lua/c/a/a/a/f$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/c/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Lcom/lua/c/a/a/j;

.field b:I

.field c:I

.field d:S


# direct methods
.method public constructor <init>(Lcom/lua/c/a/a/j;IIS)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lua/c/a/a/a/f$d;->a:Lcom/lua/c/a/a/j;

    iput p2, p0, Lcom/lua/c/a/a/a/f$d;->b:I

    iput p3, p0, Lcom/lua/c/a/a/a/f$d;->c:I

    int-to-short v0, p4

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/c/a/a/a/f$d;->d:S

    return-void
.end method
