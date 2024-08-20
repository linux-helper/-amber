.class public Lcom/luajava/LuaList;
.super Lcom/luajava/LuaObject;

# interfaces
.implements Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaState;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;)V

    invoke-virtual {p1}, Lcom/luajava/LuaState;->newTable()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaObject;->a(I)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->rawLen(I)I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    add-int/lit8 v0, v0, 0x1

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/luajava/LuaState;->setI(IJ)V

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->pop()V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->pop()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->rawLen(I)I

    move-result v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    invoke-virtual {v2, v0}, Lcom/luajava/LuaState;->pop(I)V

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .locals 3

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->rawLen(I)I

    move-result v0

    iget-object v1, p0, Lcom/luajava/LuaObject;->b:Lcom/luajava/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->pop(I)V

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
