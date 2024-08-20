.class Lcom/lua/bsh/BSHEnhancedForStatement;
.super Lcom/lua/bsh/SimpleNode;

# interfaces
.implements Lcom/lua/bsh/ParserConstants;


# instance fields
.field g:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 11

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v1

    instance-of v3, v0, Lcom/lua/bsh/BSHType;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/lua/bsh/BSHType;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHType;->getType(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    if-le v1, v4, :cond_a

    invoke-virtual {p0, v4}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    check-cast v1, Lcom/lua/bsh/SimpleNode;

    :goto_0
    move-object v2, v1

    :goto_1
    new-instance v8, Lcom/lua/bsh/BlockNameSpace;

    invoke-direct {v8, v7}, Lcom/lua/bsh/BlockNameSpace;-><init>(Lcom/lua/bsh/NameSpace;)V

    invoke-virtual {p1, v8}, Lcom/lua/bsh/CallStack;->swap(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/NameSpace;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/lua/bsh/Primitive;->NULL:Lcom/lua/bsh/Primitive;

    if-eq v0, v1, :cond_9

    invoke-static {}, Lcom/lua/bsh/CollectionManager;->getCollectionManager()Lcom/lua/bsh/CollectionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lua/bsh/CollectionManager;->isBshIterable(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1, v0}, Lcom/lua/bsh/CollectionManager;->getBshIterator(Ljava/lang/Object;)Lcom/lua/bsh/BshIterator;

    move-result-object v9

    sget-object v4, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    :goto_2
    invoke-interface {v9}, Lcom/lua/bsh/BshIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v4

    :cond_0
    invoke-virtual {p1, v7}, Lcom/lua/bsh/CallStack;->swap(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/NameSpace;

    return-object v0

    :cond_1
    if-le v1, v5, :cond_2

    invoke-virtual {p0, v5}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    check-cast v1, Lcom/lua/bsh/SimpleNode;

    move-object v3, v2

    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v3, v2

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/BSHEnhancedForStatement;->g:Ljava/lang/String;

    invoke-interface {v9}, Lcom/lua/bsh/BshIterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v10, Lcom/lua/bsh/Modifiers;

    invoke-direct {v10}, Lcom/lua/bsh/Modifiers;-><init>()V

    invoke-virtual {v8, v0, v3, v1, v10}, Lcom/lua/bsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/lua/bsh/ReturnControl;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/lua/bsh/ReturnControl;

    iget v0, v0, Lcom/lua/bsh/ReturnControl;->kind:I

    const/16 v10, 0xc

    if-eq v0, v10, :cond_6

    const/16 v10, 0x13

    if-eq v0, v10, :cond_4

    const/16 v10, 0x2e

    if-eq v0, v10, :cond_7

    :cond_4
    move v1, v6

    move-object v0, v4

    :goto_4
    if-nez v1, :cond_0

    move-object v4, v0

    goto :goto_2

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/lua/bsh/BSHEnhancedForStatement;->g:Ljava/lang/String;

    invoke-interface {v9}, Lcom/lua/bsh/BshIterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v1, v10}, Lcom/lua/bsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "for loop iterator variable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/lua/bsh/BSHEnhancedForStatement;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :cond_6
    move-object v1, v4

    :cond_7
    move-object v0, v1

    move v1, v5

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t iterate over type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/EvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "The collection, array, map, iterator, or enumeration portion of a for statement cannot be null."

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_a
    move-object v1, v2

    goto/16 :goto_0
.end method
