.class public final Lcom/luajava/LuaJavaAPI;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luajava/LuaJavaAPI$JavaObject;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->i:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    new-instance v0, Lcom/androlua/LuaEnhancer;

    invoke-direct {v0, p1}, Lcom/androlua/LuaEnhancer;-><init>(Ljava/lang/Class;)V

    new-instance v1, Lcom/luajava/LuaJavaAPI$2;

    invoke-direct {v1}, Lcom/luajava/LuaJavaAPI$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/androlua/LuaEnhancer;->create(Lcom/android/cglib/proxy/MethodFilter;)Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/proxy/EnhancerInterface;

    new-instance v1, Lcom/luajava/LuaAbstractMethodInterceptor;

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/luajava/LuaAbstractMethodInterceptor;-><init>(Lcom/luajava/LuaObject;)V

    invoke-interface {v0, v1}, Lcom/android/cglib/proxy/EnhancerInterface;->setMethodInterceptor_Enhancer(Lcom/android/cglib/proxy/MethodInterceptor;)V

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/luajava/LuaState;Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaState;->newTable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return v1

    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-gt v0, v3, :cond_4

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Object;)I

    add-int/lit8 v0, v0, 0x1

    const/4 v3, -0x2

    int-to-long v4, v0

    invoke-virtual {p0, v3, v4, v5}, Lcom/luajava/LuaState;->rawSetI(IJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/luajava/LuaException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not astable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    :try_start_4
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Object;)I

    const/4 v3, -0x2

    int-to-long v4, v0

    invoke-virtual {p0, v3, v4, v5}, Lcom/luajava/LuaState;->rawSetI(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Object;)I

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setTable(I)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pop(I)V

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method private static a(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 9

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit p0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    move v7, v3

    :goto_1
    const-string v4, "m"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "m"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v5, v4

    move-object v4, v1

    move-object v1, v6

    :goto_3
    if-eqz v4, :cond_2

    :try_start_1
    invoke-virtual {v4, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :cond_1
    :goto_4
    if-eqz v1, :cond_6

    :cond_2
    if-nez v1, :cond_7

    :try_start_2
    monitor-exit p0

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move v7, v2

    goto :goto_1

    :cond_4
    move-object v4, v6

    goto :goto_2

    :cond_5
    move-object v4, v1

    move-object v5, v6

    move-object v1, v6

    goto :goto_3

    :catch_0
    move-exception v8

    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_4

    :cond_6
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_3

    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_8

    monitor-exit p0

    move v1, v2

    goto :goto_0

    :cond_8
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/luajava/LuaState;->getTop()I

    move-result v4

    invoke-static {p0, v2, v4}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Lcom/luajava/LuaException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit p0

    move v1, v3

    goto/16 :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Lcom/luajava/LuaException;

    invoke-direct {v2, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    :catch_2
    move-exception v1

    const/4 v1, 0x3

    :try_start_7
    invoke-static {p0, p2, v1, v2}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v6

    :catch_3
    move-exception v8

    goto :goto_4
.end method

.method private static a(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;Z)I
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOn"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Listener"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v0, p3}, Lcom/luajava/LuaJavaAPI;->getMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    if-ne v5, v1, :cond_0

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaState;->newTable()V

    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Lcom/luajava/LuaState;->pushValue(I)V

    const/4 v2, -0x2

    invoke-virtual {p0, v2, p2}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Lcom/luajava/LuaObject;->createProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    goto :goto_0
.end method

.method private static a(Lcom/luajava/LuaState;Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/luajava/LuaObject;->createProxy(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/luajava/LuaException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const-string v1, "short"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "float"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "long"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "char"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "byte"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v1, "int"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v1, "double"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :pswitch_0
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :pswitch_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :pswitch_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :pswitch_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :pswitch_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    :pswitch_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    :pswitch_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_7
        0x197ef -> :sswitch_6
        0x2e6108 -> :sswitch_5
        0x2e9356 -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->type(I)I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/luajava/LuaState;Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    if-eq p2, v2, :cond_19

    const/4 v1, 0x3

    if-eq p2, v1, :cond_16

    const/4 v1, 0x4

    if-eq p2, v1, :cond_15

    const/4 v1, 0x5

    if-eq p2, v1, :cond_11

    const/4 v1, 0x6

    if-eq p2, v1, :cond_e

    const/4 v1, 0x7

    if-ne p2, v1, :cond_d

    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->isObject(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->getObjectFromUserdata(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_5

    instance-of v3, v1, Ljava/lang/Byte;

    if-eqz v3, :cond_5

    :cond_2
    :goto_0
    move-object v0, v1

    :cond_3
    if-nez v0, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v0, v1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    :cond_4
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Invalid Parameter."

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_6

    instance-of v3, v1, Ljava/lang/Short;

    if-nez v3, :cond_2

    :cond_6
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_7

    instance-of v3, v1, Ljava/lang/Integer;

    if-nez v3, :cond_2

    :cond_7
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_8

    instance-of v3, v1, Ljava/lang/Long;

    if-nez v3, :cond_2

    :cond_8
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_9

    instance-of v3, v1, Ljava/lang/Float;

    if-nez v3, :cond_2

    :cond_9
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_a

    instance-of v3, v1, Ljava/lang/Double;

    if-nez v3, :cond_2

    :cond_a
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_3

    instance-of v3, v1, Ljava/lang/Character;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_b
    const-class v1, Lcom/luajava/LuaObject;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_c
    const/4 v1, 0x0

    goto :goto_1

    :cond_d
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Invalid Parameters."

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_2
    invoke-static {p0, p1, p3}, Lcom/luajava/LuaJavaAPI;->e(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_f
    const-class v1, Lcom/luajava/LuaFunction;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_10
    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_11
    const-class v1, Lcom/luajava/LuaTable;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/luajava/LuaJavaAPI;->b(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_12
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p0, p1, p3}, Lcom/luajava/LuaJavaAPI;->c(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    move v1, v2

    goto/16 :goto_1

    :cond_13
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p0, p1, p3}, Lcom/luajava/LuaJavaAPI;->d(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    move v1, v2

    goto/16 :goto_1

    :cond_14
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2

    :cond_15
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto/16 :goto_1

    :cond_16
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_17

    const-class v1, Ljava/lang/Number;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_17
    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->isInteger(I)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v0

    move v1, v2

    goto/16 :goto_1

    :cond_18
    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->isNumber(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v0

    move v1, v2

    goto/16 :goto_1

    :cond_19
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_1a

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_1a
    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move v1, v2

    goto/16 :goto_1

    :cond_1b
    move v1, v2

    goto/16 :goto_1
.end method

.method private static a(Lcom/luajava/LuaState;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isObject(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getObjectFromUserdata(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->type(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "unkown"

    goto :goto_0

    :pswitch_0
    const-string v0, "thread"

    goto :goto_0

    :pswitch_1
    const-string v0, "function"

    goto :goto_0

    :pswitch_2
    const-string v0, "table"

    goto :goto_0

    :pswitch_3
    const-string v0, "string"

    goto :goto_0

    :pswitch_4
    const-string v0, "number"

    goto :goto_0

    :pswitch_5
    const-string v0, "userdata"

    goto :goto_0

    :pswitch_6
    const-string v0, "boolean"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad argument to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expected, got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p2}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/luajava/LuaException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad argument #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expected, got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x1

    invoke-static {p0, v1}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/luajava/LuaException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/reflect/Method;
    .locals 2

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Class;

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    sget-object v0, Lcom/luajava/LuaJavaAPI;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-static {p0, p1, v1}, Lcom/luajava/LuaJavaAPI;->getMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sget-object v1, Lcom/luajava/LuaJavaAPI;->b:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method public static asTable(JI)I
    .locals 10

    const/4 v1, 0x1

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v3

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->isBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/luajava/LuaState;->pop(I)V

    invoke-static {v3, v0}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Object;)I

    move-result v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/luajava/LuaState;->newTable()V

    invoke-virtual {v3}, Lcom/luajava/LuaState;->getTop()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v0, :cond_1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v6, v5, -0x1

    if-gt v2, v6, :cond_4

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    const/4 v6, -0x2

    int-to-long v8, v2

    invoke-virtual {v3, v6, v8, v9}, Lcom/luajava/LuaState;->rawSetI(IJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Lcom/luajava/LuaException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not astable: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    :try_start_5
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    const/4 v5, -0x2

    int-to-long v6, v0

    invoke-virtual {v3, v5, v6, v7}, Lcom/luajava/LuaState;->rawSetI(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_4

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    const/4 v0, -0x3

    invoke-virtual {v3, v0}, Lcom/luajava/LuaState;->setTable(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->pushValue(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v1

    goto/16 :goto_0
.end method

.method private static b(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/luajava/LuaJavaAPI;->b(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;Z)I
    .locals 11

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->type(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x0

    const/4 v0, -0x1

    move v10, v0

    move-object v0, v2

    move v2, v10

    :goto_0
    if-eqz v0, :cond_9

    :try_start_1
    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    sget-object v0, Lcom/luajava/LuaJavaAPI;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->isInteger(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/luajava/LuaJavaAPI;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v6, v7}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v6

    aput-object v6, v5, v2

    :cond_4
    const/16 v2, 0x9

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/luajava/LuaJavaAPI;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v6, v7}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v6

    aput-object v6, v5, v2

    :cond_6
    const/4 v2, 0x3

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/luajava/LuaJavaAPI;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_9
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v3, p3}, Lcom/luajava/LuaJavaAPI;->getMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz p3, :cond_b

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_b
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v9, 0x1

    if-eq v8, v9, :cond_c

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_2

    :cond_c
    :try_start_4
    aget-object v1, v7, v1

    invoke-virtual {p0}, Lcom/luajava/LuaState;->getTop()I

    move-result v8

    invoke-static {p0, v1, v8}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/luajava/LuaException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    const/4 v1, 0x1

    if-eq v2, v1, :cond_10

    const/16 v1, 0x9

    if-eq v2, v1, :cond_f

    const/4 v1, 0x3

    if-eq v2, v1, :cond_e

    const/4 v1, 0x4

    if-eq v2, v1, :cond_d

    :goto_4
    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit p0

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_d
    sget-object v1, Lcom/luajava/LuaJavaAPI;->d:Ljava/util/HashMap;

    :goto_5
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_e
    sget-object v1, Lcom/luajava/LuaJavaAPI;->f:Ljava/util/HashMap;

    goto :goto_5

    :cond_f
    sget-object v1, Lcom/luajava/LuaJavaAPI;->e:Ljava/util/HashMap;

    goto :goto_5

    :cond_10
    sget-object v1, Lcom/luajava/LuaJavaAPI;->g:Ljava/util/HashMap;

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    const-string v0, "-> "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_3

    :cond_11
    invoke-virtual {p0}, Lcom/luajava/LuaState;->getTop()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->type(I)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_14

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->getFunction(I)Lcom/luajava/LuaFunction;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/luajava/LuaState;->type(I)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_14

    if-eqz v0, :cond_14

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->rawLen(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    int-to-long v4, v0

    invoke-virtual {p0, v1, v4, v5}, Lcom/luajava/LuaState;->getI(IJ)I

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/luajava/LuaState;->pcall(III)I

    move-result v0

    if-nez v0, :cond_13

    monitor-exit p0

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_13
    new-instance v0, Lcom/luajava/LuaException;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_15

    monitor-exit p0

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_15
    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid setter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Invalid Parameters.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private static b(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->objLen(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const-class v3, Ljava/lang/String;

    if-ne p1, v3, :cond_0

    :goto_0
    if-gt v0, v1, :cond_8

    int-to-double v4, v0

    :try_start_1
    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_1

    :goto_1
    if-gt v0, v1, :cond_8

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_2

    :goto_2
    if-gt v0, v1, :cond_8

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_3

    :goto_3
    if-gt v0, v1, :cond_8

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_4

    :goto_4
    if-gt v0, v1, :cond_8

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_5

    :goto_5
    if-gt v0, v1, :cond_8

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_6

    :goto_6
    if-gt v0, v1, :cond_8

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_7

    :goto_7
    if-gt v0, v1, :cond_8

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    :goto_8
    if-gt v0, v1, :cond_8

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/luajava/LuaState;->getTop()I

    move-result v4

    invoke-static {p0, p1, v4}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    :try_start_2
    monitor-exit p0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private static c(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/luajava/LuaJavaAPI;->c(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static c(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->objLen(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    :try_start_1
    const-class v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_0
    if-gt v0, v2, :cond_1

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static callMethod(JILjava/lang/String;)I
    .locals 20

    invoke-static/range {p0 .. p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v7

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v7}, Lcom/luajava/LuaState;->getTop()I

    move-result v10

    const/4 v2, -0x1

    if-nez v10, :cond_3

    sget-object v2, Lcom/luajava/LuaJavaAPI;->h:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v7

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v7, v3}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    monitor-exit v7

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "  at "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n  -> "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    :cond_1
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid method call.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v18, v2

    move v2, v3

    move-object/from16 v3, v18

    :cond_3
    :try_start_3
    new-array v11, v10, [Ljava/lang/Object;

    const/4 v4, 0x1

    if-ne v10, v4, :cond_f

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/luajava/LuaState;->type(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_b

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    :goto_1
    if-eqz v3, :cond_f

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_4
    invoke-virtual {v3, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    if-nez v2, :cond_d

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    monitor-exit v7

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/luajava/LuaJavaAPI;->d:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    :cond_6
    const/4 v3, 0x4

    move-object/from16 v18, v2

    move v2, v3

    move-object/from16 v3, v18

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lcom/luajava/LuaState;->isInteger(I)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/luajava/LuaJavaAPI;->e:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v4

    aput-object v4, v11, v3

    :cond_8
    const/16 v3, 0x9

    move-object/from16 v18, v2

    move v2, v3

    move-object/from16 v3, v18

    goto :goto_1

    :cond_9
    sget-object v2, Lcom/luajava/LuaJavaAPI;->f:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v4

    aput-object v4, v11, v3

    :cond_a
    const/4 v3, 0x3

    move-object/from16 v18, v2

    move v2, v3

    move-object/from16 v3, v18

    goto/16 :goto_1

    :cond_b
    sget-object v2, Lcom/luajava/LuaJavaAPI;->g:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v11, v3

    :cond_c
    const/4 v3, 0x1

    move-object/from16 v18, v2

    move v2, v3

    move-object/from16 v3, v18

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v7, v2}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    monitor-exit v7

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string v4, "  at "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n  -> "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    :cond_e
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid method call.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    move v6, v2

    sget-object v2, Lcom/luajava/LuaJavaAPI;->b:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Method;

    new-array v12, v10, [I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v10, :cond_10

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v7, v4}, Lcom/luajava/LuaState;->type(I)I

    move-result v5

    aput v5, v12, v3

    move v3, v4

    goto :goto_2

    :cond_10
    array-length v13, v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v3, 0x0

    move v5, v3

    :goto_3
    if-ge v5, v13, :cond_1c

    aget-object v14, v2, v5

    :try_start_6
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    array-length v3, v15

    if-eq v3, v10, :cond_12

    :cond_11
    :goto_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    :cond_12
    const/4 v3, 0x0

    :goto_5
    array-length v4, v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ge v3, v4, :cond_14

    aget-object v16, v15, v3

    aget v17, v12, v3

    add-int/lit8 v4, v3, 0x1

    :try_start_7
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v7, v0, v1, v4}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v11, v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v3, v4

    goto :goto_5

    :catch_2
    move-exception v3

    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_11

    :try_start_8
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v3

    if-nez v3, :cond_13

    const/4 v3, 0x1

    :try_start_9
    invoke-virtual {v14, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_13
    :try_start_a
    invoke-virtual {v14, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v3

    if-eqz v6, :cond_19

    const/4 v2, 0x1

    if-eq v6, v2, :cond_18

    const/4 v2, 0x3

    if-eq v6, v2, :cond_17

    const/4 v2, 0x4

    if-eq v6, v2, :cond_16

    const/16 v2, 0x9

    if-eq v6, v2, :cond_15

    :goto_7
    if-nez v3, :cond_1a

    :try_start_b
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    monitor-exit v7

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_14
    const/4 v3, 0x1

    goto :goto_6

    :cond_15
    sget-object v2, Lcom/luajava/LuaJavaAPI;->e:Ljava/util/HashMap;

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_16
    sget-object v2, Lcom/luajava/LuaJavaAPI;->d:Ljava/util/HashMap;

    goto :goto_8

    :cond_17
    sget-object v2, Lcom/luajava/LuaJavaAPI;->f:Ljava/util/HashMap;

    goto :goto_8

    :cond_18
    sget-object v2, Lcom/luajava/LuaJavaAPI;->g:Ljava/util/HashMap;

    goto :goto_8

    :cond_19
    sget-object v2, Lcom/luajava/LuaJavaAPI;->h:Ljava/util/HashMap;

    goto :goto_8

    :cond_1a
    invoke-virtual {v7, v3}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    monitor-exit v7

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v3

    :goto_9
    const-string v4, "  at "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n  -> "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    :cond_1b
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_1c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gtz v3, :cond_1e

    array-length v4, v2

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v4, :cond_1d

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1d
    new-instance v2, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid method call. Invalid Parameters.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1e
    new-instance v2, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid method call.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catch_4
    move-exception v3

    goto :goto_9
.end method

.method public static checkClass(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x3

    monitor-enter p0

    :try_start_0
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    :goto_0
    return v0

    :catch_0
    move-exception v2

    invoke-virtual {p1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :try_start_4
    monitor-exit p0

    move v0, v1

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public static checkField(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v1

    move v1, v3

    :goto_0
    :try_start_1
    invoke-virtual {v4, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-nez v4, :cond_1

    :try_start_2
    monitor-exit p0

    move v1, v2

    :goto_1
    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v4, v1

    move v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_3
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-eqz v1, :cond_4

    monitor-exit p0

    const/4 v1, 0x5

    goto :goto_1

    :cond_4
    monitor-exit p0

    move v1, v3

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Lcom/luajava/LuaException;

    invoke-direct {v2, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :catch_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v1, v2

    goto :goto_1
.end method

.method public static checkMethod(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/luajava/LuaJavaAPI;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clearCaches()V
    .locals 1

    sget-object v0, Lcom/luajava/LuaJavaAPI;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/luajava/LuaJavaAPI;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/luajava/LuaJavaAPI;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/luajava/LuaJavaAPI;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/luajava/LuaJavaAPI;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/luajava/LuaJavaAPI;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/luajava/LuaJavaAPI;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static createArray(JLjava/lang/String;)I
    .locals 2

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Lcom/luajava/LuaJavaAPI;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/luajava/LuaJavaAPI;->b(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static createProxy(JLjava/lang/String;)I
    .locals 2

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {v1, p2}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static d(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/luajava/LuaJavaAPI;->d(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static d(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-class v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushNil()V

    :goto_1
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->next(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0
.end method

.method private static e(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/luajava/LuaJavaAPI;->e(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static e(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/luajava/LuaObject;->createProxy(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static f(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaState;->getTop()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v2, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return v2

    :catch_0
    move-exception v3

    const/4 v3, 0x1

    :try_start_3
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/luajava/LuaState;->getContext()Lcom/androlua/LuaContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v3

    :cond_0
    add-int/lit8 v4, v1, -0x1

    :try_start_5
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v3, v0

    :goto_1
    if-ge v3, v8, :cond_5

    aget-object v9, v6, v3

    :try_start_6
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v1, v10

    if-eq v1, v4, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_3
    array-length v11, v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ge v1, v11, :cond_3

    :try_start_7
    aget-object v11, v10, v1

    add-int/lit8 v12, v1, 0x2

    invoke-static {p0, v11, v12}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v5, v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_2
    move-exception v1

    move v1, v0

    :goto_4
    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v9, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    :try_start_9
    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_4

    :catch_3
    move-exception v1

    const-string v10, "  at "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\n  -> "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :cond_4
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_7

    array-length v1, v6

    :goto_5
    if-ge v0, v1, :cond_6

    aget-object v2, v6, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid constructor method call. Invalid Parameters.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid constructor method call.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private static f(Lcom/luajava/LuaState;Ljava/lang/Class;I)I
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->type(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->isNumber(I)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_1

    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-char v0, v0

    goto :goto_0

    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_1

    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/luajava/LuaException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getArrayValue(JII)I
    .locals 6

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/util/Map;

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value in "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getContext(J)I
    .locals 2

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lcom/luajava/LuaState;->getContext()Lcom/androlua/LuaContext;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getJavaObject2(I)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/luajava/LuaJavaAPI;->i:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v0, Lcom/luajava/LuaJavaAPI;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/luajava/LuaJavaAPI;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    sget-object v0, Lcom/luajava/LuaJavaAPI;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v2, Lcom/luajava/LuaJavaAPI;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v2, v0

    array-length v5, v2

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    if-eqz p2, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const-class v0, Ljava/lang/Class;

    invoke-static {v0, p1, v4}, Lcom/luajava/LuaJavaAPI;->getMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    :cond_7
    :goto_3
    return-object v0

    :cond_8
    move-object v0, v1

    goto :goto_3

    :cond_9
    move-object v1, v0

    goto :goto_0
.end method

.method public static javaBindClass(JLjava/lang/String;)I
    .locals 2

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v0

    invoke-static {p2}, Lcom/luajava/LuaJavaAPI;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static javaClose(JI)V
    .locals 4

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    instance-of v2, v1, Lcom/androlua/LuaGcable;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/androlua/LuaGcable;

    invoke-interface {v1}, Lcom/androlua/LuaGcable;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    instance-of v2, v1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v2, v0

    invoke-static {v2}, Lcom/androlua/LuaBitmap;->removeBitmap(Landroid/graphics/Bitmap;)V

    check-cast v1, Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_3
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    instance-of v2, v1, Ljava/lang/AutoCloseable;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/AutoCloseable;

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static javaCreate(JI)I
    .locals 6

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_1

    :cond_0
    :try_start_1
    invoke-static {v1, v0}, Lcom/luajava/LuaJavaAPI;->b(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1, v0}, Lcom/luajava/LuaJavaAPI;->b(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :try_start_2
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1, v0}, Lcom/luajava/LuaJavaAPI;->c(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :cond_3
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1, v0}, Lcom/luajava/LuaJavaAPI;->d(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1, v0}, Lcom/luajava/LuaJavaAPI;->e(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_6

    invoke-static {v1, v0}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :cond_6
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->objLen(I)I

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1, v0}, Lcom/luajava/LuaJavaAPI;->b(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :cond_7
    const/4 v2, -0x1

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v4, v5}, Lcom/luajava/LuaState;->getI(IJ)I

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v1, v0}, Lcom/luajava/LuaJavaAPI;->b(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :cond_8
    invoke-static {v1, v0}, Lcom/luajava/LuaJavaAPI;->f(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static javaEquals(JII)I
    .locals 4

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p3}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static javaGc(JI)V
    .locals 2

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/luajava/LuaState;->removeJavaObject(I)V

    return-void
.end method

.method public static javaGetObject(JI)Ljava/lang/Object;
    .locals 2

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static javaGetType(JI)I
    .locals 2

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v1

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static javaGetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    monitor-exit p0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    move-object v4, v1

    move v5, v2

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "@<-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_6

    sget-object v1, Lcom/luajava/LuaJavaAPI;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-nez v1, :cond_4

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_3
    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_3

    monitor-exit p0

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move-object v4, v1

    move v5, v3

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_3

    :cond_3
    :try_start_4
    sget-object v3, Lcom/luajava/LuaJavaAPI;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    const/4 v3, 0x0

    :try_start_5
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :try_start_6
    instance-of v3, v1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    :goto_4
    monitor-exit p0

    move v1, v2

    goto/16 :goto_0

    :catch_1
    move-exception v1

    monitor-exit p0

    move v1, v3

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    :catch_2
    move-exception v1

    :try_start_7
    new-instance v2, Lcom/luajava/LuaException;

    invoke-direct {v2, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static javaInstanceof(JII)I
    .locals 4

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p3}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static javaLoadLib(JLjava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/luajava/LuaState;

    aput-object v5, v3, v4

    invoke-virtual {v0, p3, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    monitor-exit v2

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on calling method. Library could not be loaded. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static javaNew(JI)I
    .locals 4

    const/4 v1, 0x2

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/luajava/LuaState;->getTop()I

    move-result v3

    :goto_0
    if-gt v1, v3, :cond_0

    invoke-static {v2, v0, v1}, Lcom/luajava/LuaJavaAPI;->f(Lcom/luajava/LuaState;Ljava/lang/Class;I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    add-int/lit8 v0, v3, -0x1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/luajava/LuaState;->isTable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2}, Lcom/luajava/LuaJavaAPI;->javaOverride(JI)I

    move-result v0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    const-string v0, "javaOverride"

    const/4 v1, 0x1

    const-string v3, "table"

    invoke-static {v2, v0, v1, v3}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    throw v0

    :cond_3
    :try_start_2
    invoke-static {v2, v0}, Lcom/luajava/LuaJavaAPI;->f(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static javaNewInstance(JLjava/lang/String;)I
    .locals 4

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Lcom/luajava/LuaJavaAPI;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/luajava/LuaJavaAPI;->f(Lcom/luajava/LuaState;Ljava/lang/Class;I)I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    invoke-static {v1, v0}, Lcom/luajava/LuaJavaAPI;->f(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static javaObjectLength(JI)I
    .locals 4

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v1

    :try_start_0
    instance-of v2, v0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    int-to-long v2, v0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Lcom/luajava/LuaState;->pushInteger(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_2
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Lcom/luajava/LuaException;

    invoke-direct {v2, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static javaOverride(JI)I
    .locals 4

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/luajava/LuaTable;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;I)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->remove(I)V

    new-instance v3, Lcom/androlua/LuaEnhancer;

    invoke-direct {v3, v0}, Lcom/androlua/LuaEnhancer;-><init>(Ljava/lang/Class;)V

    new-instance v0, Lcom/luajava/LuaJavaAPI$1;

    invoke-direct {v0, v2}, Lcom/luajava/LuaJavaAPI$1;-><init>(Lcom/luajava/LuaTable;)V

    invoke-virtual {v3, v0}, Lcom/androlua/LuaEnhancer;->create(Lcom/android/cglib/proxy/MethodFilter;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/luajava/LuaJavaAPI;->f(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/proxy/EnhancerInterface;

    new-instance v3, Lcom/luajava/LuaMethodInterceptor;

    invoke-direct {v3, v2}, Lcom/luajava/LuaMethodInterceptor;-><init>(Lcom/luajava/LuaObject;)V

    invoke-interface {v0, v3}, Lcom/android/cglib/proxy/EnhancerInterface;->setMethodInterceptor_Enhancer(Lcom/android/cglib/proxy/MethodInterceptor;)V

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static javaSetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_0

    check-cast p1, Ljava/util/Map;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    instance-of v3, p1, Ljava/lang/Class;

    if-eqz v3, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->type(I)I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_2

    invoke-static {p0, p1, p2, v2}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;Z)I

    move-result v1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-static {p0, p1, p2, v2}, Lcom/luajava/LuaJavaAPI;->b(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;Z)I

    move-result v1

    if-eqz v1, :cond_3

    monitor-exit p0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p2}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static javaSetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2

    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    invoke-static {p0, p1, p2}, Lcom/luajava/LuaJavaAPI;->javaSetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->pop(I)V

    return v0
.end method

.method public static javaToString(JI)I
    .locals 4

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v1

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    :goto_1
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public static newArray(JI)I
    .locals 8

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Lcom/luajava/LuaState;->getTop()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    new-array v4, v3, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v2, v5}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v6

    long-to-int v5, v6

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v2

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not create a array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static newArray(JII)I
    .locals 6

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    monitor-enter v1

    :try_start_0
    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not create a array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static objectCall(JI)I
    .locals 8

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v3

    :try_start_0
    instance-of v4, v0, Lcom/luajava/LuaMetaTable;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/luajava/LuaState;->getTop()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    new-array v5, v5, [Ljava/lang/Object;

    :goto_0
    if-gt v2, v4, :cond_0

    add-int/lit8 v6, v2, -0x2

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/luajava/LuaMetaTable;

    invoke-interface {v0, v5}, Lcom/luajava/LuaMetaTable;->__call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    monitor-exit v3

    move v0, v1

    :goto_1
    return v0

    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->isTable(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/luajava/LuaJavaAPI;->b(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/luajava/LuaState;->pushNil()V

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/util/List;

    :goto_2
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->next(I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_2

    :cond_3
    :goto_3
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->next(I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x2

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->isNumber(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x2

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v3, v0, v2}, Lcom/luajava/LuaJavaAPI;->setArrayValue(Lcom/luajava/LuaState;Ljava/lang/Object;I)I

    :goto_4
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_3

    :cond_4
    const/4 v2, -0x2

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/luajava/LuaJavaAPI;->javaSetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/luajava/LuaState;->setTop(I)V

    monitor-exit v3

    move v0, v1

    goto :goto_1

    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static objectIndex(JILjava/lang/String;I)I
    .locals 6

    const/4 v1, 0x6

    const/4 v3, 0x4

    const/4 v2, 0x3

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v5

    if-nez p4, :cond_0

    :try_start_0
    invoke-static {v5, v0, p3}, Lcom/luajava/LuaJavaAPI;->checkMethod(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v5

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    if-eqz p4, :cond_1

    const/4 v4, 0x1

    if-eq p4, v4, :cond_1

    const/4 v4, 0x5

    if-ne p4, v4, :cond_2

    :cond_1
    invoke-static {v5, v0, p3}, Lcom/luajava/LuaJavaAPI;->checkField(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v5

    move v0, v4

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    if-ne p4, v3, :cond_4

    :cond_3
    invoke-static {v5, v0, p3}, Lcom/luajava/LuaJavaAPI;->javaGetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    monitor-exit v5

    move v0, v3

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    if-ne p4, v2, :cond_6

    :cond_5
    invoke-static {v5, v0, p3}, Lcom/luajava/LuaJavaAPI;->checkClass(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6

    monitor-exit v5

    move v0, v2

    goto :goto_0

    :cond_6
    if-eqz p4, :cond_7

    if-ne p4, v1, :cond_8

    :cond_7
    instance-of v2, v0, Lcom/luajava/LuaMetaTable;

    if-eqz v2, :cond_8

    check-cast v0, Lcom/luajava/LuaMetaTable;

    invoke-interface {v0, p3}, Lcom/luajava/LuaMetaTable;->__index(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    monitor-exit v5

    move v0, v1

    goto :goto_0

    :cond_8
    monitor-exit v5

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static objectNewIndex(JILjava/lang/String;I)I
    .locals 6

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v4

    if-eqz p4, :cond_0

    if-ne p4, v3, :cond_1

    :cond_0
    :try_start_0
    invoke-static {v4, v0, p3}, Lcom/luajava/LuaJavaAPI;->setFieldValue(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v4

    move v0, v3

    :goto_0
    return v0

    :cond_1
    if-eqz p4, :cond_2

    if-ne p4, v2, :cond_3

    :cond_2
    invoke-static {v4, v0, p3}, Lcom/luajava/LuaJavaAPI;->javaSetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    monitor-exit v4

    move v0, v2

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    if-ne p4, v1, :cond_5

    :cond_4
    instance-of v2, v0, Lcom/luajava/LuaMetaTable;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/luajava/LuaMetaTable;

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p3, v2}, Lcom/luajava/LuaMetaTable;->__newIndex(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v4

    move v0, v1

    goto :goto_0

    :cond_5
    monitor-exit v4

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static pushJavaObject(ILjava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/luajava/LuaJavaAPI;->i:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setArrayValue(JII)I
    .locals 6

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v3, 0x3

    :try_start_1
    invoke-static {v1, v2, v3}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, p3, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v1, v0, v3, v2}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    :try_start_3
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    :try_start_4
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/util/Map;

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static setArrayValue(Lcom/luajava/LuaState;Ljava/lang/Object;I)I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v1, -0x1

    :try_start_1
    invoke-static {p0, v0, v1}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, p2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, v2, v0}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    :try_start_3
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/List;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    :try_start_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Map;

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static setFieldValue(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit p0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v3

    :goto_1
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    :try_start_2
    monitor-exit p0

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move v4, v2

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_3

    monitor-exit p0

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/luajava/LuaState;->getTop()I

    move-result v4

    invoke-static {p0, v2, v4}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/luajava/LuaException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/luajava/LuaException;

    invoke-direct {v2, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :catch_1
    move-exception v1

    const/4 v1, -0x1

    :try_start_5
    invoke-static {p0, p2, v1, v2}, Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v1, 0x0

    throw v1

    :catch_2
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v1, v2

    goto :goto_0
.end method
