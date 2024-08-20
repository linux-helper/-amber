.class public Lcom/androlua/LuaExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;,
        Lcom/androlua/LuaExpandableListAdapter$GroupItem;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/BitmapDrawable;

.field private b:Landroid/content/res/Resources;

.field private c:Lcom/luajava/LuaState;

.field private d:Lcom/androlua/LuaContext;

.field private e:Lcom/luajava/LuaTable;
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

.field private f:Lcom/luajava/LuaTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/luajava/LuaTable;

.field private i:Lcom/luajava/LuaTable;

.field private j:Lcom/luajava/LuaFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaFunction",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/luajava/LuaFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaFunction",
            "<*>;"
        }
    .end annotation
.end field

.field private l:Lcom/luajava/LuaFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaFunction",
            "<*>;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Lcom/luajava/LuaFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaFunction",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Landroid/os/Handler;

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/androlua/LuaExpandableListAdapter;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androlua/LuaContext;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;",
            "Lcom/luajava/LuaTable;",
            "Lcom/luajava/LuaTable;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->g:Ljava/util/HashMap;

    new-instance v0, Lcom/androlua/LuaExpandableListAdapter$1;

    invoke-direct {v0, p0}, Lcom/androlua/LuaExpandableListAdapter$1;-><init>(Lcom/androlua/LuaExpandableListAdapter;)V

    iput-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->p:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->q:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->d:Lcom/androlua/LuaContext;

    invoke-interface {p1}, Lcom/androlua/LuaContext;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->d:Lcom/androlua/LuaContext;

    invoke-interface {v0}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->b:Landroid/content/res/Resources;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->b:Landroid/content/res/Resources;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "/res/drawable/icon.png"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->a:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->a:Landroid/graphics/drawable/BitmapDrawable;

    const v1, -0x77000001

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p4, p0, Lcom/androlua/LuaExpandableListAdapter;->h:Lcom/luajava/LuaTable;

    iput-object p5, p0, Lcom/androlua/LuaExpandableListAdapter;->i:Lcom/luajava/LuaTable;

    if-nez p2, :cond_0

    new-instance p2, Lcom/luajava/LuaTable;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-direct {p2, v0}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;)V

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lcom/luajava/LuaTable;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-direct {p3, v0}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;)V

    :cond_1
    iput-object p2, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    iput-object p3, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    const-string v1, "loadlayout"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->j:Lcom/luajava/LuaFunction;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    const-string v1, "table"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    const-string v1, "insert"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->k:Lcom/luajava/LuaFunction;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    const-string v1, "table"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    const-string v1, "remove"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->l:Lcom/luajava/LuaFunction;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->newTable()V

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->j:Lcom/luajava/LuaFunction;

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/androlua/LuaExpandableListAdapter;->h:Lcom/luajava/LuaTable;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-virtual {v2, v5}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v2

    aput-object v2, v1, v4

    const-class v2, Landroid/widget/AbsListView;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->j:Lcom/luajava/LuaFunction;

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/androlua/LuaExpandableListAdapter;->i:Lcom/luajava/LuaTable;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-virtual {v2, v5}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v2

    aput-object v2, v1, v4

    const-class v2, Landroid/widget/AbsListView;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->pop(I)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOn"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Listener"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/luajava/LuaJavaAPI;->getMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    if-ne v5, v1, :cond_0

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v2, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-virtual {v2}, Lcom/luajava/LuaState;->newTable()V

    iget-object v2, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-virtual {v2, p3}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    const/4 v3, -0x2

    invoke-virtual {v2, v3, p2}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v5, v4}, Lcom/luajava/LuaObject;->createProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/luajava/LuaTable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/luajava/LuaTable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "src"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/androlua/LuaExpandableListAdapter;->a(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "lua"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v1, v0}, Lcom/androlua/LuaExpandableListAdapter;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p2, Lcom/luajava/LuaTable;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/luajava/LuaTable;

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaExpandableListAdapter;->a(Landroid/view/View;Lcom/luajava/LuaTable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    :try_start_0
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "lua"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;-><init>(Lcom/androlua/LuaExpandableListAdapter;Lcom/androlua/LuaExpandableListAdapter$1;)V

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->d:Lcom/androlua/LuaContext;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    instance-of v0, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_6
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/androlua/LuaExpandableListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    return v0
.end method

.method private b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2, v12}, Lcom/luajava/LuaJavaAPI;->getMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v3, v8

    if-ne v3, v13, :cond_1

    aget-object v3, v8, v12

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_6

    :try_start_0
    move-object/from16 v0, p3

    instance-of v3, v0, Ljava/lang/Double;

    if-nez v3, :cond_2

    move-object/from16 v0, p3

    instance-of v3, v0, Ljava/lang/Float;

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v10, 0x0

    aget-object v8, v8, v10

    invoke-static {v3, v8}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v3

    aput-object v3, v4, v9

    move-object v3, v4

    :goto_1
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return v13

    :cond_3
    move-object/from16 v0, p3

    instance-of v3, v0, Ljava/lang/Long;

    if-nez v3, :cond_4

    move-object/from16 v0, p3

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    :cond_4
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v10, 0x0

    aget-object v8, v8, v10

    invoke-static {v3, v8}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v3

    aput-object v3, v4, v9

    move-object v3, v4

    goto :goto_1

    :cond_5
    move-object/from16 v0, p3

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Boolean;

    move-object v3, v0

    aput-object v3, v4, v8

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    aget-object v3, v8, v12

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid setter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Invalid Parameters.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/luajava/LuaException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid setter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a method.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/luajava/LuaException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic b(Lcom/androlua/LuaExpandableListAdapter;)Lcom/luajava/LuaFunction;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->k:Lcom/luajava/LuaFunction;

    return-object v0
.end method

.method private c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p3, Lcom/luajava/LuaFunction;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/androlua/LuaExpandableListAdapter;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/androlua/LuaExpandableListAdapter;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/androlua/LuaExpandableListAdapter;)Lcom/luajava/LuaFunction;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->l:Lcom/luajava/LuaFunction;

    return-object v0
.end method

.method static synthetic d(Lcom/androlua/LuaExpandableListAdapter;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->b:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic e(Lcom/androlua/LuaExpandableListAdapter;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->q:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f(Lcom/androlua/LuaExpandableListAdapter;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->a:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic g(Lcom/androlua/LuaExpandableListAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->p:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/luajava/LuaTable;)Lcom/androlua/LuaExpandableListAdapter$GroupItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/androlua/LuaExpandableListAdapter$GroupItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/luajava/LuaTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/luajava/LuaTable;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-direct {v0, v1}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;)V

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    iget-object v2, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    invoke-virtual {v2}, Lcom/luajava/LuaTable;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/luajava/LuaTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    new-instance v1, Lcom/androlua/LuaExpandableListAdapter$GroupItem;

    invoke-direct {v1, p0, v0}, Lcom/androlua/LuaExpandableListAdapter$GroupItem;-><init>(Lcom/androlua/LuaExpandableListAdapter;Lcom/luajava/LuaTable;)V

    return-object v1
.end method

.method public add(Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;)Lcom/androlua/LuaExpandableListAdapter$GroupItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/androlua/LuaExpandableListAdapter$GroupItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/luajava/LuaTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    invoke-virtual {v1}, Lcom/luajava/LuaTable;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/luajava/LuaTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    new-instance v0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;

    invoke-direct {v0, p0, p2}, Lcom/androlua/LuaExpandableListAdapter$GroupItem;-><init>(Lcom/androlua/LuaExpandableListAdapter;Lcom/luajava/LuaTable;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->clear()V

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->clear()V

    iget-boolean v0, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaTable;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildData()Lcom/luajava/LuaTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    add-int/lit8 v0, p2, 0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p4, :cond_1

    :try_start_0
    new-instance v2, Lcom/luajava/LuaTable;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-direct {v2, v1}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;)V

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->j:Lcom/luajava/LuaFunction;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/androlua/LuaExpandableListAdapter;->i:Lcom/luajava/LuaTable;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/widget/AbsListView;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    move-object v4, v1

    :goto_0
    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luajava/LuaTable;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luajava/LuaTable;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lua"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-object v4

    :catch_0
    move-exception v1

    new-instance v4, Landroid/view/View;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->d:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luajava/LuaTable;

    move-object v3, v1

    move-object v4, p4

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/luajava/LuaTable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v2}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-direct {p0, v1, v6}, Lcom/androlua/LuaExpandableListAdapter;->a(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "lua"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Lcom/androlua/LuaExpandableListAdapter;->m:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->n:Lcom/luajava/LuaFunction;

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    if-nez v1, :cond_5

    :try_start_2
    iget-object v2, p0, Lcom/androlua/LuaExpandableListAdapter;->n:Lcom/luajava/LuaFunction;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/animation/Animation;

    move-object v1, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object v2, p0, Lcom/androlua/LuaExpandableListAdapter;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_3
    if-eqz v1, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :catch_2
    move-exception v2

    :goto_4
    const-string v3, "lua"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_4
.end method

.method public getChildrenCount(I)I
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->length()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->length()I

    move-result v0

    return v0
.end method

.method public getGroupData()Lcom/luajava/LuaTable;
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

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    return-object v0
.end method

.method public getGroupId(I)J
    .locals 2

    add-int/lit8 v0, p1, 0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupItem(I)Lcom/androlua/LuaExpandableListAdapter$GroupItem;
    .locals 3

    new-instance v1, Lcom/androlua/LuaExpandableListAdapter$GroupItem;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaTable;

    invoke-direct {v1, p0, v0}, Lcom/androlua/LuaExpandableListAdapter$GroupItem;-><init>(Lcom/androlua/LuaExpandableListAdapter;Lcom/luajava/LuaTable;)V

    return-object v1
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p3, :cond_1

    :try_start_0
    new-instance v2, Lcom/luajava/LuaTable;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-direct {v2, v1}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;)V

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->j:Lcom/luajava/LuaFunction;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/androlua/LuaExpandableListAdapter;->h:Lcom/luajava/LuaTable;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/widget/AbsListView;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    move-object v4, v1

    :goto_0
    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luajava/LuaTable;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lua"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-object v4

    :catch_0
    move-exception v1

    new-instance v4, Landroid/view/View;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->d:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luajava/LuaTable;

    move-object v3, v1

    move-object v4, p3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/luajava/LuaTable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v2}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-direct {p0, v1, v6}, Lcom/androlua/LuaExpandableListAdapter;->a(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "lua"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Lcom/androlua/LuaExpandableListAdapter;->m:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->n:Lcom/luajava/LuaFunction;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    if-nez v1, :cond_5

    :try_start_2
    iget-object v2, p0, Lcom/androlua/LuaExpandableListAdapter;->n:Lcom/luajava/LuaFunction;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/animation/Animation;

    move-object v1, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object v2, p0, Lcom/androlua/LuaExpandableListAdapter;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_3
    if-eqz v1, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :catch_2
    move-exception v2

    :goto_4
    const-string v3, "lua"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_4
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public insert(ILcom/luajava/LuaTable;Lcom/luajava/LuaTable;)Lcom/androlua/LuaExpandableListAdapter$GroupItem;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/androlua/LuaExpandableListAdapter$GroupItem;"
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->k:Lcom/luajava/LuaFunction;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    add-int/lit8 v2, p1, 0x1

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    aput-object p2, v3, v6

    invoke-virtual {v0, v3}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->k:Lcom/luajava/LuaFunction;

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    aput-object v3, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    new-instance v0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;

    invoke-direct {v0, p0, p3}, Lcom/androlua/LuaExpandableListAdapter$GroupItem;-><init>(Lcom/androlua/LuaExpandableListAdapter;Lcom/luajava/LuaTable;)V

    return-object v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(I)V
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->l:Lcom/luajava/LuaFunction;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setAnimationUtil(Lcom/luajava/LuaFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaFunction",
            "<",
            "Landroid/view/animation/Animation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->n:Lcom/luajava/LuaFunction;

    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    iget-boolean v0, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
