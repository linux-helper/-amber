.class public Lcom/lua/bsh/Variable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Class;

.field c:Ljava/lang/String;

.field d:Ljava/lang/Object;

.field e:Lcom/lua/bsh/Modifiers;

.field f:Lcom/lua/bsh/LHS;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/lua/bsh/LHS;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/bsh/Variable;->b:Ljava/lang/Class;

    iput-object p1, p0, Lcom/lua/bsh/Variable;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/lua/bsh/Variable;->f:Lcom/lua/bsh/LHS;

    iput-object p2, p0, Lcom/lua/bsh/Variable;->b:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/bsh/Variable;->b:Ljava/lang/Class;

    iput-object p1, p0, Lcom/lua/bsh/Variable;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/lua/bsh/Variable;->b:Ljava/lang/Class;

    iput-object p4, p0, Lcom/lua/bsh/Variable;->e:Lcom/lua/bsh/Modifiers;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/lua/bsh/Variable;->setValue(Ljava/lang/Object;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/lua/bsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/lua/bsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V

    iput-object p2, p0, Lcom/lua/bsh/Variable;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Variable;->f:Lcom/lua/bsh/LHS;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lua/bsh/LHS;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Variable;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getModifiers()Lcom/lua/bsh/Modifiers;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Variable;->e:Lcom/lua/bsh/Modifiers;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Variable;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Variable;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Variable;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hasModifier(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Variable;->e:Lcom/lua/bsh/Modifiers;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/lua/bsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "final"

    invoke-virtual {p0, v1}, Lcom/lua/bsh/Variable;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Variable;->d:Ljava/lang/Object;

    if-nez v1, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/lua/bsh/Variable;->b:Ljava/lang/Class;

    invoke-static {v1}, Lcom/lua/bsh/Primitive;->getDefaultValue(Ljava/lang/Class;)Lcom/lua/bsh/Primitive;

    move-result-object p1

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/Variable;->f:Lcom/lua/bsh/LHS;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, v0}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    const-string v1, "Final variable, can\'t re-assign."

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, p0, Lcom/lua/bsh/Variable;->b:Ljava/lang/Class;

    if-eqz v1, :cond_4

    if-nez p2, :cond_5

    :goto_1
    invoke-static {p1, v1, v0}, Lcom/lua/bsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    :cond_4
    iput-object p1, p0, Lcom/lua/bsh/Variable;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Variable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/Variable;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/Variable;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/Variable;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", lhs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/Variable;->f:Lcom/lua/bsh/LHS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
