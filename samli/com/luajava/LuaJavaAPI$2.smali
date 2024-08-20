.class final Lcom/luajava/LuaJavaAPI$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/cglib/proxy/MethodFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Class;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/reflect/Method;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
