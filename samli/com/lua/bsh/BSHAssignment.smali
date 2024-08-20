.class Lcom/lua/bsh/BSHAssignment;
.super Lcom/lua/bsh/SimpleNode;

# interfaces
.implements Lcom/lua/bsh/ParserConstants;


# instance fields
.field public operator:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq p2, v0, :cond_1

    const/16 v0, 0x66

    if-ne p3, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    const-string v1, "Use of non + operator with String LHS"

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p1, Lcom/lua/bsh/Primitive;

    if-nez v0, :cond_2

    instance-of v1, p2, Lcom/lua/bsh/Primitive;

    if-eqz v1, :cond_3

    :cond_2
    sget-object v1, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq p1, v1, :cond_8

    if-eq p2, v1, :cond_8

    sget-object v1, Lcom/lua/bsh/Primitive;->NULL:Lcom/lua/bsh/Primitive;

    if-eq p1, v1, :cond_7

    if-eq p2, v1, :cond_7

    :cond_3
    instance-of v1, p1, Ljava/lang/Boolean;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/Character;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/Number;

    if-nez v1, :cond_4

    if-eqz v0, :cond_6

    :cond_4
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_5

    instance-of v0, p2, Ljava/lang/Character;

    if-nez v0, :cond_5

    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_5

    instance-of v0, p2, Lcom/lua/bsh/Primitive;

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {p1, p2, p3}, Lcom/lua/bsh/Primitive;->binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Non primitive value in operator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/lua/bsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    const-string v1, "Illegal use of null object or \'null\' literal"

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    const-string v1, "Illegal use of undefined object or \'void\' literal"

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 6

    const/16 v5, 0x51

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHPrimaryExpression;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/lua/bsh/Interpreter;->getStrictJava()Z

    move-result v2

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHPrimaryExpression;->toLHS(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/LHS;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v0, p0, Lcom/lua/bsh/BSHAssignment;->operator:I

    if-eq v0, v5, :cond_4

    :try_start_0
    invoke-virtual {v3}, Lcom/lua/bsh/LHS;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq v0, v4, :cond_1

    :try_start_1
    iget v4, p0, Lcom/lua/bsh/BSHAssignment;->operator:I

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "unimplemented operator in assignment BSH"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :pswitch_0
    const/16 v4, 0x74

    :try_start_2
    invoke-direct {p0, v1, v0, v4}, Lcom/lua/bsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_1
    const/16 v4, 0x72

    invoke-direct {p0, v1, v0, v4}, Lcom/lua/bsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const/16 v4, 0x70

    invoke-direct {p0, v1, v0, v4}, Lcom/lua/bsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    const/16 v4, 0x6f

    invoke-direct {p0, v1, v0, v4}, Lcom/lua/bsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    const/16 v4, 0x6e

    invoke-direct {p0, v1, v0, v4}, Lcom/lua/bsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    const/16 v4, 0x6c

    invoke-direct {p0, v1, v0, v4}, Lcom/lua/bsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    const/16 v4, 0x6a

    invoke-direct {p0, v1, v0, v4}, Lcom/lua/bsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_7
    const/16 v4, 0x69

    invoke-direct {p0, v1, v0, v4}, Lcom/lua/bsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_8
    const/16 v4, 0x68

    invoke-direct {p0, v1, v0, v4}, Lcom/lua/bsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_9
    const/16 v4, 0x67

    invoke-direct {p0, v1, v0, v4}, Lcom/lua/bsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_a
    const/16 v4, 0x66

    invoke-direct {p0, v1, v0, v4}, Lcom/lua/bsh/BSHAssignment;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v0, v2}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "Void assignment."

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "Error, null LHS"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "Error, null LHSnode"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x76
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
