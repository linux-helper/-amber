.class Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lua/bsh/BSHBlock$NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/bsh/ClassGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassNodeFilter"
.end annotation


# static fields
.field public static CLASSCLASSES:Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter; = null

.field public static final CLASSES:I = 0x2

.field public static CLASSINSTANCE:Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter; = null

.field public static CLASSSTATIC:Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter; = null

.field public static final INSTANCE:I = 0x1

.field public static final STATIC:I


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;-><init>(I)V

    sput-object v0, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSSTATIC:Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;

    new-instance v0, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;-><init>(I)V

    sput-object v0, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSINSTANCE:Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;

    new-instance v0, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;-><init>(I)V

    sput-object v0, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSCLASSES:Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;->a:I

    return-void
.end method


# virtual methods
.method a(Lcom/lua/bsh/SimpleNode;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    instance-of v2, p1, Lcom/lua/bsh/BSHTypedVariableDeclaration;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/lua/bsh/BSHTypedVariableDeclaration;

    iget-object v2, p1, Lcom/lua/bsh/BSHTypedVariableDeclaration;->modifiers:Lcom/lua/bsh/Modifiers;

    if-eqz v2, :cond_1

    const-string v3, "static"

    invoke-virtual {v2, v3}, Lcom/lua/bsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/lua/bsh/BSHMethodDeclaration;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/lua/bsh/BSHMethodDeclaration;

    iget-object v2, p1, Lcom/lua/bsh/BSHMethodDeclaration;->modifiers:Lcom/lua/bsh/Modifiers;

    if-eqz v2, :cond_3

    const-string v3, "static"

    invoke-virtual {v2, v3}, Lcom/lua/bsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/lua/bsh/BSHBlock;

    if-eqz v0, :cond_5

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public isVisible(Lcom/lua/bsh/SimpleNode;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    instance-of v0, p1, Lcom/lua/bsh/BSHClassDeclaration;

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/lua/bsh/BSHClassDeclaration;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;->a(Lcom/lua/bsh/SimpleNode;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/lua/bsh/ClassGeneratorImpl$ClassNodeFilter;->a(Lcom/lua/bsh/SimpleNode;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
