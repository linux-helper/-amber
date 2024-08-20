.class Lcom/lua/bsh/BSHBinaryExpression;
.super Lcom/lua/bsh/SimpleNode;

# interfaces
.implements Lcom/lua/bsh/ParserConstants;


# static fields
.field static a:Ljava/lang/Class;


# instance fields
.field public kind:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/lua/bsh/Primitive;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lua/bsh/Primitive;->NULL:Lcom/lua/bsh/Primitive;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 8

    const/16 v7, 0x5a

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v3}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    iget v0, p0, Lcom/lua/bsh/BSHBinaryExpression;->kind:I

    const/16 v4, 0x23

    if-ne v0, v4, :cond_4

    sget-object v0, Lcom/lua/bsh/Primitive;->NULL:Lcom/lua/bsh/Primitive;

    if-ne v1, v0, :cond_0

    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-direct {v0, v3}, Lcom/lua/bsh/Primitive;-><init>(Z)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHType;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHType;->getType(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    move-result-object v4

    instance-of v0, v1, Lcom/lua/bsh/Primitive;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/lua/bsh/BSHBinaryExpression;->a:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "bsh.Primitive"

    invoke-static {v0}, Lcom/lua/bsh/BSHBinaryExpression;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/lua/bsh/BSHBinaryExpression;->a:Ljava/lang/Class;

    :cond_1
    if-ne v4, v0, :cond_2

    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-direct {v0, v2}, Lcom/lua/bsh/Primitive;-><init>(Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-direct {v0, v3}, Lcom/lua/bsh/Primitive;-><init>(Z)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/lua/bsh/Types;->c(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/Primitive;-><init>(Z)V

    goto :goto_0

    :cond_4
    const/16 v4, 0x62

    if-eq v0, v4, :cond_5

    const/16 v4, 0x63

    if-ne v0, v4, :cond_7

    :cond_5
    invoke-direct {p0, v1}, Lcom/lua/bsh/BSHBinaryExpression;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/lua/bsh/Primitive;

    invoke-virtual {v0}, Lcom/lua/bsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_7

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-direct {v0, v3}, Lcom/lua/bsh/Primitive;-><init>(Z)V

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/lua/bsh/BSHBinaryExpression;->kind:I

    const/16 v4, 0x60

    if-eq v0, v4, :cond_8

    const/16 v4, 0x61

    if-ne v0, v4, :cond_a

    :cond_8
    invoke-direct {p0, v1}, Lcom/lua/bsh/BSHBinaryExpression;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    check-cast v0, Lcom/lua/bsh/Primitive;

    invoke-virtual {v0}, Lcom/lua/bsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_2
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_a

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_a

    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-direct {v0, v2}, Lcom/lua/bsh/Primitive;-><init>(Z)V

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto :goto_2

    :cond_a
    invoke-direct {p0, v1}, Lcom/lua/bsh/BSHBinaryExpression;->b(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p0, v2}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lua/bsh/BSHBinaryExpression;->b(Ljava/lang/Object;)Z

    move-result v5

    if-nez v4, :cond_b

    invoke-direct {p0, v1}, Lcom/lua/bsh/BSHBinaryExpression;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_b
    if-nez v5, :cond_c

    invoke-direct {p0, v0}, Lcom/lua/bsh/BSHBinaryExpression;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    if-eqz v4, :cond_17

    if-eqz v5, :cond_17

    iget v4, p0, Lcom/lua/bsh/BSHBinaryExpression;->kind:I

    if-ne v4, v7, :cond_17

    :cond_d
    iget v4, p0, Lcom/lua/bsh/BSHBinaryExpression;->kind:I

    if-eq v4, v7, :cond_16

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_15

    const/16 v2, 0x66

    if-eq v4, v2, :cond_11

    :cond_e
    instance-of v2, v1, Lcom/lua/bsh/Primitive;

    if-nez v2, :cond_f

    instance-of v2, v0, Lcom/lua/bsh/Primitive;

    if-eqz v2, :cond_13

    :cond_f
    sget-object v2, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq v1, v2, :cond_14

    if-eq v0, v2, :cond_14

    sget-object v2, Lcom/lua/bsh/Primitive;->NULL:Lcom/lua/bsh/Primitive;

    if-eq v1, v2, :cond_10

    if-ne v0, v2, :cond_13

    :cond_10
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "illegal use of null value or \'null\' literal"

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_11
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_12

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_e

    :cond_12
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Operator: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/lua/bsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    iget v2, p0, Lcom/lua/bsh/BSHBinaryExpression;->kind:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\' inappropriate for objects"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/EvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1

    :cond_14
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "illegal use of undefined variable, class, or \'void\' literal"

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_15
    if-eq v1, v0, :cond_18

    move v1, v2

    :goto_3
    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-direct {v0, v1}, Lcom/lua/bsh/Primitive;-><init>(Z)V

    goto/16 :goto_0

    :cond_16
    if-ne v1, v0, :cond_19

    :goto_4
    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-direct {v0, v2}, Lcom/lua/bsh/Primitive;-><init>(Z)V

    goto/16 :goto_0

    :cond_17
    :try_start_0
    iget v2, p0, Lcom/lua/bsh/BSHBinaryExpression;->kind:I

    invoke-static {v1, v0, v2}, Lcom/lua/bsh/Primitive;->binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :cond_18
    move v1, v3

    goto :goto_3

    :cond_19
    move v2, v3

    goto :goto_4
.end method
