.class public Lcom/lua/b/b/a/b/b;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/androlua/LuaTokenTypes;)I
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/lua/b/b/a/b/a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/CharSequence;)I
    .locals 5

    new-instance v2, Lcom/androlua/LuaLexer;

    invoke-direct {v2, p0}, Lcom/androlua/LuaLexer;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lcom/androlua/LuaLexer;->advance()Lcom/androlua/LuaTokenTypes;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    return v1

    :cond_0
    invoke-virtual {v2}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v3

    const-string v4, "switch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/lua/b/b/a/b/b;->a(Lcom/androlua/LuaTokenTypes;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 14

    const/16 v12, 0x20

    const/4 v1, 0x1

    const/4 v3, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Lcom/androlua/LuaLexer;

    invoke-direct {v8, p0}, Lcom/androlua/LuaLexer;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/lua/c/a/a/a/f;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/lua/b/b/a/b/m;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v9, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v9, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_3
    :try_start_0
    sget-object v0, Lcom/androlua/LuaTokenTypes;->WHITE_SPACE:Lcom/androlua/LuaTokenTypes;

    move v2, v3

    move v4, v3

    move v6, v1

    move v0, v1

    :goto_1
    invoke-virtual {v8}, Lcom/androlua/LuaLexer;->advance()Lcom/androlua/LuaTokenTypes;

    move-result-object v10

    if-nez v10, :cond_4

    :goto_2
    return-object v7

    :cond_4
    invoke-virtual {v8}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v5

    if-eq v4, v5, :cond_5

    move v0, v1

    :cond_5
    sget-object v4, Lcom/androlua/LuaTokenTypes;->NEW_LINE:Lcom/androlua/LuaTokenTypes;

    if-ne v10, v4, :cond_8

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v12, :cond_6

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v4, 0xa

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v4, v0

    move v0, v2

    move v2, v1

    :goto_3
    sget-object v6, Lcom/androlua/LuaTokenTypes;->WHITE_SPACE:Lcom/androlua/LuaTokenTypes;

    if-eq v10, v6, :cond_7

    sget-object v6, Lcom/androlua/LuaTokenTypes;->NEW_LINE:Lcom/androlua/LuaTokenTypes;

    :cond_7
    move v6, v2

    move v2, v0

    move v0, v4

    move v4, v5

    goto :goto_1

    :cond_8
    if-nez v6, :cond_9

    if-eqz v0, :cond_b

    :cond_9
    sget-object v4, Lcom/lua/b/b/a/b/a;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v4, v4, v11

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    if-eqz v6, :cond_a

    mul-int v0, v2, p1

    invoke-static {v0}, Lcom/lua/b/b/a/b/b;->a(I)[C

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v8}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/2addr v0, v2

    :goto_4
    move v2, v3

    move v4, v3

    goto :goto_3

    :cond_b
    sget-object v4, Lcom/androlua/LuaTokenTypes;->WHITE_SPACE:Lcom/androlua/LuaTokenTypes;

    if-ne v10, v4, :cond_c

    const/16 v4, 0x20

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v0

    move v0, v2

    move v2, v6

    goto :goto_3

    :cond_c
    invoke-virtual {v8}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v0

    move v0, v2

    move v2, v6

    goto :goto_3

    :pswitch_1
    invoke-virtual {v8}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    move v13, v2

    move-object v2, v0

    move v0, v13

    :goto_5
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :pswitch_2
    if-eqz v6, :cond_d

    mul-int v0, v2, p1

    :try_start_1
    div-int/lit8 v4, p1, 0x2

    sub-int/2addr v0, v4

    invoke-static {v0}, Lcom/lua/b/b/a/b/b;->a(I)[C

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v8}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    move v13, v2

    move-object v2, v0

    move v0, v13

    goto :goto_5

    :pswitch_3
    invoke-virtual {v9, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/2addr v2, v0

    if-eqz v6, :cond_e

    mul-int v0, v2, p1

    invoke-static {v0}, Lcom/lua/b/b/a/b/b;->a(I)[C

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v8}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move v13, v2

    move-object v2, v0

    move v0, v13

    goto :goto_5

    :pswitch_4
    move v4, v0

    move v0, v2

    move v2, v6

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static a(I)[C
    .locals 3

    const/4 v1, 0x0

    if-gez p0, :cond_1

    new-array v0, v1, [C

    :cond_0
    return-object v0

    :cond_1
    new-array v0, p0, [C

    :goto_0
    if-ge v1, p0, :cond_0

    const/16 v2, 0x20

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
