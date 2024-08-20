.class Lcom/lua/bsh/BSHArrayDimensions;
.super Lcom/lua/bsh/SimpleNode;


# instance fields
.field public baseType:Ljava/lang/Class;

.field public definedDimensions:[I

.field public numDefinedDims:I

.field public numUndefinedDims:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public addDefinedDimension()V
    .locals 1

    iget v0, p0, Lcom/lua/bsh/BSHArrayDimensions;->numDefinedDims:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/bsh/BSHArrayDimensions;->numDefinedDims:I

    return-void
.end method

.method public addUndefinedDimension()V
    .locals 1

    iget v0, p0, Lcom/lua/bsh/BSHArrayDimensions;->numUndefinedDims:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/bsh/BSHArrayDimensions;->numUndefinedDims:I

    return-void
.end method

.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    instance-of v1, v0, Lcom/lua/bsh/BSHArrayInitializer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lua/bsh/BSHArrayDimensions;->baseType:Ljava/lang/Class;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/lua/bsh/BSHArrayInitializer;

    iget v3, p0, Lcom/lua/bsh/BSHArrayDimensions;->numUndefinedDims:I

    invoke-virtual {v0, v1, v3, p1, p2}, Lcom/lua/bsh/BSHArrayInitializer;->eval(Ljava/lang/Class;ILcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Reflect;->getArrayDimensions(Ljava/lang/Class;)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/lua/bsh/BSHArrayDimensions;->definedDimensions:[I

    iget-object v1, p0, Lcom/lua/bsh/BSHArrayDimensions;->definedDimensions:[I

    array-length v1, v1

    iget v4, p0, Lcom/lua/bsh/BSHArrayDimensions;->numUndefinedDims:I

    if-ne v1, v4, :cond_2

    move v1, v2

    move-object v0, v3

    :goto_0
    iget-object v4, p0, Lcom/lua/bsh/BSHArrayDimensions;->definedDimensions:[I

    array-length v5, v4

    if-lt v1, v5, :cond_0

    :goto_1
    return-object v3

    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    aput v5, v4, v1

    iget-object v4, p0, Lcom/lua/bsh/BSHArrayDimensions;->definedDimensions:[I

    aget v4, v4, v1

    if-lez v4, :cond_1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Incompatible initializer. Allocation calls for a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/lua/bsh/BSHArrayDimensions;->numUndefinedDims:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " dimensional array, but initializer is a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " dimensional array"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/EvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "Internal Array Eval err:  unknown base type"

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_4
    iget v0, p0, Lcom/lua/bsh/BSHArrayDimensions;->numDefinedDims:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lua/bsh/BSHArrayDimensions;->definedDimensions:[I

    :goto_2
    iget v0, p0, Lcom/lua/bsh/BSHArrayDimensions;->numDefinedDims:I

    if-lt v2, v0, :cond_5

    sget-object v3, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/bsh/BSHArrayDimensions;->definedDimensions:[I

    check-cast v0, Lcom/lua/bsh/Primitive;

    invoke-virtual {v0}, Lcom/lua/bsh/Primitive;->intValue()I

    move-result v0

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Array index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " does not evaluate to an integer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/EvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1
.end method

.method public eval(Ljava/lang/Class;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 2

    sget-boolean v0, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "array base type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/lua/bsh/BSHArrayDimensions;->baseType:Ljava/lang/Class;

    invoke-virtual {p0, p2, p3}, Lcom/lua/bsh/BSHArrayDimensions;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
