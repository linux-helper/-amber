.class Lcom/nirenr/screencapture/ScreenShot$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/screencapture/ScreenShot;->startScreenShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/nirenr/screencapture/ScreenShot;


# direct methods
.method constructor <init>(Lcom/nirenr/screencapture/ScreenShot;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/screencapture/ScreenShot$3;->a:Lcom/nirenr/screencapture/ScreenShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot$3;->a:Lcom/nirenr/screencapture/ScreenShot;

    invoke-static {v0}, Lcom/nirenr/screencapture/ScreenShot;->a(Lcom/nirenr/screencapture/ScreenShot;)V

    return-void
.end method
