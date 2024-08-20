.class Lcom/lua/bsh/Types;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/lua/bsh/Primitive;

.field static b:Lcom/lua/bsh/Primitive;

.field static c:Ljava/lang/Class;

.field static d:Ljava/lang/Class;

.field static e:Ljava/lang/Class;

.field static f:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/lua/bsh/Primitive;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/lua/bsh/Primitive;-><init>(I)V

    sput-object v0, Lcom/lua/bsh/Types;->a:Lcom/lua/bsh/Primitive;

    new-instance v0, Lcom/lua/bsh/Primitive;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/lua/bsh/Primitive;-><init>(I)V

    sput-object v0, Lcom/lua/bsh/Types;->b:Lcom/lua/bsh/Primitive;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Class;Ljava/lang/Class;I)Lcom/lua/bsh/UtilEvalError;
    .locals 2

    invoke-static {p0}, Lcom/lua/bsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/lua/bsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/lua/bsh/Types;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/lua/bsh/UtilEvalError;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;I)Lcom/lua/bsh/UtilEvalError;
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Can\'t assign "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Cannot cast "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/UtilTargetError;

    new-instance v2, Ljava/lang/ClassCastException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/lua/bsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
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

.method private static a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 2

    if-eqz p4, :cond_0

    if-nez p2, :cond_7

    :cond_0
    if-nez p4, :cond_1

    if-eqz p2, :cond_8

    :cond_1
    sget-object v0, Lcom/lua/bsh/Types;->e:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "bsh.Primitive"

    invoke-static {v0}, Lcom/lua/bsh/Types;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/lua/bsh/Types;->e:Ljava/lang/Class;

    :cond_2
    if-eq p1, v0, :cond_20

    sget-object v0, Lcom/lua/bsh/Primitive;->NULL:Lcom/lua/bsh/Primitive;

    if-ne p2, v0, :cond_3

    if-nez p1, :cond_9

    :cond_3
    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-ne p2, v0, :cond_4

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    :cond_4
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1f

    if-eqz p0, :cond_5

    if-ne p0, p1, :cond_b

    :cond_5
    if-eqz p4, :cond_6

    sget-object p2, Lcom/lua/bsh/Types;->a:Lcom/lua/bsh/Primitive;

    :cond_6
    :goto_0
    return-object p2

    :cond_7
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "bad cast params 1"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "bad cast params 2"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "inconsistent args 1"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "inconsistent args 2"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    check-cast p2, Lcom/lua/bsh/Primitive;

    invoke-static {p0, p1, p2, p4, p3}, Lcom/lua/bsh/Primitive;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/lua/bsh/Primitive;ZI)Lcom/lua/bsh/Primitive;

    move-result-object p2

    goto :goto_0

    :cond_d
    invoke-static {p1}, Lcom/lua/bsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/lua/bsh/Primitive;->unboxType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eqz p4, :cond_e

    const/4 v0, 0x0

    :goto_1
    invoke-static {p0, v1, v0, p4, p3}, Lcom/lua/bsh/Primitive;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/lua/bsh/Primitive;ZI)Lcom/lua/bsh/Primitive;

    move-result-object p2

    goto :goto_0

    :cond_e
    invoke-static {p2, v1}, Lcom/lua/bsh/Primitive;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/Primitive;

    goto :goto_1

    :cond_f
    if-eqz p4, :cond_10

    sget-object p2, Lcom/lua/bsh/Types;->b:Lcom/lua/bsh/Primitive;

    goto :goto_0

    :cond_10
    invoke-static {p0, p1, p3}, Lcom/lua/bsh/Types;->a(Ljava/lang/Class;Ljava/lang/Class;I)Lcom/lua/bsh/UtilEvalError;

    move-result-object v0

    throw v0

    :cond_11
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    invoke-static {p0}, Lcom/lua/bsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1c

    if-eqz p1, :cond_1c

    if-eqz p4, :cond_1b

    sget-object p2, Lcom/lua/bsh/Types;->a:Lcom/lua/bsh/Primitive;

    goto :goto_0

    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p4, :cond_6

    sget-object p2, Lcom/lua/bsh/Types;->a:Lcom/lua/bsh/Primitive;

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/lua/bsh/Types;->f:Ljava/lang/Class;

    if-nez v0, :cond_15

    const-string v0, "bsh.This"

    invoke-static {v0}, Lcom/lua/bsh/Types;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/lua/bsh/Types;->f:Ljava/lang/Class;

    :cond_15
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/lua/bsh/Capabilities;->canGenerateInterfaces()Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p4, :cond_16

    sget-object p2, Lcom/lua/bsh/Types;->a:Lcom/lua/bsh/Primitive;

    goto/16 :goto_0

    :cond_16
    check-cast p2, Lcom/lua/bsh/This;

    invoke-virtual {p2, p0}, Lcom/lua/bsh/This;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    :cond_17
    invoke-static {p0}, Lcom/lua/bsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/lua/bsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-eqz p4, :cond_18

    sget-object p2, Lcom/lua/bsh/Types;->a:Lcom/lua/bsh/Primitive;

    goto/16 :goto_0

    :cond_18
    invoke-static {p0, p2}, Lcom/lua/bsh/Primitive;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    :cond_19
    if-eqz p4, :cond_1a

    sget-object p2, Lcom/lua/bsh/Types;->b:Lcom/lua/bsh/Primitive;

    goto/16 :goto_0

    :cond_1a
    invoke-static {p0, p1, p3}, Lcom/lua/bsh/Types;->a(Ljava/lang/Class;Ljava/lang/Class;I)Lcom/lua/bsh/UtilEvalError;

    move-result-object v0

    throw v0

    :cond_1b
    invoke-static {p0}, Lcom/lua/bsh/Primitive;->unboxType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    check-cast p2, Lcom/lua/bsh/Primitive;

    invoke-virtual {p2}, Lcom/lua/bsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lua/bsh/Primitive;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    :cond_1c
    sget-object v0, Lcom/lua/bsh/Types;->c:Ljava/lang/Class;

    if-nez v0, :cond_1d

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lcom/lua/bsh/Types;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/lua/bsh/Types;->c:Ljava/lang/Class;

    :cond_1d
    if-ne p0, v0, :cond_c

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_c

    if-eqz p1, :cond_c

    if-eqz p4, :cond_1e

    sget-object p2, Lcom/lua/bsh/Types;->a:Lcom/lua/bsh/Primitive;

    goto/16 :goto_0

    :cond_1e
    check-cast p2, Lcom/lua/bsh/Primitive;

    invoke-virtual {p2}, Lcom/lua/bsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    :cond_1f
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "loose toType should be null"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "bad from Type, need to unwrap"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_0
    invoke-static {p0, p1, v1, v2, v3}, Lcom/lua/bsh/Types;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/lua/bsh/Types;->a:Lcom/lua/bsh/Primitive;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "err in cast check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static a([Ljava/lang/Class;[Ljava/lang/Class;I)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p2, v4, :cond_1

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p2, v1, :cond_7

    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    if-eq p2, v4, :cond_4

    const/4 v2, 0x4

    if-ne p2, v2, :cond_3

    move v2, v0

    :goto_1
    array-length v3, p0

    if-lt v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    aget-object v3, p1, v2

    aget-object v4, p0, v2

    invoke-static {v3, v4}, Lcom/lua/bsh/Types;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "bad case"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p0, p1}, Lcom/lua/bsh/Types;->a([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_5
    move v2, v0

    :goto_2
    array-length v3, p0

    if-lt v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    aget-object v3, p1, v2

    aget-object v4, p0, v2

    invoke-static {v3, v4}, Lcom/lua/bsh/Types;->d(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    move v2, v0

    :goto_3
    array-length v3, p0

    if-lt v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    aget-object v3, p1, v2

    aget-object v4, p0, v2

    invoke-static {v3, v4}, Lcom/lua/bsh/Types;->c(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method static b(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/lua/bsh/Types;->c(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/lua/bsh/Types;->d(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_e

    if-ne p0, p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_5

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_4

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_7

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_6

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_6

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_6

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_7

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_9

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_8

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_8

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_8

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_9

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_b

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_a

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_a

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_b

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_d

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_c

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_d

    :cond_c
    move v0, v1

    goto :goto_0

    :cond_d
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public static castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 2

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/lua/bsh/Primitive;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/lua/bsh/Primitive;

    invoke-virtual {v0}, Lcom/lua/bsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v0, p0, p2, v1}, Lcom/lua/bsh/Types;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "null fromValue"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static d(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v1, Lcom/lua/bsh/Types;->c:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "java.lang.Object"

    invoke-static {v1}, Lcom/lua/bsh/Types;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/lua/bsh/Types;->c:Ljava/lang/Class;

    :cond_3
    if-eq p0, v1, :cond_1

    sget-object v1, Lcom/lua/bsh/Types;->d:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "java.lang.Number"

    invoke-static {v1}, Lcom/lua/bsh/Types;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/lua/bsh/Types;->d:Ljava/lang/Class;

    :cond_4
    if-ne p0, v1, :cond_5

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_5

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_1

    :cond_5
    sget-object v1, Lcom/lua/bsh/Primitive;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    goto :goto_0
.end method

.method public static getTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array v0, v0, [Ljava/lang/Class;

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Class;

    move v2, v0

    :goto_1
    array-length v0, p0

    if-lt v2, v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    aget-object v0, p0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    aput-object v0, v1, v2

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    aget-object v0, p0, v2

    instance-of v0, v0, Lcom/lua/bsh/Primitive;

    if-eqz v0, :cond_3

    aget-object v0, p0, v2

    check-cast v0, Lcom/lua/bsh/Primitive;

    invoke-virtual {v0}, Lcom/lua/bsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_2

    :cond_3
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_2
.end method
