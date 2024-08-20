.class public Lcom/lua/b/b/a/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/b/b/a/a/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/lua/b/b/a/b/i;


# instance fields
.field private final b:Landroid/util/DisplayMetrics;

.field private c:Lcom/lua/b/b/a/a/q;

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/ListPopupWindow;

.field private f:Lcom/lua/b/b/a/a/c$a;

.field private g:Landroid/widget/Filter;

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:I

.field private m:Landroid/graphics/drawable/GradientDrawable;

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/lua/b/b/a/b/k;->f()Lcom/lua/b/b/a/b/i;

    move-result-object v0

    sput-object v0, Lcom/lua/b/b/a/a/c;->a:Lcom/lua/b/b/a/b/i;

    return-void
.end method

.method public constructor <init>(Lcom/lua/b/b/a/a/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lua/b/b/a/a/c;->c:Lcom/lua/b/b/a/a/q;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/b/b/a/a/c;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/b/b/a/a/c;->b:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Lcom/lua/b/b/a/a/c;->d()V

    return-void
.end method

.method private a(F)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lua/b/b/a/a/c;->b:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    if-gtz v0, :cond_0

    float-to-int v0, p1

    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->c:Lcom/lua/b/b/a/a/q;

    return-object v0
.end method

.method static synthetic a()Lcom/lua/b/b/a/b/i;
    .locals 1

    sget-object v0, Lcom/lua/b/b/a/a/c;->a:Lcom/lua/b/b/a/b/i;

    return-object v0
.end method

.method static synthetic a(Lcom/lua/b/b/a/a/c;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/lua/b/b/a/a/c;->k:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic a(Lcom/lua/b/b/a/a/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/c;->d(I)V

    return-void
.end method

.method static synthetic b(Lcom/lua/b/b/a/a/c;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic b(Lcom/lua/b/b/a/a/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/c;->e(I)V

    return-void
.end method

.method static synthetic c(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/c$a;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->f:Lcom/lua/b/b/a/a/c$a;

    return-object v0
.end method

.method static synthetic c(Lcom/lua/b/b/a/a/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/c;->f(I)V

    return-void
.end method

.method static synthetic d(Lcom/lua/b/b/a/a/c;)I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/c;->p:I

    return v0
.end method

.method private d()V
    .locals 4

    const v3, 0xff00ff

    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/lua/b/b/a/a/c;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/lua/b/b/a/a/c;->c:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    new-instance v0, Lcom/lua/b/b/a/a/c$a;

    iget-object v1, p0, Lcom/lua/b/b/a/a/c;->d:Landroid/content/Context;

    const v2, 0x1090003

    invoke-direct {v0, p0, v1, v2}, Lcom/lua/b/b/a/a/c$a;-><init>(Lcom/lua/b/b/a/a/c;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/c;->f:Lcom/lua/b/b/a/a/c$a;

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/lua/b/b/a/a/c;->f:Lcom/lua/b/b/a/a/c$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->f:Lcom/lua/b/b/a/a/c$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/c$a;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/b/b/a/a/c;->g:Landroid/widget/Filter;

    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/lua/b/b/a/a/c;->d(I)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/lua/b/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {p0, v1}, Lcom/lua/b/b/a/a/c;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/lua/b/b/a/a/c;->a(F)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v2}, Lcom/lua/b/b/a/a/c;->b(I)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/lua/b/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/lua/b/b/a/a/a;

    invoke-direct {v1, p0}, Lcom/lua/b/b/a/a/a;-><init>(Lcom/lua/b/b/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x1010031
        0x1010036
    .end array-data
.end method

.method private d(I)V
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/c;->i:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/lua/b/b/a/a/c;->i:I

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/lua/b/b/a/a/c;)I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/c;->n:I

    return v0
.end method

.method private e(I)V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->c:Lcom/lua/b/b/a/a/q;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/lua/b/b/a/a/c;->j:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/lua/b/b/a/a/c;->j:I

    iget-object v1, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 4

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHeight()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/c;->c:Lcom/lua/b/b/a/a/q;

    const/4 v2, 0x0

    sub-int v3, p1, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->scrollBy(II)V

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/lua/b/b/a/a/c;->h:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/lua/b/b/a/a/c;->h:I

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iput p1, p0, Lcom/lua/b/b/a/a/c;->l:I

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/lua/b/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Lcom/lua/b/b/a/b/i;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/lua/b/b/a/a/c;->a:Lcom/lua/b/b/a/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->f:Lcom/lua/b/b/a/a/c$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/c$a;->c()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->g:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    iput p1, p0, Lcom/lua/b/b/a/a/c;->n:I

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/lua/b/b/a/a/c;->a(F)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/lua/b/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    iget-object v1, p0, Lcom/lua/b/b/a/a/c;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iput p1, p0, Lcom/lua/b/b/a/a/c;->p:I

    return-void
.end method
