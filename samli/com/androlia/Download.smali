.class public Lcom/androlua/Download;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/Download$DownloadBroadcastReceiver;,
        Lcom/androlua/Download$OnDownloadCompleteListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/androlua/LuaContext;

.field private b:Landroid/widget/EditText;

.field private c:Ljava/lang/String;

.field private d:Lcom/androlua/Download$DownloadBroadcastReceiver;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/androlua/Download$OnDownloadCompleteListener;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androlua/Download;->e:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/androlua/Download;->a:Lcom/androlua/LuaContext;

    return-void
.end method

.method static synthetic a(Lcom/androlua/Download;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/androlua/Download;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/androlua/Download;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/androlua/Download;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/androlua/Download;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/androlua/Download;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/androlua/Download;)Lcom/androlua/Download$OnDownloadCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/androlua/Download;->f:Lcom/androlua/Download$OnDownloadCompleteListener;

    return-object v0
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/androlua/Download;->k:J

    return-wide v0
.end method

.method public getDestinationDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/Download;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/Download;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/Download;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/Download;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/Download;->i:Ljava/lang/String;

    return-object v0
.end method

.method public setContentLength(J)V
    .locals 1

    iput-wide p1, p0, Lcom/androlua/Download;->k:J

    return-void
.end method

.method public setDestinationDir(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/Download;->h:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/Download;->l:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/Download;->g:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/Download;->j:Ljava/lang/String;

    return-void
.end method

.method public setOnDownloadCompleteListener(Lcom/androlua/Download$OnDownloadCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/Download;->f:Lcom/androlua/Download$OnDownloadCompleteListener;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/Download;->c:Ljava/lang/String;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/Download;->i:Ljava/lang/String;

    return-void
.end method

.method public start(Z)J
    .locals 9

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/androlua/Download;->d:Lcom/androlua/Download$DownloadBroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/androlua/Download$DownloadBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/androlua/Download$DownloadBroadcastReceiver;-><init>(Lcom/androlua/Download;Lcom/androlua/Download$1;)V

    iput-object v1, p0, Lcom/androlua/Download;->d:Lcom/androlua/Download$DownloadBroadcastReceiver;

    iget-object v1, p0, Lcom/androlua/Download;->a:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/Download;->d:Lcom/androlua/Download$DownloadBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/androlua/Download;->a:Lcom/androlua/LuaContext;

    invoke-interface {v0}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iget-object v1, p0, Lcom/androlua/Download;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/androlua/Download;->h:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "Download"

    iput-object v1, p0, Lcom/androlua/Download;->h:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/androlua/Download;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/androlua/Download;->l:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    iget-object v1, p0, Lcom/androlua/Download;->l:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    iget-object v1, p0, Lcom/androlua/Download;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    if-eqz p1, :cond_2

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    :cond_2
    iget-object v1, p0, Lcom/androlua/Download;->j:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "*/*"

    iput-object v1, p0, Lcom/androlua/Download;->j:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/androlua/Download;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/androlua/Download;->e:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/androlua/Download;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/androlua/Download;->l:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/androlua/Download;->j:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v0
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/androlua/Download;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/androlua/Download;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/androlua/Download;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object p3, p0, Lcom/androlua/Download;->l:Ljava/lang/String;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/Download;->l:Ljava/lang/String;

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "Download"

    iput-object v0, p0, Lcom/androlua/Download;->h:Ljava/lang/String;

    :cond_1
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/androlua/Download;->a:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/androlua/Download;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/androlua/Download;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/androlua/Download;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/androlua/Download;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/androlua/Download;->g:Ljava/lang/String;

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/androlua/Download;->a:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Download"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/Download;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/Download;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Download"

    new-instance v2, Lcom/androlua/Download$2;

    invoke-direct {v2, p0}, Lcom/androlua/Download$2;-><init>(Lcom/androlua/Download;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Only Wifi"

    new-instance v2, Lcom/androlua/Download$1;

    invoke-direct {v2, p0}, Lcom/androlua/Download$1;-><init>(Lcom/androlua/Download;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
