.class public Lcom/lua/bsh/XThis;
.super Lcom/lua/bsh/This;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/bsh/XThis$Handler;
    }
.end annotation


# static fields
.field static c:Ljava/lang/Class;


# instance fields
.field d:Ljava/util/Hashtable;

.field e:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method public constructor <init>(Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Interpreter;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/lua/bsh/This;-><init>(Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Interpreter;)V

    new-instance v0, Lcom/lua/bsh/XThis$Handler;

    invoke-direct {v0, p0}, Lcom/lua/bsh/XThis$Handler;-><init>(Lcom/lua/bsh/XThis;)V

    iput-object v0, p0, Lcom/lua/bsh/XThis;->e:Ljava/lang/reflect/InvocationHandler;

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/Class;
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


# virtual methods
.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/lua/bsh/XThis;->getInterface([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInterface([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lua/bsh/XThis;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/XThis;->d:Ljava/util/Hashtable;

    :cond_0
    const/16 v0, 0x15

    move v2, v0

    move v0, v1

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/XThis;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/bsh/XThis;->e:Ljava/lang/reflect/InvocationHandler;

    invoke-static {v0, p1, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/bsh/XThis;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    mul-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\'this\' reference (XThis) to Bsh object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/This;->a:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
