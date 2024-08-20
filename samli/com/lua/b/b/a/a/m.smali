.class Lcom/lua/b/b/a/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lua/b/b/a/a/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lua/b/b/a/a/q;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/lua/b/b/a/a/q;


# direct methods
.method constructor <init>(Lcom/lua/b/b/a/a/q;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/b/a/a/m;->a:Lcom/lua/b/b/a/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;II)V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/m;->a:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->p(Lcom/lua/b/b/a/a/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    iget-object v1, p0, Lcom/lua/b/b/a/a/m;->a:Lcom/lua/b/b/a/a/q;

    iget-object v1, v1, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/lua/b/b/a/a/m;->a:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/m;->a:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->t:Lcom/lua/b/b/a/a/c;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/c;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/m;->a:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->p(Lcom/lua/b/b/a/a/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    iget-object v1, p0, Lcom/lua/b/b/a/a/m;->a:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/m;->a:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->t:Lcom/lua/b/b/a/a/c;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/c;->b()V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;II)V
    .locals 4

    iget-object v0, p0, Lcom/lua/b/b/a/a/m;->a:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->p(Lcom/lua/b/b/a/a/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    iget-object v1, p0, Lcom/lua/b/b/a/a/m;->a:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/m;->a:Lcom/lua/b/b/a/a/q;

    iget-boolean v1, v0, Lcom/lua/b/b/a/a/q;->u:Z

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v0, v0, Lcom/lua/b/b/a/a/q;->j:I

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/lua/b/b/a/a/m;->a:Lcom/lua/b/b/a/a/q;

    iget-object v1, v1, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/lua/b/b/a/a/m;->a:Lcom/lua/b/b/a/a/q;

    iget v2, v1, Lcom/lua/b/b/a/a/q;->j:I

    sub-int v3, v2, v0

    if-lez v3, :cond_4

    iget-object v3, v1, Lcom/lua/b/b/a/a/q;->t:Lcom/lua/b/b/a/a/c;

    iget-object v1, v1, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    sub-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/lua/b/b/a/b/g;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/lua/b/b/a/a/c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lcom/lua/b/b/a/a/q;->t:Lcom/lua/b/b/a/a/c;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/c;->b()V

    goto :goto_0
.end method
