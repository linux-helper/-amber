.class Lcom/lua/bsh/BSHArrayInitializer;
.super Lcom/lua/bsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Object;ILcom/lua/bsh/CallStack;)V
    .locals 3

    instance-of v0, p2, Lcom/lua/bsh/Primitive;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/lua/bsh/Primitive;

    invoke-virtual {p2}, Lcom/lua/bsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Incompatible type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " in initializer of array type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, " at position: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/EvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p4}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "Array initializer has no base type."

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0
.end method

.method public eval(Ljava/lang/Class;ILcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v3

    new-array v1, p2, [I

    aput v3, v1, v0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    instance-of v2, v0, Lcom/lua/bsh/BSHArrayInitializer;

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    if-lt p2, v2, :cond_1

    check-cast v0, Lcom/lua/bsh/BSHArrayInitializer;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, p1, v2, p3, p4}, Lcom/lua/bsh/BSHArrayInitializer;->eval(Ljava/lang/Class;ILcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    sget-object v2, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq v0, v2, :cond_4

    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, p1, v2}, Lcom/lua/bsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-static {v2}, Lcom/lua/bsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    :try_start_1
    invoke-static {v4, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid Location for Intializer, position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/EvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1

    :cond_2
    invoke-virtual {v0, p3, p4}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Error in array initializer"

    invoke-virtual {v0, v1, p0, p3}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :cond_3
    move-object v2, v0

    goto :goto_2

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "arraystore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/lua/bsh/BSHArrayInitializer;->a(Ljava/lang/Class;Ljava/lang/Object;ILcom/lua/bsh/CallStack;)V

    throw v5

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "illegal arg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/lua/bsh/BSHArrayInitializer;->a(Ljava/lang/Class;Ljava/lang/Object;ILcom/lua/bsh/CallStack;)V

    throw v5

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Void in array initializer, position"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/EvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1
.end method
