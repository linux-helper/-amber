.class public Lcom/nirenr/SplitEditView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/SplitEditView$EditDialog;,
        Lcom/nirenr/SplitEditView$OnSaveListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/GridView;

.field private d:Lcom/androlua/LuaEditor;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Lcom/nirenr/SplitEditView$OnSaveListener;

.field private i:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/nirenr/SplitEditView;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nirenr/SplitEditView;->a(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nirenr/SplitEditView;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/nirenr/SplitEditView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    iget v0, p0, Lcom/nirenr/SplitEditView;->e:I

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v3}, Lcom/nirenr/SplitEditView;->setShowEdit(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->b()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->e()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->d()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->c()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, -0x1

    iput-object p0, p0, Lcom/nirenr/SplitEditView;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/GridView;

    invoke-direct {v4, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    new-instance v4, Lcom/androlua/LuaEditor;

    invoke-direct {v4, p1}, Lcom/androlua/LuaEditor;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    iget-object v4, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/nirenr/SplitEditView;->b:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/nirenr/SplitEditView;->b:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->i:Landroid/widget/LinearLayout;

    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "\u5168\u6587"

    aput-object v0, v4, v1

    const-string v0, "\u6309\u6bb5"

    aput-object v0, v4, v6

    const/4 v0, 0x2

    const-string v5, "\u6309\u884c"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "\u6309\u53e5"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "\u6309\u5b57"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "\u786e\u5b9a"

    aput-object v5, v4, v0

    move v0, v1

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    aget-object v5, v4, v0

    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setId(I)V

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/nirenr/SplitEditView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/SplitEditView;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nirenr/SplitEditView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/nirenr/SplitEditView;->setText(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nirenr/SplitEditView;->setOnSaveListener(Lcom/nirenr/SplitEditView$OnSaveListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget v4, p0, Lcom/nirenr/SplitEditView;->e:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    :cond_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/nirenr/SplitEditView;->e:I

    if-ne v0, v5, :cond_1

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/nirenr/SplitEditView;->e:I

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    iget-object v3, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/ArrayListAdapter;

    iget-object v2, p0, Lcom/nirenr/SplitEditView;->a:Landroid/content/Context;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic b(Lcom/nirenr/SplitEditView;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    iput v3, p0, Lcom/nirenr/SplitEditView;->e:I

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const-string v1, "\\n{2,10}"

    invoke-direct {p0, v0, v1}, Lcom/nirenr/SplitEditView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/ArrayListAdapter;

    iget-object v2, p0, Lcom/nirenr/SplitEditView;->a:Landroid/content/Context;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic c(Lcom/nirenr/SplitEditView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->f()V

    return-void
.end method

.method static synthetic d(Lcom/nirenr/SplitEditView;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    return-object v0
.end method

.method private d()V
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/nirenr/SplitEditView;->e:I

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const-string v1, "\n"

    invoke-direct {p0, v0, v1}, Lcom/nirenr/SplitEditView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/ArrayListAdapter;

    iget-object v2, p0, Lcom/nirenr/SplitEditView;->a:Landroid/content/Context;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private e()V
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/nirenr/SplitEditView;->e:I

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const-string v1, "\\. |[\u3002\uff1f\uff01\uff0c\n \u201c\u201d,\uff1a\uff1b;\\?!]+"

    invoke-direct {p0, v0, v1}, Lcom/nirenr/SplitEditView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/ArrayListAdapter;

    iget-object v2, p0, Lcom/nirenr/SplitEditView;->a:Landroid/content/Context;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private f()V
    .locals 2

    iget v0, p0, Lcom/nirenr/SplitEditView;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->b()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->e()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->d()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->c()V

    goto :goto_0
.end method

.method private setShowEdit(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->isShowEdit()Z

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->getText()Lcom/lua/b/b/a/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->isShowEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->getText()Lcom/lua/b/b/a/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/nirenr/SplitEditView;->e:I

    if-ne v4, v5, :cond_1

    const-string v4, "\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/nirenr/SplitEditView;->e:I

    if-ne v0, v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isShowEdit()Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/SplitEditView;->h:Lcom/nirenr/SplitEditView$OnSaveListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nirenr/SplitEditView$OnSaveListener;->onSave(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/nirenr/SplitEditView;->setShowEdit(Z)V

    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->b()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/nirenr/SplitEditView;->setShowEdit(Z)V

    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->e()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2}, Lcom/nirenr/SplitEditView;->setShowEdit(Z)V

    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->d()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v2}, Lcom/nirenr/SplitEditView;->setShowEdit(Z)V

    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->c()V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v1}, Lcom/nirenr/SplitEditView;->setShowEdit(Z)V

    iput v2, p0, Lcom/nirenr/SplitEditView;->e:I

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v0, Lcom/nirenr/SplitEditView$EditDialog;

    invoke-direct {v0, p0, p3}, Lcom/nirenr/SplitEditView$EditDialog;-><init>(Lcom/nirenr/SplitEditView;I)V

    invoke-virtual {v0}, Lcom/nirenr/SplitEditView$EditDialog;->show()V

    return-void
.end method

.method public setOnSaveListener(Lcom/nirenr/SplitEditView$OnSaveListener;)V
    .locals 2

    const/4 v1, 0x5

    iput-object p1, p0, Lcom/nirenr/SplitEditView;->h:Lcom/nirenr/SplitEditView$OnSaveListener;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/SplitEditView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    iget-object v1, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->a()V

    return-void
.end method
