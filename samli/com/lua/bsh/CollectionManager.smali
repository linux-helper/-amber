.class public Lcom/lua/bsh/CollectionManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/bsh/CollectionManager$BasicBshIterator;
    }
.end annotation


# static fields
.field private static a:Lcom/lua/bsh/CollectionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCollectionManager()Lcom/lua/bsh/CollectionManager;
    .locals 3

    const-class v0, Lcom/lua/bsh/CollectionManager;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/lua/bsh/CollectionManager;->a:Lcom/lua/bsh/CollectionManager;

    if-nez v0, :cond_0

    const-string v0, "java.util.Collection"

    invoke-static {v0}, Lcom/lua/bsh/Capabilities;->classExists(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "bsh.collection.CollectionManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/CollectionManager;

    sput-object v0, Lcom/lua/bsh/CollectionManager;->a:Lcom/lua/bsh/CollectionManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/lua/bsh/CollectionManager;->a:Lcom/lua/bsh/CollectionManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/lua/bsh/CollectionManager;

    invoke-direct {v0}, Lcom/lua/bsh/CollectionManager;-><init>()V

    sput-object v0, Lcom/lua/bsh/CollectionManager;->a:Lcom/lua/bsh/CollectionManager;

    :cond_1
    sget-object v0, Lcom/lua/bsh/CollectionManager;->a:Lcom/lua/bsh/CollectionManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-class v1, Lcom/lua/bsh/CollectionManager;

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unable to load CollectionManagerImpl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/lua/bsh/CollectionManager;

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBshIterator(Ljava/lang/Object;)Lcom/lua/bsh/BshIterator;
    .locals 1

    new-instance v0, Lcom/lua/bsh/CollectionManager$BasicBshIterator;

    invoke-direct {v0, p1}, Lcom/lua/bsh/CollectionManager$BasicBshIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFromMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isBshIterable(Ljava/lang/Object;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lua/bsh/CollectionManager;->getBshIterator(Ljava/lang/Object;)Lcom/lua/bsh/BshIterator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMap(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Hashtable;

    return v0
.end method

.method public putInMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Hashtable;

    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
