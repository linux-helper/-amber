.class Lcom/lua/bsh/BSHAllocationExpression;
.super Lcom/lua/bsh/SimpleNode;


# static fields
.field private static g:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private a(Lcom/lua/bsh/BSHAmbiguousName;Lcom/lua/bsh/BSHArguments;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p3}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    invoke-virtual {p2, p3, p4}, Lcom/lua/bsh/BSHArguments;->getArguments(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, p3, p4, v4}, Lcom/lua/bsh/BSHAmbiguousName;->a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Z)Ljava/lang/Object;

    invoke-virtual {p1, p3, p4, v3}, Lcom/lua/bsh/BSHAmbiguousName;->a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/lua/bsh/ClassIdentifier;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/lua/bsh/ClassIdentifier;

    invoke-virtual {v0}, Lcom/lua/bsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    if-le v0, v5, :cond_4

    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v3

    check-cast v3, Lcom/lua/bsh/BSHBlock;

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lua/bsh/BSHAllocationExpression;->b(Ljava/lang/Class;[Ljava/lang/Object;Lcom/lua/bsh/BSHBlock;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lua/bsh/BSHAllocationExpression;->a(Ljava/lang/Class;[Ljava/lang/Object;Lcom/lua/bsh/BSHBlock;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1, v2, p3}, Lcom/lua/bsh/BSHAllocationExpression;->a(Ljava/lang/Class;[Ljava/lang/Object;Lcom/lua/bsh/CallStack;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unknown class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lcom/lua/bsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/EvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1

    :cond_3
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "Null args in new."

    invoke-direct {v0, v1, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_4
    move v0, v4

    goto :goto_0
.end method

.method private a(Lcom/lua/bsh/BSHAmbiguousName;Lcom/lua/bsh/BSHArrayDimensions;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p3}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {p1, p3, p4}, Lcom/lua/bsh/BSHAmbiguousName;->toClass(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2, v1, p3, p4}, Lcom/lua/bsh/BSHAllocationExpression;->a(Lcom/lua/bsh/BSHArrayDimensions;Ljava/lang/Class;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Lcom/lua/bsh/BSHAmbiguousName;->getName(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/Name;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, " not found."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/EvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0
.end method

.method private a(Lcom/lua/bsh/BSHArrayDimensions;Ljava/lang/Class;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1, p2, p3, p4}, Lcom/lua/bsh/BSHArrayDimensions;->eval(Ljava/lang/Class;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq v0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2, p1, p3}, Lcom/lua/bsh/BSHAllocationExpression;->a(Ljava/lang/Class;Lcom/lua/bsh/BSHArrayDimensions;Lcom/lua/bsh/CallStack;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/lua/bsh/BSHPrimitiveType;Lcom/lua/bsh/BSHArrayDimensions;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/lua/bsh/BSHPrimitiveType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/lua/bsh/BSHAllocationExpression;->a(Lcom/lua/bsh/BSHArrayDimensions;Ljava/lang/Class;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Class;Lcom/lua/bsh/BSHArrayDimensions;Lcom/lua/bsh/CallStack;)Ljava/lang/Object;
    .locals 3

    iget v0, p2, Lcom/lua/bsh/BSHArrayDimensions;->numUndefinedDims:I

    if-lez v0, :cond_0

    new-array v0, v0, [I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_0
    :try_start_0
    iget-object v0, p2, Lcom/lua/bsh/BSHArrayDimensions;->definedDimensions:[I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t construct primitive array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/EvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/lua/bsh/TargetError;

    invoke-direct {v1, v0, p0, p3}, Lcom/lua/bsh/TargetError;-><init>(Ljava/lang/Throwable;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1
.end method

.method private a(Ljava/lang/Class;[Ljava/lang/Object;Lcom/lua/bsh/BSHBlock;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 9

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p4}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/bsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lcom/lua/bsh/BSHAllocationExpression;->g:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/lua/bsh/BSHAllocationExpression;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lua/bsh/Modifiers;

    invoke-direct {v2}, Lcom/lua/bsh/Modifiers;-><init>()V

    const-string v0, "public"

    invoke-virtual {v2, v3, v0}, Lcom/lua/bsh/Modifiers;->addModifier(ILjava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lua/bsh/ClassGenerator;->getClassGenerator()Lcom/lua/bsh/ClassGenerator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/lua/bsh/ClassGenerator;->generateClass(Ljava/lang/String;Lcom/lua/bsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lcom/lua/bsh/BSHBlock;ZLcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-static {v0, p2}, Lcom/lua/bsh/Reflect;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error constructing inner class instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/EvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p4}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0, p0, p4}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method private a(Ljava/lang/Class;[Ljava/lang/Object;Lcom/lua/bsh/CallStack;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {p1, p2}, Lcom/lua/bsh/Reflect;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p3}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lua/bsh/This;->getNameSpace()Lcom/lua/bsh/NameSpace;

    move-result-object v2

    invoke-static {v2}, Lcom/lua/bsh/Name;->a(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/NameSpace;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Lcom/lua/bsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-static {}, Lcom/lua/bsh/ClassGenerator;->getClassGenerator()Lcom/lua/bsh/ClassGenerator;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/lua/bsh/ClassGenerator;->setInstanceNameSpaceParent(Ljava/lang/Object;Ljava/lang/String;Lcom/lua/bsh/NameSpace;)V
    :try_end_1
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p3}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "The constructor threw an exception:\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    new-instance v0, Lcom/lua/bsh/TargetError;

    const-string v1, "Object constructor"

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v5, 0x1

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lua/bsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;Z)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Constructor error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/EvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0
.end method

.method private b(Ljava/lang/Class;[Ljava/lang/Object;Lcom/lua/bsh/BSHBlock;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/lua/bsh/NameSpace;

    invoke-virtual {p4}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v1

    const-string v2, "AnonymousBlock"

    invoke-direct {v0, v1, v2}, Lcom/lua/bsh/NameSpace;-><init>(Lcom/lua/bsh/NameSpace;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/lua/bsh/CallStack;->push(Lcom/lua/bsh/NameSpace;)V

    const/4 v1, 0x1

    invoke-virtual {p3, p4, p5, v1}, Lcom/lua/bsh/BSHBlock;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Z)Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/lua/bsh/CallStack;->pop()Lcom/lua/bsh/NameSpace;

    invoke-virtual {v0, p1}, Lcom/lua/bsh/NameSpace;->importStatic(Ljava/lang/Class;)V

    :try_start_0
    invoke-virtual {v0, p5}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lua/bsh/This;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p4}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    check-cast v1, Lcom/lua/bsh/SimpleNode;

    instance-of v2, v0, Lcom/lua/bsh/BSHAmbiguousName;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/lua/bsh/BSHAmbiguousName;

    instance-of v2, v1, Lcom/lua/bsh/BSHArguments;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/lua/bsh/BSHArguments;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/lua/bsh/BSHAllocationExpression;->a(Lcom/lua/bsh/BSHAmbiguousName;Lcom/lua/bsh/BSHArguments;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v1, Lcom/lua/bsh/BSHArrayDimensions;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/lua/bsh/BSHAllocationExpression;->a(Lcom/lua/bsh/BSHAmbiguousName;Lcom/lua/bsh/BSHArrayDimensions;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/lua/bsh/BSHPrimitiveType;

    check-cast v1, Lcom/lua/bsh/BSHArrayDimensions;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/lua/bsh/BSHAllocationExpression;->a(Lcom/lua/bsh/BSHPrimitiveType;Lcom/lua/bsh/BSHArrayDimensions;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
