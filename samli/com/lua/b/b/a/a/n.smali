.class Lcom/lua/b/b/a/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lua/b/b/a/a/q;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/text/SpannableStringBuilder;

.field final b:Z

.field final c:Lcom/lua/b/b/a/a/q;


# direct methods
.method constructor <init>(Lcom/lua/b/b/a/a/q;Landroid/text/SpannableStringBuilder;Z)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/b/a/a/n;->c:Lcom/lua/b/b/a/a/q;

    iput-object p2, p0, Lcom/lua/b/b/a/a/n;->a:Landroid/text/SpannableStringBuilder;

    iput-boolean p3, p0, Lcom/lua/b/b/a/a/n;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/n;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/n;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/n;->c:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->a(C)V

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/n;->c:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/n;->a:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->a(C)V

    :cond_1
    return-void
.end method
