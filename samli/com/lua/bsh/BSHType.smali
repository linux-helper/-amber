.class Lcom/lua/bsh/BSHType;
.super Lcom/lua/bsh/SimpleNode;

# interfaces
.implements Lcom/lua/bsh/BshClassManager$Listener;


# instance fields
.field private g:Ljava/lang/Class;

.field private h:I

.field private i:Ljava/lang/Class;

.field j:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method public static getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2f

    const/16 v3, 0x2e

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-string v0, "Z"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-string v0, "C"

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-string v0, "B"

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-string v0, "S"

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-string v0, "I"

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-string v0, "J"

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-string v0, "F"

    goto :goto_0

    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-string v0, "D"

    goto :goto_0

    :cond_8
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    const-string v0, "V"

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/lua/bsh/SimpleNode;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    return-object v0
.end method

.method public addArrayDimension()V
    .locals 1

    iget v0, p0, Lcom/lua/bsh/BSHType;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/bsh/BSHType;->h:I

    return-void
.end method

.method public classLoaderChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/bsh/BSHType;->i:Ljava/lang/Class;

    iput-object v0, p0, Lcom/lua/bsh/BSHType;->g:Ljava/lang/Class;

    return-void
.end method

.method public getArrayDims()I
    .locals 1

    iget v0, p0, Lcom/lua/bsh/BSHType;->h:I

    return v0
.end method

.method public getBaseType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/BSHType;->g:Ljava/lang/Class;

    return-object v0
.end method

.method public getType(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/BSHType;->i:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lua/bsh/BSHType;->a()Lcom/lua/bsh/SimpleNode;

    move-result-object v0

    instance-of v1, v0, Lcom/lua/bsh/BSHPrimitiveType;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/lua/bsh/BSHPrimitiveType;

    invoke-virtual {v0}, Lcom/lua/bsh/BSHPrimitiveType;->getType()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/lua/bsh/BSHType;->g:Ljava/lang/Class;

    iget v0, p0, Lcom/lua/bsh/BSHType;->h:I

    if-lez v0, :cond_2

    :try_start_0
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/lua/bsh/BSHType;->g:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/bsh/BSHType;->i:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p2}, Lcom/lua/bsh/Interpreter;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lua/bsh/BshClassManager;->addListener(Lcom/lua/bsh/BshClassManager$Listener;)V

    iget-object v0, p0, Lcom/lua/bsh/BSHType;->i:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/lua/bsh/BSHAmbiguousName;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHAmbiguousName;->toClass(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "Couldn\'t construct array type"

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/lua/bsh/BSHType;->g:Ljava/lang/Class;

    iput-object v0, p0, Lcom/lua/bsh/BSHType;->i:Ljava/lang/Class;

    goto :goto_2
.end method

.method public getTypeDescriptor(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    const/16 v5, 0x2f

    const/16 v4, 0x2e

    iget-object v1, p0, Lcom/lua/bsh/BSHType;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/lua/bsh/BSHType;->a()Lcom/lua/bsh/SimpleNode;

    move-result-object v0

    instance-of v1, v0, Lcom/lua/bsh/BSHPrimitiveType;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/lua/bsh/BSHPrimitiveType;

    iget-object v0, v0, Lcom/lua/bsh/BSHPrimitiveType;->type:Ljava/lang/Class;

    invoke-static {v0}, Lcom/lua/bsh/BSHType;->getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_2
    iget v2, p0, Lcom/lua/bsh/BSHType;->h:I

    if-lt v0, v2, :cond_6

    iput-object v1, p0, Lcom/lua/bsh/BSHType;->j:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/lua/bsh/BSHAmbiguousName;

    iget-object v1, v1, Lcom/lua/bsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/lua/bsh/Interpreter;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lua/bsh/BshClassManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :try_start_0
    check-cast v0, Lcom/lua/bsh/BSHAmbiguousName;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHAmbiguousName;->toClass(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;
    :try_end_0
    .catch Lcom/lua/bsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/lua/bsh/BSHType;->getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_3

    :cond_2
    move-object v0, v2

    move-object v1, v3

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {v0}, Lcom/lua/bsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method
