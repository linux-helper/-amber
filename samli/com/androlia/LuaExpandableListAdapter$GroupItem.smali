.class Lcom/androlua/LuaExpandableListAdapter$GroupItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupItem"
.end annotation


# instance fields
.field private a:Lcom/luajava/LuaTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final b:Lcom/androlua/LuaExpandableListAdapter;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaExpandableListAdapter;Lcom/luajava/LuaTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->b:Lcom/androlua/LuaExpandableListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->a:Lcom/luajava/LuaTable;

    return-void
.end method


# virtual methods
.method public add(Lcom/luajava/LuaTable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->a:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/luajava/LuaTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->b:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {v0}, Lcom/androlua/LuaExpandableListAdapter;->a(Lcom/androlua/LuaExpandableListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->b:Lcom/androlua/LuaExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->a:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->clear()V

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->b:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {v0}, Lcom/androlua/LuaExpandableListAdapter;->a(Lcom/androlua/LuaExpandableListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->b:Lcom/androlua/LuaExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getData()Lcom/luajava/LuaTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->a:Lcom/luajava/LuaTable;

    return-object v0
.end method

.method public insert(ILcom/luajava/LuaTable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->b:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {v0}, Lcom/androlua/LuaExpandableListAdapter;->b(Lcom/androlua/LuaExpandableListAdapter;)Lcom/luajava/LuaFunction;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->a:Lcom/luajava/LuaTable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->b:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {v0}, Lcom/androlua/LuaExpandableListAdapter;->a(Lcom/androlua/LuaExpandableListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->b:Lcom/androlua/LuaExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->b:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {v0}, Lcom/androlua/LuaExpandableListAdapter;->c(Lcom/androlua/LuaExpandableListAdapter;)Lcom/luajava/LuaFunction;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->a:Lcom/luajava/LuaTable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->b:Lcom/androlua/LuaExpandableListAdapter;

    invoke-static {v0}, Lcom/androlua/LuaExpandableListAdapter;->a(Lcom/androlua/LuaExpandableListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;->b:Lcom/androlua/LuaExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
