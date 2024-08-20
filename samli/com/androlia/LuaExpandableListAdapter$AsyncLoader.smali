.class Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncLoader"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/androlua/LuaContext;

.field final c:Lcom/androlua/LuaExpandableListAdapter;


# direct methods
.method private constructor <init>(Lcom/androlua/LuaExpandableListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->c:Lcom/androlua/LuaExpandableListAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androlua/LuaExpandableListAdapter;Lcom/androlua/LuaExpandableListAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;-><init>(Lcom/androlua/LuaExpandableListAdapter;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->b:Lcom/androlua/LuaContext;

    iput-object p2, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->a:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->c:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {v1}, Lcom/androlua/LuaExpandableListAdapter;->d(Lcom/androlua/LuaExpandableListAdapter;)Landroid/content/res/Resources;

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

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->c:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {v1}, Lcom/androlua/LuaExpandableListAdapter;->d(Lcom/androlua/LuaExpandableListAdapter;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/androlua/LuaBitmap;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->c:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {v0}, Lcom/androlua/LuaExpandableListAdapter;->e(Lcom/androlua/LuaExpandableListAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->c:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {v0}, Lcom/androlua/LuaExpandableListAdapter;->e(Lcom/androlua/LuaExpandableListAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->c:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {v0}, Lcom/androlua/LuaExpandableListAdapter;->f(Lcom/androlua/LuaExpandableListAdapter;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->b:Lcom/androlua/LuaContext;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/androlua/LuaBitmap;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->c:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {v0}, Lcom/androlua/LuaExpandableListAdapter;->g(Lcom/androlua/LuaExpandableListAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->b:Lcom/androlua/LuaContext;

    const-string v2, "AsyncLoader Error"

    invoke-interface {v1, v2, v0}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
