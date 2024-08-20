.class public Lcom/luajava/LuaAbstractMethodInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/cglib/proxy/MethodInterceptor;


# instance fields
.field private final a:Lcom/androlua/LuaContext;

.field private b:Lcom/luajava/LuaObject;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luajava/LuaAbstractMethodInterceptor;->b:Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getContext()Lcom/androlua/LuaContext;

    move-result-object v0

    iput-object v0, p0, Lcom/luajava/LuaAbstractMethodInterceptor;->a:Lcom/androlua/LuaContext;

    return-void
.end method


# virtual methods
.method public intercept(Ljava/lang/Object;[Ljava/lang/Object;Lcom/android/cglib/proxy/MethodProxy;)Ljava/lang/Object;
    .locals 9

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/luajava/LuaAbstractMethodInterceptor;->b:Lcom/luajava/LuaObject;

    iget-object v3, v2, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p3}, Lcom/android/cglib/proxy/MethodProxy;->getOriginalMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/luajava/LuaAbstractMethodInterceptor;->b:Lcom/luajava/LuaObject;

    invoke-virtual {v2}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/luajava/LuaAbstractMethodInterceptor;->b:Lcom/luajava/LuaObject;

    :goto_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2}, Lcom/luajava/LuaObject;->isNil()Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/luajava/LuaAbstractMethodInterceptor;->b:Lcom/luajava/LuaObject;

    invoke-virtual {v2, v5}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_3

    const-class v2, Ljava/lang/Number;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    monitor-exit v3

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_4
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    :try_start_2
    const-class v6, Ljava/lang/Void;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_6
    invoke-virtual {v2, p2}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/luajava/LuaException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-nez v1, :cond_b

    :try_start_3
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :cond_8
    :try_start_4
    invoke-virtual {v2, p2}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/luajava/LuaException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_c

    :try_start_5
    instance-of v1, v2, Ljava/lang/Double;

    if-eqz v1, :cond_c

    move-object v0, v2

    check-cast v0, Ljava/lang/Double;

    move-object v1, v0

    invoke-static {v1, v4}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;
    :try_end_5
    .catch Lcom/luajava/LuaException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    :goto_3
    :try_start_6
    iget-object v6, p0, Lcom/luajava/LuaAbstractMethodInterceptor;->a:Lcom/androlua/LuaContext;

    invoke-interface {v6, v5, v2}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_a

    const-class v2, Ljava/lang/Number;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    monitor-exit v3

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_b
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :cond_c
    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_3
.end method
