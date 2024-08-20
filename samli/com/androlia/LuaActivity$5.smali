.class Lcom/androlua/LuaActivity$5;
.super Lcom/luajava/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final b:Lcom/androlua/LuaActivity;


# direct methods
.method constructor <init>(Lcom/androlua/LuaActivity;Lcom/luajava/LuaState;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaActivity$5;->b:Lcom/androlua/LuaActivity;

    invoke-direct {p0, p2}, Lcom/luajava/JavaFunction;-><init>(Lcom/luajava/LuaState;)V

    return-void
.end method


# virtual methods
.method public execute()I
    .locals 7

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androlua/LuaThread;

    iget-object v1, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->getTop()I

    move-result v2

    if-le v2, v6, :cond_2

    add-int/lit8 v1, v2, -0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x4

    :goto_0
    if-gt v1, v2, :cond_0

    add-int/lit8 v4, v1, -0x4

    iget-object v5, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    invoke-virtual {v5, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    invoke-virtual {v1, v6}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/androlua/LuaThread;->call(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_2
    if-ne v2, v6, :cond_1

    iget-object v1, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    invoke-virtual {v1, v6}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androlua/LuaThread;->call(Ljava/lang/String;)V

    goto :goto_1
.end method
