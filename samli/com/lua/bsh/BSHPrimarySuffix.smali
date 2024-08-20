.class Lcom/lua/bsh/BSHPrimarySuffix;
.super Lcom/lua/bsh/SimpleNode;


# static fields
.field public static final CLASS:I = 0x0

.field public static final INDEX:I = 0x1

.field public static final NAME:I = 0x2

.field public static final PROPERTY:I = 0x3


# instance fields
.field public field:Ljava/lang/String;

.field public operation:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method static a(Ljava/lang/Object;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/SimpleNode;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p3, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/lua/bsh/Primitive;

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lua/bsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    check-cast v0, Lcom/lua/bsh/Primitive;

    invoke-virtual {v0}, Lcom/lua/bsh/Primitive;->intValue()I
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "doIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    const-string v1, "Arrays may only be indexed by integer types."

    invoke-virtual {v0, v1, p3, p1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "Not an array"

    invoke-direct {v0, v1, p3, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0
.end method

.method private a(Ljava/lang/Object;ZLcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1, p3, p4, p0}, Lcom/lua/bsh/BSHPrimarySuffix;->a(Ljava/lang/Object;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/SimpleNode;)I

    move-result v1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/lua/bsh/LHS;

    invoke-direct {v0, p1, v1}, Lcom/lua/bsh/LHS;-><init>(Ljava/lang/Object;I)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1, v1}, Lcom/lua/bsh/Reflect;->getIndex(Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p3}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method private a(ZLjava/lang/Object;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 5

    sget-object v1, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq p2, v1, :cond_5

    instance-of v1, p2, Lcom/lua/bsh/Primitive;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    check-cast v1, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v1, p3, p4}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_1

    new-instance v2, Lcom/lua/bsh/LHS;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, p2, v1}, Lcom/lua/bsh/LHS;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/lua/bsh/CollectionManager;->getCollectionManager()Lcom/lua/bsh/CollectionManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/lua/bsh/CollectionManager;->isMap(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p2, v1}, Lcom/lua/bsh/CollectionManager;->getFromMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lua/bsh/Primitive;->NULL:Lcom/lua/bsh/Primitive;

    goto :goto_0

    :cond_2
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {p2, v2}, Lcom/lua/bsh/Reflect;->getObjectProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lua/bsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No such property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/EvalError;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p0, p3}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v1

    throw v1

    :cond_3
    new-instance v1, Lcom/lua/bsh/EvalError;

    const-string v2, "Property expression must be a String or identifier."

    invoke-direct {v1, v2, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1

    :cond_4
    new-instance v1, Lcom/lua/bsh/EvalError;

    const-string v2, "Attempt to access property on a primitive"

    invoke-direct {v1, v2, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1

    :cond_5
    new-instance v1, Lcom/lua/bsh/EvalError;

    const-string v2, "Attempt to access property on undefined variable or class name"

    invoke-direct {v1, v2, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1
.end method

.method private b(Ljava/lang/Object;ZLcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/lua/bsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    const-string v2, "length"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    new-instance v1, Lcom/lua/bsh/Primitive;

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/lua/bsh/Primitive;-><init>(I)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/lua/bsh/EvalError;

    const-string v2, "Can\'t assign array length"

    invoke-direct {v1, v2, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1, p0, p3}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v1

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/lua/bsh/Reflect;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/lua/bsh/LHS;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/lua/bsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/lua/bsh/Reflect;->getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    check-cast v1, Lcom/lua/bsh/BSHArguments;

    invoke-virtual {v1, p3, p4}, Lcom/lua/bsh/BSHArguments;->getArguments(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)[Ljava/lang/Object;
    :try_end_1
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :try_start_2
    iget-object v2, p0, Lcom/lua/bsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/lua/bsh/Reflect;->invokeObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/lua/bsh/ReflectError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Method Invocation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/lua/bsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v1, v3, Lcom/lua/bsh/EvalError;

    if-eqz v1, :cond_5

    instance-of v1, v3, Lcom/lua/bsh/TargetError;

    if-eqz v1, :cond_4

    move-object v0, v3

    check-cast v0, Lcom/lua/bsh/TargetError;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/lua/bsh/TargetError;->inNativeCode()Z

    move-result v6

    :goto_1
    new-instance v1, Lcom/lua/bsh/TargetError;

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/lua/bsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;Z)V

    throw v1

    :cond_4
    move v6, v7

    goto :goto_1

    :cond_5
    const/4 v6, 0x1

    goto :goto_1

    :catch_2
    move-exception v1

    new-instance v2, Lcom/lua/bsh/EvalError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Error in method invocation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v2
    :try_end_3
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_3 .. :try_end_3} :catch_0
.end method


# virtual methods
.method public doSuffix(Ljava/lang/Object;ZLcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x1

    iget v0, p0, Lcom/lua/bsh/BSHPrimarySuffix;->operation:I

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/lua/bsh/BSHType;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p3}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    check-cast p1, Lcom/lua/bsh/BSHType;

    invoke-virtual {p1, p3, p4}, Lcom/lua/bsh/BSHType;->getType(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "Can\'t assign .class"

    invoke-direct {v0, v1, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "Attempt to use .class suffix on non class."

    invoke-direct {v0, v1, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_2
    instance-of v0, p1, Lcom/lua/bsh/SimpleNode;

    if-eqz v0, :cond_5

    instance-of v0, p1, Lcom/lua/bsh/BSHAmbiguousName;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/lua/bsh/BSHAmbiguousName;

    invoke-virtual {p1, p3, p4}, Lcom/lua/bsh/BSHAmbiguousName;->toObject(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    :cond_3
    :goto_1
    :try_start_0
    iget v0, p0, Lcom/lua/bsh/BSHPrimarySuffix;->operation:I

    if-eq v0, v5, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/lua/bsh/BSHPrimarySuffix;->a(ZLjava/lang/Object;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    :cond_4
    check-cast p1, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {p1, p3, p4}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lcom/lua/bsh/LHS;

    if-eqz v0, :cond_3

    :try_start_1
    check-cast p1, Lcom/lua/bsh/LHS;

    invoke-virtual {p1}, Lcom/lua/bsh/LHS;->getValue()Ljava/lang/Object;
    :try_end_1
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p3}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :cond_6
    :try_start_2
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "Unknown suffix type"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/lua/bsh/ReflectError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "reflection error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/EvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_7
    :try_start_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lua/bsh/BSHPrimarySuffix;->b(Ljava/lang/Object;ZLcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lua/bsh/BSHPrimarySuffix;->a(Ljava/lang/Object;ZLcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/lua/bsh/ReflectError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v2, v0

    new-instance v0, Lcom/lua/bsh/TargetError;

    const-string v1, "target exception"

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lua/bsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;Z)V

    throw v0
.end method
