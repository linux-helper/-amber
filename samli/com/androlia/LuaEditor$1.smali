.class Lcom/androlua/LuaEditor$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditor;->startGotoMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/EditText;

.field final c:Lcom/androlua/LuaEditor;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditor$1;->c:Lcom/androlua/LuaEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaEditor$1;I)I
    .locals 0

    iput p1, p0, Lcom/androlua/LuaEditor$1;->a:I

    return p1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaEditor$1;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/androlua/LuaEditor$1;->c:Lcom/androlua/LuaEditor;

    invoke-static {v1}, Lcom/androlua/LuaEditor;->b(Lcom/androlua/LuaEditor;)Lcom/lua/b/b/a/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/g;->f()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaEditor$1;->c:Lcom/androlua/LuaEditor;

    invoke-static {v0}, Lcom/androlua/LuaEditor;->c(Lcom/androlua/LuaEditor;)Lcom/lua/b/b/a/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->f()I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/androlua/LuaEditor$1;->c:Lcom/androlua/LuaEditor;

    invoke-virtual {v1, v0}, Lcom/androlua/LuaEditor;->gotoLine(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/androlua/LuaEditor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaEditor$1;->a()V

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
    invoke-direct {p0}, Lcom/androlua/LuaEditor$1;->a()V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "\u8f6c\u5230"

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/androlua/LuaEditor$1$1;

    iget-object v1, p0, Lcom/androlua/LuaEditor$1;->c:Lcom/androlua/LuaEditor;

    invoke-static {v1}, Lcom/androlua/LuaEditor;->a(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaEditor$1$1;-><init>(Lcom/androlua/LuaEditor$1;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/androlua/LuaEditor$1;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/androlua/LuaEditor$1;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$1;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$1;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$1;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/androlua/LuaEditor$1$2;

    invoke-direct {v1, p0}, Lcom/androlua/LuaEditor$1$2;-><init>(Lcom/androlua/LuaEditor$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$1;->b:Landroid/widget/EditText;

    new-instance v1, Landroid/widget/RadioGroup$LayoutParams;

    iget-object v2, p0, Lcom/androlua/LuaEditor$1;->c:Lcom/androlua/LuaEditor;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, ""

    invoke-interface {p2, v4, v5, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaEditor$1;->b:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/androlua/LuaEditor$1;->c:Lcom/androlua/LuaEditor;

    invoke-static {v0}, Lcom/androlua/LuaEditor;->a(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/androlua/LuaEditor$1;->b:Landroid/widget/EditText;

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
