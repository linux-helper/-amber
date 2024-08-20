.class public Lcom/lua/bsh/DelayedEvalBshMethod;
.super Lcom/lua/bsh/BshMethod;


# instance fields
.field k:Ljava/lang/String;

.field l:Lcom/lua/bsh/BSHReturnType;

.field m:[Ljava/lang/String;

.field n:Lcom/lua/bsh/BSHFormalParameters;

.field transient o:Lcom/lua/bsh/CallStack;

.field transient p:Lcom/lua/bsh/Interpreter;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/lua/bsh/BSHReturnType;[Ljava/lang/String;[Ljava/lang/String;Lcom/lua/bsh/BSHFormalParameters;Lcom/lua/bsh/BSHBlock;Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Modifiers;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/lua/bsh/BshMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lcom/lua/bsh/BSHBlock;Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Modifiers;)V

    iput-object p2, p0, Lcom/lua/bsh/DelayedEvalBshMethod;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/lua/bsh/DelayedEvalBshMethod;->l:Lcom/lua/bsh/BSHReturnType;

    iput-object p5, p0, Lcom/lua/bsh/DelayedEvalBshMethod;->m:[Ljava/lang/String;

    iput-object p6, p0, Lcom/lua/bsh/DelayedEvalBshMethod;->n:Lcom/lua/bsh/BSHFormalParameters;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/lua/bsh/DelayedEvalBshMethod;->o:Lcom/lua/bsh/CallStack;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/lua/bsh/DelayedEvalBshMethod;->p:Lcom/lua/bsh/Interpreter;

    return-void
.end method


# virtual methods
.method public getParamTypeDescriptors()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/DelayedEvalBshMethod;->m:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/DelayedEvalBshMethod;->n:Lcom/lua/bsh/BSHFormalParameters;

    iget-object v1, p0, Lcom/lua/bsh/DelayedEvalBshMethod;->o:Lcom/lua/bsh/CallStack;

    iget-object v2, p0, Lcom/lua/bsh/DelayedEvalBshMethod;->p:Lcom/lua/bsh/Interpreter;

    invoke-virtual {v0, v1, v2}, Lcom/lua/bsh/BSHFormalParameters;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;
    :try_end_0
    .catch Lcom/lua/bsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "can\'t eval param types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lcom/lua/bsh/DelayedEvalBshMethod;->l:Lcom/lua/bsh/BSHReturnType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lua/bsh/DelayedEvalBshMethod;->o:Lcom/lua/bsh/CallStack;

    iget-object v2, p0, Lcom/lua/bsh/DelayedEvalBshMethod;->p:Lcom/lua/bsh/Interpreter;

    invoke-virtual {v0, v1, v2}, Lcom/lua/bsh/BSHReturnType;->evalReturnType(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;
    :try_end_0
    .catch Lcom/lua/bsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "can\'t eval return type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReturnTypeDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/DelayedEvalBshMethod;->k:Ljava/lang/String;

    return-object v0
.end method
