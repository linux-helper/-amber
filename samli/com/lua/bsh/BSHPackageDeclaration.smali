.class public Lcom/lua/bsh/BSHPackageDeclaration;
.super Lcom/lua/bsh/SimpleNode;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHAmbiguousName;

    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v1

    iget-object v2, v0, Lcom/lua/bsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lua/bsh/NameSpace;->c(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/lua/bsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/lua/bsh/NameSpace;->importPackage(Ljava/lang/String;)V

    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    return-object v0
.end method
