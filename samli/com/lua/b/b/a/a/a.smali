.class Lcom/lua/b/b/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lua/b/b/a/a/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/lua/b/b/a/a/c;


# direct methods
.method constructor <init>(Lcom/lua/b/b/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/b/a/a/a;->a:Lcom/lua/b/b/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/lua/b/b/a/a/a;->a:Lcom/lua/b/b/a/a/c;

    invoke-static {v1}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;

    move-result-object v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/a;->a:Lcom/lua/b/b/a/a/c;

    invoke-static {v2}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lua/b/b/a/a/q;->getCaretPosition()I

    move-result v2

    iget-object v3, p0, Lcom/lua/b/b/a/a/a;->a:Lcom/lua/b/b/a/a/c;

    invoke-static {v3}, Lcom/lua/b/b/a/a/c;->b(Lcom/lua/b/b/a/a/c;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/lua/b/b/a/a/a;->a:Lcom/lua/b/b/a/a/c;

    invoke-static {v3}, Lcom/lua/b/b/a/a/c;->b(Lcom/lua/b/b/a/a/c;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/lua/b/b/a/a/q;->replaceText(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/a;->a:Lcom/lua/b/b/a/a/c;

    invoke-static {v0}, Lcom/lua/b/b/a/a/c;->c(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/c$a;->a()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/a;->a:Lcom/lua/b/b/a/a/c;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/c;->b()V

    return-void
.end method
