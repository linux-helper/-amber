.class public Lcom/lua/bsh/NameSpace;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/lua/bsh/BshClassManager$Listener;
.implements Lcom/lua/bsh/NameSource;


# static fields
.field public static final JAVACODE:Lcom/lua/bsh/NameSpace;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/lua/bsh/NameSpace;

.field private c:Ljava/util/Hashtable;

.field private d:Ljava/util/Hashtable;

.field protected e:Ljava/util/Hashtable;

.field private f:Ljava/util/Vector;

.field private g:Ljava/util/Vector;

.field private h:Ljava/util/Vector;

.field private i:Ljava/util/Vector;

.field private j:Ljava/lang/String;

.field private transient k:Lcom/lua/bsh/BshClassManager;

.field private l:Lcom/lua/bsh/This;

.field private m:Ljava/util/Hashtable;

.field n:Lcom/lua/bsh/SimpleNode;

.field o:Z

.field p:Z

.field q:Ljava/lang/Class;

.field r:Ljava/lang/Object;

.field private transient s:Ljava/util/Hashtable;

.field t:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lua/bsh/NameSpace;

    const/4 v1, 0x0

    const-string v2, "Called from compiled Java code."

    invoke-direct {v0, v1, v2}, Lcom/lua/bsh/NameSpace;-><init>(Lcom/lua/bsh/BshClassManager;Ljava/lang/String;)V

    sput-object v0, Lcom/lua/bsh/NameSpace;->JAVACODE:Lcom/lua/bsh/NameSpace;

    sget-object v0, Lcom/lua/bsh/NameSpace;->JAVACODE:Lcom/lua/bsh/NameSpace;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lua/bsh/NameSpace;->o:Z

    return-void
.end method

.method public constructor <init>(Lcom/lua/bsh/BshClassManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/lua/bsh/NameSpace;-><init>(Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/BshClassManager;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/BshClassManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p3}, Lcom/lua/bsh/NameSpace;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/lua/bsh/NameSpace;->setParent(Lcom/lua/bsh/NameSpace;)V

    invoke-virtual {p0, p2}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/BshClassManager;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/lua/bsh/BshClassManager;->addListener(Lcom/lua/bsh/BshClassManager$Listener;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/lua/bsh/NameSpace;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/lua/bsh/NameSpace;-><init>(Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/BshClassManager;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/BshMethod;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p5, v0, p0, p4}, Lcom/lua/bsh/Interpreter;->eval(Ljava/io/Reader;Lcom/lua/bsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p2, p3}, Lcom/lua/bsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/lua/bsh/BshMethod;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/lua/bsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error loading script: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/lua/bsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/util/Enumeration;)[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private b(Ljava/util/Enumeration;)[Lcom/lua/bsh/BshMethod;
    .locals 4

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/lua/bsh/BshMethod;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/lua/bsh/BshMethod;

    if-eqz v1, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    check-cast v0, Ljava/util/Vector;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lua/bsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->s:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    :cond_2
    invoke-static {p1}, Lcom/lua/bsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/lua/bsh/NameSpace;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, v0}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/lua/bsh/NameSpace;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "getClass(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " not\tfound in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->e:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Lcom/lua/bsh/NameSpace;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lcom/lua/bsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/lua/bsh/NameSpace;->b(Ljava/lang/String;)Lcom/lua/bsh/Name;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lua/bsh/Name;->toClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/lua/bsh/BshClassManager;->cacheClassInfo(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    move-object v2, v1

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "imported unpackaged name not found:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->f:Ljava/util/Vector;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_3
    if-gez v2, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/bsh/BshClassManager;->e()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, p1}, Lcom/lua/bsh/BshClassManager;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v0}, Lcom/lua/bsh/NameSpace;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    :cond_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->f:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lua/bsh/NameSpace;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static identifierToClass(Lcom/lua/bsh/ClassIdentifier;)Ljava/lang/Class;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/lua/bsh/BshMethod;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->h:Ljava/util/Vector;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/lua/bsh/NameSpace;->h:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->i:Ljava/util/Vector;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    :cond_1
    move-object v0, v2

    :goto_2
    return-object v0

    :cond_2
    iget-object v3, p0, Lcom/lua/bsh/NameSpace;->h:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v5

    invoke-static {v5, v4, p1, p2, v1}, Lcom/lua/bsh/Reflect;->a(Lcom/lua/bsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v0, Lcom/lua/bsh/BshMethod;

    invoke-direct {v0, v4, v3}, Lcom/lua/bsh/BshMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v0, p1, p2, v4}, Lcom/lua/bsh/Reflect;->a(Lcom/lua/bsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v0, Lcom/lua/bsh/BshMethod;

    invoke-direct {v0, v3, v2}, Lcom/lua/bsh/BshMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->l:Lcom/lua/bsh/This;

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/lua/bsh/This;->a(Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/bsh/NameSpace;->l:Lcom/lua/bsh/This;

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->l:Lcom/lua/bsh/This;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lcom/lua/bsh/Variable;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->h:Ljava/util/Vector;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/lua/bsh/NameSpace;->h:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->i:Ljava/util/Vector;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    :cond_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/lua/bsh/NameSpace;->h:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lcom/lua/bsh/Reflect;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v0, Lcom/lua/bsh/Variable;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    new-instance v4, Lcom/lua/bsh/LHS;

    invoke-direct {v4, v2, v3}, Lcom/lua/bsh/LHS;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    invoke-direct {v0, p1, v1, v4}, Lcom/lua/bsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/lua/bsh/LHS;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lcom/lua/bsh/Reflect;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/lua/bsh/Variable;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Lcom/lua/bsh/LHS;

    invoke-direct {v3, v2}, Lcom/lua/bsh/LHS;-><init>(Ljava/lang/reflect/Field;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/lua/bsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/lua/bsh/LHS;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Z)Lcom/lua/bsh/Variable;
    .locals 2

    iget-boolean v0, p0, Lcom/lua/bsh/NameSpace;->p:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;)Lcom/lua/bsh/Variable;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/NameSpace;->c:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/Variable;

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/lua/bsh/NameSpace;->p:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;)Lcom/lua/bsh/Variable;

    move-result-object v0

    :cond_1
    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/NameSpace;->b:Lcom/lua/bsh/NameSpace;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;Z)Lcom/lua/bsh/Variable;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->r:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->q:Ljava/lang/Class;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    const-string v1, "Can\'t refer to class instance from static context."

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Can\'t resolve class instance \'this\' in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected a(Lcom/lua/bsh/Variable;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/lua/bsh/Variable;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method a(Lcom/lua/bsh/BshClassManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/NameSpace;->k:Lcom/lua/bsh/BshClassManager;

    return-void
.end method

.method a(Lcom/lua/bsh/SimpleNode;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/NameSpace;->n:Lcom/lua/bsh/SimpleNode;

    return-void
.end method

.method a(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/NameSpace;->q:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/lua/bsh/NameSpace;->importStatic(Ljava/lang/Class;)V

    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/NameSpace;->r:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lua/bsh/NameSpace;->importObject(Ljava/lang/Object;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->s:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/NameSpace;->s:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->s:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lua/bsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method protected a(Ljava/util/Vector;)V
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->b:Lcom/lua/bsh/NameSpace;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/lua/bsh/NameSpace;->a(Ljava/util/Vector;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addNameSourceListener(Lcom/lua/bsh/NameSource$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->t:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/NameSpace;->t:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->t:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method b(Ljava/lang/String;)Lcom/lua/bsh/Name;
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->m:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/NameSpace;->m:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/Name;

    if-nez v0, :cond_1

    new-instance v0, Lcom/lua/bsh/Name;

    invoke-direct {v0, p0, p1}, Lcom/lua/bsh/Name;-><init>(Lcom/lua/bsh/NameSpace;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lua/bsh/NameSpace;->m:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method b()Lcom/lua/bsh/SimpleNode;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->n:Lcom/lua/bsh/SimpleNode;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->b:Lcom/lua/bsh/NameSpace;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lua/bsh/NameSpace;->b()Lcom/lua/bsh/SimpleNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->b:Lcom/lua/bsh/NameSpace;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lua/bsh/NameSpace;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/NameSpace;->j:Ljava/lang/String;

    return-void
.end method

.method public classLoaderChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lua/bsh/NameSpace;->c:Ljava/util/Hashtable;

    iput-object v1, p0, Lcom/lua/bsh/NameSpace;->d:Ljava/util/Hashtable;

    iput-object v1, p0, Lcom/lua/bsh/NameSpace;->e:Ljava/util/Hashtable;

    iput-object v1, p0, Lcom/lua/bsh/NameSpace;->f:Ljava/util/Vector;

    iput-object v1, p0, Lcom/lua/bsh/NameSpace;->g:Ljava/util/Vector;

    iput-object v1, p0, Lcom/lua/bsh/NameSpace;->h:Ljava/util/Vector;

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->b:Lcom/lua/bsh/NameSpace;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->loadDefaultImports()V

    :cond_0
    iput-object v1, p0, Lcom/lua/bsh/NameSpace;->s:Ljava/util/Hashtable;

    iput-object v1, p0, Lcom/lua/bsh/NameSpace;->m:Ljava/util/Hashtable;

    return-void
.end method

.method public doSuperImport()V
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/bsh/BshClassManager;->d()V

    return-void
.end method

.method public get(Ljava/lang/String;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/lua/bsh/CallStack;

    invoke-direct {v0, p0}, Lcom/lua/bsh/CallStack;-><init>(Lcom/lua/bsh/NameSpace;)V

    invoke-virtual {p0, p1}, Lcom/lua/bsh/NameSpace;->b(Ljava/lang/String;)Lcom/lua/bsh/Name;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/lua/bsh/Name;->toObject(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllNames()[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lua/bsh/NameSpace;->a(Ljava/util/Vector;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1
.end method

.method public getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-direct {p0, p1}, Lcom/lua/bsh/NameSpace;->e(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->b:Lcom/lua/bsh/NameSpace;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/lua/bsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassManager()Lcom/lua/bsh/BshClassManager;
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->k:Lcom/lua/bsh/BshClassManager;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->b:Lcom/lua/bsh/NameSpace;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/lua/bsh/NameSpace;->JAVACODE:Lcom/lua/bsh/NameSpace;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Lcom/lua/bsh/NameSpace;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "experiment: creating class manager"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lua/bsh/BshClassManager;->createClassManager(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/BshClassManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/bsh/NameSpace;->k:Lcom/lua/bsh/BshClassManager;

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->k:Lcom/lua/bsh/BshClassManager;

    goto :goto_0
.end method

.method public getCommand(Ljava/lang/String;[Ljava/lang/Class;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 6

    sget-boolean v0, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "getCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Lcom/lua/bsh/Interpreter;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v3

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->g:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->b:Lcom/lua/bsh/NameSpace;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2, p3}, Lcom/lua/bsh/NameSpace;->getCommand(Ljava/lang/String;[Ljava/lang/Class;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->g:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ".bsh"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "searching for script: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/lua/bsh/BshClassManager;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/lua/bsh/NameSpace;->a(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/BshMethod;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, p1

    :goto_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "searching for class: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/lua/bsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public getDeclaredVariables()[Lcom/lua/bsh/Variable;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lua/bsh/NameSpace;->c:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    new-array v0, v0, [Lcom/lua/bsh/Variable;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    new-array v1, v1, [Lcom/lua/bsh/Variable;

    iget-object v2, p0, Lcom/lua/bsh/NameSpace;->c:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/Variable;

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public getGlobal(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->b:Lcom/lua/bsh/NameSpace;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/lua/bsh/NameSpace;->getGlobal(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    goto :goto_0
.end method

.method public getInvocationLine()I
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->b()Lcom/lua/bsh/SimpleNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lua/bsh/SimpleNode;->getLineNumber()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getInvocationText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->b()Lcom/lua/bsh/SimpleNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lua/bsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<invoked from Java code>"

    goto :goto_0
.end method

.method public getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/lua/bsh/BshMethod;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lua/bsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lcom/lua/bsh/BshMethod;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lcom/lua/bsh/BshMethod;
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/lua/bsh/NameSpace;->p:Z

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/lua/bsh/BshMethod;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->d:Ljava/util/Hashtable;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v2, v0, Ljava/util/Vector;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lcom/lua/bsh/BshMethod;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :goto_1
    array-length v0, v2

    new-array v4, v0, [[Ljava/lang/Class;

    move v0, v1

    :goto_2
    array-length v1, v2

    if-lt v0, v1, :cond_4

    invoke-static {p2, v4}, Lcom/lua/bsh/Reflect;->a([Ljava/lang/Class;[[Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    aget-object v0, v2, v0

    :goto_3
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/lua/bsh/NameSpace;->p:Z

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/lua/bsh/BshMethod;

    move-result-object v0

    :cond_0
    if-nez p3, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/lua/bsh/NameSpace;->b:Lcom/lua/bsh/NameSpace;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/lua/bsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/lua/bsh/BshMethod;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/lua/bsh/BshMethod;

    check-cast v0, Lcom/lua/bsh/BshMethod;

    aput-object v0, v2, v1

    goto :goto_1

    :cond_4
    aget-object v1, v2, v0

    invoke-virtual {v1}, Lcom/lua/bsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_3
.end method

.method public getMethodNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lua/bsh/NameSpace;->a(Ljava/util/Enumeration;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMethods()[Lcom/lua/bsh/BshMethod;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/lua/bsh/BshMethod;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lua/bsh/NameSpace;->b(Ljava/util/Enumeration;)[Lcom/lua/bsh/BshMethod;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/lua/bsh/NameSpace;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->b:Lcom/lua/bsh/NameSpace;

    return-object v0
.end method

.method public getSuper(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->b:Lcom/lua/bsh/NameSpace;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    goto :goto_0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lua/bsh/NameSpace;->getVariable(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;Z)Lcom/lua/bsh/Variable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Variable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVariableNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->c:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lua/bsh/NameSpace;->a(Ljava/util/Enumeration;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public importClass(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->e:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/NameSpace;->e:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->e:Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/lua/bsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public importCommands(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->g:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/NameSpace;->g:Ljava/util/Vector;

    :cond_0
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/lua/bsh/NameSpace;->g:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lua/bsh/NameSpace;->g:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/lua/bsh/NameSpace;->g:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public importObject(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->h:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/NameSpace;->h:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public importPackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->f:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/NameSpace;->f:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public importStatic(Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->i:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/NameSpace;->i:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lua/bsh/NameSpace;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0, p3}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lua/bsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadDefaultImports()V
    .locals 1

    const-string v0, "bsh.EvalError"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/NameSpace;->importClass(Ljava/lang/String;)V

    const-string v0, "bsh.Interpreter"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/NameSpace;->importClass(Ljava/lang/String;)V

    const-string v0, "javax.swing.event"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "javax.swing"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.awt.event"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.awt"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.net"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.util"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.io"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.lang"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "/bsh/commands"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/NameSpace;->importCommands(Ljava/lang/String;)V

    return-void
.end method

.method public nameSpaceChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/bsh/NameSpace;->s:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/lua/bsh/NameSpace;->m:Ljava/util/Hashtable;

    return-void
.end method

.method public prune()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->k:Lcom/lua/bsh/BshClassManager;

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/lua/bsh/BshClassManager;->createClassManager(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/BshClassManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/BshClassManager;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/lua/bsh/NameSpace;->setParent(Lcom/lua/bsh/NameSpace;)V

    return-void
.end method

.method public setMethod(Ljava/lang/String;Lcom/lua/bsh/BshMethod;)V
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/NameSpace;->d:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Lcom/lua/bsh/BshMethod;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/NameSpace;->a:Ljava/lang/String;

    return-void
.end method

.method public setParent(Lcom/lua/bsh/NameSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/NameSpace;->b:Lcom/lua/bsh/NameSpace;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->loadDefaultImports()V

    :cond_0
    return-void
.end method

.method public setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->c:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/NameSpace;->c:Ljava/util/Hashtable;

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;Z)Lcom/lua/bsh/Variable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lua/bsh/Variable;->getType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/lua/bsh/Variable;->getType()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p2, :cond_1

    invoke-virtual {v0, p3, v2}, Lcom/lua/bsh/Variable;->setValue(Ljava/lang/Object;I)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Typed variable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " was previously declared with type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/lua/bsh/Variable;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->c:Ljava/util/Hashtable;

    new-instance v1, Lcom/lua/bsh/Variable;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/lua/bsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Z)V
    .locals 3

    new-instance v0, Lcom/lua/bsh/Modifiers;

    invoke-direct {v0}, Lcom/lua/bsh/Modifiers;-><init>()V

    if-eqz p4, :cond_0

    const/4 v1, 0x2

    const-string v2, "final"

    invoke-virtual {v0, v1, v2}, Lcom/lua/bsh/Modifiers;->addModifier(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lua/bsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V

    return-void
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    sget-boolean v0, Lcom/lua/bsh/Interpreter;->LOCALSCOPING:Z

    if-eqz v0, :cond_0

    move v0, p3

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lua/bsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->c:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/NameSpace;->c:Ljava/util/Hashtable;

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p0, p1, p4}, Lcom/lua/bsh/NameSpace;->a(Ljava/lang/String;Z)Lcom/lua/bsh/Variable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, p2, v1}, Lcom/lua/bsh/Variable;->setValue(Ljava/lang/Object;I)V
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Variable assignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->c:Ljava/util/Hashtable;

    new-instance v1, Lcom/lua/bsh/Variable;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/lua/bsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->nameSpaceChanged()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(Strict Java mode) Assignment to undeclared variable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    const-string v1, "null variable value"

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "NameSpace: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v0, p0, Lcom/lua/bsh/NameSpace;->p:Z

    if-eqz v0, :cond_1

    const-string v0, " (isClass) "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v0, p0, Lcom/lua/bsh/NameSpace;->o:Z

    if-eqz v0, :cond_2

    const-string v0, " (method) "

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->q:Ljava/lang/Class;

    if-eqz v0, :cond_3

    const-string v0, " (class static) "

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->r:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const-string v0, " (class instance) "

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/lua/bsh/NameSpace;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4
.end method

.method public unsetVariable(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/NameSpace;->c:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lua/bsh/NameSpace;->nameSpaceChanged()V

    :cond_0
    return-void
.end method
