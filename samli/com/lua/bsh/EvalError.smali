.class public Lcom/lua/bsh/EvalError;
.super Ljava/lang/Exception;


# instance fields
.field a:Lcom/lua/bsh/SimpleNode;

.field b:Ljava/lang/String;

.field c:Lcom/lua/bsh/CallStack;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lua/bsh/EvalError;->setMessage(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/lua/bsh/EvalError;->a:Lcom/lua/bsh/SimpleNode;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/lua/bsh/CallStack;->copy()Lcom/lua/bsh/CallStack;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/bsh/EvalError;->c:Lcom/lua/bsh/CallStack;

    :cond_0
    return-void
.end method


# virtual methods
.method a()Lcom/lua/bsh/SimpleNode;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/EvalError;->a:Lcom/lua/bsh/SimpleNode;

    return-object v0
.end method

.method a(Lcom/lua/bsh/SimpleNode;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/EvalError;->a:Lcom/lua/bsh/SimpleNode;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/EvalError;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    :goto_1
    iput-object p1, p0, Lcom/lua/bsh/EvalError;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/EvalError;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public getErrorLineNumber()I
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/EvalError;->a:Lcom/lua/bsh/SimpleNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lua/bsh/SimpleNode;->getLineNumber()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getErrorSourceFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/EvalError;->a:Lcom/lua/bsh/SimpleNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lua/bsh/SimpleNode;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<unknown file>"

    goto :goto_0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/EvalError;->a:Lcom/lua/bsh/SimpleNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lua/bsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<unknown error>"

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/EvalError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptStackTrace()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/lua/bsh/EvalError;->c:Lcom/lua/bsh/CallStack;

    if-nez v0, :cond_1

    const-string v0, "<Unknown>"

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/lua/bsh/CallStack;->copy()Lcom/lua/bsh/CallStack;

    move-result-object v1

    const-string v0, ""

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/lua/bsh/CallStack;->pop()Lcom/lua/bsh/NameSpace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lua/bsh/NameSpace;->b()Lcom/lua/bsh/SimpleNode;

    move-result-object v3

    iget-boolean v4, v2, Lcom/lua/bsh/NameSpace;->o:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\nCalled from method: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lcom/lua/bsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " : at Line: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/lua/bsh/SimpleNode;->getLineNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " : in file: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/lua/bsh/SimpleNode;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/lua/bsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public reThrow(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lua/bsh/EvalError;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/EvalError;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/lua/bsh/EvalError;->a:Lcom/lua/bsh/SimpleNode;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " : at Line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/EvalError;->a:Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v1}, Lcom/lua/bsh/SimpleNode;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " : in file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/EvalError;->a:Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v1}, Lcom/lua/bsh/SimpleNode;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/EvalError;->a:Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v1}, Lcom/lua/bsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/lua/bsh/EvalError;->c:Lcom/lua/bsh/CallStack;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/lua/bsh/EvalError;->getScriptStackTrace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/lua/bsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ": <at unknown location>"

    goto :goto_0
.end method
