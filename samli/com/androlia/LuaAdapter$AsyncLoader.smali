.class Lcom/androlua/LuaAdapter$AsyncLoader;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncLoader"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/androlua/LuaContext;

.field final c:Lcom/androlua/LuaAdapter;


# direct methods
.method private constructor <init>(Lcom/androlua/LuaAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaAdapter$AsyncLoader;->c:Lcom/androlua/LuaAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androlua/LuaAdapter;Lcom/androlua/LuaAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaAdapter$AsyncLoader;-><init>(Lcom/androlua/LuaAdapter;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iput-object p1, p0, Lcom/androlua/LuaAdapter$AsyncLoader;->b:Lcom/androlua/LuaContext;

    iput-object p2, p0, Lcom/androlua/LuaAdapter$AsyncLoader;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/androlua/LuaAdapter$AsyncLoader;->c:Lcom/androlua/LuaAdapter;

    invoke-static {v1}, Lcom/androlua/LuaAdapter;->f(Lcom/androlua/LuaAdapter;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/androlua/LuaBitmap;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/androlua/LuaBitmap;->checkCache(Lcom/androlua/LuaContext;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/androlua/LuaAdapter$AsyncLoader;->c:Lcom/androlua/LuaAdapter;

    invoke-static {v1}, Lcom/androlua/LuaAdapter;->f(Lcom/androlua/LuaAdapter;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/androlua/LuaBitmap;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaAdapter$AsyncLoader;->c:Lcom/androlua/LuaAdapter;

    invoke-static {v0}, Lcom/androlua/LuaAdapter;->g(Lcom/androlua/LuaAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaAdapter$AsyncLoader;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/androlua/LuaAdapter$AsyncLoader;->c:Lcom/androlua/LuaAdapter;

    invoke-static {v0}, Lcom/androlua/LuaAdapter;->g(Lcom/androlua/LuaAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaAdapter$AsyncLoader;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Lcom/androlua/LoadingDrawable;

    iget-object v1, p0, Lcom/androlua/LuaAdapter$AsyncLoader;->b:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androlua/LoadingDrawable;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaAdapter$AsyncLoader;->b:Lcom/androlua/LuaContext;

    iget-object v1, p0, Lcom/androlua/LuaAdapter$AsyncLoader;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/androlua/LuaBitmap;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/androlua/LuaAdapter$AsyncLoader;->c:Lcom/androlua/LuaAdapter;

    invoke-static {v0}, Lcom/androlua/LuaAdapter;->h(Lcom/androlua/LuaAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/androlua/LuaAdapter$AsyncLoader;->b:Lcom/androlua/LuaContext;

    const-string v2, "AsyncLoader Error"

    invoke-interface {v1, v2, v0}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
