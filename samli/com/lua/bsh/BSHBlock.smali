.class Lcom/lua/bsh/BSHBlock;
.super Lcom/lua/bsh/SimpleNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/bsh/BSHBlock$NodeFilter;
    }
.end annotation


# instance fields
.field public isSynchronized:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lua/bsh/BSHBlock;->isSynchronized:Z

    return-void
.end method


# virtual methods
.method a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;ZLcom/lua/bsh/BSHBlock$NodeFilter;)Ljava/lang/Object;
    .locals 8

    sget-object v3, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    new-instance v1, Lcom/lua/bsh/BlockNameSpace;

    invoke-direct {v1, v0}, Lcom/lua/bsh/BlockNameSpace;-><init>(Lcom/lua/bsh/NameSpace;)V

    invoke-virtual {p1, v1}, Lcom/lua/bsh/CallStack;->swap(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/NameSpace;

    move-object v1, v0

    :goto_0
    iget-boolean v2, p0, Lcom/lua/bsh/BSHBlock;->isSynchronized:Z

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v5

    move v4, v2

    :goto_1
    if-lt v4, v5, :cond_6

    move v7, v2

    move-object v2, v3

    move v3, v7

    :goto_2
    if-lt v3, v5, :cond_2

    :goto_3
    if-nez p3, :cond_0

    invoke-virtual {p1, v1}, Lcom/lua/bsh/CallStack;->swap(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/NameSpace;

    :cond_0
    return-object v2

    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    instance-of v4, v0, Lcom/lua/bsh/BSHClassDeclaration;

    if-eqz v4, :cond_4

    move-object v0, v2

    :cond_3
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_2

    :cond_4
    if-eqz p4, :cond_5

    invoke-interface {p4, v0}, Lcom/lua/bsh/BSHBlock$NodeFilter;->isVisible(Lcom/lua/bsh/SimpleNode;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object v0, v2

    goto :goto_4

    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/lua/bsh/ReturnControl;

    if-eqz v2, :cond_3

    move-object v2, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v4}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    if-eqz p4, :cond_8

    invoke-interface {p4, v0}, Lcom/lua/bsh/BSHBlock$NodeFilter;->isVisible(Lcom/lua/bsh/SimpleNode;)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    :goto_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_8
    instance-of v6, v0, Lcom/lua/bsh/BSHClassDeclaration;

    if-eqz v6, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    if-nez p3, :cond_9

    invoke-virtual {p1, v1}, Lcom/lua/bsh/CallStack;->swap(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/NameSpace;

    :cond_9
    throw v0
.end method

.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lua/bsh/BSHBlock;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Z)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/lua/bsh/BSHBlock;->isSynchronized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lcom/lua/bsh/BSHBlock;->isSynchronized:Z

    if-eqz v2, :cond_1

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/lua/bsh/BSHBlock;->a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;ZLcom/lua/bsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/lua/bsh/BSHBlock;->a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;ZLcom/lua/bsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method
