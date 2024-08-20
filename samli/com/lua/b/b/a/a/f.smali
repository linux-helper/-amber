.class Lcom/lua/b/b/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lua/b/b/a/a/q;->restoreUiState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:I

.field final b:Lcom/lua/b/b/a/a/q;


# direct methods
.method constructor <init>(Lcom/lua/b/b/a/a/q;I)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/b/a/a/f;->b:Lcom/lua/b/b/a/a/q;

    iput p2, p0, Lcom/lua/b/b/a/a/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/f;->b:Lcom/lua/b/b/a/a/q;

    iget v1, p0, Lcom/lua/b/b/a/a/f;->a:I

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    return-void
.end method
