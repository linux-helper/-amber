.class Lcom/androlua/Download$DownloadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/Download;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadBroadcastReceiver"
.end annotation


# instance fields
.field final a:Lcom/androlua/Download;


# direct methods
.method private constructor <init>(Lcom/androlua/Download;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/Download$DownloadBroadcastReceiver;->a:Lcom/androlua/Download;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androlua/Download;Lcom/androlua/Download$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/Download$DownloadBroadcastReceiver;-><init>(Lcom/androlua/Download;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "extra_download_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    iget-object v2, p0, Lcom/androlua/Download$DownloadBroadcastReceiver;->a:Lcom/androlua/Download;

    invoke-static {v2}, Lcom/androlua/Download;->b(Lcom/androlua/Download;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/androlua/Download$DownloadBroadcastReceiver;->a:Lcom/androlua/Download;

    invoke-static {v2}, Lcom/androlua/Download;->c(Lcom/androlua/Download;)Lcom/androlua/Download$OnDownloadCompleteListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/androlua/Download$DownloadBroadcastReceiver;->a:Lcom/androlua/Download;

    invoke-static {v2}, Lcom/androlua/Download;->b(Lcom/androlua/Download;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/androlua/Download$DownloadBroadcastReceiver;->a:Lcom/androlua/Download;

    invoke-static {v1}, Lcom/androlua/Download;->c(Lcom/androlua/Download;)Lcom/androlua/Download$OnDownloadCompleteListener;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v1, v2, v0}, Lcom/androlua/Download$OnDownloadCompleteListener;->onDownloadComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
