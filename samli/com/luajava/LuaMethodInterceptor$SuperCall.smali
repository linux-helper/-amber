.class Lcom/luajava/LuaMethodInterceptor$SuperCall;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/luajava/LuaMetaTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luajava/LuaMethodInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperCall"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/android/cglib/proxy/MethodProxy;

.field final c:Lcom/luajava/LuaMethodInterceptor;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaMethodInterceptor;Ljava/lang/Object;Lcom/android/cglib/proxy/MethodProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/luajava/LuaMethodInterceptor$SuperCall;->c:Lcom/luajava/LuaMethodInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/luajava/LuaMethodInterceptor$SuperCall;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/luajava/LuaMethodInterceptor$SuperCall;->b:Lcom/android/cglib/proxy/MethodProxy;

    return-void
.end method


# virtual methods
.method public varargs __call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/luajava/LuaMethodInterceptor$SuperCall;->b:Lcom/android/cglib/proxy/MethodProxy;

    iget-object v1, p0, Lcom/luajava/LuaMethodInterceptor$SuperCall;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/cglib/proxy/MethodProxy;->invokeSuper(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public __index(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public __newIndex(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
