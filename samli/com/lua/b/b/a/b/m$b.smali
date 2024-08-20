.class Lcom/lua/b/b/a/b/m$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/b/b/a/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/lua/b/b/a/b/m;

.field private final b:Lcom/lua/b/b/a/b/h;

.field private c:Z

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lua/b/b/a/b/q;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lcom/lua/b/b/a/b/m;


# direct methods
.method public constructor <init>(Lcom/lua/b/b/a/b/m;Lcom/lua/b/b/a/b/m;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/lua/b/b/a/b/m$b;->f:Lcom/lua/b/b/a/b/m;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v3, p0, Lcom/lua/b/b/a/b/m$b;->c:Z

    const/16 v0, 0x10

    iput v0, p0, Lcom/lua/b/b/a/b/m$b;->d:I

    iput-object p2, p0, Lcom/lua/b/b/a/b/m$b;->a:Lcom/lua/b/b/a/b/m;

    new-instance v0, Lcom/lua/b/b/a/b/h;

    invoke-direct {v0}, Lcom/lua/b/b/a/b/h;-><init>()V

    iput-object v0, p0, Lcom/lua/b/b/a/b/m$b;->b:Lcom/lua/b/b/a/b/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lua/b/b/a/b/m$b;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lua/b/b/a/b/m$b;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/lua/b/b/a/b/q;

    invoke-static {p1}, Lcom/lua/b/b/a/b/m;->a(Lcom/lua/b/b/a/b/m;)Lcom/lua/b/b/a/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/g;->length()I

    move-result v2

    invoke-direct {v1, v2, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/b/m$b;->f:Lcom/lua/b/b/a/b/m;

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/m;->b()Lcom/lua/b/b/a/b/g;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lua/b/b/a/b/g;->f()I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    const/16 v2, 0x2004

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v16, Ljava/util/ArrayList;

    const/16 v2, 0x2004

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v17, Ljava/util/ArrayList;

    const/16 v2, 0x2004

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v18, Ljava/util/ArrayList;

    const/16 v2, 0x2004

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    mul-int/lit8 v2, v14, 0x5

    const/16 v3, 0x270f

    if-ge v2, v3, :cond_0

    new-instance v2, Lcom/lua/b/b/a/b/g;

    invoke-direct {v2, v13}, Lcom/lua/b/b/a/b/g;-><init>(Lcom/lua/b/b/a/b/g;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lua/b/b/a/b/m$b;->b:Lcom/lua/b/b/a/b/h;

    invoke-static {v2, v3}, Lcom/lua/b/b/a/b/o;->a(Ljava/lang/CharSequence;Lcom/lua/b/b/a/b/h;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/b/m$b;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/b/m$b;->b:Lcom/lua/b/b/a/b/h;

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/h;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/lua/b/b/a/b/o;->e()V

    :cond_1
    invoke-static {}, Lcom/lua/b/b/a/b/o;->b()Ljava/util/HashMap;

    invoke-static {}, Lcom/lua/b/b/a/b/o;->d()Ljava/util/HashMap;

    move-result-object v19

    new-instance v20, Lcom/androlua/LuaLexer;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lcom/androlua/LuaLexer;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/lua/b/b/a/b/m;->c()Lcom/lua/b/b/a/b/i;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lua/b/b/a/b/i;->a()V

    invoke-static {}, Lcom/lua/b/b/a/b/o;->a()V

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v7, ""

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v11, v7

    move v12, v8

    move v7, v2

    move-object v2, v9

    move-object v9, v4

    move-object/from16 v25, v5

    move-object v5, v10

    move v10, v3

    move-object/from16 v3, v25

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lua/b/b/a/b/m$b;->b:Lcom/lua/b/b/a/b/h;

    invoke-virtual {v4}, Lcom/lua/b/b/a/b/h;->b()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->advance()Lcom/androlua/LuaTokenTypes;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    if-nez v4, :cond_4

    :cond_2
    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/lua/b/b/a/b/q;

    invoke-virtual {v13}, Lcom/lua/b/b/a/b/g;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual/range {v21 .. v21}, Lcom/lua/b/b/a/b/i;->e()V

    invoke-static/range {v16 .. v16}, Lcom/lua/b/b/a/b/m;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/lua/b/b/a/b/m$b;->e:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yylength()I

    move-result v22

    add-int v8, v7, v22

    if-eqz v6, :cond_22

    sget-object v7, Lcom/androlua/LuaTokenTypes;->STRING:Lcom/androlua/LuaTokenTypes;

    if-ne v5, v7, :cond_22

    sget-object v7, Lcom/androlua/LuaTokenTypes;->STRING:Lcom/androlua/LuaTokenTypes;

    if-eq v4, v7, :cond_22

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v7, 0x2

    if-le v2, v7, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v6, "\\.|\\$"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-object v2, v2, v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/lua/b/b/a/b/i;->a(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " :import"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lua/b/b/a/b/o;->a(Ljava/lang/String;)V

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move-object v7, v2

    :goto_3
    sget-object v2, Lcom/lua/b/b/a/b/l;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aget v2, v2, v23
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    packed-switch v2, :pswitch_data_0

    :try_start_3
    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x0

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v10

    move-object v9, v11

    move v10, v12

    :goto_4
    sget-object v2, Lcom/androlua/LuaTokenTypes;->WHITE_SPACE:Lcom/androlua/LuaTokenTypes;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eq v4, v2, :cond_20

    move-object v2, v4

    :goto_5
    move-object v11, v9

    move v12, v10

    move-object v9, v4

    move v10, v3

    move-object v3, v5

    move-object v5, v2

    move-object v2, v7

    move v7, v8

    goto/16 :goto_1

    :pswitch_0
    :try_start_4
    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x4

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    :goto_6
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v3, v10

    move-object v9, v11

    move v10, v12

    goto :goto_4

    :catch_0
    move-exception v2

    :goto_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lua/b/b/a/b/v;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    :try_start_5
    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/16 v3, 0x1e

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v10

    move-object v9, v11

    move v10, v12

    goto :goto_4

    :pswitch_2
    const/16 v2, 0x270f

    if-le v14, v2, :cond_6

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x0

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    goto :goto_6

    :catch_1
    move-exception v2

    goto :goto_7

    :cond_6
    sget-object v2, Lcom/androlua/LuaTokenTypes;->NUMBER:Lcom/androlua/LuaTokenTypes;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-ne v9, v2, :cond_7

    :try_start_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lua/b/b/a/b/q;->b(I)V

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v3

    add-int v3, v3, v22

    invoke-virtual {v2, v3}, Lcom/lua/b/b/a/b/q;->a(I)V

    move v3, v10

    move-object v9, v11

    move v10, v12

    goto :goto_4

    :cond_7
    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v9

    sget-object v2, Lcom/androlua/LuaTokenTypes;->FUNCTION:Lcom/androlua/LuaTokenTypes;

    if-ne v5, v2, :cond_b

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x4

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/lua/b/b/a/b/i;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " :function"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lua/b/b/a/b/o;->a(Ljava/lang/String;)V

    :goto_8
    sget-object v2, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-eq v5, v2, :cond_9

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_8
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lua/b/b/a/b/q;

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v3

    if-ne v3, v8, :cond_8

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lua/b/b/a/b/q;

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/q;->b()I

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v3}, Lcom/lua/b/b/a/b/q;->b()I

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Lcom/lua/b/b/a/b/q;->b(I)V

    :cond_9
    :goto_9
    sget-object v2, Lcom/androlua/LuaTokenTypes;->ASSIGN:Lcom/androlua/LuaTokenTypes;

    if-ne v5, v2, :cond_a

    const-string v2, "require"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/lua/b/b/a/b/i;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " :require"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lua/b/b/a/b/o;->a(Ljava/lang/String;)V

    if-ltz v10, :cond_a

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/lua/b/b/a/b/q;->b(I)V

    :cond_a
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v3, v10

    move v10, v12

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/lua/b/b/a/b/i;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x4

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    :goto_a
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_c
    sget-object v2, Lcom/androlua/LuaTokenTypes;->GOTO:Lcom/androlua/LuaTokenTypes;

    if-eq v5, v2, :cond_d

    sget-object v2, Lcom/androlua/LuaTokenTypes;->AT:Lcom/androlua/LuaTokenTypes;

    if-ne v5, v2, :cond_e

    :cond_d
    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x4

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    :goto_b
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_e
    sget-object v2, Lcom/androlua/LuaTokenTypes;->MULT:Lcom/androlua/LuaTokenTypes;

    if-ne v5, v2, :cond_f

    sget-object v2, Lcom/androlua/LuaTokenTypes;->LOCAL:Lcom/androlua/LuaTokenTypes;

    if-ne v3, v2, :cond_f

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x2

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    goto :goto_a

    :cond_f
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/lua/b/b/a/b/i;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x3

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    goto :goto_a

    :cond_10
    sget-object v2, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-ne v5, v2, :cond_11

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/lua/b/b/a/b/i;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, v21

    invoke-virtual {v0, v11, v9}, Lcom/lua/b/b/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x3

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    goto :goto_b

    :cond_11
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/lua/b/b/a/b/i;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x3

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    goto :goto_b

    :cond_12
    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x0

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    goto :goto_b

    :cond_13
    const/16 v23, 0xa

    move/from16 v0, v23

    if-ne v2, v0, :cond_14

    const/4 v2, 0x6

    invoke-virtual {v3, v2}, Lcom/lua/b/b/a/b/q;->b(I)V

    goto/16 :goto_9

    :cond_14
    const/16 v23, 0x7

    move/from16 v0, v23

    if-ne v2, v0, :cond_8

    const/4 v2, 0x7

    invoke-virtual {v3, v2}, Lcom/lua/b/b/a/b/q;->b(I)V

    goto/16 :goto_9

    :pswitch_3
    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/16 v3, 0x32

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x270f

    if-le v14, v2, :cond_16

    move v2, v6

    :cond_15
    :goto_c
    move v6, v2

    move v3, v10

    move-object v9, v11

    move v10, v12

    goto/16 :goto_4

    :cond_16
    const-string v2, "require"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "import"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_17
    const/4 v2, 0x1

    :goto_d
    if-eqz v2, :cond_15

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :pswitch_4
    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x2

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    :goto_e
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v6

    goto :goto_c

    :pswitch_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_18

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v9

    const/4 v9, 0x1

    if-le v3, v9, :cond_18

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x2

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    goto :goto_e

    :pswitch_6
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v9

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v2, v3, v9, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x2

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    goto :goto_e

    :pswitch_7
    sget-object v2, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-ne v5, v2, :cond_19

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x0

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v10

    move-object v9, v11

    move v10, v12

    goto/16 :goto_4

    :cond_19
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1a

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v9

    const/4 v9, 0x1

    if-le v3, v9, :cond_1a

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x1

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    const/4 v12, 0x1

    move v3, v10

    move-object v9, v11

    move v10, v12

    goto/16 :goto_4

    :pswitch_8
    sget-object v2, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-ne v5, v2, :cond_1b

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x0

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v10

    move-object v9, v11

    move v10, v12

    goto/16 :goto_4

    :cond_1b
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v9

    const/4 v12, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v23

    move/from16 v0, v23

    invoke-direct {v2, v3, v9, v12, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x1

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    move v3, v10

    move-object v9, v11

    move v10, v12

    goto/16 :goto_4

    :pswitch_9
    sget-object v2, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-ne v5, v2, :cond_1c

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x0

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    :goto_10
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v10

    move-object v9, v11

    move v10, v12

    goto/16 :goto_4

    :cond_1c
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v9

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v2, v3, v9, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x1

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    goto :goto_10

    :pswitch_a
    sget-object v2, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-ne v5, v2, :cond_1d

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x0

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    goto :goto_10

    :cond_1d
    if-eqz v12, :cond_1e

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v9

    const/4 v12, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v23

    move/from16 v0, v23

    invoke-direct {v2, v3, v9, v12, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x1

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :pswitch_b
    sget-object v2, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-ne v5, v2, :cond_1f

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x0

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    goto :goto_10

    :cond_1f
    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x1

    move/from16 v0, v22

    invoke-direct {v2, v0, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move v3, v10

    move-object v9, v11

    move v10, v12

    goto/16 :goto_4

    :cond_20
    move-object v2, v5

    goto/16 :goto_5

    :cond_21
    move v2, v6

    goto/16 :goto_d

    :cond_22
    move-object v7, v2

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_7
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/b/m$b;->b:Lcom/lua/b/b/a/b/h;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/h;->c()V

    return-void
.end method

.method public b()V
    .locals 12

    iget-object v0, p0, Lcom/lua/b/b/a/b/m$b;->f:Lcom/lua/b/b/a/b/m;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/m;->b()Lcom/lua/b/b/a/b/g;

    move-result-object v7

    invoke-static {}, Lcom/lua/b/b/a/b/m;->c()Lcom/lua/b/b/a/b/i;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lcom/lua/b/b/a/b/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/lua/b/b/a/b/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v9, p0, Lcom/lua/b/b/a/b/m$b;->e:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x7f

    new-array v10, v0, [C

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/lua/b/b/a/b/g;->g(I)I

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v11, v0

    move v0, v2

    move v2, v1

    move v1, v11

    :goto_1
    invoke-virtual {v7}, Lcom/lua/b/b/a/b/g;->h()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/lua/b/b/a/b/m$b;->b:Lcom/lua/b/b/a/b/h;

    invoke-virtual {v4}, Lcom/lua/b/b/a/b/h;->b()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v7}, Lcom/lua/b/b/a/b/g;->k()C

    move-result v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_c

    if-eqz v3, :cond_c

    const/4 v5, 0x1

    if-eq v3, v5, :cond_c

    const/4 v5, 0x3

    if-eq v3, v5, :cond_c

    const/16 v5, 0xa

    if-eq v3, v5, :cond_c

    const/16 v5, 0x1e

    if-eq v3, v5, :cond_a

    const/16 v5, 0x28

    if-eq v3, v5, :cond_9

    const/16 v5, 0x14

    if-eq v3, v5, :cond_a

    const/16 v5, 0x15

    if-eq v3, v5, :cond_a

    const/16 v5, 0x32

    if-eq v3, v5, :cond_6

    const/16 v5, 0x33

    if-eq v3, v5, :cond_2

    const-string v0, "Invalid state in TokenScanner"

    invoke-static {v0}, Lcom/lua/b/b/a/b/v;->a(Ljava/lang/String;)V

    :cond_1
    :goto_2
    move v11, v4

    move v4, v3

    move v3, v11

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    move v3, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v4}, Lcom/lua/b/b/a/b/i;->b(C)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    :cond_3
    invoke-virtual {v8, v0}, Lcom/lua/b/b/a/b/i;->c(C)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    :goto_4
    const/4 v3, -0x1

    move v11, v4

    move v4, v3

    move v3, v11

    goto :goto_3

    :cond_5
    invoke-virtual {v8, v4}, Lcom/lua/b/b/a/b/i;->c(C)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v8, v0}, Lcom/lua/b/b/a/b/i;->c(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_5
    const/16 v0, 0x20

    move v4, v3

    move v3, v0

    goto :goto_3

    :cond_6
    invoke-virtual {v8, v4}, Lcom/lua/b/b/a/b/i;->a(C)Z

    move-result v5

    if-nez v5, :cond_7

    const/16 v5, 0xa

    if-ne v4, v5, :cond_8

    :cond_7
    invoke-virtual {v8, v0}, Lcom/lua/b/b/a/b/i;->c(C)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_8
    invoke-virtual {v8, v4}, Lcom/lua/b/b/a/b/i;->c(C)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v8, v0}, Lcom/lua/b/b/a/b/i;->c(C)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_5

    :cond_9
    invoke-virtual {v8, v0, v4}, Lcom/lua/b/b/a/b/i;->b(CC)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_a
    invoke-virtual {v8, v0, v4}, Lcom/lua/b/b/a/b/i;->c(CC)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v3, 0x28

    move v11, v4

    move v4, v3

    move v3, v11

    goto :goto_3

    :cond_b
    const/16 v0, 0xa

    if-ne v4, v0, :cond_1

    goto :goto_4

    :cond_c
    invoke-virtual {v8, v0, v4}, Lcom/lua/b/b/a/b/i;->a(CC)Z

    move-result v5

    if-eqz v5, :cond_f

    const/16 v0, 0x1e

    :goto_6
    const/4 v5, 0x1

    move v11, v5

    move v5, v0

    move v0, v11

    :goto_7
    if-eqz v0, :cond_16

    const/16 v0, 0x1e

    if-eq v5, v0, :cond_d

    const/16 v0, 0x28

    if-ne v5, v0, :cond_15

    :cond_d
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/b/b/a/b/q;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v0

    if-ne v0, v6, :cond_20

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v6

    :goto_8
    if-lez v2, :cond_e

    if-eqz v3, :cond_e

    new-instance v3, Lcom/lua/b/b/a/b/q;

    sub-int v2, v1, v2

    const/4 v6, 0x0

    invoke-direct {v3, v2, v6}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance v2, Lcom/lua/b/b/a/b/q;

    invoke-direct {v2, v0, v5}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    move v3, v4

    move v4, v5

    goto/16 :goto_3

    :cond_f
    invoke-virtual {v8, v0, v4}, Lcom/lua/b/b/a/b/i;->c(CC)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x28

    goto :goto_6

    :cond_10
    invoke-virtual {v8, v4}, Lcom/lua/b/b/a/b/i;->a(C)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x32

    goto :goto_6

    :cond_11
    invoke-virtual {v8, v4}, Lcom/lua/b/b/a/b/i;->b(C)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x33

    goto :goto_6

    :cond_12
    invoke-virtual {v8, v4}, Lcom/lua/b/b/a/b/i;->d(C)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x14

    goto :goto_6

    :cond_13
    invoke-virtual {v8, v4}, Lcom/lua/b/b/a/b/i;->e(C)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x15

    goto :goto_6

    :cond_14
    const/4 v0, 0x0

    move v5, v3

    goto :goto_7

    :cond_15
    move v0, v1

    goto :goto_8

    :cond_16
    invoke-virtual {v8, v4}, Lcom/lua/b/b/a/b/i;->h(C)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v8, v4}, Lcom/lua/b/b/a/b/i;->f(C)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_17
    if-lez v2, :cond_19

    const/4 v0, 0x0

    aget-char v0, v10, v0

    invoke-virtual {v8, v0}, Lcom/lua/b/b/a/b/i;->i(C)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/lua/b/b/a/b/q;

    sub-int v2, v1, v2

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xa

    :cond_18
    :goto_9
    const/4 v2, 0x0

    :cond_19
    if-eqz v3, :cond_1

    invoke-virtual {v8, v4}, Lcom/lua/b/b/a/b/i;->f(C)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move v11, v4

    move v4, v3

    move v3, v11

    goto/16 :goto_3

    :cond_1a
    const/16 v0, 0x7f

    if-ge v2, v0, :cond_1

    aput-char v4, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_1b
    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v0, v10, v5, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8, v0}, Lcom/lua/b/b/a/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/lua/b/b/a/b/q;

    sub-int v2, v1, v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_9

    :cond_1c
    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v0, v10, v5, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8, v0}, Lcom/lua/b/b/a/b/i;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/lua/b/b/a/b/q;

    sub-int v2, v1, v2

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    goto :goto_9

    :cond_1d
    if-eqz v3, :cond_18

    new-instance v0, Lcom/lua/b/b/a/b/q;

    sub-int v2, v1, v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_9

    :cond_1e
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/lua/b/b/a/b/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    iput-object v9, p0, Lcom/lua/b/b/a/b/m$b;->e:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_20
    move v0, v6

    goto/16 :goto_8
.end method

.method public run()V
    .locals 2

    const/4 v1, 0x0

    :cond_0
    iput-boolean v1, p0, Lcom/lua/b/b/a/b/m$b;->c:Z

    iget-object v0, p0, Lcom/lua/b/b/a/b/m$b;->b:Lcom/lua/b/b/a/b/h;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/h;->a()V

    :try_start_0
    invoke-static {}, Lcom/lua/b/b/a/b/m;->c()Lcom/lua/b/b/a/b/i;

    move-result-object v0

    instance-of v0, v0, Lcom/lua/b/b/a/b/j;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/lua/b/b/a/b/m$b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/lua/b/b/a/b/m$b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/b/m$b;->b:Lcom/lua/b/b/a/b/h;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/h;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/b/m$b;->a:Lcom/lua/b/b/a/b/m;

    iget-object v1, p0, Lcom/lua/b/b/a/b/m$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/m;->a(Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/lua/b/b/a/b/m$b;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lua/b/b/a/b/m$b;->e:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/lua/b/b/a/b/m$b;->c:Z

    goto :goto_0
.end method
