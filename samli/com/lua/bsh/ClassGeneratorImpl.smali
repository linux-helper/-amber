.class public Lcom/lua/bsh/ClassGeneratorImpl;
.super Lcom/lua/bsh/ClassGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lua/bsh/ClassGenerator;-><init>()V

    return-void
.end method

.method static a(Lcom/lua/bsh/BSHBlock;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)[Lcom/lua/bsh/DelayedEvalBshMethod;
    .locals 17

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v15, v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v3

    if-lt v15, v3, :cond_0

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/lua/bsh/DelayedEvalBshMethod;

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/lua/bsh/DelayedEvalBshMethod;

    return-object v3

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v3

    check-cast v3, Lcom/lua/bsh/SimpleNode;

    instance-of v4, v3, Lcom/lua/bsh/BSHMethodDeclaration;

    if-eqz v4, :cond_1

    move-object v10, v3

    check-cast v10, Lcom/lua/bsh/BSHMethodDeclaration;

    invoke-virtual {v10}, Lcom/lua/bsh/BSHMethodDeclaration;->b()V

    iget-object v12, v10, Lcom/lua/bsh/BSHMethodDeclaration;->modifiers:Lcom/lua/bsh/Modifiers;

    iget-object v4, v10, Lcom/lua/bsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v10, v0, v1, v2}, Lcom/lua/bsh/BSHMethodDeclaration;->a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/lua/bsh/BSHMethodDeclaration;->a()Lcom/lua/bsh/BSHReturnType;

    move-result-object v6

    iget-object v9, v10, Lcom/lua/bsh/BSHMethodDeclaration;->b:Lcom/lua/bsh/BSHFormalParameters;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v9, v0, v1, v2}, Lcom/lua/bsh/BSHFormalParameters;->getTypeDescriptors(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    new-instance v3, Lcom/lua/bsh/DelayedEvalBshMethod;

    iget-object v7, v10, Lcom/lua/bsh/BSHMethodDeclaration;->b:Lcom/lua/bsh/BSHFormalParameters;

    invoke-virtual {v7}, Lcom/lua/bsh/BSHFormalParameters;->getParamNames()[Ljava/lang/String;

    move-result-object v7

    iget-object v10, v10, Lcom/lua/bsh/BSHMethodDeclaration;->c:Lcom/lua/bsh/BSHBlock;

    const/4 v11, 0x0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct/range {v3 .. v14}, Lcom/lua/bsh/DelayedEvalBshMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lua/bsh/BSHReturnType;[Ljava/lang/String;[Ljava/lang/String;Lcom/lua/bsh/BSHFormalParameters;Lcom/lua/bsh/BSHBlock;Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Modifiers;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto :goto_0
.end method

.method static b(Lcom/lua/bsh/BSHBlock;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)[Lcom/lua/bsh/Variable;
    .locals 10

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    if-lt v1, v0, :cond_0

    new-array v0, v2, [Lcom/lua/bsh/Variable;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lua/bsh/Variable;

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    instance-of v4, v0, Lcom/lua/bsh/BSHTypedVariableDeclaration;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/lua/bsh/BSHTypedVariableDeclaration;

    iget-object v4, v0, Lcom/lua/bsh/BSHTypedVariableDeclaration;->modifiers:Lcom/lua/bsh/Modifiers;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lua/bsh/BSHTypedVariableDeclaration;->getTypeDescriptor(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/lua/bsh/BSHTypedVariableDeclaration;->a()[Lcom/lua/bsh/BSHVariableDeclarator;

    move-result-object v6

    move v0, v2

    :goto_1
    array-length v7, v6

    if-lt v0, v7, :cond_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    aget-object v7, v6, v0

    iget-object v7, v7, Lcom/lua/bsh/BSHVariableDeclarator;->name:Ljava/lang/String;

    :try_start_0
    new-instance v8, Lcom/lua/bsh/Variable;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v5, v9, v4}, Lcom/lua/bsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public static generateClassImpl(Ljava/lang/String;Lcom/lua/bsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lcom/lua/bsh/BSHBlock;ZLcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;
    .locals 16

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Lcom/lua/bsh/Capabilities;->setAccessibility(Z)V
    :try_end_0
    .catch Lcom/lua/bsh/Capabilities$Unavailable; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual/range {p6 .. p6}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lua/bsh/NameSpace;->c()Ljava/lang/String;

    move-result-object v6

    iget-boolean v3, v14, Lcom/lua/bsh/NameSpace;->p:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v14}, Lcom/lua/bsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-nez v6, :cond_2

    move-object v13, v5

    :goto_1
    invoke-virtual/range {p7 .. p7}, Lcom/lua/bsh/Interpreter;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/lua/bsh/BshClassManager;->b(Ljava/lang/String;)V

    new-instance v11, Lcom/lua/bsh/NameSpace;

    invoke-direct {v11, v14, v5}, Lcom/lua/bsh/NameSpace;-><init>(Lcom/lua/bsh/NameSpace;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v11, Lcom/lua/bsh/NameSpace;->p:Z

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Lcom/lua/bsh/CallStack;->push(Lcom/lua/bsh/NameSpace;)V

    const/4 v3, 0x1

    sget-object v4, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSCLASSES:Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lua/bsh/BSHBlock;->a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;ZLcom/lua/bsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    new-instance v3, Lcom/lua/bsh/ClassGeneratorUtil;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2, v6}, Lcom/lua/bsh/ClassGeneratorImpl;->b(Lcom/lua/bsh/BSHBlock;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)[Lcom/lua/bsh/Variable;

    move-result-object v9

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2, v6}, Lcom/lua/bsh/ClassGeneratorImpl;->a(Lcom/lua/bsh/BSHBlock;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)[Lcom/lua/bsh/DelayedEvalBshMethod;

    move-result-object v10

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move/from16 v12, p5

    invoke-direct/range {v3 .. v12}, Lcom/lua/bsh/ClassGeneratorUtil;-><init>(Lcom/lua/bsh/Modifiers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Lcom/lua/bsh/Variable;[Lcom/lua/bsh/DelayedEvalBshMethod;Lcom/lua/bsh/NameSpace;Z)V

    invoke-virtual {v3}, Lcom/lua/bsh/ClassGeneratorUtil;->generateClass()[B

    move-result-object v3

    const-string v4, "debugClasses"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "/"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ".class"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_2
    invoke-virtual {v15, v13, v3}, Lcom/lua/bsh/BshClassManager;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x24

    const/16 v6, 0x2e

    invoke-virtual {v13, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/lua/bsh/NameSpace;->importClass(Ljava/lang/String;)V

    :try_start_2
    const-string v4, "_bshInstanceInitializer"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v11, v4, v0, v6}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_2
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v11, v3}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/Class;)V

    const/4 v4, 0x1

    sget-object v6, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSSTATIC:Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2, v4, v6}, Lcom/lua/bsh/BSHBlock;->a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;ZLcom/lua/bsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    invoke-virtual/range {p6 .. p6}, Lcom/lua/bsh/CallStack;->pop()Lcom/lua/bsh/NameSpace;

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "_bshStatic"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_3
    invoke-static {v3, v4}, Lcom/lua/bsh/Reflect;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/lua/bsh/LHS;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v11, v0}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    invoke-virtual {v15, v13}, Lcom/lua/bsh/BshClassManager;->c(Ljava/lang/String;)V

    return-object v3

    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto/16 :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error in class gen setup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v3, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "unable to init static: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v3, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_2
    move-exception v3

    new-instance v3, Lcom/lua/bsh/EvalError;

    const-string v4, "Defining classes currently requires reflective Accessibility."

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-direct {v3, v4, v0, v1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v3

    :cond_3
    move-object/from16 v5, p0

    goto/16 :goto_0

    :catch_3
    move-exception v4

    goto/16 :goto_2
.end method

.method public static invokeSuperclassMethodImpl(Lcom/lua/bsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_bshSuper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p3}, Lcom/lua/bsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v1, v0, v2, v5}, Lcom/lua/bsh/Reflect;->a(Lcom/lua/bsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p3}, Lcom/lua/bsh/Reflect;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/lua/bsh/Reflect;->a(Lcom/lua/bsh/BshClassManager;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/lua/bsh/Reflect;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public generateClass(Ljava/lang/String;Lcom/lua/bsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lcom/lua/bsh/BSHBlock;ZLcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p1 .. p8}, Lcom/lua/bsh/ClassGeneratorImpl;->generateClassImpl(Ljava/lang/String;Lcom/lua/bsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lcom/lua/bsh/BSHBlock;ZLcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public invokeSuperclassMethod(Lcom/lua/bsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/lua/bsh/ClassGeneratorImpl;->invokeSuperclassMethodImpl(Lcom/lua/bsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setInstanceNameSpaceParent(Ljava/lang/Object;Ljava/lang/String;Lcom/lua/bsh/NameSpace;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/lua/bsh/ClassGeneratorUtil;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/lua/bsh/This;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/bsh/This;->getNameSpace()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lua/bsh/NameSpace;->setParent(Lcom/lua/bsh/NameSpace;)V

    return-void
.end method
