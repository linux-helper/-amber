.class final Lcom/luajava/LuaJavaAPI$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/cglib/proxy/MethodFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luajava/LuaJavaAPI;->javaOverride(JI)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final a:Lcom/luajava/LuaTable;


# direct methods
.method constructor <init>(Lcom/luajava/LuaTable;)V
    .locals 0

    iput-object p1, p0, Lcom/luajava/LuaJavaAPI$1;->a:Lcom/luajava/LuaTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/reflect/Method;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/luajava/LuaJavaAPI$1;->a:Lcom/luajava/LuaTable;

    invoke-virtual {v0, p2}, Lcom/luajava/LuaTable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
