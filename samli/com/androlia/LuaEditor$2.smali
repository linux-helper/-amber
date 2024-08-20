.class Lcom/androlua/LuaEditor$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditor;->startFindMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Lcom/lua/b/b/a/b/n;

.field private b:I

.field private c:Landroid/widget/EditText;

.field final d:Lcom/androlua/LuaEditor;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaEditor$2;I)I
    .locals 0

    iput p1, p0, Lcom/androlua/LuaEditor$2;->b:I

    return p1
.end method

.method private a()V
    .locals 7

    const/4 v5, 0x0

    new-instance v0, Lcom/lua/b/b/a/b/n;

    invoke-direct {v0}, Lcom/lua/b/b/a/b/n;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaEditor$2;->a:Lcom/lua/b/b/a/b/n;

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, v5}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->a:Lcom/lua/b/b/a/b/n;

    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v1}, Lcom/androlua/LuaEditor;->getText()Lcom/lua/b/b/a/b/g;

    move-result-object v1

    iget v3, p0, Lcom/androlua/LuaEditor$2;->b:I

    iget-object v4, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v4}, Lcom/androlua/LuaEditor;->getText()Lcom/lua/b/b/a/b/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lua/b/b/a/b/g;->length()I

    move-result v4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/lua/b/b/a/b/n;->a(Lcom/lua/b/b/a/b/g;Ljava/lang/String;IIZZ)I

    move-result v0

    iput v0, p0, Lcom/androlua/LuaEditor$2;->b:I

    iget v0, p0, Lcom/androlua/LuaEditor$2;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, v5}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-static {v0}, Lcom/androlua/LuaEditor;->a(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u672a\u627e\u5230"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput v5, p0, Lcom/androlua/LuaEditor$2;->b:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    iget-object v2, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lua/b/b/a/a/q;->setSelection(II)V

    iget v0, p0, Lcom/androlua/LuaEditor$2;->b:I

    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/androlua/LuaEditor$2;->b:I

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    iget v1, p0, Lcom/androlua/LuaEditor$2;->b:I

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/androlua/LuaEditor$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaEditor$2;->a()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/androlua/LuaEditor$2;->a()V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "\u641c\u7d22"

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/androlua/LuaEditor$2$1;

    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-static {v1}, Lcom/androlua/LuaEditor;->a(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaEditor$2$1;-><init>(Lcom/androlua/LuaEditor$2;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/androlua/LuaEditor$2$2;

    invoke-direct {v1, p0}, Lcom/androlua/LuaEditor$2$2;-><init>(Lcom/androlua/LuaEditor$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    new-instance v1, Landroid/widget/RadioGroup$LayoutParams;

    iget-object v2, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, ""

    invoke-interface {p2, v4, v5, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-static {v1}, Lcom/androlua/LuaEditor;->a(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104000c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return v5
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
