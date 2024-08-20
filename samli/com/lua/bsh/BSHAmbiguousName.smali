.class Lcom/lua/bsh/BSHAmbiguousName;
.super Lcom/lua/bsh/SimpleNode;


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Z)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/BSHAmbiguousName;->getName(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/Name;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lua/bsh/Name;->toObject(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "Don\'t know how to eval an ambiguous name!  Use toObject() if you want an object."

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/Name;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/lua/bsh/NameSpace;->b(Ljava/lang/String;)Lcom/lua/bsh/Name;

    move-result-object v0

    return-object v0
.end method

.method public toClass(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/BSHAmbiguousName;->getName(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/bsh/Name;->toClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/lua/bsh/EvalError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1
.end method

.method public toLHS(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/LHS;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/BSHAmbiguousName;->getName(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/Name;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/Name;->toLHS(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/LHS;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method public toObject(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lua/bsh/BSHAmbiguousName;->a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "AmbigousName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
