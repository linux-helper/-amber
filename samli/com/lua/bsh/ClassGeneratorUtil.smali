.class public Lcom/lua/bsh/ClassGeneratorUtil;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lua/bsh/org/objectweb/asm/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/bsh/ClassGeneratorUtil$ConstructorArgs;
    }
.end annotation


# static fields
.field static a:Ljava/lang/Class;

.field static b:Ljava/lang/Class;

.field static c:Ljava/lang/Class;

.field static d:Ljava/lang/Class;

.field static e:Ljava/lang/Class;

.field static f:Ljava/lang/Class;


# instance fields
.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/Class;

.field j:Ljava/lang/String;

.field k:[Ljava/lang/Class;

.field l:[Lcom/lua/bsh/Variable;

.field m:[Ljava/lang/reflect/Constructor;

.field n:[Lcom/lua/bsh/DelayedEvalBshMethod;

.field o:[Lcom/lua/bsh/DelayedEvalBshMethod;

.field p:Lcom/lua/bsh/NameSpace;

.field q:Lcom/lua/bsh/Modifiers;

.field r:Z


# direct methods
.method public constructor <init>(Lcom/lua/bsh/Modifiers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Lcom/lua/bsh/Variable;[Lcom/lua/bsh/DelayedEvalBshMethod;Lcom/lua/bsh/NameSpace;Z)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->q:Lcom/lua/bsh/Modifiers;

    iput-object p2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->g:Ljava/lang/String;

    if-eqz p3, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/bsh/ClassGeneratorUtil;->h:Ljava/lang/String;

    :goto_0
    if-nez p4, :cond_0

    sget-object p4, Lcom/lua/bsh/ClassGeneratorUtil;->a:Ljava/lang/Class;

    if-nez p4, :cond_0

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    sput-object p4, Lcom/lua/bsh/ClassGeneratorUtil;->a:Ljava/lang/Class;

    :cond_0
    iput-object p4, p0, Lcom/lua/bsh/ClassGeneratorUtil;->i:Ljava/lang/Class;

    invoke-static {p4}, Lcom/lua/bsh/org/objectweb/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/bsh/ClassGeneratorUtil;->j:Ljava/lang/String;

    if-nez p5, :cond_1

    new-array p5, v1, [Ljava/lang/Class;

    :cond_1
    iput-object p5, p0, Lcom/lua/bsh/ClassGeneratorUtil;->k:[Ljava/lang/Class;

    iput-object p6, p0, Lcom/lua/bsh/ClassGeneratorUtil;->l:[Lcom/lua/bsh/Variable;

    iput-object p8, p0, Lcom/lua/bsh/ClassGeneratorUtil;->p:Lcom/lua/bsh/NameSpace;

    invoke-virtual {p4}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/bsh/ClassGeneratorUtil;->m:[Ljava/lang/reflect/Constructor;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lcom/lua/bsh/ClassGeneratorUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v0, v1

    :goto_1
    array-length v5, p7

    if-lt v0, v5, :cond_3

    new-array v0, v1, [Lcom/lua/bsh/DelayedEvalBshMethod;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lua/bsh/DelayedEvalBshMethod;

    iput-object v0, p0, Lcom/lua/bsh/ClassGeneratorUtil;->n:[Lcom/lua/bsh/DelayedEvalBshMethod;

    new-array v0, v1, [Lcom/lua/bsh/DelayedEvalBshMethod;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lua/bsh/DelayedEvalBshMethod;

    iput-object v0, p0, Lcom/lua/bsh/ClassGeneratorUtil;->o:[Lcom/lua/bsh/DelayedEvalBshMethod;

    :try_start_0
    const-string v0, "_bshConstructors"

    iget-object v1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->n:[Lcom/lua/bsh/DelayedEvalBshMethod;

    const/4 v2, 0x0

    invoke-virtual {p8, v0, v1, v2}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean p9, p0, Lcom/lua/bsh/ClassGeneratorUtil;->r:Z

    return-void

    :cond_2
    iput-object p2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->h:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "can\'t set cons var"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    aget-object v5, p7, v0

    invoke-virtual {v5}, Lcom/lua/bsh/BshMethod;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    aget-object v5, p7, v0

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    aget-object v5, p7, v0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method static a(Lcom/lua/bsh/Modifiers;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "public"

    invoke-virtual {p0, v1}, Lcom/lua/bsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    const-string v1, "protected"

    invoke-virtual {p0, v1}, Lcom/lua/bsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x4

    :cond_3
    const-string v1, "static"

    invoke-virtual {p0, v1}, Lcom/lua/bsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x8

    :cond_4
    const-string v1, "synchronized"

    invoke-virtual {p0, v1}, Lcom/lua/bsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x20

    :cond_5
    const-string v1, "abstract"

    invoke-virtual {p0, v1}, Lcom/lua/bsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit16 v0, v0, 0x400

    goto :goto_0
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;)Lcom/lua/bsh/This;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_bshStatic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lua/bsh/Reflect;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/This;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unable to get class static space: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)Lcom/lua/bsh/This;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_bshThis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lua/bsh/Reflect;->getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/This;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Generated class: Error getting This"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
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

.method static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static a(ILjava/lang/String;[Ljava/lang/String;Lcom/lua/bsh/org/objectweb/asm/Label;[Lcom/lua/bsh/org/objectweb/asm/Label;ILcom/lua/bsh/org/objectweb/asm/CodeVisitor;)V
    .locals 7

    const/16 v6, 0x19

    const/4 v0, 0x0

    aget-object v1, p4, p0

    invoke-interface {p6, v1}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitLabel(Lcom/lua/bsh/org/objectweb/asm/Label;)V

    invoke-interface {p6, v6, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    const/16 v0, 0xb7

    const-string v1, "<init>"

    const-string v2, "V"

    invoke-static {v2, p2}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p6, v0, p1, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa7

    invoke-interface {p6, v0, p3}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitJumpInsn(ILcom/lua/bsh/org/objectweb/asm/Label;)V

    return-void

    :cond_0
    aget-object v3, p2, v0

    const-string v1, "Z"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "getBoolean"

    :goto_1
    invoke-interface {p6, v6, p5}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const-string v2, "getObject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Ljava/lang/Object;"

    :goto_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xb6

    const-string v5, "bsh/ClassGeneratorUtil$ConstructorArgs"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p6, v2, v5, v1, v4}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "getObject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc0

    invoke-static {v3}, Lcom/lua/bsh/ClassGeneratorUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p6, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "B"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "getByte"

    goto :goto_1

    :cond_3
    const-string v1, "C"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "getChar"

    goto :goto_1

    :cond_4
    const-string v1, "S"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "getShort"

    goto :goto_1

    :cond_5
    const-string v1, "I"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "getInt"

    goto :goto_1

    :cond_6
    const-string v1, "J"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "getLong"

    goto :goto_1

    :cond_7
    const-string v1, "D"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "getDouble"

    goto :goto_1

    :cond_8
    const-string v1, "F"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "getFloat"

    goto/16 :goto_1

    :cond_9
    const-string v1, "getObject"

    goto/16 :goto_1

    :cond_a
    move-object v2, v3

    goto :goto_2
.end method

.method static a(Ljava/lang/String;Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;)V
    .locals 2

    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb1

    :goto_0
    invoke-interface {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    :goto_1
    return-void

    :cond_0
    invoke-static {p0}, Lcom/lua/bsh/ClassGeneratorUtil;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xac

    const-string v1, "D"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xaf

    :cond_1
    :goto_2
    invoke-interface {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    goto :goto_1

    :cond_2
    const-string v1, "F"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0xae

    goto :goto_2

    :cond_3
    const-string v1, "J"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xad

    goto :goto_2

    :cond_4
    const/16 v0, 0xc0

    invoke-static {p0}, Lcom/lua/bsh/ClassGeneratorUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0xb0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;ILcom/lua/bsh/org/objectweb/asm/ClassWriter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p3, p2, p0, p1, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/lua/bsh/org/objectweb/asm/ClassWriter;)V
    .locals 15

    and-int/lit8 v3, p5, 0x8

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v6, v3

    :goto_0
    if-nez p3, :cond_0

    const-string p3, "Ljava/lang/Object;"

    :cond_0
    invoke-static/range {p3 .. p4}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;

    move-result-object v7

    move/from16 v0, p5

    and-int/lit16 v3, v0, 0x400

    if-eqz v3, :cond_2

    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    move v6, v3

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_9

    const/16 v4, 0xb2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "_bshStatic"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Lbsh/This;"

    move-object/from16 v0, p1

    invoke-interface {v7, v4, v0, v3, v5}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-static {v0, v6, v7}, Lcom/lua/bsh/ClassGeneratorUtil;->generateParameterReifierCode([Ljava/lang/String;ZLcom/lua/bsh/org/objectweb/asm/CodeVisitor;)V

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const/4 v3, 0x4

    invoke-interface {v7, v3}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    sget-object v3, Lcom/lua/bsh/ClassGeneratorUtil;->a:Ljava/lang/Class;

    if-nez v3, :cond_3

    const-string v3, "java.lang.Object"

    invoke-static {v3}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/lua/bsh/ClassGeneratorUtil;->a:Ljava/lang/Class;

    :cond_3
    invoke-static {v3}, Lcom/lua/bsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lcom/lua/bsh/org/objectweb/asm/Type;

    move-result-object v4

    sget-object v3, Lcom/lua/bsh/ClassGeneratorUtil;->b:Ljava/lang/Class;

    if-nez v3, :cond_4

    const-string v3, "java.lang.String"

    invoke-static {v3}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/lua/bsh/ClassGeneratorUtil;->b:Ljava/lang/Class;

    :cond_4
    invoke-static {v3}, Lcom/lua/bsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lcom/lua/bsh/org/objectweb/asm/Type;

    move-result-object v5

    sget-object v3, Lcom/lua/bsh/ClassGeneratorUtil;->c:Ljava/lang/Class;

    if-nez v3, :cond_5

    const-string v3, "[Ljava.lang.Object;"

    invoke-static {v3}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/lua/bsh/ClassGeneratorUtil;->c:Ljava/lang/Class;

    :cond_5
    invoke-static {v3}, Lcom/lua/bsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lcom/lua/bsh/org/objectweb/asm/Type;

    move-result-object v6

    sget-object v3, Lcom/lua/bsh/ClassGeneratorUtil;->d:Ljava/lang/Class;

    if-nez v3, :cond_6

    const-string v3, "bsh.Interpreter"

    invoke-static {v3}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/lua/bsh/ClassGeneratorUtil;->d:Ljava/lang/Class;

    :cond_6
    invoke-static {v3}, Lcom/lua/bsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lcom/lua/bsh/org/objectweb/asm/Type;

    move-result-object v8

    sget-object v3, Lcom/lua/bsh/ClassGeneratorUtil;->e:Ljava/lang/Class;

    if-nez v3, :cond_7

    const-string v3, "bsh.CallStack"

    invoke-static {v3}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/lua/bsh/ClassGeneratorUtil;->e:Ljava/lang/Class;

    :cond_7
    invoke-static {v3}, Lcom/lua/bsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lcom/lua/bsh/org/objectweb/asm/Type;

    move-result-object v9

    sget-object v3, Lcom/lua/bsh/ClassGeneratorUtil;->f:Ljava/lang/Class;

    if-nez v3, :cond_8

    const-string v3, "bsh.SimpleNode"

    invoke-static {v3}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/lua/bsh/ClassGeneratorUtil;->f:Ljava/lang/Class;

    :cond_8
    const/16 v10, 0xb6

    const-string v11, "bsh/This"

    const-string v12, "invokeMethod"

    const/4 v13, 0x6

    new-array v13, v13, [Lcom/lua/bsh/org/objectweb/asm/Type;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v5, 0x1

    aput-object v6, v13, v5

    const/4 v5, 0x2

    aput-object v8, v13, v5

    const/4 v5, 0x3

    aput-object v9, v13, v5

    const/4 v5, 0x4

    invoke-static {v3}, Lcom/lua/bsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lcom/lua/bsh/org/objectweb/asm/Type;

    move-result-object v3

    aput-object v3, v13, v5

    const/4 v3, 0x5

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lcom/lua/bsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lcom/lua/bsh/org/objectweb/asm/Type;

    move-result-object v5

    aput-object v5, v13, v3

    invoke-static {v4, v13}, Lcom/lua/bsh/org/objectweb/asm/Type;->getMethodDescriptor(Lcom/lua/bsh/org/objectweb/asm/Type;[Lcom/lua/bsh/org/objectweb/asm/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v10, v11, v12, v3}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb8

    const-string v4, "bsh/Primitive"

    const-string v5, "unwrap"

    const-string v6, "(Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-interface {v7, v3, v4, v5, v6}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-static {v0, v7}, Lcom/lua/bsh/ClassGeneratorUtil;->generateReturnCode(Ljava/lang/String;Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;)V

    const/16 v3, 0x14

    const/16 v4, 0x14

    invoke-interface {v7, v3, v4}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitMaxs(II)V

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v7, v3, v4}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "_bshThis"

    goto/16 :goto_2
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/lua/bsh/org/objectweb/asm/ClassWriter;)V
    .locals 9

    const/16 v8, 0x19

    const/16 v7, 0x14

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p2, "Ljava/lang/Object;"

    :cond_0
    invoke-static {p2, p3}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "_bshSuper"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p5, p4, v2, v4, v3}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;

    move-result-object v5

    invoke-interface {v5, v8, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    move v2, v0

    move v0, v1

    :goto_0
    array-length v3, p3

    if-lt v2, v3, :cond_1

    const/16 v0, 0xb7

    invoke-interface {v5, v0, p0, p1, v4}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v5}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;)V

    invoke-interface {v5, v7, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitMaxs(II)V

    return-void

    :cond_1
    aget-object v3, p3, v2

    invoke-static {v3}, Lcom/lua/bsh/ClassGeneratorUtil;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x15

    invoke-interface {v5, v3, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    :goto_1
    aget-object v3, p3, v2

    const-string v6, "D"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, p3, v2

    const-string v6, "J"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    const/4 v3, 0x2

    :goto_2
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v5, v8, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    goto :goto_1

    :cond_4
    move v3, v1

    goto :goto_2
.end method

.method static a([Ljava/lang/Class;)[Ljava/lang/String;
    .locals 3

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/lua/bsh/BSHType;->getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static generateParameterReifierCode([Ljava/lang/String;ZLcom/lua/bsh/org/objectweb/asm/CodeVisitor;)V
    .locals 9

    const/16 v8, 0x59

    const/16 v7, 0x11

    array-length v0, p0

    invoke-interface {p2, v7, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitIntInsn(II)V

    const/16 v0, 0xbd

    const-string v1, "java/lang/Object"

    invoke-interface {p2, v0, v1}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    xor-int/lit8 v1, p1, 0x1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, p0, v0

    invoke-interface {p2, v8}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    invoke-interface {p2, v7, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitIntInsn(II)V

    invoke-static {v3}, Lcom/lua/bsh/ClassGeneratorUtil;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "F"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x17

    :goto_1
    const/16 v4, 0xbb

    const-string v5, "bsh/Primitive"

    invoke-interface {p2, v4, v5}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-interface {p2, v8}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    invoke-interface {p2, v2, v1}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ")V"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0xb7

    const-string v5, "bsh/Primitive"

    const-string v6, "<init>"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v5, v6, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/16 v2, 0x53

    invoke-interface {p2, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const-string v2, "D"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "J"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    const/4 v2, 0x2

    :goto_3
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "D"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x18

    goto :goto_1

    :cond_3
    const-string v2, "J"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x16

    goto :goto_1

    :cond_4
    const/16 v2, 0x15

    goto :goto_1

    :cond_5
    const/16 v2, 0x19

    invoke-interface {p2, v2, v1}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public static generateReturnCode(Ljava/lang/String;Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;)V
    .locals 5

    const/16 v3, 0xc0

    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x57

    invoke-interface {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const/16 v0, 0xb1

    :goto_0
    invoke-interface {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    :goto_1
    return-void

    :cond_0
    invoke-static {p0}, Lcom/lua/bsh/ClassGeneratorUtil;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v2, 0xac

    const-string v0, "B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "java/lang/Byte"

    const-string v0, "byteValue"

    :goto_2
    invoke-interface {p1, v3, v1}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0xb6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v1, v0, v3}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    goto :goto_1

    :cond_1
    const-string v0, "I"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "java/lang/Integer"

    const-string v0, "intValue"

    goto :goto_2

    :cond_2
    const-string v0, "Z"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "java/lang/Boolean"

    const-string v0, "booleanValue"

    goto :goto_2

    :cond_3
    const-string v0, "D"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0xaf

    const-string v1, "java/lang/Double"

    const-string v0, "doubleValue"

    goto :goto_2

    :cond_4
    const-string v0, "F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v2, 0xae

    const-string v1, "java/lang/Float"

    const-string v0, "floatValue"

    goto :goto_2

    :cond_5
    const-string v0, "J"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0xad

    const-string v1, "java/lang/Long"

    const-string v0, "longValue"

    goto :goto_2

    :cond_6
    const-string v0, "C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v1, "java/lang/Character"

    const-string v0, "charValue"

    goto :goto_2

    :cond_7
    const-string v1, "java/lang/Short"

    const-string v0, "shortValue"

    goto :goto_2

    :cond_8
    invoke-static {p0}, Lcom/lua/bsh/ClassGeneratorUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0xb0

    goto/16 :goto_0
.end method

.method public static getConstructorArgs(Ljava/lang/String;Lcom/lua/bsh/This;[Ljava/lang/Object;I)Lcom/lua/bsh/ClassGeneratorUtil$ConstructorArgs;
    .locals 11

    :try_start_0
    invoke-virtual {p1}, Lcom/lua/bsh/This;->getNameSpace()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    const-string v1, "_bshConstructors"

    invoke-virtual {v0, v1}, Lcom/lua/bsh/NameSpace;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lua/bsh/DelayedEvalBshMethod;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    sget-object v0, Lcom/lua/bsh/ClassGeneratorUtil$ConstructorArgs;->DEFAULT:Lcom/lua/bsh/ClassGeneratorUtil$ConstructorArgs;

    :goto_0
    return-object v0

    :cond_0
    aget-object v4, v0, p3

    iget-object v1, v4, Lcom/lua/bsh/BshMethod;->h:Lcom/lua/bsh/BSHBlock;

    invoke-virtual {v1}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/lua/bsh/ClassGeneratorUtil$ConstructorArgs;->DEFAULT:Lcom/lua/bsh/ClassGeneratorUtil$ConstructorArgs;

    goto :goto_0

    :cond_1
    iget-object v1, v4, Lcom/lua/bsh/BshMethod;->h:Lcom/lua/bsh/BSHBlock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    check-cast v1, Lcom/lua/bsh/SimpleNode;

    instance-of v2, v1, Lcom/lua/bsh/BSHPrimaryExpression;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    check-cast v1, Lcom/lua/bsh/SimpleNode;

    :cond_2
    instance-of v2, v1, Lcom/lua/bsh/BSHMethodInvocation;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/lua/bsh/BSHMethodInvocation;

    invoke-virtual {v1}, Lcom/lua/bsh/BSHMethodInvocation;->b()Lcom/lua/bsh/BSHAmbiguousName;

    move-result-object v2

    iget-object v3, v2, Lcom/lua/bsh/BSHAmbiguousName;->text:Ljava/lang/String;

    const-string v5, "super"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/lua/bsh/BSHAmbiguousName;->text:Ljava/lang/String;

    const-string v5, "this"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v2, v2, Lcom/lua/bsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/lua/bsh/BSHMethodInvocation;->a()Lcom/lua/bsh/BSHArguments;

    move-result-object v1

    move-object v3, v1

    :goto_1
    if-nez v2, :cond_5

    sget-object v0, Lcom/lua/bsh/ClassGeneratorUtil$ConstructorArgs;->DEFAULT:Lcom/lua/bsh/ClassGeneratorUtil$ConstructorArgs;

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object v3, v2

    move-object v2, v1

    goto :goto_1

    :cond_5
    new-instance v5, Lcom/lua/bsh/NameSpace;

    invoke-virtual {p1}, Lcom/lua/bsh/This;->getNameSpace()Lcom/lua/bsh/NameSpace;

    move-result-object v1

    const-string v6, "consArgs"

    invoke-direct {v5, v1, v6}, Lcom/lua/bsh/NameSpace;-><init>(Lcom/lua/bsh/NameSpace;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/lua/bsh/BshMethod;->getParameterNames()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/lua/bsh/DelayedEvalBshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const/4 v1, 0x0

    :goto_2
    array-length v7, p2

    if-lt v1, v7, :cond_c

    new-instance v1, Lcom/lua/bsh/CallStack;

    invoke-direct {v1}, Lcom/lua/bsh/CallStack;-><init>()V

    invoke-virtual {v1, v5}, Lcom/lua/bsh/CallStack;->push(Lcom/lua/bsh/NameSpace;)V

    iget-object v4, p1, Lcom/lua/bsh/This;->b:Lcom/lua/bsh/Interpreter;

    :try_start_1
    invoke-virtual {v3, v1, v4}, Lcom/lua/bsh/BSHArguments;->getArguments(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)[Ljava/lang/Object;
    :try_end_1
    .catch Lcom/lua/bsh/EvalError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    invoke-static {v1}, Lcom/lua/bsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1}, Lcom/lua/bsh/Primitive;->unwrap([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4}, Lcom/lua/bsh/Interpreter;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lua/bsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    const-string v1, "super"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v3, v4}, Lcom/lua/bsh/Reflect;->b([Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_6

    new-instance v0, Lcom/lua/bsh/ClassGeneratorUtil$ConstructorArgs;

    invoke-direct {v0, v1, v5}, Lcom/lua/bsh/ClassGeneratorUtil$ConstructorArgs;-><init>(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "can\'t find constructor for args!"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    array-length v1, v0

    new-array v2, v1, [[Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_3
    array-length v6, v2

    if-lt v1, v6, :cond_a

    invoke-static {v3, v2}, Lcom/lua/bsh/Reflect;->a([Ljava/lang/Class;[[Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    array-length v1, v4

    add-int/2addr v1, v0

    array-length v0, v4

    add-int/2addr v0, p3

    if-eq v1, v0, :cond_8

    new-instance v0, Lcom/lua/bsh/ClassGeneratorUtil$ConstructorArgs;

    invoke-direct {v0, v1, v5}, Lcom/lua/bsh/ClassGeneratorUtil$ConstructorArgs;-><init>(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "Recusive constructor call."

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "can\'t find constructor for args 2!"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lcom/lua/bsh/DelayedEvalBshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "can\'t find superclass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error evaluating constructor args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_2
    aget-object v7, v6, v1

    aget-object v8, v4, v1

    aget-object v9, p2, v1

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/lua/bsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V
    :try_end_2
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "err setting local cons arg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unable to get instance initializer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initInstance(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    const/4 v6, 0x1

    invoke-static {p2}, Lcom/lua/bsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v4

    new-instance v3, Lcom/lua/bsh/CallStack;

    invoke-direct {v3}, Lcom/lua/bsh/CallStack;-><init>()V

    invoke-static {p0, p1}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/lua/bsh/This;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/lua/bsh/This;

    move-result-object v5

    iget-object v2, v5, Lcom/lua/bsh/This;->b:Lcom/lua/bsh/Interpreter;

    :try_start_0
    invoke-virtual {v5}, Lcom/lua/bsh/This;->getNameSpace()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    const-string v1, "_bshInstanceInitializer"

    invoke-virtual {v0, v1}, Lcom/lua/bsh/NameSpace;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHBlock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v1, Lcom/lua/bsh/NameSpace;

    invoke-virtual {v5}, Lcom/lua/bsh/This;->getNameSpace()Lcom/lua/bsh/NameSpace;

    move-result-object v5

    invoke-direct {v1, v5, p1}, Lcom/lua/bsh/NameSpace;-><init>(Lcom/lua/bsh/NameSpace;Ljava/lang/String;)V

    iput-boolean v6, v1, Lcom/lua/bsh/NameSpace;->p:Z

    invoke-virtual {v1, v2}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v5

    :try_start_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "_bshThis"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/lua/bsh/Reflect;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/lua/bsh/LHS;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v1, p0}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lcom/lua/bsh/CallStack;->push(Lcom/lua/bsh/NameSpace;)V

    const/4 v5, 0x1

    :try_start_2
    sget-object v6, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSINSTANCE:Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;

    invoke-virtual {v0, v3, v2, v5, v6}, Lcom/lua/bsh/BSHBlock;->a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;ZLcom/lua/bsh/BSHBlock$NodeFilter;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v3}, Lcom/lua/bsh/CallStack;->pop()Lcom/lua/bsh/NameSpace;

    move-object v0, v1

    :goto_0
    invoke-static {p1}, Lcom/lua/bsh/ClassGeneratorUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v0, v1, v4, v5}, Lcom/lua/bsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lcom/lua/bsh/BshMethod;

    move-result-object v0

    array-length v1, p2

    if-lez v1, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lua/bsh/BshMethod;->a([Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;Z)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error in class initialization: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error in class gen setup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unable to get instance initializer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v0, Lcom/lua/bsh/This;->b:Lcom/lua/bsh/Interpreter;

    invoke-virtual {v0}, Lcom/lua/bsh/This;->getNameSpace()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    goto :goto_0

    :cond_3
    :try_start_4
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t find constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    instance-of v1, v0, Lcom/lua/bsh/TargetError;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/lua/bsh/TargetError;

    invoke-virtual {v0}, Lcom/lua/bsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    :cond_4
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    :cond_5
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error in class initialization: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(IIILcom/lua/bsh/org/objectweb/asm/CodeVisitor;)V
    .locals 11

    const/16 v10, 0x19

    const/4 v8, 0x0

    new-instance v9, Lcom/lua/bsh/org/objectweb/asm/Label;

    invoke-direct {v9}, Lcom/lua/bsh/org/objectweb/asm/Label;-><init>()V

    new-instance v3, Lcom/lua/bsh/org/objectweb/asm/Label;

    invoke-direct {v3}, Lcom/lua/bsh/org/objectweb/asm/Label;-><init>()V

    iget-object v0, p0, Lcom/lua/bsh/ClassGeneratorUtil;->m:[Ljava/lang/reflect/Constructor;

    array-length v0, v0

    iget-object v1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->n:[Lcom/lua/bsh/DelayedEvalBshMethod;

    array-length v1, v1

    add-int/2addr v1, v0

    new-array v4, v1, [Lcom/lua/bsh/org/objectweb/asm/Label;

    move v0, v8

    :goto_0
    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/lua/bsh/ClassGeneratorUtil;->i:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lua/bsh/ClassGeneratorUtil;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "_bshStatic"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/lua/bsh/ClassGeneratorUtil;->g:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v5, 0xb2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Lbsh/This;"

    invoke-interface {p4, v5, v0, v2, v6}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v10, p2}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-interface {p4, v0, p1}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitIntInsn(II)V

    const/16 v0, 0xb8

    const-string v2, "bsh/ClassGeneratorUtil"

    const-string v5, "getConstructorArgs"

    const-string v6, "(Ljava/lang/String;Lbsh/This;[Ljava/lang/Object;I)Lbsh/ClassGeneratorUtil$ConstructorArgs;"

    invoke-interface {p4, v0, v2, v5, v6}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-interface {p4, v0, p3}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    invoke-interface {p4, v10, p3}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb4

    const-string v2, "bsh/ClassGeneratorUtil$ConstructorArgs"

    const-string v5, "selector"

    const-string v6, "I"

    invoke-interface {p4, v0, v2, v5, v6}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p4, v8, v0, v9, v4}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitTableSwitchInsn(IILcom/lua/bsh/org/objectweb/asm/Label;[Lcom/lua/bsh/org/objectweb/asm/Label;)V

    move v7, v8

    move v0, v8

    :goto_1
    iget-object v2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->m:[Ljava/lang/reflect/Constructor;

    array-length v1, v2

    if-lt v7, v1, :cond_1

    move v7, v8

    :goto_2
    iget-object v2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->n:[Lcom/lua/bsh/DelayedEvalBshMethod;

    array-length v1, v2

    if-lt v7, v1, :cond_0

    invoke-interface {p4, v9}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitLabel(Lcom/lua/bsh/org/objectweb/asm/Label;)V

    invoke-interface {p4, v10, v8}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb7

    iget-object v1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->j:Ljava/lang/String;

    const-string v2, "<init>"

    const-string v4, "()V"

    invoke-interface {p4, v0, v1, v2, v4}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v3}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitLabel(Lcom/lua/bsh/org/objectweb/asm/Label;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->h:Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/lua/bsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/lua/bsh/ClassGeneratorUtil;->a(ILjava/lang/String;[Ljava/lang/String;Lcom/lua/bsh/org/objectweb/asm/Label;[Lcom/lua/bsh/org/objectweb/asm/Label;ILcom/lua/bsh/org/objectweb/asm/CodeVisitor;)V

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v0, v1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->j:Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/lua/bsh/ClassGeneratorUtil;->a([Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/lua/bsh/ClassGeneratorUtil;->a(ILjava/lang/String;[Ljava/lang/String;Lcom/lua/bsh/org/objectweb/asm/Label;[Lcom/lua/bsh/org/objectweb/asm/Label;ILcom/lua/bsh/org/objectweb/asm/CodeVisitor;)V

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v0, v1

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/lua/bsh/org/objectweb/asm/Label;

    invoke-direct {v2}, Lcom/lua/bsh/org/objectweb/asm/Label;-><init>()V

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method a(I[Ljava/lang/String;ILcom/lua/bsh/org/objectweb/asm/ClassWriter;)V
    .locals 8

    const/16 v7, 0x19

    const/16 v6, 0x14

    const/4 v5, 0x0

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    array-length v1, p2

    const-string v2, "<init>"

    const-string v3, "V"

    invoke-static {v3, p2}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p4, p3, v2, v3, v4}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;

    move-result-object v2

    invoke-static {p2, v5, v2}, Lcom/lua/bsh/ClassGeneratorUtil;->generateParameterReifierCode([Ljava/lang/String;ZLcom/lua/bsh/org/objectweb/asm/CodeVisitor;)V

    const/16 v3, 0x3a

    invoke-interface {v2, v3, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/lua/bsh/ClassGeneratorUtil;->a(IIILcom/lua/bsh/org/objectweb/asm/CodeVisitor;)V

    invoke-interface {v2, v7, v5}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    iget-object v1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->g:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    invoke-interface {v2, v7, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb8

    const-string v1, "bsh/ClassGeneratorUtil"

    const-string v3, "initInstance"

    const-string v4, "(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V"

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    invoke-interface {v2, v0}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    invoke-interface {v2, v6, v6}, Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;->visitMaxs(II)V

    return-void
.end method

.method a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    move v2, v0

    :goto_2
    array-length v3, v4

    if-lt v2, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/lua/bsh/ClassGeneratorUtil;->a([Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v5

    move v3, v0

    :goto_3
    array-length v6, v5

    if-lt v3, v6, :cond_3

    move v3, v1

    :goto_4
    if-nez v3, :cond_5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    aget-object v6, p3, v3

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public generateClass()[B
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/lua/bsh/ClassGeneratorUtil;->q:Lcom/lua/bsh/Modifiers;

    invoke-static {v0}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Lcom/lua/bsh/Modifiers;)I

    move-result v0

    or-int/lit8 v1, v0, 0x1

    iget-boolean v0, p0, Lcom/lua/bsh/ClassGeneratorUtil;->r:Z

    if-eqz v0, :cond_0

    or-int/lit16 v1, v1, 0x200

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/ClassGeneratorUtil;->k:[Ljava/lang/Class;

    array-length v0, v0

    new-array v4, v0, [Ljava/lang/String;

    move v0, v8

    :goto_0
    iget-object v2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->k:[Ljava/lang/Class;

    array-length v3, v2

    if-lt v0, v3, :cond_e

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    invoke-direct {v0, v8}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;-><init>(Z)V

    iget-object v2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/lua/bsh/ClassGeneratorUtil;->j:Ljava/lang/String;

    const-string v5, "BeanShell Generated via ASM (www.objectweb.org)"

    invoke-virtual/range {v0 .. v5}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->r:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "_bshThis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Lbsh/This;"

    invoke-static {v1, v2, v10, v0}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;Ljava/lang/String;ILcom/lua/bsh/org/objectweb/asm/ClassWriter;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "_bshStatic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Lbsh/This;"

    const/16 v3, 0x9

    invoke-static {v1, v2, v3, v0}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;Ljava/lang/String;ILcom/lua/bsh/org/objectweb/asm/ClassWriter;)V

    :cond_1
    move v1, v8

    :goto_1
    iget-object v2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->l:[Lcom/lua/bsh/Variable;

    array-length v3, v2

    if-lt v1, v3, :cond_a

    move v2, v8

    move v1, v8

    :goto_2
    iget-object v3, p0, Lcom/lua/bsh/ClassGeneratorUtil;->n:[Lcom/lua/bsh/DelayedEvalBshMethod;

    array-length v4, v3

    if-lt v2, v4, :cond_8

    iget-boolean v2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->r:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    const/4 v1, -0x1

    new-array v2, v8, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v10, v0}, Lcom/lua/bsh/ClassGeneratorUtil;->a(I[Ljava/lang/String;ILcom/lua/bsh/org/objectweb/asm/ClassWriter;)V

    :cond_2
    move v9, v8

    :goto_3
    iget-object v1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->o:[Lcom/lua/bsh/DelayedEvalBshMethod;

    array-length v2, v1

    if-lt v9, v2, :cond_3

    invoke-virtual {v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_3
    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/lua/bsh/DelayedEvalBshMethod;->getReturnTypeDescriptor()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->o:[Lcom/lua/bsh/DelayedEvalBshMethod;

    aget-object v1, v1, v9

    const-string v2, "private"

    invoke-virtual {v1, v2}, Lcom/lua/bsh/BshMethod;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->o:[Lcom/lua/bsh/DelayedEvalBshMethod;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/lua/bsh/BshMethod;->getModifiers()Lcom/lua/bsh/Modifiers;

    move-result-object v1

    invoke-static {v1}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Lcom/lua/bsh/Modifiers;)I

    move-result v6

    iget-boolean v1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->r:Z

    if-eqz v1, :cond_6

    or-int/lit16 v6, v6, 0x401

    :cond_6
    iget-object v1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/lua/bsh/ClassGeneratorUtil;->o:[Lcom/lua/bsh/DelayedEvalBshMethod;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/lua/bsh/BshMethod;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/lua/bsh/ClassGeneratorUtil;->o:[Lcom/lua/bsh/DelayedEvalBshMethod;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/lua/bsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v5

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/lua/bsh/org/objectweb/asm/ClassWriter;)V

    and-int/lit8 v1, v6, 0x8

    if-lez v1, :cond_7

    move v1, v10

    :goto_5
    iget-object v2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->i:Ljava/lang/Class;

    iget-object v3, p0, Lcom/lua/bsh/ClassGeneratorUtil;->o:[Lcom/lua/bsh/DelayedEvalBshMethod;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/lua/bsh/BshMethod;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/lua/bsh/ClassGeneratorUtil;->o:[Lcom/lua/bsh/DelayedEvalBshMethod;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/lua/bsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v5}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->o:[Lcom/lua/bsh/DelayedEvalBshMethod;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/lua/bsh/BshMethod;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->o:[Lcom/lua/bsh/DelayedEvalBshMethod;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/lua/bsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v5

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/lua/bsh/org/objectweb/asm/ClassWriter;)V

    goto :goto_4

    :cond_7
    move v1, v8

    goto :goto_5

    :cond_8
    aget-object v3, v3, v2

    const-string v4, "private"

    invoke-virtual {v3, v4}, Lcom/lua/bsh/BshMethod;->hasModifier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lcom/lua/bsh/ClassGeneratorUtil;->n:[Lcom/lua/bsh/DelayedEvalBshMethod;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/lua/bsh/BshMethod;->getModifiers()Lcom/lua/bsh/Modifiers;

    move-result-object v1

    invoke-static {v1}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Lcom/lua/bsh/Modifiers;)I

    move-result v1

    iget-object v3, p0, Lcom/lua/bsh/ClassGeneratorUtil;->n:[Lcom/lua/bsh/DelayedEvalBshMethod;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/lua/bsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/lua/bsh/ClassGeneratorUtil;->a(I[Ljava/lang/String;ILcom/lua/bsh/org/objectweb/asm/ClassWriter;)V

    move v1, v10

    goto :goto_6

    :cond_a
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lua/bsh/Variable;->getTypeDescriptor()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->l:[Lcom/lua/bsh/Variable;

    aget-object v2, v2, v1

    const-string v4, "private"

    invoke-virtual {v2, v4}, Lcom/lua/bsh/Variable;->hasModifier(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    if-nez v3, :cond_c

    :cond_b
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_c
    iget-boolean v2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->r:Z

    if-eqz v2, :cond_d

    const/16 v2, 0x19

    :goto_8
    iget-object v4, p0, Lcom/lua/bsh/ClassGeneratorUtil;->l:[Lcom/lua/bsh/Variable;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/lua/bsh/Variable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v2, v0}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/String;Ljava/lang/String;ILcom/lua/bsh/org/objectweb/asm/ClassWriter;)V

    goto :goto_7

    :cond_d
    iget-object v2, p0, Lcom/lua/bsh/ClassGeneratorUtil;->l:[Lcom/lua/bsh/Variable;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lua/bsh/Variable;->getModifiers()Lcom/lua/bsh/Modifiers;

    move-result-object v2

    invoke-static {v2}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Lcom/lua/bsh/Modifiers;)I

    move-result v2

    goto :goto_8

    :cond_e
    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/lua/bsh/org/objectweb/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
