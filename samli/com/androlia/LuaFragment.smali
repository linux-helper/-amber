.class public Lcom/androlua/LuaFragment;
.super Landroid/app/Fragment;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private a:Lcom/luajava/LuaTable;

.field private b:Lcom/luajava/LuaObject;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaFragment;->a:Lcom/luajava/LuaTable;

    iput-object v0, p0, Lcom/androlua/LuaFragment;->b:Lcom/luajava/LuaObject;

    iput-object p1, p0, Lcom/androlua/LuaFragment;->c:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Lcom/luajava/LuaTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaFragment;->a:Lcom/luajava/LuaTable;

    iput-object v0, p0, Lcom/androlua/LuaFragment;->b:Lcom/luajava/LuaObject;

    iput-object p1, p0, Lcom/androlua/LuaFragment;->a:Lcom/luajava/LuaTable;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaFragment;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaFragment;->c:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaFragment;->a:Lcom/luajava/LuaTable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaFragment;->a:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    const-string v1, "require"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "loadlayout"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaObject;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/androlua/LuaFragment;->a:Lcom/luajava/LuaTable;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setLayout(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/androlua/LuaFragment;->c:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaFragment;->a:Lcom/luajava/LuaTable;

    return-void
.end method

.method public setLayout(Lcom/luajava/LuaTable;)V
    .locals 1

    iput-object p1, p0, Lcom/androlua/LuaFragment;->a:Lcom/luajava/LuaTable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaFragment;->c:Landroid/view/View;

    return-void
.end method
