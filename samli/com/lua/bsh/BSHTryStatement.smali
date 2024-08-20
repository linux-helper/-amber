.class Lcom/lua/bsh/BSHTryStatement;
.super Lcom/lua/bsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 12

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v7}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHBlock;

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    instance-of v5, v1, Lcom/lua/bsh/BSHFormalParameter;

    if-nez v5, :cond_1

    :goto_1
    if-eqz v1, :cond_3

    check-cast v1, Lcom/lua/bsh/BSHBlock;

    move-object v2, v1

    :goto_2
    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v1

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHBlock;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/TargetError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v6, v3

    :goto_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/lua/bsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_d

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v10

    :goto_5
    if-lt v7, v10, :cond_5

    move-object v0, v5

    move-object v3, v6

    :goto_6
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/lua/bsh/BSHBlock;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v3, :cond_b

    instance-of v1, v0, Lcom/lua/bsh/ReturnControl;

    if-eqz v1, :cond_a

    :goto_7
    return-object v0

    :cond_1
    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_1

    :cond_3
    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v6

    const-string v0, "Bsh Stack: "

    :goto_8
    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v4

    if-gt v4, v1, :cond_c

    move-object v5, v3

    goto :goto_3

    :cond_4
    move-object v4, v3

    goto :goto_4

    :cond_5
    invoke-virtual {v8, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHFormalParameter;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHFormalParameter;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/lua/bsh/BSHFormalParameter;->type:Ljava/lang/Class;

    if-nez v1, :cond_6

    invoke-virtual {p2}, Lcom/lua/bsh/Interpreter;->getStrictJava()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_6
    iget-object v1, v0, Lcom/lua/bsh/BSHFormalParameter;->type:Ljava/lang/Class;

    if-eqz v1, :cond_7

    const/4 v11, 0x1

    :try_start_1
    invoke-static {v4, v1, v11}, Lcom/lua/bsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_1
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v1

    :cond_7
    invoke-virtual {v9, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lua/bsh/BSHBlock;

    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v5

    new-instance v6, Lcom/lua/bsh/BlockNameSpace;

    invoke-direct {v6, v5}, Lcom/lua/bsh/BlockNameSpace;-><init>(Lcom/lua/bsh/NameSpace;)V

    :try_start_2
    iget-object v7, v0, Lcom/lua/bsh/BSHFormalParameter;->type:Ljava/lang/Class;

    sget-object v8, Lcom/lua/bsh/BSHFormalParameter;->UNTYPED:Ljava/lang/Class;

    if-ne v7, v8, :cond_9

    iget-object v0, v0, Lcom/lua/bsh/BSHFormalParameter;->name:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Lcom/lua/bsh/BlockNameSpace;->setBlockVariable(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_9
    invoke-virtual {p1, v6}, Lcom/lua/bsh/CallStack;->swap(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/NameSpace;

    :try_start_3
    invoke-virtual {v1, p1, p2}, Lcom/lua/bsh/BSHBlock;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    invoke-virtual {p1, v5}, Lcom/lua/bsh/CallStack;->swap(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/NameSpace;

    goto :goto_6

    :cond_8
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "(Strict Java) Untyped catch block"

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :catch_1
    move-exception v0

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_5

    :cond_9
    :try_start_4
    new-instance v7, Lcom/lua/bsh/Modifiers;

    invoke-direct {v7}, Lcom/lua/bsh/Modifiers;-><init>()V

    iget-object v7, v0, Lcom/lua/bsh/BSHFormalParameter;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/lua/bsh/BSHFormalParameter;->type:Ljava/lang/Class;

    new-instance v8, Lcom/lua/bsh/Modifiers;

    invoke-direct {v8}, Lcom/lua/bsh/Modifiers;-><init>()V

    invoke-virtual {v6, v7, v0, v4, v8}, Lcom/lua/bsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V
    :try_end_4
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "Unable to set var in catch block namespace."

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v5}, Lcom/lua/bsh/CallStack;->swap(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/NameSpace;

    throw v0

    :cond_a
    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    goto/16 :goto_7

    :cond_b
    throw v3

    :cond_c
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\t"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->pop()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_d
    move-object v0, v5

    move-object v3, v6

    goto/16 :goto_6
.end method
