.class public Lcom/lua/bsh/CallStack;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/lua/bsh/CallStack;->a:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lcom/lua/bsh/NameSpace;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/lua/bsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Lcom/lua/bsh/CallStack;->push(Lcom/lua/bsh/NameSpace;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public copy()Lcom/lua/bsh/CallStack;
    .locals 2

    new-instance v1, Lcom/lua/bsh/CallStack;

    invoke-direct {v1}, Lcom/lua/bsh/CallStack;-><init>()V

    iget-object v0, p0, Lcom/lua/bsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iput-object v0, v1, Lcom/lua/bsh/CallStack;->a:Ljava/util/Vector;

    return-object v1
.end method

.method public depth()I
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public get(I)Lcom/lua/bsh/NameSpace;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/lua/bsh/NameSpace;->JAVACODE:Lcom/lua/bsh/NameSpace;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/NameSpace;

    goto :goto_0
.end method

.method public pop()Lcom/lua/bsh/NameSpace;
    .locals 3

    invoke-virtual {p0}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/bsh/CallStack;->a:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "pop on empty CallStack"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public push(Lcom/lua/bsh/NameSpace;)V
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/CallStack;->a:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public set(ILcom/lua/bsh/NameSpace;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public swap(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/NameSpace;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lua/bsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/NameSpace;

    iget-object v1, p0, Lcom/lua/bsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public toArray()[Lcom/lua/bsh/NameSpace;
    .locals 2

    invoke-virtual {p0}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v0

    new-array v0, v0, [Lcom/lua/bsh/NameSpace;

    iget-object v1, p0, Lcom/lua/bsh/CallStack;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "CallStack:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/lua/bsh/CallStack;->toArray()[Lcom/lua/bsh/NameSpace;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public top()Lcom/lua/bsh/NameSpace;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/CallStack;->get(I)Lcom/lua/bsh/NameSpace;

    move-result-object v0

    return-object v0
.end method
