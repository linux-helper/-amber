.class Lcom/lua/c/a/a/a/f$a;
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
.field a:Lcom/lua/c/a/a/a/f$i;

.field b:Lcom/lua/c/a/a/a/f$i;

.field c:I

.field d:I

.field e:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lua/c/a/a/a/f$i;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/f$i;-><init>()V

    iput-object v0, p0, Lcom/lua/c/a/a/a/f$a;->a:Lcom/lua/c/a/a/a/f$i;

    return-void
.end method
