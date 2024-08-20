.class Lcom/lua/bsh/BlockNameSpace;
.super Lcom/lua/bsh/NameSpace;


# direct methods
.method public constructor <init>(Lcom/lua/bsh/NameSpace;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lcom/lua/bsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/BlockNameSpace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lua/bsh/NameSpace;-><init>(Lcom/lua/bsh/NameSpace;Ljava/lang/String;)V

    return-void
.end method

.method private d()Lcom/lua/bsh/NameSpace;
    .locals 2

    invoke-super {p0}, Lcom/lua/bsh/NameSpace;->getParent()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    instance-of v1, v0, Lcom/lua/bsh/BlockNameSpace;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/lua/bsh/BlockNameSpace;

    invoke-direct {v0}, Lcom/lua/bsh/BlockNameSpace;->d()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private g(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0, p1, v1}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;Z)Lcom/lua/bsh/Variable;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/BlockNameSpace;->d()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    return-object v0
.end method

.method public getSuper(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/BlockNameSpace;->d()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lua/bsh/NameSpace;->getSuper(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    return-object v0
.end method

.method public importClass(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->getParent()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lua/bsh/NameSpace;->importClass(Ljava/lang/String;)V

    return-void
.end method

.method public importPackage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->getParent()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lua/bsh/NameSpace;->importPackage(Ljava/lang/String;)V

    return-void
.end method

.method public setBlockVariable(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0, v0}, Lcom/lua/bsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public setMethod(Ljava/lang/String;Lcom/lua/bsh/BshMethod;)V
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->getParent()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/NameSpace;->setMethod(Ljava/lang/String;Lcom/lua/bsh/BshMethod;)V

    return-void
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/lua/bsh/BlockNameSpace;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/lua/bsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->getParent()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lua/bsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    goto :goto_0
.end method
