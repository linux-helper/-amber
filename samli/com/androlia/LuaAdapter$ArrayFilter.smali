.class Lcom/androlua/LuaAdapter$ArrayFilter;
.super Landroid/widget/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final a:Lcom/androlua/LuaAdapter;


# direct methods
.method private constructor <init>(Lcom/androlua/LuaAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaAdapter$ArrayFilter;->a:Lcom/androlua/LuaAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androlua/LuaAdapter;Lcom/androlua/LuaAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaAdapter$ArrayFilter;-><init>(Lcom/androlua/LuaAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v1, p0, Lcom/androlua/LuaAdapter$ArrayFilter;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v1, p1}, Lcom/androlua/LuaAdapter;->a(Lcom/androlua/LuaAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/androlua/LuaAdapter$ArrayFilter;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v1}, Lcom/androlua/LuaAdapter;->a(Lcom/androlua/LuaAdapter;)Lcom/luajava/LuaTable;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/androlua/LuaAdapter$ArrayFilter;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v1}, Lcom/androlua/LuaAdapter;->d(Lcom/androlua/LuaAdapter;)Lcom/luajava/LuaFunction;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaAdapter$ArrayFilter;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v0}, Lcom/androlua/LuaAdapter;->h(Lcom/androlua/LuaAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/androlua/LuaAdapter$ArrayFilter;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v1}, Lcom/androlua/LuaAdapter;->a(Lcom/androlua/LuaAdapter;)Lcom/luajava/LuaTable;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    iget-object v1, p0, Lcom/androlua/LuaAdapter$ArrayFilter;->a:Lcom/androlua/LuaAdapter;

    invoke-static {v1}, Lcom/androlua/LuaAdapter;->a(Lcom/androlua/LuaAdapter;)Lcom/luajava/LuaTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luajava/LuaTable;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    return-void
.end method
