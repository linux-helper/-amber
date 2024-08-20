.class Lcom/lua/b/b/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lua/b/b/a/a/e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/lua/b/b/a/a/e;


# direct methods
.method constructor <init>(Lcom/lua/b/b/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/b/a/a/d;->a:Lcom/lua/b/b/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/d;->a:Lcom/lua/b/b/a/a/e;

    iget-object v0, v0, Lcom/lua/b/b/a/a/e;->a:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->paste()V

    :goto_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/d;->a:Lcom/lua/b/b/a/a/e;

    iget-object v0, v0, Lcom/lua/b/b/a/a/e;->a:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->copy()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/lua/b/b/a/a/d;->a:Lcom/lua/b/b/a/a/e;

    iget-object v0, v0, Lcom/lua/b/b/a/a/e;->a:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->cut()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/lua/b/b/a/a/d;->a:Lcom/lua/b/b/a/a/e;

    iget-object v0, v0, Lcom/lua/b/b/a/a/e;->a:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->selectAll()V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/lua/b/b/a/a/d;->a:Lcom/lua/b/b/a/a/e;

    invoke-static {v0, p1}, Lcom/lua/b/b/a/a/e;->a(Lcom/lua/b/b/a/a/e;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    const v0, 0x1040016

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/d;->a:Lcom/lua/b/b/a/a/e;

    invoke-static {v0}, Lcom/lua/b/b/a/a/e;->a(Lcom/lua/b/b/a/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/d;->a:Lcom/lua/b/b/a/a/e;

    invoke-static {v1}, Lcom/lua/b/b/a/a/e;->a(Lcom/lua/b/b/a/a/e;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x61

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/lua/b/b/a/a/d;->a:Lcom/lua/b/b/a/a/e;

    invoke-static {v1}, Lcom/lua/b/b/a/a/e;->a(Lcom/lua/b/b/a/a/e;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x78

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/lua/b/b/a/a/d;->a:Lcom/lua/b/b/a/a/e;

    invoke-static {v1}, Lcom/lua/b/b/a/a/e;->a(Lcom/lua/b/b/a/a/e;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040001

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x63

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/lua/b/b/a/a/d;->a:Lcom/lua/b/b/a/a/e;

    invoke-static {v1}, Lcom/lua/b/b/a/a/e;->a(Lcom/lua/b/b/a/a/e;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v6, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x76

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v5

    nop

    :array_0
    .array-data 4
        0x101037e
        0x1010311
        0x1010312
        0x1010313
    .end array-data
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/d;->a:Lcom/lua/b/b/a/a/e;

    iget-object v0, v0, Lcom/lua/b/b/a/a/e;->a:Lcom/lua/b/b/a/a/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/d;->a:Lcom/lua/b/b/a/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lua/b/b/a/a/e;->a(Lcom/lua/b/b/a/a/e;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
