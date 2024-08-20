.class Lcom/androlua/Download$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/Download;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/androlua/Download;


# direct methods
.method constructor <init>(Lcom/androlua/Download;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/Download$2;->a:Lcom/androlua/Download;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/androlua/Download$2;->a:Lcom/androlua/Download;

    invoke-static {v0}, Lcom/androlua/Download;->a(Lcom/androlua/Download;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androlua/Download;->a(Lcom/androlua/Download;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/androlua/Download$2;->a:Lcom/androlua/Download;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androlua/Download;->start(Z)J

    return-void
.end method
