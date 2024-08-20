.class Lcom/nirenr/SplitEditView$EditDialog;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/SplitEditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditDialog"
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/widget/EditText;

.field private c:Landroid/app/AlertDialog;

.field final d:Lcom/nirenr/SplitEditView;


# direct methods
.method public constructor <init>(Lcom/nirenr/SplitEditView;I)V
    .locals 2

    iput-object p1, p0, Lcom/nirenr/SplitEditView$EditDialog;->d:Lcom/nirenr/SplitEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nirenr/SplitEditView$EditDialog;->a:I

    new-instance v0, Landroid/widget/EditText;

    invoke-static {p1}, Lcom/nirenr/SplitEditView;->a(Lcom/nirenr/SplitEditView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->b:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/nirenr/SplitEditView;->b(Lcom/nirenr/SplitEditView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->b:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/nirenr/SplitEditView;->b(Lcom/nirenr/SplitEditView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->d:Lcom/nirenr/SplitEditView;

    invoke-static {v0}, Lcom/nirenr/SplitEditView;->b(Lcom/nirenr/SplitEditView;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/SplitEditView$EditDialog;->a:I

    iget-object v2, p0, Lcom/nirenr/SplitEditView$EditDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->d:Lcom/nirenr/SplitEditView;

    invoke-static {v0}, Lcom/nirenr/SplitEditView;->c(Lcom/nirenr/SplitEditView;)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->d:Lcom/nirenr/SplitEditView;

    invoke-static {v0}, Lcom/nirenr/SplitEditView;->d(Lcom/nirenr/SplitEditView;)Landroid/widget/GridView;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/SplitEditView$EditDialog;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public show()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/SplitEditView$EditDialog;->d:Lcom/nirenr/SplitEditView;

    invoke-static {v1}, Lcom/nirenr/SplitEditView;->a(Lcom/nirenr/SplitEditView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8f93\u5165\u5185\u5bb9"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/SplitEditView$EditDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->c:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->d:Lcom/nirenr/SplitEditView;

    invoke-static {v0}, Lcom/nirenr/SplitEditView;->a(Lcom/nirenr/SplitEditView;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Service;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v0, v2, :cond_2

    const/16 v0, 0x7f0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_2
    const/16 v0, 0x7da

    goto :goto_0
.end method
