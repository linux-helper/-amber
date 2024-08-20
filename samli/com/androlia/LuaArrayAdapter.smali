.class public Lcom/androlua/LuaArrayAdapter;
.super Landroid/widget/ArrayListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaArrayAdapter$AsyncLoader;
    }
.end annotation


# instance fields
.field private l:Landroid/content/res/Resources;

.field private m:Lcom/androlua/LuaContext;

.field private n:Lcom/luajava/LuaState;

.field private o:Lcom/luajava/LuaObject;

.field private p:Lcom/luajava/LuaObject;

.field private q:Landroid/view/animation/Animation;

.field private r:Landroid/os/Handler;

.field private s:Ljava/util/HashMap;
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
.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/androlua/LuaArrayAdapter;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;[Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v3, p3}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v0, Lcom/androlua/LuaArrayAdapter$1;

    invoke-direct {v0, p0}, Lcom/androlua/LuaArrayAdapter$1;-><init>(Lcom/androlua/LuaArrayAdapter;)V

    iput-object v0, p0, Lcom/androlua/LuaArrayAdapter;->r:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaArrayAdapter;->s:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/androlua/LuaArrayAdapter;->m:Lcom/androlua/LuaContext;

    iput-object p2, p0, Lcom/androlua/LuaArrayAdapter;->o:Lcom/luajava/LuaObject;

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->m:Lcom/androlua/LuaContext;

    invoke-interface {v0}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaArrayAdapter;->l:Landroid/content/res/Resources;

    invoke-interface {p1}, Lcom/androlua/LuaContext;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaArrayAdapter;->n:Lcom/luajava/LuaState;

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->n:Lcom/luajava/LuaState;

    const-string v1, "loadlayout"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaArrayAdapter;->p:Lcom/luajava/LuaObject;

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->n:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->newTable()V

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->p:Lcom/luajava/LuaObject;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/androlua/LuaArrayAdapter;->o:Lcom/luajava/LuaObject;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/androlua/LuaArrayAdapter;->n:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v3, Landroid/widget/AbsListView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->n:Lcom/luajava/LuaState;

    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->pop(I)V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaArrayAdapter;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->l:Landroid/content/res/Resources;

    return-object v0
.end method

.method private a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast p1, Landroid/widget/ImageView;

    instance-of v1, p2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/androlua/LuaArrayAdapter;->l:Landroid/content/res/Resources;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_7

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/androlua/LuaArrayAdapter;->m:Lcom/androlua/LuaContext;

    invoke-interface {v2}, Lcom/androlua/LuaContext;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v1, v0

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->m:Lcom/androlua/LuaContext;

    invoke-interface {v0}, Lcom/androlua/LuaContext;->getWidth()I

    move-result v2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "lua"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :try_start_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaArrayAdapter$AsyncLoader;-><init>(Lcom/androlua/LuaArrayAdapter;Lcom/androlua/LuaArrayAdapter$1;)V

    iget-object v1, p0, Lcom/androlua/LuaArrayAdapter;->m:Lcom/androlua/LuaContext;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_5
    instance-of v1, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    check-cast p2, Landroid/graphics/drawable/Drawable;

    move-object v0, p2

    goto :goto_2

    :cond_6
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->l:Landroid/content/res/Resources;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_7
    instance-of v1, v0, Lcom/androlua/LoadingDrawable;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->m:Lcom/androlua/LuaContext;

    invoke-interface {v0}, Lcom/androlua/LuaContext;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x4

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/androlua/LuaArrayAdapter;->m:Lcom/androlua/LuaContext;

    invoke-interface {v2}, Lcom/androlua/LuaContext;->getWidth()I

    move-result v2

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_3

    :cond_8
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/androlua/LuaArrayAdapter;->m:Lcom/androlua/LuaContext;

    invoke-interface {v2}, Lcom/androlua/LuaContext;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v1, v0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/androlua/LuaArrayAdapter;->m:Lcom/androlua/LuaContext;

    invoke-interface {v2}, Lcom/androlua/LuaContext;->getWidth()I

    move-result v2

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/androlua/LuaArrayAdapter;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->s:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/androlua/LuaArrayAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->r:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->q:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/androlua/LuaArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->n:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->newTable()V

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->n:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaArrayAdapter;->n:Lcom/luajava/LuaState;

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->pop(I)V

    :try_start_0
    iget-object v1, p0, Lcom/androlua/LuaArrayAdapter;->p:Lcom/luajava/LuaObject;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/androlua/LuaArrayAdapter;->o:Lcom/luajava/LuaObject;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-class v3, Landroid/widget/AbsListView;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/androlua/LuaArrayAdapter;->a(Landroid/view/View;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/androlua/LuaArrayAdapter;->q:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/androlua/LuaArrayAdapter;->m:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaArrayAdapter;->q:Landroid/view/animation/Animation;

    return-void
.end method
