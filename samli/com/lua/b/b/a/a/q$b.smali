.class Lcom/lua/b/b/a/a/q$b;
.super Landroid/view/inputmethod/BaseInputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/b/b/a/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field final d:Lcom/lua/b/b/a/a/q;


# direct methods
.method public constructor <init>(Lcom/lua/b/b/a/a/q;Lcom/lua/b/b/a/a/q;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-boolean v1, p0, Lcom/lua/b/b/a/a/q$b;->a:Z

    iput v1, p0, Lcom/lua/b/b/a/a/q$b;->b:I

    iput-boolean v1, p0, Lcom/lua/b/b/a/a/q$b;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q$b;->a:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/b/b/a/a/q$b;->b:I

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/q$b;->a:Z

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->d()V

    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->getCaretPosition()I

    move-result v1

    iget v2, p0, Lcom/lua/b/b/a/a/q$b;->b:I

    sub-int/2addr v1, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lua/b/b/a/a/q$a;->a(IILjava/lang/String;)V

    iput v4, p0, Lcom/lua/b/b/a/a/q$b;->b:I

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->d()V

    if-le p2, v5, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    iget v1, v1, Lcom/lua/b/b/a/a/q;->j:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->d(I)V

    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/lua/b/b/a/a/q$b;->a:Z

    return v5

    :cond_1
    if-gtz p2, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    iget v1, v1, Lcom/lua/b/b/a/a/q;->j:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->d(I)V

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 2

    iget v0, p0, Lcom/lua/b/b/a/a/q$b;->b:I

    if-eqz v0, :cond_0

    const-string v0, "lua"

    const-string v1, "Warning: Implmentation of InputConnection.deleteSurroundingText will not skip composing text"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lua/b/b/a/a/q$a;->a(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q$b;->b()V

    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 8

    const/16 v1, 0x4000

    const/16 v0, 0x2000

    const/4 v3, 0x1

    const/4 v2, 0x0

    and-int/lit16 v4, p1, 0x2000

    if-ne v4, v0, :cond_2

    iget-object v3, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    iget v3, v3, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    invoke-static {}, Lcom/lua/b/b/a/b/m;->c()Lcom/lua/b/b/a/b/i;

    move-result-object v4

    iget-object v5, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    iget-object v5, v5, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v5, v3}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3}, Lcom/lua/b/b/a/b/i;->h(C)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_0
    and-int/lit16 v2, p1, 0x4000

    if-ne v2, v1, :cond_1

    const/16 v0, 0x6000

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcom/lua/b/b/a/b/m;->c()Lcom/lua/b/b/a/b/i;

    move-result-object v5

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    iget v0, v0, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v0, v2

    :goto_1
    if-ltz v4, :cond_7

    iget-object v6, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    iget-object v6, v6, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v6, v4}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    move v0, v3

    :goto_2
    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v6}, Lcom/lua/b/b/a/b/i;->h(C)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v5, v6}, Lcom/lua/b/b/a/b/i;->g(C)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_2
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/q$a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/q$a;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performContextMenuAction(I)Z
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    :goto_0
    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0, v2}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->paste()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->copy()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->cut()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->selectAll()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1020028
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/16 v2, 0x3b

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/lua/b/b/a/a/s;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/lua/b/b/a/a/q$b;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->isSelectText()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1, v0}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    :cond_0
    iget-boolean v1, p0, Lcom/lua/b/b/a/a/q$b;->c:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->isSelectText()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1, v3}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v2, :cond_2

    iput-boolean v3, p0, Lcom/lua/b/b/a/a/q$b;->c:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v1, v2, :cond_7

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_6

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_5

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->moveCaretRight()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->moveCaretLeft()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->moveCaretDown()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->moveCaretUp()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    iget-object v2, v1, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/g;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1, v3}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    goto :goto_0

    :cond_7
    iput-boolean v0, p0, Lcom/lua/b/b/a/a/q$b;->c:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 5

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lua/b/b/a/a/q$b;->a:Z

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    iget-object v0, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->b()V

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->getCaretPosition()I

    move-result v1

    iget v2, p0, Lcom/lua/b/b/a/a/q$b;->b:I

    sub-int/2addr v1, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lua/b/b/a/a/q$a;->a(IILjava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/lua/b/b/a/a/q$b;->b:I

    if-le p2, v4, :cond_2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    iget v1, v1, Lcom/lua/b/b/a/a/q;->j:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->d(I)V

    :cond_1
    :goto_0
    return v4

    :cond_2
    if-gtz p2, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    iget v1, v1, Lcom/lua/b/b/a/a/q;->j:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->d(I)V

    goto :goto_0
.end method

.method public setSelection(II)Z
    .locals 4

    const/4 v3, 0x1

    if-ne p1, p2, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/q$a;->d(I)V

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q$b;->d:Lcom/lua/b/b/a/a/q;

    invoke-static {v0}, Lcom/lua/b/b/a/a/q;->a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;

    move-result-object v0

    sub-int v1, p2, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/lua/b/b/a/a/q$a;->a(IIZZ)V

    goto :goto_0
.end method
