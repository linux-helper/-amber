.class Lcom/lua/bsh/Name;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Object;

.field private f:I

.field g:Ljava/lang/Class;

.field h:Ljava/lang/Class;

.field public namespace:Lcom/lua/bsh/NameSpace;


# direct methods
.method constructor <init>(Lcom/lua/bsh/NameSpace;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/lua/bsh/Name;->namespace:Lcom/lua/bsh/NameSpace;

    iput-object p2, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v2, v0

    move v0, v1

    :goto_1
    const/16 v3, 0x2e

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static a(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/NameSpace;
    .locals 1

    iget-boolean v0, p0, Lcom/lua/bsh/NameSpace;->p:Z

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/lua/bsh/NameSpace;->o:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->getParent()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->getParent()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lua/bsh/NameSpace;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->getParent()Lcom/lua/bsh/NameSpace;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;ZZ)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/lua/bsh/Name;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/lua/bsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    iget-object v2, p0, Lcom/lua/bsh/Name;->namespace:Lcom/lua/bsh/NameSpace;

    iget-object v4, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lua/bsh/Name;->a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Interpreter;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    sget-object v2, Lcom/lua/bsh/Name;->a:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/lua/bsh/Name;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/lua/bsh/This;

    if-eqz v0, :cond_5

    :cond_1
    if-nez p3, :cond_5

    sget-boolean v0, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "trying to resolve variable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/lua/bsh/Name;->e:Ljava/lang/Object;

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/lua/bsh/Name;->namespace:Lcom/lua/bsh/NameSpace;

    const/4 v5, 0x0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lua/bsh/Name;->a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Interpreter;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq v0, v1, :cond_5

    sget-boolean v1, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "resolved variable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " in namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/lua/bsh/Name;->namespace:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/lua/bsh/Name;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1, v0}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    check-cast v0, Lcom/lua/bsh/This;

    iget-object v2, v0, Lcom/lua/bsh/This;->a:Lcom/lua/bsh/NameSpace;

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/lua/bsh/Name;->e:Ljava/lang/Object;

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "trying class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_6
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;)I

    move-result v3

    if-le v0, v3, :cond_8

    :cond_7
    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;)I

    move-result v4

    sub-int v0, v4, v0

    invoke-static {v3, v0}, Lcom/lua/bsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/lua/bsh/ClassIdentifier;

    invoke-direct {v0, v1}, Lcom/lua/bsh/ClassIdentifier;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/lua/bsh/Name;->namespace:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v1, v2}, Lcom/lua/bsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    sget-boolean v0, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "not a class, trying var prefix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/lua/bsh/Name;->e:Ljava/lang/Object;

    if-eqz v0, :cond_b

    instance-of v0, v0, Lcom/lua/bsh/This;

    if-eqz v0, :cond_d

    :cond_b
    if-nez p3, :cond_d

    if-eqz p4, :cond_d

    iget-object v0, p0, Lcom/lua/bsh/Name;->e:Ljava/lang/Object;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/lua/bsh/Name;->namespace:Lcom/lua/bsh/NameSpace;

    move-object v1, v0

    :goto_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "auto: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Lcom/lua/bsh/NameSpace;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/lua/bsh/NameSpace;-><init>(Lcom/lua/bsh/NameSpace;Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v0, v2}, Lcom/lua/bsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/lua/bsh/Name;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1, v0}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    check-cast v0, Lcom/lua/bsh/This;

    iget-object v0, v0, Lcom/lua/bsh/This;->a:Lcom/lua/bsh/NameSpace;

    move-object v1, v0

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/lua/bsh/Name;->e:Ljava/lang/Object;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/lua/bsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v1, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    sget-object v2, Lcom/lua/bsh/Name;->a:Ljava/lang/String;

    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    invoke-direct {p0, v1, v2, v0}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Class or variable not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    sget-object v1, Lcom/lua/bsh/Primitive;->NULL:Lcom/lua/bsh/Primitive;

    if-eq v0, v1, :cond_1b

    sget-object v1, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq v0, v1, :cond_1a

    instance-of v1, v0, Lcom/lua/bsh/Primitive;

    if-nez v1, :cond_19

    instance-of v1, v0, Lcom/lua/bsh/ClassIdentifier;

    if-eqz v1, :cond_16

    check-cast v0, Lcom/lua/bsh/ClassIdentifier;

    invoke-virtual {v0}, Lcom/lua/bsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "this"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/lua/bsh/Name;->namespace:Lcom/lua/bsh/NameSpace;

    :goto_4
    if-eqz v0, :cond_11

    iget-object v3, v0, Lcom/lua/bsh/NameSpace;->r:Ljava/lang/Object;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v1, :cond_10

    iget-object v1, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/lua/bsh/Name;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/lua/bsh/NameSpace;->r:Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v0}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v0}, Lcom/lua/bsh/NameSpace;->getParent()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    goto :goto_4

    :cond_11
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t find enclosing \'this\' instance of class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :try_start_0
    sget-boolean v0, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Name call to getStaticFieldValue, class: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, ", field:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_13
    invoke-static {v1, v2}, Lcom/lua/bsh/Reflect;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_5
    if-nez v0, :cond_14

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lua/bsh/Name;->namespace:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v4, v3}, Lcom/lua/bsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/lua/bsh/ClassIdentifier;

    invoke-direct {v0, v3}, Lcom/lua/bsh/ClassIdentifier;-><init>(Ljava/lang/Class;)V

    :cond_14
    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/lua/bsh/Name;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "field reflect error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_5

    :cond_15
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No static field or inner class: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    if-nez p3, :cond_18

    iget-object v0, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "length"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/lua/bsh/Name;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/lua/bsh/Primitive;

    iget-object v2, p0, Lcom/lua/bsh/Name;->e:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/lua/bsh/Primitive;-><init>(I)V

    iget-object v2, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/lua/bsh/Name;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_17
    :try_start_1
    iget-object v0, p0, Lcom/lua/bsh/Name;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/lua/bsh/Reflect;->getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/lua/bsh/Name;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/lua/bsh/ReflectError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot access field: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", on object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/Name;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " does not resolve to a class name."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Can\'t treat primitive like an object. Error while evaluating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Undefined variable or class name while evaluating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Null Pointer while evaluating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/UtilTargetError;

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/lua/bsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_5
.end method

.method private a(Lcom/lua/bsh/Interpreter;[Ljava/lang/Object;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Ljava/lang/Object;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-boolean v0, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "invokeLocalMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/lua/bsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/Name;->namespace:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v0, v1, v2}, Lcom/lua/bsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/lua/bsh/BshMethod;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/lua/bsh/BshMethod;->invoke([Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/lua/bsh/Interpreter;->getClassManager()Lcom/lua/bsh/BshClassManager;

    :try_start_1
    iget-object v0, p0, Lcom/lua/bsh/Name;->namespace:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v0, v1, v2, p1}, Lcom/lua/bsh/NameSpace;->getCommand(Ljava/lang/String;[Ljava/lang/Class;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    if-nez v0, :cond_3

    :try_start_2
    iget-object v0, p0, Lcom/lua/bsh/Name;->namespace:Lcom/lua/bsh/NameSpace;

    const-string v3, "invoke"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/lua/bsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/lua/bsh/BshMethod;
    :try_end_2
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v1, v2, v7

    aput-object p2, v2, v8

    invoke-virtual {v0, v2, p1, p3, p4}, Lcom/lua/bsh/BshMethod;->invoke([Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Command not found: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1, v2}, Lcom/lua/bsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/EvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p4, p3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1

    :catch_0
    move-exception v0

    const-string v1, "Local method invocation"

    invoke-virtual {v0, v1, p4, p3}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :cond_3
    instance-of v1, v0, Lcom/lua/bsh/BshMethod;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/lua/bsh/BshMethod;

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/lua/bsh/BshMethod;->invoke([Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_5

    :try_start_3
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, p2, p1, p3}, Lcom/lua/bsh/Reflect;->invokeCompiledCommand(Ljava/lang/Class;[Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Error invoking compiled command: "

    invoke-virtual {v0, v1, p4, p3}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :cond_5
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "invalid command type"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    const-string v1, "Error loading command: "

    invoke-virtual {v0, v1, p4, p3}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :catch_3
    move-exception v0

    const-string v1, "Local method invocation"

    invoke-virtual {v0, v1, p4, p3}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :cond_6
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "invokeLocalMethod: interpreter = null"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p3, :cond_0

    iput-object p1, p0, Lcom/lua/bsh/Name;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/lua/bsh/Name;->e:Ljava/lang/Object;

    return-object p3

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "lastEvalName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    move v0, v1

    move v2, v3

    :cond_2
    const/16 v4, 0x2e

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_2

    :cond_3
    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/bsh/Name;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/bsh/Name;->f:I

    return-void
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/lua/bsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/lua/bsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/lua/bsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isCompound(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static suffix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const/16 v2, 0x2e

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-eq v0, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_2

    :cond_3
    if-eq v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Interpreter;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 3

    const-string v0, "this"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p5, :cond_2

    invoke-virtual {p2, p3}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/bsh/This;->getNameSpace()Lcom/lua/bsh/NameSpace;

    move-result-object v1

    invoke-static {v1}, Lcom/lua/bsh/Name;->a(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/NameSpace;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/lua/bsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p3}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/lua/bsh/NameSpace;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    const-string v1, "Redundant to call .this on This type"

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "super"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, p3}, Lcom/lua/bsh/NameSpace;->getSuper(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/bsh/This;->getNameSpace()Lcom/lua/bsh/NameSpace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/bsh/NameSpace;->getParent()Lcom/lua/bsh/NameSpace;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/lua/bsh/NameSpace;->getParent()Lcom/lua/bsh/NameSpace;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lua/bsh/NameSpace;->p:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/lua/bsh/NameSpace;->getParent()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const-string v1, "global"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, p3}, Lcom/lua/bsh/NameSpace;->getGlobal(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    if-eqz p5, :cond_6

    const-string v1, "namespace"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, p2

    :cond_6
    :goto_1
    if-nez v0, :cond_e

    if-eqz p5, :cond_e

    const-string v1, "caller"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/lua/bsh/Name;->d:Ljava/lang/String;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/lua/bsh/Name;->d:Ljava/lang/String;

    const-string v1, "caller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_7
    if-eqz p1, :cond_d

    iget v0, p0, Lcom/lua/bsh/Name;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/bsh/Name;->f:I

    invoke-virtual {p1, v0}, Lcom/lua/bsh/CallStack;->get(I)Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    goto :goto_0

    :cond_8
    const-string v1, "variables"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Lcom/lua/bsh/NameSpace;->getVariableNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    const-string v1, "methods"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Lcom/lua/bsh/NameSpace;->getMethodNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    const-string v1, "interpreter"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/lua/bsh/Name;->d:Ljava/lang/String;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, p3

    goto :goto_1

    :cond_b
    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    const-string v1, "Can only call .interpreter on literal \'this\'"

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    const-string v1, "Can only call .caller on literal \'this\' or literal \'.caller\'"

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "no callstack"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez v0, :cond_f

    if-eqz p5, :cond_f

    const-string v1, "callstack"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/lua/bsh/Name;->d:Ljava/lang/String;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_11

    move-object v0, p1

    :cond_f
    if-nez v0, :cond_10

    invoke-virtual {p2, p4}, Lcom/lua/bsh/NameSpace;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_10
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "null this field ref:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "no callstack"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    const-string v1, "Can only call .callstack on literal \'this\'"

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invokeMethod(Lcom/lua/bsh/Interpreter;[Ljava/lang/Object;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lua/bsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lua/bsh/Interpreter;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v2

    invoke-virtual {p3}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    iget-object v3, p0, Lcom/lua/bsh/Name;->h:Ljava/lang/Class;

    if-eqz v3, :cond_0

    invoke-static {v2, v3, v1, p2}, Lcom/lua/bsh/Reflect;->invokeStaticMethod(Lcom/lua/bsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/lua/bsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lua/bsh/Name;->a(Lcom/lua/bsh/Interpreter;[Ljava/lang/Object;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/lua/bsh/Name;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "super"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/lua/bsh/Name;->a(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-virtual {v0, p1}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lua/bsh/This;->getNameSpace()Lcom/lua/bsh/NameSpace;

    move-result-object v4

    invoke-static {v4}, Lcom/lua/bsh/Name;->a(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/NameSpace;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/lua/bsh/NameSpace;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/lua/bsh/ClassGenerator;->getClassGenerator()Lcom/lua/bsh/ClassGenerator;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1, p2}, Lcom/lua/bsh/ClassGenerator;->invokeSuperclassMethod(Lcom/lua/bsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lcom/lua/bsh/NameSpace;->b(Ljava/lang/String;)Lcom/lua/bsh/Name;

    move-result-object v3

    invoke-virtual {v3, p3, p1}, Lcom/lua/bsh/Name;->toObject(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq v0, v4, :cond_8

    instance-of v4, v0, Lcom/lua/bsh/ClassIdentifier;

    if-nez v4, :cond_5

    instance-of v2, v0, Lcom/lua/bsh/Primitive;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/lua/bsh/Primitive;->NULL:Lcom/lua/bsh/Primitive;

    if-eq v0, v2, :cond_4

    sget-boolean v2, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "Attempt to access method on primitive... allowing bsh.Primitive to peek through for debugging"

    invoke-static {v2}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_3
    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/lua/bsh/Reflect;->invokeObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/lua/bsh/UtilTargetError;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null Pointer in Method Invocation"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    sget-boolean v4, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "invokeMethod: trying static - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_6
    check-cast v0, Lcom/lua/bsh/ClassIdentifier;

    invoke-virtual {v0}, Lcom/lua/bsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/bsh/Name;->h:Ljava/lang/Class;

    if-eqz v0, :cond_7

    invoke-static {v2, v0, v1, p2}, Lcom/lua/bsh/Reflect;->invokeStaticMethod(Lcom/lua/bsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "invokeMethod: unknown target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Attempt to resolve method: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "() on undefined variable or class name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toClass()Ljava/lang/Class;
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lua/bsh/Name;->g:Ljava/lang/Class;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Name;->g:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lua/bsh/Name;->a()V

    iget-object v1, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    const-string v2, "var"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lua/bsh/Name;->g:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/lua/bsh/Name;->namespace:Lcom/lua/bsh/NameSpace;

    iget-object v2, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lua/bsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {p0, v2, v3, v4}, Lcom/lua/bsh/Name;->toObject(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Z)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :goto_1
    :try_start_4
    instance-of v2, v0, Lcom/lua/bsh/ClassIdentifier;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/lua/bsh/ClassIdentifier;

    invoke-virtual {v0}, Lcom/lua/bsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/lua/bsh/Name;->g:Ljava/lang/Class;

    iget-object v0, p0, Lcom/lua/bsh/Name;->g:Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_2
    :try_start_5
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " not found in namespace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public toLHS(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/LHS;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Name;->a()V

    iget-object v0, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/lua/bsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/lua/bsh/LHS;

    iget-object v1, p0, Lcom/lua/bsh/Name;->namespace:Lcom/lua/bsh/NameSpace;

    iget-object v2, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/lua/bsh/LHS;-><init>(Lcom/lua/bsh/NameSpace;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    const-string v1, "Can\'t assign to \'this\'."

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/lua/bsh/Name;->isCompound(Ljava/lang/String;)Z
    :try_end_2
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    if-nez v3, :cond_3

    instance-of v3, v0, Lcom/lua/bsh/ClassIdentifier;

    if-nez v3, :cond_6

    :cond_3
    if-eqz v0, :cond_b

    instance-of v3, v0, Lcom/lua/bsh/This;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    const-string v4, "namespace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    const-string v4, "variables"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    const-string v4, "methods"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    const-string v4, "caller"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "found This reference evaluating LHS"

    invoke-static {v3}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lua/bsh/Name;->d:Ljava/lang/String;

    const-string v4, "super"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v2, v1

    :cond_4
    new-instance v1, Lcom/lua/bsh/LHS;

    check-cast v0, Lcom/lua/bsh/This;

    iget-object v0, v0, Lcom/lua/bsh/This;->a:Lcom/lua/bsh/NameSpace;

    iget-object v3, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v2}, Lcom/lua/bsh/LHS;-><init>(Lcom/lua/bsh/NameSpace;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_4
    invoke-direct {p0, p1, p2, v0, v3}, Lcom/lua/bsh/Name;->a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;ZZ)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_6
    :try_start_5
    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t assign to class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t assign to special variable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v1, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_a

    :try_start_6
    instance-of v1, v0, Lcom/lua/bsh/ClassIdentifier;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/lua/bsh/ClassIdentifier;

    invoke-virtual {v0}, Lcom/lua/bsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lua/bsh/Reflect;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/lua/bsh/LHS;
    :try_end_6
    .catch Lcom/lua/bsh/ReflectError; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    monitor-exit p0

    goto/16 :goto_0

    :cond_9
    :try_start_7
    iget-object v1, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lua/bsh/Reflect;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/lua/bsh/LHS;
    :try_end_7
    .catch Lcom/lua/bsh/ReflectError; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    monitor-exit p0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_8
    new-instance v1, Lcom/lua/bsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Field access: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "Internal error in lhs..."

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error in LHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/lua/bsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "LHS evaluation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public toObject(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lua/bsh/Name;->toObject(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toObject(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Z)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Name;->a()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/lua/bsh/Name;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "null value in toObject()"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lua/bsh/Name;->a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;ZZ)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Name;->b:Ljava/lang/String;

    return-object v0
.end method
