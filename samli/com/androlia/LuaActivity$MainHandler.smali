.class public Lcom/androlua/LuaActivity$MainHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field final a:Lcom/androlua/LuaActivity;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaActivity$MainHandler;->a:Lcom/androlua/LuaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "args"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    iget-object v2, p0, Lcom/androlua/LuaActivity$MainHandler;->a:Lcom/androlua/LuaActivity;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaActivity$MainHandler;->a:Lcom/androlua/LuaActivity;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaActivity$MainHandler;->a:Lcom/androlua/LuaActivity;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "args"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v4

    invoke-static {v1, v2, v0}, Lcom/androlua/LuaActivity;->a(Lcom/androlua/LuaActivity;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaActivity$MainHandler;->a:Lcom/androlua/LuaActivity;

    invoke-static {v1}, Lcom/androlua/LuaActivity;->a(Lcom/androlua/LuaActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/androlua/LuaActivity$MainHandler;->a:Lcom/androlua/LuaActivity;

    invoke-virtual {v1, v0}, Lcom/androlua/LuaActivity;->showToast(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/androlua/LuaActivity$MainHandler;->a:Lcom/androlua/LuaActivity;

    invoke-static {v1}, Lcom/androlua/LuaActivity;->b(Lcom/androlua/LuaActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/androlua/LuaActivity$MainHandler;->a:Lcom/androlua/LuaActivity;

    invoke-static {v1}, Lcom/androlua/LuaActivity;->c(Lcom/androlua/LuaActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
