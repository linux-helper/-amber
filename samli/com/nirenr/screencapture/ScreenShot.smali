.class public Lcom/nirenr/screencapture/ScreenShot;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/screencapture/ScreenShot$SaveTask;
    }
.end annotation


# static fields
.field private static a:Lcom/androlua/LuaAccessibilityService; = null

.field public static appName:Ljava/lang/String; = ""

.field private static b:Lcom/nirenr/screencapture/ScreenCaptureListener;

.field private static c:Landroid/content/Intent;

.field private static d:Lcom/nirenr/screencapture/ScreenShot;

.field public static mScreenCaptureBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Landroid/hardware/display/VirtualDisplay$Callback;

.field private g:Lcom/nirenr/screencapture/ScreenCaptureListener;

.field private h:Landroid/media/Image;

.field private i:Landroid/media/projection/MediaProjection;

.field private j:Landroid/hardware/display/VirtualDisplay;

.field private k:Landroid/media/ImageReader;

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/VirtualDisplay$Callback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nirenr/screencapture/ScreenShot;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/nirenr/screencapture/ScreenShot;->f:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->g()V

    sget-object v0, Lcom/nirenr/screencapture/ScreenShot;->c:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/screencapture/ScreenShot;->e:Landroid/content/Context;

    const-class v2, Lcom/nirenr/screencapture/ScreenCaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/screencapture/ScreenShot;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nirenr/screencapture/ScreenShot;->startVirtual()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nirenr/screencapture/ScreenShot;Landroid/media/Image;)Landroid/media/Image;
    .locals 0

    iput-object p1, p0, Lcom/nirenr/screencapture/ScreenShot;->h:Landroid/media/Image;

    return-object p1
.end method

.method static synthetic a()Lcom/androlua/LuaAccessibilityService;
    .locals 1

    sget-object v0, Lcom/nirenr/screencapture/ScreenShot;->a:Lcom/androlua/LuaAccessibilityService;

    return-object v0
.end method

.method static synthetic a(Lcom/nirenr/screencapture/ScreenShot;Lcom/nirenr/screencapture/ScreenCaptureListener;)Lcom/nirenr/screencapture/ScreenCaptureListener;
    .locals 0

    iput-object p1, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Lcom/nirenr/screencapture/ScreenCaptureListener;

    return-object p1
.end method

.method static synthetic a(Lcom/nirenr/screencapture/ScreenShot;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->h()V

    return-void
.end method

.method static synthetic b()Lcom/nirenr/screencapture/ScreenCaptureListener;
    .locals 1

    sget-object v0, Lcom/nirenr/screencapture/ScreenShot;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    return-object v0
.end method

.method static synthetic b(Lcom/nirenr/screencapture/ScreenShot;)Lcom/nirenr/screencapture/ScreenCaptureListener;
    .locals 1

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Lcom/nirenr/screencapture/ScreenCaptureListener;

    return-object v0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->k:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->k:Landroid/media/ImageReader;

    return-void
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/nirenr/screencapture/ScreenShot;->l:I

    iget v1, p0, Lcom/nirenr/screencapture/ScreenShot;->m:I

    invoke-static {v0, v1, v2, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->k:Landroid/media/ImageReader;

    return-void
.end method

.method private e()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->k:Landroid/media/ImageReader;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->h:Landroid/media/Image;

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->h:Landroid/media/Image;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/nirenr/screencapture/ScreenShot;->h:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/nirenr/screencapture/ScreenShot;->h:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    aget-object v4, v3, v7

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v5, v3, v7

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    mul-int v6, v5, v0

    sub-int/2addr v3, v6

    div-int/2addr v3, v5

    add-int/2addr v3, v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-static {v3, v7, v7, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/screencapture/ScreenShot;->h:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    iput-object v1, p0, Lcom/nirenr/screencapture/ScreenShot;->h:Landroid/media/Image;

    goto :goto_0
.end method

.method private f()Landroid/media/projection/MediaProjectionManager;
    .locals 2

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->e:Landroid/content/Context;

    const-string v1, "media_projection"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    return-object v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->e:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/nirenr/screencapture/ScreenShot;->n:I

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/nirenr/screencapture/ScreenShot;->l:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/nirenr/screencapture/ScreenShot;->m:I

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->d()V

    return-void
.end method

.method public static getResultData(Lcom/androlua/LuaAccessibilityService;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/nirenr/screencapture/ScreenShot;->c:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nirenr/screencapture/ScreenCaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getScreenCaptureBitmap(Lcom/androlua/LuaAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-object p0, Lcom/nirenr/screencapture/ScreenShot;->a:Lcom/androlua/LuaAccessibilityService;

    sput-object p1, Lcom/nirenr/screencapture/ScreenShot;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    :try_start_0
    sget-object v0, Lcom/nirenr/screencapture/ScreenShot;->c:Landroid/content/Intent;

    if-nez v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nirenr/screencapture/ScreenCaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v1, v10

    move-object v0, v10

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/media/ImageReader;->close()V

    :cond_3
    if-eqz v0, :cond_0

    :goto_2
    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_3
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v2, v3, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v9

    :try_start_2
    const-string v0, "media_projection"

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    const/4 v1, -0x1

    sget-object v5, Lcom/nirenr/screencapture/ScreenShot;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1, v5}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    :try_start_3
    const-string v1, "screen-mirror"

    const/16 v5, 0x10

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v10

    :try_start_4
    invoke-virtual {v9}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    move v2, v11

    :goto_4
    const/16 v3, 0x28

    if-ge v2, v3, :cond_5

    const-wide/16 v4, 0x5

    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    :try_start_6
    invoke-virtual {v9}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_9

    :cond_5
    if-nez v1, :cond_a

    const-string v1, "\u8bf7\u91cd\u8bd5"

    invoke-interface {p1, v1}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    :goto_6
    const/4 v1, 0x0

    sput-object v1, Lcom/nirenr/screencapture/ScreenShot;->a:Lcom/androlua/LuaAccessibilityService;

    const/4 v1, 0x0

    sput-object v1, Lcom/nirenr/screencapture/ScreenShot;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v10

    move-object v10, v9

    goto :goto_1

    :cond_6
    :try_start_7
    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getDensity()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v4

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v2, v9

    :goto_7
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/nirenr/screencapture/ScreenShot;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    const-string v3, "\u8bf7\u91cd\u8bd5"

    invoke-interface {v1, v3}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/nirenr/screencapture/ScreenShot;->a:Lcom/androlua/LuaAccessibilityService;

    const/4 v1, 0x0

    sput-object v1, Lcom/nirenr/screencapture/ScreenShot;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    :cond_8
    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    :try_start_a
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    const/4 v7, 0x0

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    mul-int v7, v6, v2

    sub-int/2addr v4, v7

    div-int/2addr v4, v6

    add-int/2addr v4, v2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    invoke-interface {p1, v2}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    :goto_8
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_b
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Landroid/media/ImageReader;->close()V

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    :cond_d
    throw v1

    :catch_2
    move-exception v1

    move-object v2, v9

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v10

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v2, v9

    move-object v0, v10

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v9, v10

    move-object v1, v0

    move-object v0, v10

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v2, v10

    move-object v0, v10

    goto/16 :goto_7

    :catchall_3
    move-exception v1

    move-object v9, v2

    goto :goto_8

    :catchall_4
    move-exception v1

    goto :goto_8
.end method

.method private h()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->h:Landroid/media/Image;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->k:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->h:Landroid/media/Image;

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->h:Landroid/media/Image;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Lcom/nirenr/screencapture/ScreenCaptureListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Lcom/nirenr/screencapture/ScreenCaptureListener;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/nirenr/screencapture/ScreenShot$SaveTask;

    invoke-direct {v0, p0}, Lcom/nirenr/screencapture/ScreenShot$SaveTask;-><init>(Lcom/nirenr/screencapture/ScreenShot;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/media/Image;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nirenr/screencapture/ScreenShot;->h:Landroid/media/Image;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->j:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->j:Landroid/hardware/display/VirtualDisplay;

    goto :goto_0
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 9

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nirenr/screencapture/ScreenShot;->setUpMediaProjection()V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/nirenr/screencapture/ScreenShot;->j:Landroid/hardware/display/VirtualDisplay;

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "screen-mirror"

    iget v2, p0, Lcom/nirenr/screencapture/ScreenShot;->l:I

    iget v3, p0, Lcom/nirenr/screencapture/ScreenShot;->m:I

    iget v4, p0, Lcom/nirenr/screencapture/ScreenShot;->n:I

    const/16 v5, 0x10

    iget-object v6, p0, Lcom/nirenr/screencapture/ScreenShot;->k:Landroid/media/ImageReader;

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    iget-object v7, p0, Lcom/nirenr/screencapture/ScreenShot;->f:Landroid/hardware/display/VirtualDisplay$Callback;

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->j:Landroid/hardware/display/VirtualDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setResultData(Landroid/content/Intent;)V
    .locals 4

    if-nez p0, :cond_2

    sget-object v0, Lcom/nirenr/screencapture/ScreenShot;->a:Lcom/androlua/LuaAccessibilityService;

    if-eqz v0, :cond_0

    const-string v1, "\u672a\u83b7\u5f97\u6743\u9650"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    sget-object v0, Lcom/nirenr/screencapture/ScreenShot;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    if-eqz v0, :cond_1

    const-string v1, "\u672a\u83b7\u5f97\u6743\u9650"

    invoke-interface {v0, v1}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sput-object p0, Lcom/nirenr/screencapture/ScreenShot;->c:Landroid/content/Intent;

    sget-object v0, Lcom/nirenr/screencapture/ScreenShot;->a:Lcom/androlua/LuaAccessibilityService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/androlua/LuaAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/screencapture/ScreenShot$1;

    invoke-direct {v1}, Lcom/nirenr/screencapture/ScreenShot$1;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public getScreenShot()Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public reSize()V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->i()V

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->c()V

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->g()V

    invoke-virtual {p0}, Lcom/nirenr/screencapture/ScreenShot;->startVirtual()V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->i()V

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->j()V

    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->c()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nirenr/screencapture/ScreenShot;->d:Lcom/nirenr/screencapture/ScreenShot;

    return-void
.end method

.method public setScreenCaptureBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    sput-object p1, Lcom/nirenr/screencapture/ScreenShot;->mScreenCaptureBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setUpMediaProjection()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nirenr/screencapture/ScreenShot;->c:Landroid/content/Intent;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/screencapture/ScreenShot;->e:Landroid/content/Context;

    const-class v2, Lcom/nirenr/screencapture/ScreenCaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/screencapture/ScreenShot;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->f()Landroid/media/projection/MediaProjectionManager;

    move-result-object v0

    const/4 v1, -0x1

    sget-object v2, Lcom/nirenr/screencapture/ScreenShot;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    goto :goto_0
.end method

.method public startScreenShot()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/nirenr/screencapture/ScreenShot$2;

    invoke-direct {v1, p0}, Lcom/nirenr/screencapture/ScreenShot$2;-><init>(Lcom/nirenr/screencapture/ScreenShot;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lcom/nirenr/screencapture/ScreenShot$3;

    invoke-direct {v1, p0}, Lcom/nirenr/screencapture/ScreenShot$3;-><init>(Lcom/nirenr/screencapture/ScreenShot;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startScreenShot(Lcom/nirenr/screencapture/ScreenCaptureListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Lcom/nirenr/screencapture/ScreenCaptureListener;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/nirenr/screencapture/ScreenShot;->g:Lcom/nirenr/screencapture/ScreenCaptureListener;

    invoke-virtual {p0}, Lcom/nirenr/screencapture/ScreenShot;->startScreenShot()V

    goto :goto_0
.end method

.method public startVirtual()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot;->i:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/nirenr/screencapture/ScreenShot;->k()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nirenr/screencapture/ScreenShot;->setUpMediaProjection()V

    goto :goto_0
.end method
