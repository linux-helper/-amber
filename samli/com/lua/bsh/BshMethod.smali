.class public Lcom/lua/bsh/BshMethod;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Lcom/lua/bsh/NameSpace;

.field b:Lcom/lua/bsh/Modifiers;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Class;

.field private e:[Ljava/lang/String;

.field private f:I

.field private g:[Ljava/lang/Class;

.field h:Lcom/lua/bsh/BSHBlock;

.field private i:Ljava/lang/reflect/Method;

.field private j:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/lua/bsh/BSHMethodDeclaration;Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Modifiers;)V
    .locals 8

    iget-object v1, p1, Lcom/lua/bsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/lua/bsh/BSHMethodDeclaration;->e:Ljava/lang/Class;

    iget-object v0, p1, Lcom/lua/bsh/BSHMethodDeclaration;->b:Lcom/lua/bsh/BSHFormalParameters;

    invoke-virtual {v0}, Lcom/lua/bsh/BSHFormalParameters;->getParamNames()[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lcom/lua/bsh/BSHMethodDeclaration;->b:Lcom/lua/bsh/BSHFormalParameters;

    iget-object v4, v0, Lcom/lua/bsh/BSHFormalParameters;->h:[Ljava/lang/Class;

    iget-object v5, p1, Lcom/lua/bsh/BSHMethodDeclaration;->c:Lcom/lua/bsh/BSHBlock;

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/BshMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lcom/lua/bsh/BSHBlock;Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Modifiers;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lcom/lua/bsh/BSHBlock;Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Modifiers;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lua/bsh/BshMethod;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/lua/bsh/BshMethod;->d:Ljava/lang/Class;

    iput-object p3, p0, Lcom/lua/bsh/BshMethod;->e:[Ljava/lang/String;

    if-eqz p3, :cond_0

    array-length v0, p3

    iput v0, p0, Lcom/lua/bsh/BshMethod;->f:I

    :cond_0
    iput-object p4, p0, Lcom/lua/bsh/BshMethod;->g:[Ljava/lang/Class;

    iput-object p5, p0, Lcom/lua/bsh/BshMethod;->h:Lcom/lua/bsh/BSHBlock;

    iput-object p6, p0, Lcom/lua/bsh/BshMethod;->a:Lcom/lua/bsh/NameSpace;

    iput-object p7, p0, Lcom/lua/bsh/BshMethod;->b:Lcom/lua/bsh/Modifiers;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/BshMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lcom/lua/bsh/BSHBlock;Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Modifiers;)V

    iput-object p1, p0, Lcom/lua/bsh/BshMethod;->i:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/lua/bsh/BshMethod;->j:Ljava/lang/Object;

    return-void
.end method

.method private b([Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;Z)Ljava/lang/Object;
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/BshMethod;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lua/bsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    if-nez p3, :cond_0

    new-instance p3, Lcom/lua/bsh/CallStack;

    iget-object v0, p0, Lcom/lua/bsh/BshMethod;->a:Lcom/lua/bsh/NameSpace;

    invoke-direct {p3, v0}, Lcom/lua/bsh/CallStack;-><init>(Lcom/lua/bsh/NameSpace;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/Object;

    :cond_1
    array-length v0, p1

    iget v5, p0, Lcom/lua/bsh/BshMethod;->f:I

    if-ne v0, v5, :cond_d

    if-eqz p5, :cond_5

    invoke-virtual {p3}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p4}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/SimpleNode;)V

    :goto_1
    iget v5, p0, Lcom/lua/bsh/BshMethod;->f:I

    if-lt v1, v5, :cond_a

    if-nez p5, :cond_2

    invoke-virtual {p3, v0}, Lcom/lua/bsh/CallStack;->push(Lcom/lua/bsh/NameSpace;)V

    :cond_2
    iget-object v0, p0, Lcom/lua/bsh/BshMethod;->h:Lcom/lua/bsh/BSHBlock;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, v1}, Lcom/lua/bsh/BSHBlock;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3}, Lcom/lua/bsh/CallStack;->copy()Lcom/lua/bsh/CallStack;

    move-result-object v4

    if-nez p5, :cond_3

    invoke-virtual {p3}, Lcom/lua/bsh/CallStack;->pop()Lcom/lua/bsh/NameSpace;

    :cond_3
    instance-of v1, v0, Lcom/lua/bsh/ReturnControl;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/lua/bsh/ReturnControl;

    iget v1, v0, Lcom/lua/bsh/ReturnControl;->kind:I

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_7

    iget-object v1, v0, Lcom/lua/bsh/ReturnControl;->value:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v2, :cond_e

    sget-object v2, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-ne v1, v2, :cond_6

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_2
    if-eqz v3, :cond_4

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v2, :cond_8

    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    :cond_4
    :goto_3
    return-object v0

    :cond_5
    new-instance v0, Lcom/lua/bsh/NameSpace;

    iget-object v5, p0, Lcom/lua/bsh/BshMethod;->a:Lcom/lua/bsh/NameSpace;

    iget-object v6, p0, Lcom/lua/bsh/BshMethod;->c:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lcom/lua/bsh/NameSpace;-><init>(Lcom/lua/bsh/NameSpace;Ljava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/lua/bsh/NameSpace;->o:Z

    goto :goto_0

    :cond_6
    new-instance v1, Lcom/lua/bsh/EvalError;

    const-string v2, "Cannot return value from void method"

    iget-object v0, v0, Lcom/lua/bsh/ReturnControl;->returnPoint:Lcom/lua/bsh/SimpleNode;

    invoke-direct {v1, v2, v0, v4}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1

    :cond_7
    new-instance v1, Lcom/lua/bsh/EvalError;

    const-string v2, "\'continue\' or \'break\' in method body"

    iget-object v0, v0, Lcom/lua/bsh/ReturnControl;->returnPoint:Lcom/lua/bsh/SimpleNode;

    invoke-direct {v1, v2, v0, v4}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1

    :cond_8
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0, v3, v2}, Lcom/lua/bsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v0

    if-eqz v1, :cond_9

    iget-object p4, v1, Lcom/lua/bsh/ReturnControl;->returnPoint:Lcom/lua/bsh/SimpleNode;

    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Incorrect type returned from method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/lua/bsh/BshMethod;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p3}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :cond_a
    aget-object v5, v4, v1

    if-eqz v5, :cond_b

    :try_start_1
    aget-object v5, p1, v1

    aget-object v6, v4, v1

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/lua/bsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v1
    :try_end_1
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v5, p0, Lcom/lua/bsh/BshMethod;->e:[Ljava/lang/String;

    aget-object v5, v5, v1

    aget-object v6, v4, v1

    aget-object v7, p1, v1

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/lua/bsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V
    :try_end_2
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Typed method parameter assignment"

    invoke-virtual {v0, v1, p4, p3}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid argument: `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/lua/bsh/BshMethod;->e:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " for method: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/BshMethod;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/EvalError;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p4, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_b
    aget-object v5, p1, v1

    sget-object v6, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq v5, v6, :cond_c

    :try_start_3
    iget-object v5, p0, Lcom/lua/bsh/BshMethod;->e:[Ljava/lang/String;

    aget-object v5, v5, v1

    aget-object v6, p1, v1

    invoke-virtual {p2}, Lcom/lua/bsh/Interpreter;->getStrictJava()Z

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_3
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0, p4, p3}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Undefined variable or class name, parameter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/lua/bsh/BshMethod;->e:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " to method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/BshMethod;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/EvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p4, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1

    :cond_d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Wrong number of arguments for local method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/BshMethod;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/EvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p4, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1

    :cond_e
    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_2

    :cond_f
    move-object v1, v2

    goto/16 :goto_2
.end method


# virtual methods
.method a([Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;Z)Ljava/lang/Object;
    .locals 6

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/BshMethod;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/lua/bsh/BshMethod;->j:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/lua/bsh/Reflect;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "HERE!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v2

    new-instance v0, Lcom/lua/bsh/TargetError;

    const-string v1, "Exception invoking imported object method."

    const/4 v5, 0x1

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lua/bsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;Z)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error invoking Java method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/EvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p4, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/lua/bsh/BshMethod;->b:Lcom/lua/bsh/Modifiers;

    if-eqz v0, :cond_5

    const-string v1, "synchronized"

    invoke-virtual {v0, v1}, Lcom/lua/bsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lua/bsh/BshMethod;->a:Lcom/lua/bsh/NameSpace;

    iget-boolean v1, v0, Lcom/lua/bsh/NameSpace;->p:Z

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v0}, Lcom/lua/bsh/NameSpace;->a()Ljava/lang/Object;
    :try_end_1
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_2
    monitor-enter v0

    :try_start_2
    invoke-direct/range {p0 .. p5}, Lcom/lua/bsh/BshMethod;->b([Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "Can\'t get class instance for synchronized method."

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v0, p2}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_5
    invoke-direct/range {p0 .. p5}, Lcom/lua/bsh/BshMethod;->b([Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public getModifiers()Lcom/lua/bsh/Modifiers;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/BshMethod;->b:Lcom/lua/bsh/Modifiers;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/BshMethod;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/BshMethod;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/BshMethod;->g:[Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/BshMethod;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public hasModifier(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/BshMethod;->b:Lcom/lua/bsh/Modifiers;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/lua/bsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke([Ljava/lang/Object;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/lua/bsh/BshMethod;->a([Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke([Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lua/bsh/BshMethod;->a([Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Scripted Method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/BshMethod;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lua/bsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lua/bsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
