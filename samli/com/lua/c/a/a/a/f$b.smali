.class Lcom/lua/c/a/a/a/f$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/c/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:[Lcom/lua/c/a/a/a/f$h;

.field b:I

.field c:[Lcom/lua/c/a/a/a/f$d;

.field d:I

.field e:[Lcom/lua/c/a/a/a/f$d;

.field f:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/lua/c/a/a/a/f$b;->b:I

    iput v0, p0, Lcom/lua/c/a/a/a/f$b;->d:I

    iput v0, p0, Lcom/lua/c/a/a/a/f$b;->f:I

    return-void
.end method
