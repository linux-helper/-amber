.class public Lcom/androlua/LuaAnimation;
.super Landroid/view/animation/Animation;


# instance fields
.field private final a:Lcom/androlua/LuaContext;

.field private b:Lcom/luajava/LuaFunction;

.field private c:Lcom/luajava/LuaFunction;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaFunction;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaAnimation;->b:Lcom/luajava/LuaFunction;

    iget-object v0, p0, Lcom/androlua/LuaAnimation;->b:Lcom/luajava/LuaFunction;

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getContext()Lcom/androlua/LuaContext;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaAnimation;->a:Lcom/androlua/LuaContext;

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaAnimation;->b:Lcom/luajava/LuaFunction;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaAnimation;->c:Lcom/luajava/LuaFunction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaAnimation;->b:Lcom/luajava/LuaFunction;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/luajava/LuaFunction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/luajava/LuaFunction;

    iput-object v0, p0, Lcom/androlua/LuaAnimation;->c:Lcom/luajava/LuaFunction;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaAnimation;->c:Lcom/luajava/LuaFunction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaAnimation;->c:Lcom/luajava/LuaFunction;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/androlua/LuaAnimation;->a:Lcom/androlua/LuaContext;

    const-string v2, "applyTransformation"

    invoke-interface {v1, v2, v0}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected resolveSize(IFII)F
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    move-result v0

    return v0
.end method
