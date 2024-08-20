.class public Lcom/androlua/LuaEditor;
.super Lcom/lua/b/b/a/a/q;


# instance fields
.field private fa:Z

.field private ga:Landroid/content/Context;

.field private ha:Ljava/lang/String;

.field private ia:Ljava/lang/String;

.field private ja:Ljava/lang/String;

.field private ka:I

.field private la:Lcom/lua/b/b/a/b/n;

.field private ma:I

.field private na:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    const/4 v6, 0x0

    const v5, 0xff00ff

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/q;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const-string v1, "fonts"

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaEditor;->ia:Ljava/lang/String;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const-string v1, "android.jar"

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaEditor;->ja:Ljava/lang/String;

    iput-object p1, p0, Lcom/androlua/LuaEditor;->ga:Landroid/content/Context;

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditor;->ia:Ljava/lang/String;

    const-string v2, "default.ttf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditor;->ia:Ljava/lang/String;

    const-string v2, "bold.ttf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->setBoldTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditor;->ia:Ljava/lang/String;

    const-string v2, "italic.ttf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->setItalicTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget v1, Lcom/lua/b/b/a/a/q;->c:I

    int-to-float v1, v1

    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->setTextSize(I)V

    invoke-virtual {p0, v3}, Lcom/lua/b/b/a/a/q;->setShowLineNumbers(Z)V

    invoke-virtual {p0, v3}, Lcom/lua/b/b/a/a/q;->setHighlightCurrentRow(Z)V

    invoke-virtual {p0, v6}, Lcom/androlua/LuaEditor;->setWordWrap(Z)V

    invoke-virtual {p0, v4}, Lcom/lua/b/b/a/a/q;->setAutoIndentWidth(I)V

    invoke-static {}, Lcom/lua/b/b/a/b/j;->f()Lcom/lua/b/b/a/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/b/b/a/b/m;->a(Lcom/lua/b/b/a/b/i;)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/lua/b/b/a/a/w;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/w;-><init>(Lcom/lua/b/b/a/a/q;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->setNavigationMethod(Lcom/lua/b/b/a/a/v;)V

    iget-object v0, p0, Lcom/androlua/LuaEditor;->ga:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->setTextColor(I)V

    invoke-virtual {p0, v2}, Lcom/androlua/LuaEditor;->setTextHighlightColor(I)V

    invoke-static {p1}, Lcom/lua/b/b/a/b/p;->a(Landroid/content/Context;)V

    return-void

    :cond_3
    new-instance v0, Lcom/lua/b/b/a/a/x;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/x;-><init>(Lcom/lua/b/b/a/a/q;)V

    goto :goto_0

    :array_0
    .array-data 4
        0x1010031
        0x1010036
        0x1010099
    .end array-data
.end method

.method static synthetic a(Lcom/androlua/LuaEditor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaEditor;->ga:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/androlua/LuaEditor;)Lcom/lua/b/b/a/b/g;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    return-object v0
.end method

.method static synthetic c(Lcom/androlua/LuaEditor;)Lcom/lua/b/b/a/b/g;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    return-object v0
.end method


# virtual methods
.method public addNames([Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/lua/b/b/a/b/m;->c()Lcom/lua/b/b/a/b/i;

    move-result-object v0

    check-cast v0, Lcom/lua/b/b/a/b/j;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/i;->c()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    array-length v3, p1

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v2}, Lcom/lua/b/b/a/b/i;->b([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lua/b/b/a/b/m;->a(Lcom/lua/b/b/a/b/i;)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->respan()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public addPackage(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/lua/b/b/a/b/m;->c()Lcom/lua/b/b/a/b/i;

    move-result-object v0

    check-cast v0, Lcom/lua/b/b/a/b/j;

    invoke-virtual {v0, p1, p2}, Lcom/lua/b/b/a/b/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lua/b/b/a/b/m;->a(Lcom/lua/b/b/a/b/i;)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->respan()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public findNext(Ljava/lang/String;)Z
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/androlua/LuaEditor;->na:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/androlua/LuaEditor;->na:Ljava/lang/String;

    iput v5, p0, Lcom/androlua/LuaEditor;->ma:I

    :cond_0
    new-instance v0, Lcom/lua/b/b/a/b/n;

    invoke-direct {v0}, Lcom/lua/b/b/a/b/n;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaEditor;->la:Lcom/lua/b/b/a/b/n;

    iget-object v2, p0, Lcom/androlua/LuaEditor;->na:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    :goto_0
    return v5

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaEditor;->la:Lcom/lua/b/b/a/b/n;

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Lcom/lua/b/b/a/b/g;

    move-result-object v1

    iget v3, p0, Lcom/androlua/LuaEditor;->ma:I

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Lcom/lua/b/b/a/b/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lua/b/b/a/b/g;->length()I

    move-result v4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/lua/b/b/a/b/n;->a(Lcom/lua/b/b/a/b/g;Ljava/lang/String;IIZZ)I

    move-result v0

    iput v0, p0, Lcom/androlua/LuaEditor;->ma:I

    iget v0, p0, Lcom/androlua/LuaEditor;->ma:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v5}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    iget-object v0, p0, Lcom/androlua/LuaEditor;->ga:Landroid/content/Context;

    const-string v1, "\u672a\u627e\u5230"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput v5, p0, Lcom/androlua/LuaEditor;->ma:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/androlua/LuaEditor;->na:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lua/b/b/a/a/q;->setSelection(II)V

    iget v0, p0, Lcom/androlua/LuaEditor;->ma:I

    iget-object v1, p0, Lcom/androlua/LuaEditor;->na:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/androlua/LuaEditor;->ma:I

    iget v0, p0, Lcom/androlua/LuaEditor;->ma:I

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaEditor;->ha:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getSelectionStart()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lua/b/b/a/b/g;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Lcom/lua/b/b/a/b/g;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->createDocumentProvider()Lcom/lua/b/b/a/b/g;

    move-result-object v0

    return-object v0
.end method

.method public gotoLine()V
    .locals 0

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->startGotoMode()V

    return-void
.end method

.method public gotoLine(I)V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->f()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->f()I

    move-result p1

    :cond_0
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Lcom/lua/b/b/a/b/g;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/g;->c(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setSelection(I)V

    return-void
.end method

.method public insert(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/a/q;->paste(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v1, v1, -0x7001

    invoke-static {v1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_7

    const/16 v1, 0x1f

    if-eq p1, v1, :cond_6

    const/16 v1, 0x23

    if-eq p1, v1, :cond_5

    const/16 v1, 0x28

    if-eq p1, v1, :cond_4

    const/16 v1, 0x2f

    if-eq p1, v1, :cond_3

    const/16 v1, 0x32

    if-eq p1, v1, :cond_2

    const/16 v1, 0x34

    if-eq p1, v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->cut()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->paste()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->search()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->format()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->gotoLine()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->copy()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->selectAll()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/lua/b/b/a/a/q;->onLayout(ZIIII)V

    iget v0, p0, Lcom/androlua/LuaEditor;->ka:I

    if-eqz v0, :cond_0

    if-lez p4, :cond_0

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaEditor;->ka:I

    :cond_0
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/androlua/LuaEditor;->ha:Ljava/lang/String;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public redo()V
    .locals 2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->createDocumentProvider()Lcom/lua/b/b/a/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->l()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/q;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->respan()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/lua/b/b/a/b/m;->c()Lcom/lua/b/b/a/b/i;

    move-result-object v0

    check-cast v0, Lcom/lua/b/b/a/b/j;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/b/i;->g(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lua/b/b/a/b/m;->a(Lcom/lua/b/b/a/b/i;)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->respan()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public save()Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaEditor;->ha:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->save(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public save(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Lcom/lua/b/b/a/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/g;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0
.end method

.method public search()V
    .locals 0

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->startFindMode()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getColorScheme()Lcom/lua/b/b/a/b/c;

    move-result-object v0

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->b:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;I)V

    return-void
.end method

.method public setBasewordColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getColorScheme()Lcom/lua/b/b/a/b/c;

    move-result-object v0

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->l:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;I)V

    return-void
.end method

.method public setCommentColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getColorScheme()Lcom/lua/b/b/a/b/c;

    move-result-object v0

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->j:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;I)V

    return-void
.end method

.method public setDark(Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/lua/b/b/a/b/d;

    invoke-direct {v0}, Lcom/lua/b/b/a/b/d;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->setColorScheme(Lcom/lua/b/b/a/b/c;)V

    return-void

    :cond_0
    new-instance v0, Lcom/lua/b/b/a/b/e;

    invoke-direct {v0}, Lcom/lua/b/b/a/b/e;-><init>()V

    goto :goto_0
.end method

.method public setKeywordColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getColorScheme()Lcom/lua/b/b/a/b/c;

    move-result-object v0

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->k:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;I)V

    return-void
.end method

.method public setPanelBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->t:Lcom/lua/b/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/c;->a(I)V

    return-void
.end method

.method public setPanelTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->t:Lcom/lua/b/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/c;->b(I)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->hasLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/androlua/LuaEditor;->ka:I

    goto :goto_0
.end method

.method public setStringColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getColorScheme()Lcom/lua/b/b/a/b/c;

    move-result-object v0

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->n:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Lcom/lua/b/b/a/b/f;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/b/f;-><init>(Lcom/lua/b/b/a/b/f$a;)V

    iget-boolean v1, p0, Lcom/androlua/LuaEditor;->fa:Z

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/f;->a(Z)V

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/b/f;->a(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/lua/b/b/a/b/g;

    invoke-direct {v1, v0}, Lcom/lua/b/b/a/b/g;-><init>(Lcom/lua/b/b/a/b/f;)V

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/q;->setDocumentProvider(Lcom/lua/b/b/a/b/g;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/lua/b/b/a/a/q;->replaceText(IILjava/lang/String;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getColorScheme()Lcom/lua/b/b/a/b/c;

    move-result-object v0

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->a:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;I)V

    return-void
.end method

.method public setTextHighlightColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getColorScheme()Lcom/lua/b/b/a/b/c;

    move-result-object v0

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->d:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;I)V

    return-void
.end method

.method public setUserwordColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getColorScheme()Lcom/lua/b/b/a/b/c;

    move-result-object v0

    sget-object v1, Lcom/lua/b/b/a/b/c$a;->m:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;I)V

    return-void
.end method

.method public setWordWrap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/androlua/LuaEditor;->fa:Z

    invoke-super {p0, p1}, Lcom/lua/b/b/a/a/q;->setWordWrap(Z)V

    return-void
.end method

.method public startFindMode()V
    .locals 1

    new-instance v0, Lcom/androlua/LuaEditor$2;

    invoke-direct {v0, p0}, Lcom/androlua/LuaEditor$2;-><init>(Lcom/androlua/LuaEditor;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public startGotoMode()V
    .locals 1

    new-instance v0, Lcom/androlua/LuaEditor$1;

    invoke-direct {v0, p0}, Lcom/androlua/LuaEditor$1;-><init>(Lcom/androlua/LuaEditor;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public undo()V
    .locals 2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->createDocumentProvider()Lcom/lua/b/b/a/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->m()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/q;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->respan()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
