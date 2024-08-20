.class public Lcom/luajava/LuaObject;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:I

.field protected final b:Lcom/luajava/LuaState;


# direct methods
.method protected constructor <init>(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->getTable(I)I

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->remove(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaObject;->a(I)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return-void

    :cond_1
    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Object parent should be a table or userdata ."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "LuaStates must be the same!"

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Lcom/luajava/LuaObject;Ljava/lang/Number;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->pushNumber(D)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->getTable(I)I

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->remove(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaObject;->a(I)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return-void

    :cond_1
    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Object parent should be a table or userdata ."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected constructor <init>(Lcom/luajava/LuaObject;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p2}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->getTable(I)I

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->remove(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaObject;->a(I)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return-void

    :cond_1
    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Object parent should be a table or userdata ."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    return-void
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    monitor-enter p1

    :try_start_0
    iput-object p1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaObject;->a(I)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    monitor-enter p1

    :try_start_0
    iput-object p1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaObject;->a(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public varargs _call([Ljava/lang/Object;)Lcom/luajava/LuaObject;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/luajava/LuaObject;->_call_aux([Ljava/lang/Object;I)[Lcom/luajava/LuaObject;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public _call_aux([Ljava/lang/Object;I)[Lcom/luajava/LuaObject;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x1

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    if-eqz p1, :cond_2

    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v4, p1, v1

    :try_start_1
    iget-object v5, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v5, v4}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Invalid object. Not a function, table or userdata ."

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, p2, v4}, Lcom/luajava/LuaState;->pcall(III)I

    move-result v4

    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->isString(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    move-object v1, v0

    :goto_1
    const/4 v0, 0x2

    if-eq v4, v0, :cond_7

    const/4 v0, 0x4

    if-eq v4, v0, :cond_6

    const/4 v0, 0x6

    if-ne v4, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while running the error handler function. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const-string v0, ""

    move-object v1, v0

    goto :goto_1

    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lua Error code "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Memory allocation error. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Runtime error. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    if-ne p2, v6, :cond_b

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getTop()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_4
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->getTop()I

    move-result v1

    sub-int/2addr v1, v3

    if-lt v1, v0, :cond_a

    new-array v1, v0, [Lcom/luajava/LuaObject;

    :goto_5
    if-lez v0, :cond_9

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_9
    monitor-exit v2

    return-object v1

    :cond_a
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Invalid Number of Results ."

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    move v0, p2

    goto :goto_4
.end method

.method protected a(I)V
    .locals 3

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->pushValue(I)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const v2, -0xf4628

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->Lref(I)I

    move-result v0

    iput v0, p0, Lcom/luajava/LuaObject;->a:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public asArray()[Ljava/lang/Object;
    .locals 8

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->objLen(I)I

    move-result v3

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-gt v1, v3, :cond_0

    iget-object v4, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Lcom/luajava/LuaState;->pushInteger(J)V

    iget-object v4, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->getTable(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v1, -0x1

    :try_start_1
    iget-object v5, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v4, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    check-cast v0, [Ljava/lang/Object;

    monitor-exit v2

    return-object v0

    :cond_1
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Invalid object. Not a table ."

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public asMap(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/util/Map;"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    invoke-virtual {p1}, Lcom/luajava/LuaState;->pushNil()V

    :goto_0
    invoke-virtual {p1, p3}, Lcom/luajava/LuaState;->next(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit p1

    return-object v0

    :cond_1
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Invalid object. Not a table ."

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/luajava/LuaObject;->call_aux([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public call_aux([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x1

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const-string v4, "debug"

    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v4, -0x1

    const-string v5, "traceback"

    invoke-virtual {v0, v4, v5}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->remove(I)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->insert(I)V

    if-eqz p1, :cond_2

    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v4, p1, v1

    :try_start_1
    iget-object v5, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v5, v4}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Invalid object. Not a function, table or userdata ."

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    rsub-int/lit8 v4, v0, -0x2

    invoke-virtual {v1, v0, p2, v4}, Lcom/luajava/LuaState;->pcall(III)I

    move-result v4

    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->isString(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    move-object v1, v0

    :goto_1
    const/4 v0, 0x2

    if-eq v4, v0, :cond_7

    const/4 v0, 0x4

    if-eq v4, v0, :cond_6

    const/4 v0, 0x6

    if-ne v4, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while running the error handler function. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const-string v0, ""

    move-object v1, v0

    goto :goto_1

    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lua Error code "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Memory allocation error. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Runtime error. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    if-ne p2, v6, :cond_b

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getTop()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_4
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->getTop()I

    move-result v1

    sub-int/2addr v1, v3

    if-lt v1, v0, :cond_a

    new-array v1, v0, [Ljava/lang/Object;

    :goto_5
    if-lez v0, :cond_9

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_9
    monitor-exit v2

    return-object v1

    :cond_a
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Invalid Number of Results ."

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    move v0, p2

    goto :goto_4
.end method

.method public createProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v2, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getTable()Lcom/luajava/LuaTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->isList()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    new-instance v0, Lcom/luajava/LuaInvocationHandler;

    invoke-direct {v0, p0}, Lcom/luajava/LuaInvocationHandler;-><init>(Lcom/luajava/LuaObject;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_3
    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Invalid Object. Must be Table or Function."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Invalid Object. Must be a interface Method of Function."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Invalid Object. Must be Table is Not Array."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public createProxy(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v2, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/luajava/LuaInvocationHandler;

    invoke-direct {v0, p0}, Lcom/luajava/LuaInvocationHandler;-><init>(Lcom/luajava/LuaObject;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_1
    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Invalid Object. Must be Table."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump()[B
    .locals 4

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->dump(I)[B

    move-result-object v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Invalid object. Not a function ."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const v2, -0xf4628

    iget v3, p0, Lcom/luajava/LuaObject;->a:I

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->LunRef(II)V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to release object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/luajava/LuaObject;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBoolean()Z
    .locals 4

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getField(Ljava/lang/String;)Lcom/luajava/LuaObject;
    .locals 1

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p0, p1}, Lcom/luajava/LuaState;->getLuaObject(Lcom/luajava/LuaObject;Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    return-object v0
.end method

.method public getFunction()Lcom/luajava/LuaFunction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/luajava/LuaFunction",
            "<*>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    new-instance v0, Lcom/luajava/LuaFunction;

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Lcom/luajava/LuaFunction;-><init>(Lcom/luajava/LuaState;I)V

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getI(J)Lcom/luajava/LuaObject;
    .locals 3

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/luajava/LuaState;->getLuaObject(Lcom/luajava/LuaObject;Ljava/lang/Number;)Lcom/luajava/LuaObject;

    move-result-object v0

    return-object v0
.end method

.method public getInteger()J
    .locals 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLuaState()Lcom/luajava/LuaState;
    .locals 1

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    return-object v0
.end method

.method public getNumber()D
    .locals 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v2

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 4

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->getObjectFromUserdata(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTable()Lcom/luajava/LuaTable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/luajava/LuaTable",
            "<**>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    new-instance v0, Lcom/luajava/LuaTable;

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;I)V

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBoolean()Z
    .locals 4

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isBoolean(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFunction()Z
    .locals 4

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isFunction(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInteger()Z
    .locals 4

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isInteger(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isJavaFunction()Z
    .locals 4

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isJavaFunction(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isJavaObject()Z
    .locals 4

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isObject(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isNil()Z
    .locals 4

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isNil(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isNumber()Z
    .locals 4

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isNumber(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isString()Z
    .locals 4

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isString(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isTable()Z
    .locals 4

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isTable(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUserdata()Z
    .locals 4

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isUserdata(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pop()V
    .locals 2

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    return-void
.end method

.method public push()V
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const v1, -0xf4628

    iget v2, p0, Lcom/luajava/LuaObject;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/luajava/LuaState;->rawGetI(IJ)I

    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    :try_start_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p2}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, p1}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    goto :goto_0
.end method

.method public setI(JLjava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    :try_start_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p3}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/luajava/LuaState;->setI(IJ)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isNil()Z
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "nil"

    :goto_0
    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getBoolean()Z
    :try_end_2
    .catch Lcom/luajava/LuaException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getNumber()D
    :try_end_4
    .catch Lcom/luajava/LuaException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_6
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isString()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getString()Ljava/lang/String;
    :try_end_6
    .catch Lcom/luajava/LuaException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    :try_start_7
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_3
    :try_start_8
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z
    :try_end_8
    .catch Lcom/luajava/LuaException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v0, "Lua Function"

    goto :goto_0

    :cond_4
    :try_start_a
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isJavaObject()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_a
    .catch Lcom/luajava/LuaException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_c
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isUserdata()Z
    :try_end_c
    .catch Lcom/luajava/LuaException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const-string v0, "Userdata"

    goto :goto_0

    :cond_6
    :try_start_e
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z
    :try_end_e
    .catch Lcom/luajava/LuaException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const-string v0, "Lua Table"

    goto :goto_0

    :cond_7
    :try_start_10
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isJavaFunction()Z
    :try_end_10
    .catch Lcom/luajava/LuaException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result v2

    if-eqz v2, :cond_8

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const-string v0, "Java Function"

    goto :goto_0

    :cond_8
    :try_start_12
    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v2

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_0
.end method

.method public type()I
    .locals 4

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->type(I)I

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
