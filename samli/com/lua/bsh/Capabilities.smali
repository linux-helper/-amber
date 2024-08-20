.class public Lcom/lua/bsh/Capabilities;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/bsh/Capabilities$Unavailable;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Ljava/util/Hashtable;

.field static c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lua/bsh/Capabilities;->b:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static canGenerateInterfaces()Z
    .locals 1

    const-string v0, "java.lang.reflect.Proxy"

    invoke-static {v0}, Lcom/lua/bsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static classExists(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/lua/bsh/Capabilities;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    sget-object v1, Lcom/lua/bsh/Capabilities;->b:Ljava/util/Hashtable;

    const-string v2, "unused"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static haveAccessibility()Z
    .locals 1

    sget-boolean v0, Lcom/lua/bsh/Capabilities;->a:Z

    return v0
.end method

.method public static haveSwing()Z
    .locals 1

    const-string v0, "javax.swing.JButton"

    invoke-static {v0}, Lcom/lua/bsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setAccessibility(Z)V
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/lua/bsh/Capabilities;->a:Z

    return-void

    :cond_0
    const-string v0, "java.lang.reflect.AccessibleObject"

    invoke-static {v0}, Lcom/lua/bsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "bsh.reflect.ReflectManagerImpl"

    invoke-static {v0}, Lcom/lua/bsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/lua/bsh/Capabilities;->c:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lcom/lua/bsh/Capabilities;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/lua/bsh/Capabilities;->c:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/lua/bsh/Capabilities;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Accessibility unavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/Capabilities$Unavailable;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/Capabilities$Unavailable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/lua/bsh/Capabilities$Unavailable;

    const-string v1, "Accessibility unavailable"

    invoke-direct {v0, v1}, Lcom/lua/bsh/Capabilities$Unavailable;-><init>(Ljava/lang/String;)V

    throw v0
.end method
