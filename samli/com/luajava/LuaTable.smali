.class public Lcom/luajava/LuaTable;
.super Lcom/luajava/LuaObject;

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luajava/LuaTable$LuaEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/luajava/LuaObject;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/luajava/LuaState;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;)V

    invoke-virtual {p1}, Lcom/luajava/LuaState;->newTable()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaObject;->a(I)V

    return-void
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    :goto_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->next(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushValue(I)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setTable(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    :try_start_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->getTable(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->pop(I)V

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, -0x2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->pushNil()V

    :goto_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v5}, Lcom/luajava/LuaState;->next(I)I

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/luajava/LuaTable$LuaEntry;

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/luajava/LuaTable$LuaEntry;-><init>(Lcom/luajava/LuaTable;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v6}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v6}, Lcom/luajava/LuaState;->pop(I)V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    :try_start_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->getTable(I)I

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->next(I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v2, v1}, Lcom/luajava/LuaState;->pop(I)V

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_1
.end method

.method public isList()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->rawLen(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->pop()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->pushNil()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->next(I)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v2, v0}, Lcom/luajava/LuaState;->pop(I)V

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_2
.end method

.method public keySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, -0x2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->pushNil()V

    :goto_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->next(I)I

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v4}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v4}, Lcom/luajava/LuaState;->pop(I)V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public length()I
    .locals 2

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->rawLen(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->pop()V

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    :try_start_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p2}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setTable(I)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    :try_start_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setTable(I)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public size()I
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->next(I)I

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->pushNil()V

    :goto_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->next(I)I

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
