.class public Lcom/lua/bsh/ExternalNameSpace;
.super Lcom/lua/bsh/NameSpace;


# instance fields
.field private u:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "External Map Namespace"

    invoke-direct {p0, v1, v0, v1}, Lcom/lua/bsh/ExternalNameSpace;-><init>(Lcom/lua/bsh/NameSpace;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/lua/bsh/NameSpace;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lua/bsh/NameSpace;-><init>(Lcom/lua/bsh/NameSpace;Ljava/lang/String;)V

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/lua/bsh/ExternalNameSpace;->u:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Z)Lcom/lua/bsh/Variable;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lua/bsh/ExternalNameSpace;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/lua/bsh/NameSpace;->unsetVariable(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;Z)Lcom/lua/bsh/Variable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;Z)Lcom/lua/bsh/Variable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/lua/bsh/Variable;

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/lua/bsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p2, Lcom/lua/bsh/Variable;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p2, Lcom/lua/bsh/Variable;

    invoke-virtual {p0, p2}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Variable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/lua/bsh/Primitive;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/lua/bsh/Primitive;

    invoke-static {v0}, Lcom/lua/bsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/lua/bsh/ExternalNameSpace;->u:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "unexpected UtilEvalError"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method protected a(Ljava/util/Vector;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/lua/bsh/NameSpace;->a(Ljava/util/Vector;)V

    return-void
.end method

.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/lua/bsh/NameSpace;->clear()V

    iget-object v0, p0, Lcom/lua/bsh/ExternalNameSpace;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getDeclaredVariables()[Lcom/lua/bsh/Variable;
    .locals 1

    invoke-super {p0}, Lcom/lua/bsh/NameSpace;->getDeclaredVariables()[Lcom/lua/bsh/Variable;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/ExternalNameSpace;->u:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lcom/lua/bsh/BshMethod;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/lua/bsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lcom/lua/bsh/BshMethod;

    move-result-object v0

    return-object v0
.end method

.method public getVariableNames()[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-super {p0}, Lcom/lua/bsh/NameSpace;->getVariableNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/lua/bsh/ExternalNameSpace;->u:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public setMap(Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/bsh/ExternalNameSpace;->u:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/lua/bsh/ExternalNameSpace;->clear()V

    iput-object p1, p0, Lcom/lua/bsh/ExternalNameSpace;->u:Ljava/util/Map;

    return-void
.end method

.method public setMethod(Ljava/lang/String;Lcom/lua/bsh/BshMethod;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/lua/bsh/NameSpace;->setMethod(Ljava/lang/String;Lcom/lua/bsh/BshMethod;)V

    return-void
.end method

.method public setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/lua/bsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V

    invoke-virtual {p0, p1, p3}, Lcom/lua/bsh/ExternalNameSpace;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/lua/bsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    invoke-virtual {p0, p1, p2}, Lcom/lua/bsh/ExternalNameSpace;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public unsetVariable(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/lua/bsh/NameSpace;->unsetVariable(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lua/bsh/ExternalNameSpace;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
