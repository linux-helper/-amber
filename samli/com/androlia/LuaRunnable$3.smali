.class Lcom/androlua/LuaRunnable$3;
.super Lcom/luajava/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaRunnable;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final b:Lcom/androlua/LuaRunnable;


# direct methods
.method constructor <init>(Lcom/androlua/LuaRunnable;Lcom/luajava/LuaState;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaRunnable$3;->b:Lcom/androlua/LuaRunnable;

    invoke-direct {p0, p2}, Lcom/luajava/JavaFunction;-><init>(Lcom/luajava/LuaState;)V

    return-void
.end method


# virtual methods
.method public execute()I
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getTop()I

    move-result v1

    if-le v1, v5, :cond_2

    add-int/lit8 v0, v1, -0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x3

    :goto_0
    if-gt v0, v1, :cond_0

    add-int/lit8 v3, v0, -0x3

    iget-object v4, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    invoke-virtual {v4, v0}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaRunnable$3;->b:Lcom/androlua/LuaRunnable;

    invoke-static {v0}, Lcom/androlua/LuaRunnable;->a(Lcom/androlua/LuaRunnable;)Lcom/androlua/LuaContext;

    move-result-object v1

    iget-object v0, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    invoke-virtual {v0, v5}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0, v2}, Lcom/androlua/LuaContext;->call(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v6

    :cond_2
    if-ne v1, v5, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaRunnable$3;->b:Lcom/androlua/LuaRunnable;

    invoke-static {v0}, Lcom/androlua/LuaRunnable;->a(Lcom/androlua/LuaRunnable;)Lcom/androlua/LuaContext;

    move-result-object v1

    iget-object v0, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    invoke-virtual {v0, v5}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    goto :goto_1
.end method
