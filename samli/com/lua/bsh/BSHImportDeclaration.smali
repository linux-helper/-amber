.class Lcom/lua/bsh/BSHImportDeclaration;
.super Lcom/lua/bsh/SimpleNode;


# instance fields
.field public importPackage:Z

.field public staticImport:Z

.field public superImport:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v1

    iget-boolean v0, p0, Lcom/lua/bsh/BSHImportDeclaration;->superImport:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/lua/bsh/NameSpace;->doSuperImport()V
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/lua/bsh/BSHImportDeclaration;->staticImport:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/lua/bsh/BSHImportDeclaration;->importPackage:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHAmbiguousName;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHAmbiguousName;->toClass(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lua/bsh/NameSpace;->importStatic(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "static field imports not supported yet"

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHAmbiguousName;

    iget-object v0, v0, Lcom/lua/bsh/BSHAmbiguousName;->text:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/lua/bsh/BSHImportDeclaration;->importPackage:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Lcom/lua/bsh/NameSpace;->importPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Lcom/lua/bsh/NameSpace;->importClass(Ljava/lang/String;)V

    goto :goto_0
.end method
