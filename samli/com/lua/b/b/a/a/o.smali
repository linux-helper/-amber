.class Lcom/lua/b/b/a/a/o;
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

.field final b:I

.field final c:I

.field final d:Lcom/lua/b/b/a/a/q;


# direct methods
.method constructor <init>(Lcom/lua/b/b/a/a/q;III)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/b/a/a/o;->d:Lcom/lua/b/b/a/a/q;

    iput p2, p0, Lcom/lua/b/b/a/a/o;->a:I

    iput p3, p0, Lcom/lua/b/b/a/a/o;->b:I

    iput p4, p0, Lcom/lua/b/b/a/a/o;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/o;->d:Lcom/lua/b/b/a/a/q;

    iget v1, p0, Lcom/lua/b/b/a/a/o;->a:I

    iget v2, p0, Lcom/lua/b/b/a/a/o;->b:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/lua/b/b/a/a/q;->setSelectionRange(II)V

    iget v0, p0, Lcom/lua/b/b/a/a/o;->c:I

    iget v1, p0, Lcom/lua/b/b/a/a/o;->b:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/o;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->focusSelectionStart()V

    :cond_0
    return-void
.end method
