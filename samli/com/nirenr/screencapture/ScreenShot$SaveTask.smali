.class public Lcom/nirenr/screencapture/ScreenShot$SaveTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/screencapture/ScreenShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/media/Image;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/nirenr/screencapture/ScreenShot;


# direct methods
.method public constructor <init>(Lcom/nirenr/screencapture/ScreenShot;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a:Lcom/nirenr/screencapture/ScreenShot;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/media/Image;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    aget-object v0, p1, v7

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    aget-object v0, p1, v7

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

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

    mul-int v6, v5, v1

    sub-int/2addr v3, v6

    div-int/2addr v3, v5

    add-int/2addr v3, v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-static {v3, v7, v7, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a:Lcom/nirenr/screencapture/ScreenShot;

    invoke-static {v0, v8}, Lcom/nirenr/screencapture/ScreenShot;->a(Lcom/nirenr/screencapture/ScreenShot;Landroid/media/Image;)Landroid/media/Image;

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a:Lcom/nirenr/screencapture/ScreenShot;

    invoke-static {v0}, Lcom/nirenr/screencapture/ScreenShot;->b(Lcom/nirenr/screencapture/ScreenShot;)Lcom/nirenr/screencapture/ScreenCaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a:Lcom/nirenr/screencapture/ScreenShot;

    invoke-static {v0}, Lcom/nirenr/screencapture/ScreenShot;->b(Lcom/nirenr/screencapture/ScreenShot;)Lcom/nirenr/screencapture/ScreenCaptureListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a:Lcom/nirenr/screencapture/ScreenShot;

    invoke-static {v0, v8}, Lcom/nirenr/screencapture/ScreenShot;->a(Lcom/nirenr/screencapture/ScreenShot;Lcom/nirenr/screencapture/ScreenCaptureListener;)Lcom/nirenr/screencapture/ScreenCaptureListener;

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a:Lcom/nirenr/screencapture/ScreenShot;

    invoke-virtual {v0, p1}, Lcom/nirenr/screencapture/ScreenShot;->setScreenCaptureBitmap(Landroid/graphics/Bitmap;)V

    const-string v0, "ryze"

    const-string v1, "\u83b7\u53d6\u56fe\u7247\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/media/Image;

    invoke-virtual {p0, p1}, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a([Landroid/media/Image;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
