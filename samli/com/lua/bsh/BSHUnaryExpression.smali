.class Lcom/lua/bsh/BSHUnaryExpression;
.super Lcom/lua/bsh/SimpleNode;

# interfaces
.implements Lcom/lua/bsh/ParserConstants;


# instance fields
.field public kind:I

.field public postfix:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lua/bsh/BSHUnaryExpression;->postfix:Z

    return-void
.end method

.method private a(Lcom/lua/bsh/LHS;Z)Ljava/lang/Object;
    .locals 3

    sget-boolean v0, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "lhsUnaryOperation"

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/lua/bsh/LHS;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/lua/bsh/BSHUnaryExpression;->kind:I

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/BSHUnaryExpression;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lua/bsh/BSHUnaryExpression;->postfix:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p1, v1, p2}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Lcom/lua/bsh/Primitive;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, p2}, Lcom/lua/bsh/Primitive;->a(Ljava/lang/Boolean;I)Z

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, p2}, Lcom/lua/bsh/Primitive;->a(Ljava/lang/Integer;I)I

    move-result v2

    const/16 v0, 0x64

    if-eq p2, v0, :cond_1

    const/16 v0, 0x65

    if-ne p2, v0, :cond_4

    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_2

    new-instance v0, Ljava/lang/Byte;

    int-to-byte v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_3

    new-instance v0, Ljava/lang/Short;

    int-to-short v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_4

    new-instance v0, Ljava/lang/Character;

    int-to-char v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_5
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0, p2}, Lcom/lua/bsh/Primitive;->a(Ljava/lang/Long;I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    :cond_6
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-static {v0, p2}, Lcom/lua/bsh/Primitive;->a(Ljava/lang/Float;I)F

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    move-object v0, v1

    goto :goto_0

    :cond_7
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/Double;

    check-cast v0, Ljava/lang/Double;

    invoke-static {v0, p2}, Lcom/lua/bsh/Primitive;->a(Ljava/lang/Double;I)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v1

    goto :goto_0

    :cond_8
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "An error occurred.  Please call technical support."

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lua/bsh/BSHUnaryExpression;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p1, Lcom/lua/bsh/Primitive;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/lua/bsh/Primitive;

    invoke-static {p1, p2}, Lcom/lua/bsh/Primitive;->unaryOperation(Lcom/lua/bsh/Primitive;I)Lcom/lua/bsh/Primitive;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unary operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/lua/bsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " inappropriate for object"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    :try_start_0
    iget v1, p0, Lcom/lua/bsh/BSHUnaryExpression;->kind:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lua/bsh/BSHUnaryExpression;->kind:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    :cond_0
    check-cast v0, Lcom/lua/bsh/BSHPrimaryExpression;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHPrimaryExpression;->toLHS(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/LHS;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lua/bsh/Interpreter;->getStrictJava()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/BSHUnaryExpression;->a(Lcom/lua/bsh/LHS;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/lua/bsh/BSHUnaryExpression;->kind:I

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/BSHUnaryExpression;->b(Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0
.end method
