.class Lcom/androlua/LuaArrayAdapter$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/androlua/LuaArrayAdapter;


# direct methods
.method constructor <init>(Lcom/androlua/LuaArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaArrayAdapter$1;->a:Lcom/androlua/LuaArrayAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter$1;->a:Lcom/androlua/LuaArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayListAdapter;->notifyDataSetChanged()V

    return-void
.end method
