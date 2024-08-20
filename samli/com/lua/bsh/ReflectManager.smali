.class public abstract Lcom/lua/bsh/ReflectManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lua/bsh/ReflectManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RMSetAccessible(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/lua/bsh/ReflectManager;->getReflectManager()Lcom/lua/bsh/ReflectManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lua/bsh/ReflectManager;->setAccessible(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getReflectManager()Lcom/lua/bsh/ReflectManager;
    .locals 3

    sget-object v0, Lcom/lua/bsh/ReflectManager;->a:Lcom/lua/bsh/ReflectManager;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "bsh.reflect.ReflectManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/ReflectManager;

    sput-object v0, Lcom/lua/bsh/ReflectManager;->a:Lcom/lua/bsh/ReflectManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v0, Lcom/lua/bsh/ReflectManager;->a:Lcom/lua/bsh/ReflectManager;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Reflect Manager unavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/Capabilities$Unavailable;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/Capabilities$Unavailable;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract setAccessible(Ljava/lang/Object;)Z
.end method
