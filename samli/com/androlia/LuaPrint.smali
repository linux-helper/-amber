.class public Lcom/androlua/LuaPrint;
.super Lcom/luajava/JavaFunction;


# instance fields
.field private b:Lcom/luajava/LuaState;

.field private c:Lcom/androlua/LuaContext;

.field private d:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaState;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/luajava/JavaFunction;-><init>(Lcom/luajava/LuaState;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaPrint;->d:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/androlua/LuaPrint;->b:Lcom/luajava/LuaState;

    iput-object p1, p0, Lcom/androlua/LuaPrint;->c:Lcom/androlua/LuaContext;

    return-void
.end method


# virtual methods
.method public execute()I
    .locals 5

    const/4 v0, 0x2

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/androlua/LuaPrint;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->getTop()I

    move-result v1

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaPrint;->c:Lcom/androlua/LuaContext;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/androlua/LuaContext;->sendMsg(Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/androlua/LuaPrint;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->getTop()I

    move-result v1

    if-gt v0, v1, :cond_5

    iget-object v1, p0, Lcom/androlua/LuaPrint;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->type(I)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/androlua/LuaPrint;->b:Lcom/luajava/LuaState;

    invoke-virtual {v3, v1}, Lcom/luajava/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "userdata"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/androlua/LuaPrint;->b:Lcom/luajava/LuaState;

    invoke-virtual {v3, v0}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_2
    if-nez v2, :cond_6

    :goto_3
    iget-object v2, p0, Lcom/androlua/LuaPrint;->d:Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androlua/LuaPrint;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androlua/LuaPrint;->d:Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "boolean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/androlua/LuaPrint;->b:Lcom/luajava/LuaState;

    invoke-virtual {v2, v0}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "true"

    goto :goto_2

    :cond_3
    const-string v2, "false"

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/androlua/LuaPrint;->b:Lcom/luajava/LuaState;

    invoke-virtual {v2, v0}, Lcom/luajava/LuaState;->LtoString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/androlua/LuaPrint;->c:Lcom/androlua/LuaContext;

    iget-object v1, p0, Lcom/androlua/LuaPrint;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/androlua/LuaPrint;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/androlua/LuaContext;->sendMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaPrint;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_3
.end method
