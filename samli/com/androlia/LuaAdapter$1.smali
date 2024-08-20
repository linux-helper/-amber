.class Lcom/androlua/LuaAdapter$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/androlua/LuaAdapter;


# direct methods
.method constructor <init>(Lcom/androlua/LuaAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-virtual {v0}, Lcom/androlua/LuaAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/luajava/LuaTable;

    iget-object v1, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v1}, Lcom/androlua/LuaAdapter;->a(Lcom/androlua/LuaAdapter;)Lcom/luajava/LuaTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;)V

    iget-object v1, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v1}, Lcom/androlua/LuaAdapter;->d(Lcom/androlua/LuaAdapter;)Lcom/luajava/LuaFunction;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v4}, Lcom/androlua/LuaAdapter;->b(Lcom/androlua/LuaAdapter;)Lcom/luajava/LuaTable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v4}, Lcom/androlua/LuaAdapter;->c(Lcom/androlua/LuaAdapter;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v1, v0}, Lcom/androlua/LuaAdapter;->a(Lcom/androlua/LuaAdapter;Lcom/luajava/LuaTable;)Lcom/luajava/LuaTable;

    iget-object v0, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-virtual {v0}, Lcom/androlua/LuaAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/androlua/LuaAdapter$1;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v1}, Lcom/androlua/LuaAdapter;->e(Lcom/androlua/LuaAdapter;)Lcom/androlua/LuaContext;

    move-result-object v1

    const-string v2, "performFiltering"

    invoke-interface {v1, v2, v0}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
