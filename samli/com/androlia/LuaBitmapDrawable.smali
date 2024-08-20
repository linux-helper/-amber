.class public Lcom/androlua/LuaBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/androlua/LuaGcable;


# static fields
.field public static final CENTER:I = 0x5

.field public static final CENTER_CROP:I = 0x6

.field public static final CENTER_INSIDE:I = 0x7

.field public static final FIT_CENTER:I = 0x3

.field public static final FIT_END:I = 0x4

.field public static final FIT_START:I = 0x2

.field public static final FIT_XY:I = 0x1

.field public static final MATRIX:I = 0x0

.field private static a:J = 0x240c8400L


# instance fields
.field private b:Lcom/androlua/LuaContext;

.field private c:I

.field private d:J

.field private e:I

.field private f:Landroid/graphics/Movie;

.field private g:Lcom/androlua/LoadingDrawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Lcom/androlua/NineBitmapDrawable;

.field private j:Landroid/graphics/ColorFilter;

.field private k:I

.field private l:I

.field private m:Lcom/androlua/GifDecoder;

.field private n:Lcom/androlua/GifDecoder;

.field private o:Lcom/androlua/GifDecoder$GifFrame;

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/androlua/LuaContext;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/LuaBitmapDrawable;->l:I

    iput-object p1, p0, Lcom/androlua/LuaBitmapDrawable;->b:Lcom/androlua/LuaContext;

    new-instance v0, Lcom/androlua/LoadingDrawable;

    invoke-interface {p1}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androlua/LoadingDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Lcom/androlua/LoadingDrawable;

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

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaBitmapDrawable;->a(Lcom/androlua/LuaContext;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, p2}, Lcom/androlua/LuaContext;->getLuaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-direct {p0, p2}, Lcom/androlua/LuaBitmapDrawable;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaBitmapDrawable;-><init>(Lcom/androlua/LuaContext;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/androlua/LuaBitmapDrawable;->h:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaBitmapDrawable;)Lcom/androlua/GifDecoder;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->n:Lcom/androlua/GifDecoder;

    return-object v0
.end method

.method static synthetic a(Lcom/androlua/LuaBitmapDrawable;Lcom/androlua/GifDecoder;)Lcom/androlua/GifDecoder;
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaBitmapDrawable;->n:Lcom/androlua/GifDecoder;

    return-object p1
.end method

.method static synthetic a(Lcom/androlua/LuaBitmapDrawable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaBitmapDrawable;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/androlua/LuaContext;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/androlua/LuaBitmapDrawable$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/androlua/LuaBitmapDrawable$1;-><init>(Lcom/androlua/LuaBitmapDrawable;Lcom/androlua/LuaContext;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/androlua/GifDecoder;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/androlua/LuaBitmapDrawable$2;

    invoke-direct {v2, p0, p1}, Lcom/androlua/LuaBitmapDrawable$2;-><init>(Lcom/androlua/LuaBitmapDrawable;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/androlua/GifDecoder;-><init>(Ljava/io/InputStream;Lcom/androlua/GifDecoder$GifAction;)V

    iput-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->m:Lcom/androlua/GifDecoder;

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->m:Lcom/androlua/GifDecoder;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaBitmapDrawable;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/androlua/LuaBitmapDrawable;)Lcom/androlua/GifDecoder;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->m:Lcom/androlua/GifDecoder;

    return-object v0
.end method

.method static synthetic b(Lcom/androlua/LuaBitmapDrawable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaBitmapDrawable;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/androlua/LuaBitmapDrawable$3;

    invoke-direct {v1, p0}, Lcom/androlua/LuaBitmapDrawable$3;-><init>(Lcom/androlua/LuaBitmapDrawable;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->f:Landroid/graphics/Movie;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    iput v0, p0, Lcom/androlua/LuaBitmapDrawable;->c:I

    iget v0, p0, Lcom/androlua/LuaBitmapDrawable;->c:I

    if-nez v0, :cond_1

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/androlua/LuaBitmapDrawable;->c:I

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->f:Landroid/graphics/Movie;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->i:Lcom/androlua/NineBitmapDrawable;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/androlua/LuaBitmapDrawable$4;

    invoke-direct {v1, p0}, Lcom/androlua/LuaBitmapDrawable$4;-><init>(Lcom/androlua/LuaBitmapDrawable;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v0, Lcom/androlua/NineBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/androlua/NineBitmapDrawable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->i:Lcom/androlua/NineBitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/androlua/LuaBitmapDrawable;->b:Lcom/androlua/LuaContext;

    invoke-static {v1, p1}, Lcom/androlua/LuaBitmap;->getLocalBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/androlua/LuaBitmapDrawable;)Lcom/androlua/LoadingDrawable;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Lcom/androlua/LoadingDrawable;

    return-object v0
.end method

.method public static getCacheTime()J
    .locals 2

    sget-wide v0, Lcom/androlua/LuaBitmapDrawable;->a:J

    return-wide v0
.end method

.method public static getHttpBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache"

    invoke-interface {p0, v1}, Lcom/androlua/LuaContext;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/androlua/LuaBitmapDrawable;->a:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const v2, 0x1d4c0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/androlua/LuaUtil;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "LoadHttpBitmap Error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setCacheTime(J)V
    .locals 0

    sput-wide p0, Lcom/androlua/LuaBitmapDrawable;->a:J

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    const-wide/16 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/androlua/LuaBitmapDrawable;->k:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->n:Lcom/androlua/GifDecoder;

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/androlua/LuaBitmapDrawable;->d:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/androlua/LuaBitmapDrawable;->o:Lcom/androlua/GifDecoder$GifFrame;

    if-nez v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/androlua/LuaBitmapDrawable;->n:Lcom/androlua/GifDecoder;

    invoke-virtual {v2}, Lcom/androlua/GifDecoder;->next()Lcom/androlua/GifDecoder$GifFrame;

    move-result-object v2

    iput-object v2, p0, Lcom/androlua/LuaBitmapDrawable;->o:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v2, p0, Lcom/androlua/LuaBitmapDrawable;->o:Lcom/androlua/GifDecoder$GifFrame;

    iget v2, v2, Lcom/androlua/GifDecoder$GifFrame;->delay:I

    iput v2, p0, Lcom/androlua/LuaBitmapDrawable;->p:I

    iput-wide v0, p0, Lcom/androlua/LuaBitmapDrawable;->d:J

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->o:Lcom/androlua/GifDecoder$GifFrame;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->o:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, p0, Lcom/androlua/LuaBitmapDrawable;->l:I

    if-ne v2, v6, :cond_6

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v3, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    mul-float/2addr v1, v3

    :goto_0
    float-to-int v1, v1

    :cond_2
    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v2, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/androlua/LuaBitmapDrawable;->l:I

    if-eq v6, v7, :cond_8

    if-eq v6, v8, :cond_7

    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-direct {v4, v3, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    :goto_4
    iget-wide v2, p0, Lcom/androlua/LuaBitmapDrawable;->d:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/androlua/LuaBitmapDrawable;->p:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/androlua/LuaBitmapDrawable;->n:Lcom/androlua/GifDecoder;

    invoke-virtual {v2}, Lcom/androlua/GifDecoder;->next()Lcom/androlua/GifDecoder$GifFrame;

    move-result-object v2

    iput-object v2, p0, Lcom/androlua/LuaBitmapDrawable;->o:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v2, p0, Lcom/androlua/LuaBitmapDrawable;->o:Lcom/androlua/GifDecoder$GifFrame;

    iget v2, v2, Lcom/androlua/GifDecoder$GifFrame;->delay:I

    iput v2, p0, Lcom/androlua/LuaBitmapDrawable;->p:I

    iget-wide v2, p0, Lcom/androlua/LuaBitmapDrawable;->d:J

    iget v4, p0, Lcom/androlua/LuaBitmapDrawable;->p:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/androlua/LuaBitmapDrawable;->d:J

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_2

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    iget v3, v4, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    mul-float/2addr v1, v2

    goto :goto_0

    :cond_7
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v4, v2

    sub-int/2addr v2, v1

    goto :goto_1

    :cond_8
    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int v3, v6, v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v4, v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->f:Landroid/graphics/Movie;

    if-eqz v0, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/androlua/LuaBitmapDrawable;->d:J

    cmp-long v3, v4, v10

    if-nez v3, :cond_a

    iput-wide v0, p0, Lcom/androlua/LuaBitmapDrawable;->d:J

    :cond_a
    iget-wide v4, p0, Lcom/androlua/LuaBitmapDrawable;->d:J

    sub-long/2addr v0, v4

    iget v3, p0, Lcom/androlua/LuaBitmapDrawable;->c:I

    int-to-long v4, v3

    rem-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/androlua/LuaBitmapDrawable;->e:I

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->f:Landroid/graphics/Movie;

    iget v1, p0, Lcom/androlua/LuaBitmapDrawable;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->f:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iget-object v1, p0, Lcom/androlua/LuaBitmapDrawable;->f:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    iget v3, p0, Lcom/androlua/LuaBitmapDrawable;->l:I

    if-ne v3, v6, :cond_c

    iget v3, v5, Landroid/graphics/Rect;->right:I

    iget v4, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    int-to-float v6, v1

    div-float/2addr v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    mul-float/2addr v0, v3

    float-to-int v1, v0

    mul-float v0, v6, v4

    move v12, v0

    move v0, v1

    move v1, v12

    :goto_5
    float-to-int v1, v1

    :cond_b
    iget v4, v5, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/androlua/LuaBitmapDrawable;->l:I

    if-eq v6, v7, :cond_e

    if-eq v6, v8, :cond_d

    move v0, v3

    move v1, v4

    :goto_6
    iget-object v2, p0, Lcom/androlua/LuaBitmapDrawable;->f:Landroid/graphics/Movie;

    int-to-float v1, v1

    int-to-float v0, v0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p1, v1, v0, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2

    :cond_c
    if-eqz v3, :cond_b

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    iget v3, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v1

    div-float v1, v2, v3

    iget v2, v5, Landroid/graphics/Rect;->right:I

    iget v4, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    mul-float/2addr v0, v2

    float-to-int v1, v0

    mul-float v0, v3, v2

    move v12, v0

    move v0, v1

    move v1, v12

    goto :goto_5

    :cond_d
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    move v1, v4

    :goto_7
    float-to-int v0, v0

    goto :goto_6

    :cond_e
    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int v4, v6, v4

    sub-int v0, v4, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    div-float/2addr v0, v9

    float-to-int v4, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    div-float/2addr v0, v9

    move v1, v4

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/androlua/LuaBitmapDrawable;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, p0, Lcom/androlua/LuaBitmapDrawable;->l:I

    if-ne v2, v6, :cond_11

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v3, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    mul-float/2addr v1, v3

    :goto_8
    float-to-int v1, v1

    :cond_10
    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v2, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/androlua/LuaBitmapDrawable;->l:I

    if-eq v5, v7, :cond_13

    if-eq v5, v8, :cond_12

    :goto_9
    iget-object v4, p0, Lcom/androlua/LuaBitmapDrawable;->h:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-direct {v5, v3, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    :cond_11
    if-eqz v2, :cond_10

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    iget v3, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    mul-float/2addr v1, v2

    goto :goto_8

    :cond_12
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v4, v2

    sub-int/2addr v2, v1

    goto :goto_9

    :cond_13
    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int v3, v5, v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v4, v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_14
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->i:Lcom/androlua/NineBitmapDrawable;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->i:Lcom/androlua/NineBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/androlua/NineBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    :cond_15
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Lcom/androlua/LoadingDrawable;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Lcom/androlua/LoadingDrawable;

    invoke-virtual {v0, p1}, Lcom/androlua/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->n:Lcom/androlua/GifDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/androlua/GifDecoder;->free()V

    :cond_0
    return-void
.end method

.method public gc()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->n:Lcom/androlua/GifDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/androlua/GifDecoder;->free()V

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->i:Lcom/androlua/NineBitmapDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/androlua/NineBitmapDrawable;->gc()V

    :cond_2
    iput-object v2, p0, Lcom/androlua/LuaBitmapDrawable;->n:Lcom/androlua/GifDecoder;

    iput-object v2, p0, Lcom/androlua/LuaBitmapDrawable;->h:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/androlua/LuaBitmapDrawable;->i:Lcom/androlua/NineBitmapDrawable;

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->g:Lcom/androlua/LoadingDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/androlua/LoadingDrawable;->setState(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaBitmapDrawable;->q:Z

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->f:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->m:Lcom/androlua/GifDecoder;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/androlua/GifDecoder;->height:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->i:Lcom/androlua/NineBitmapDrawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->f:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->m:Lcom/androlua/GifDecoder;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/androlua/GifDecoder;->width:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable;->i:Lcom/androlua/NineBitmapDrawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/LuaBitmapDrawable;->q:Z

    return v0
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaBitmapDrawable;->j:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    iget v0, p0, Lcom/androlua/LuaBitmapDrawable;->k:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/androlua/LuaBitmapDrawable;->k:I

    goto :goto_0
.end method

.method public setScaleType(I)V
    .locals 1

    iget v0, p0, Lcom/androlua/LuaBitmapDrawable;->l:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/androlua/LuaBitmapDrawable;->l:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
