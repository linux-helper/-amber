.class Lcom/lua/b/b/a/a/b;
.super Landroid/widget/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lua/b/b/a/a/c$a;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/lua/b/b/a/a/c$a;


# direct methods
.method constructor <init>(Lcom/lua/b/b/a/a/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\."

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v5, v5, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :goto_0
    iget-object v5, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v5, v5, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    invoke-static {v5}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lua/b/b/a/a/q;->getCaretPosition()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    aget-object v0, v0, v1

    invoke-static {}, Lcom/lua/b/b/a/a/c;->a()Lcom/lua/b/b/a/b/i;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/lua/b/b/a/b/i;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/lua/b/b/a/a/c;->a()Lcom/lua/b/b/a/b/i;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/lua/b/b/a/b/i;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    :goto_1
    if-ge v1, v5, :cond_3

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v7, v7, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    invoke-static {v7}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lua/b/b/a/a/q;->getColorScheme()Lcom/lua/b/b/a/b/c;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/lua/b/b/a/b/c;->a(I)I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/lua/b/b/a/a/b;->a(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v5, v5, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    invoke-static {v5, v4}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    invoke-static {v0, v4, v5}, Lcom/lua/b/b/a/b/o;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-static {v3}, Lcom/lua/b/b/a/b/p;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    return-object v0

    :cond_4
    array-length v0, v0

    if-ne v0, v10, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_6

    invoke-static {}, Lcom/lua/b/b/a/a/c;->a()Lcom/lua/b/b/a/b/i;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lua/b/b/a/b/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/lua/b/b/a/a/c;->a()Lcom/lua/b/b/a/b/i;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lua/b/b/a/b/i;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    :goto_3
    if-ge v1, v4, :cond_3

    aget-object v5, v0, v1

    iget-object v6, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v6, v6, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    invoke-static {v6}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lua/b/b/a/a/q;->getColorScheme()Lcom/lua/b/b/a/b/c;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/lua/b/b/a/b/c;->a(I)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/lua/b/b/a/a/b;->a(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v4, v5}, Lcom/lua/b/b/a/b/o;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v0, v0, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    invoke-static {v0}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->getColorScheme()Lcom/lua/b/b/a/b/c;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/lua/b/b/a/b/o;->a(Ljava/lang/String;ILcom/lua/b/b/a/b/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/lua/b/b/a/b/o;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v6, v6, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    invoke-static {v6}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lua/b/b/a/a/q;->getColorScheme()Lcom/lua/b/b/a/b/c;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/lua/b/b/a/b/c;->a(I)I

    move-result v6

    invoke-direct {p0, v0, v6}, Lcom/lua/b/b/a/a/b;->a(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/lua/b/b/a/a/c;->a()Lcom/lua/b/b/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/i;->b()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_5
    if-ge v0, v6, :cond_a

    aget-object v7, v5, v0

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v8, v8, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    invoke-static {v8}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lua/b/b/a/a/q;->getColorScheme()Lcom/lua/b/b/a/b/c;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/lua/b/b/a/b/c;->a(I)I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/lua/b/b/a/a/b;->a(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    invoke-static {}, Lcom/lua/b/b/a/a/c;->a()Lcom/lua/b/b/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/i;->c()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_6
    if-ge v0, v6, :cond_3

    aget-object v1, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v7, v7, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    invoke-static {v7}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lua/b/b/a/a/q;->getColorScheme()Lcom/lua/b/b/a/b/c;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/lua/b/b/a/b/c;->a(I)I

    move-result v7

    invoke-direct {p0, v1, v7}, Lcom/lua/b/b/a/a/b;->a(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 7

    if-eqz p2, :cond_0

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    invoke-static {v0}, Lcom/lua/b/b/a/a/c$a;->a(Lcom/lua/b/b/a/a/c$a;)Lcom/lua/b/b/a/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v1, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v0, v0, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    invoke-static {v0}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q;->getCaretY()I

    move-result v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v1, v1, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    invoke-static {v1}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v2, v2, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    invoke-static {v2}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v4, v3, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    invoke-virtual {v3}, Lcom/lua/b/b/a/a/c$a;->b()I

    move-result v3

    const/4 v5, 0x3

    iget v6, p2, Landroid/widget/Filter$FilterResults;->count:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/2addr v3, v5

    invoke-static {v4, v3}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;I)V

    iget-object v3, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v3, v3, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    invoke-static {v3}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lua/b/b/a/a/q;->getCaretX()I

    move-result v4

    iget-object v5, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v5, v5, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    invoke-static {v5}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/lua/b/b/a/a/c;->b(Lcom/lua/b/b/a/a/c;I)V

    iget-object v3, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v3, v3, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-static {v3}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/a/c;)Lcom/lua/b/b/a/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Lcom/lua/b/b/a/a/c;->c(Lcom/lua/b/b/a/a/c;I)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    iget-object v0, v0, Lcom/lua/b/b/a/a/c$a;->d:Lcom/lua/b/b/a/a/c;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/c;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/b;->a:Lcom/lua/b/b/a/a/c$a;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
