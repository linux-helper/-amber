.class Lcom/androlua/LuaCameraView;
.super Landroid/view/SurfaceView;


# instance fields
.field private a:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaCameraView;->a:Landroid/view/SurfaceHolder;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaCameraView;->a:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/androlua/LuaCameraView;->a:Landroid/view/SurfaceHolder;

    new-instance v1, Lcom/androlua/LuaCameraView$1;

    invoke-direct {v1, p0}, Lcom/androlua/LuaCameraView$1;-><init>(Lcom/androlua/LuaCameraView;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView;->a:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method
