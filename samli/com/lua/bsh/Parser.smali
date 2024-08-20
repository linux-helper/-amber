.class public Lcom/lua/bsh/Parser;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lua/bsh/ParserTreeConstants;
.implements Lcom/lua/bsh/ParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/bsh/Parser$LookaheadSuccess;
    }
.end annotation


# instance fields
.field protected a:Lcom/lua/bsh/JJTParserState;

.field b:Z

.field c:Lcom/lua/bsh/JavaCharStream;

.field private d:I

.field private e:Lcom/lua/bsh/Token;

.field private f:Lcom/lua/bsh/Token;

.field private g:I

.field private h:Z

.field private final i:Lcom/lua/bsh/Parser$LookaheadSuccess;

.field public jj_nt:Lcom/lua/bsh/Token;

.field public lookingAhead:Z

.field public token:Lcom/lua/bsh/Token;

.field public token_source:Lcom/lua/bsh/ParserTokenManager;


# direct methods
.method public constructor <init>(Lcom/lua/bsh/ParserTokenManager;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lua/bsh/JJTParserState;

    invoke-direct {v0}, Lcom/lua/bsh/JJTParserState;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    iput-boolean v1, p0, Lcom/lua/bsh/Parser;->b:Z

    iput-boolean v1, p0, Lcom/lua/bsh/Parser;->lookingAhead:Z

    new-instance v0, Lcom/lua/bsh/Parser$LookaheadSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lua/bsh/Parser$LookaheadSuccess;-><init>(Lcom/lua/bsh/Parser$1;)V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->i:Lcom/lua/bsh/Parser$LookaheadSuccess;

    iput-object p1, p0, Lcom/lua/bsh/Parser;->token_source:Lcom/lua/bsh/ParserTokenManager;

    new-instance v0, Lcom/lua/bsh/Token;

    invoke-direct {v0}, Lcom/lua/bsh/Token;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lcom/lua/bsh/Parser;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lua/bsh/JJTParserState;

    invoke-direct {v0}, Lcom/lua/bsh/JJTParserState;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    iput-boolean v1, p0, Lcom/lua/bsh/Parser;->b:Z

    iput-boolean v1, p0, Lcom/lua/bsh/Parser;->lookingAhead:Z

    new-instance v0, Lcom/lua/bsh/Parser$LookaheadSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lua/bsh/Parser$LookaheadSuccess;-><init>(Lcom/lua/bsh/Parser$1;)V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->i:Lcom/lua/bsh/Parser$LookaheadSuccess;

    new-instance v0, Lcom/lua/bsh/JavaCharStream;

    invoke-direct {v0, p1, v2, v2}, Lcom/lua/bsh/JavaCharStream;-><init>(Ljava/io/InputStream;II)V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->c:Lcom/lua/bsh/JavaCharStream;

    new-instance v0, Lcom/lua/bsh/ParserTokenManager;

    iget-object v1, p0, Lcom/lua/bsh/Parser;->c:Lcom/lua/bsh/JavaCharStream;

    invoke-direct {v0, v1}, Lcom/lua/bsh/ParserTokenManager;-><init>(Lcom/lua/bsh/JavaCharStream;)V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->token_source:Lcom/lua/bsh/ParserTokenManager;

    new-instance v0, Lcom/lua/bsh/Token;

    invoke-direct {v0}, Lcom/lua/bsh/Token;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lcom/lua/bsh/Parser;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lua/bsh/JJTParserState;

    invoke-direct {v0}, Lcom/lua/bsh/JJTParserState;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    iput-boolean v1, p0, Lcom/lua/bsh/Parser;->b:Z

    iput-boolean v1, p0, Lcom/lua/bsh/Parser;->lookingAhead:Z

    new-instance v0, Lcom/lua/bsh/Parser$LookaheadSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lua/bsh/Parser$LookaheadSuccess;-><init>(Lcom/lua/bsh/Parser$1;)V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->i:Lcom/lua/bsh/Parser$LookaheadSuccess;

    new-instance v0, Lcom/lua/bsh/JavaCharStream;

    invoke-direct {v0, p1, v2, v2}, Lcom/lua/bsh/JavaCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->c:Lcom/lua/bsh/JavaCharStream;

    new-instance v0, Lcom/lua/bsh/ParserTokenManager;

    iget-object v1, p0, Lcom/lua/bsh/Parser;->c:Lcom/lua/bsh/JavaCharStream;

    invoke-direct {v0, v1}, Lcom/lua/bsh/ParserTokenManager;-><init>(Lcom/lua/bsh/JavaCharStream;)V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->token_source:Lcom/lua/bsh/ParserTokenManager;

    new-instance v0, Lcom/lua/bsh/Token;

    invoke-direct {v0}, Lcom/lua/bsh/Token;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lcom/lua/bsh/Parser;->d:I

    return-void
.end method

.method private final A()Z
    .locals 1

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->id()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final Aa()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->za()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ab()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Yc()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ac()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Db()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->A()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->va()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_3
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->wa()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_4
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ab()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final B()Z
    .locals 1

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final B(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->jd()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final Ba()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ea()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Xa()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Bb()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->fc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->gc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Bc()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Db()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->B()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->C()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Fb()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->xa()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_3
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ya()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final C()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Eb()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final C(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->kd()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final Ca()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x23

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ub()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Cb()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Hb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Cc()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Db()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ub()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->za()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Aa()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final D()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x68

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final D(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ld()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final Da()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->tb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Db()Z
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->hc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final Dc()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ed()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final E()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->N()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->O()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->P()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Q()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->S()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final E(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->md()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final Ea()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Oa()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->fb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Eb()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ic()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->jc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ec()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->rb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final F(I)Lcom/lua/bsh/Token;
    .locals 3

    iget-object v1, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iget-object v0, v1, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lcom/lua/bsh/Parser;->d:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iget v2, v0, Lcom/lua/bsh/Token;->kind:I

    if-ne v2, p1, :cond_1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->token_source:Lcom/lua/bsh/ParserTokenManager;

    invoke-virtual {v0}, Lcom/lua/bsh/ParserTokenManager;->getNextToken()Lcom/lua/bsh/Token;

    move-result-object v0

    iput-object v0, v1, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->generateParseException()Lcom/lua/bsh/ParseException;

    move-result-object v0

    throw v0
.end method

.method private final F()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Sc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Fa()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x54

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x55

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x53

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x5b

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x5c

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x5d

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x5e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ta()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Fb()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->kc()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_2
    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Fc()Z
    .locals 1

    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final G()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final G(I)Z
    .locals 2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/lua/bsh/Parser;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, v1, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token_source:Lcom/lua/bsh/ParserTokenManager;

    invoke-virtual {v0}, Lcom/lua/bsh/ParserTokenManager;->getNextToken()Lcom/lua/bsh/Token;

    move-result-object v0

    iput-object v0, v1, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    :cond_0
    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    :goto_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iget v1, v0, Lcom/lua/bsh/Token;->kind:I

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, v1, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/lua/bsh/Parser;->g:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    if-eq v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/lua/bsh/Parser;->i:Lcom/lua/bsh/Parser$LookaheadSuccess;

    throw v0
.end method

.method private final Ga()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Qa()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->dd()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Gb()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x36

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->lc()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Gc()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ma()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_2
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x4f

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_3
    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final H()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->V()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ha()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x17

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Hb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Hb()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Xc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->mc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v3, 0x4e

    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->oc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->pc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->qc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->rc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-boolean v0, p0, Lcom/lua/bsh/Parser;->lookingAhead:Z

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->a()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lua/bsh/Parser;->h:Z

    iput-boolean v1, p0, Lcom/lua/bsh/Parser;->lookingAhead:Z

    iget-boolean v3, p0, Lcom/lua/bsh/Parser;->h:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->sc()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iput-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->tc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->uc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->vc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->wc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->xc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->yc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->zc()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private final Hc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final I()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ia()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ra()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ib()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ac()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ic()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final J()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->W()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ja()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Jb()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Jc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->qb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final K()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ia()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ka()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Sa()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Kb()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Kc()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->yb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final L()Z
    .locals 1

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final La()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Lb()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Cc()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Lc()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->rb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final M()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ub()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Hb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ma()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->k()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ab()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Mb()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Dc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Mc()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->vb()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final N()Z
    .locals 1

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Na()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ab()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Nb()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ec()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Nc()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->yb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final O()Z
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Oa()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ta()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ua()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Va()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Wa()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ob()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Fc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Oc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->zb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final P()Z
    .locals 1

    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Pa()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x70

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x71

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x72

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x73

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x74

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x75

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ba()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Pb()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Gc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Pc()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ub()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Q()Z
    .locals 1

    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Qa()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ya()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Za()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Qb()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Qc()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final R()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ra()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->_a()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ab()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Rb()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->yb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Rc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ab()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final S()Z
    .locals 1

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Sa()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->bb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Sb()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->rb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Sc()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->yb()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Z()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final T()Z
    .locals 1

    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ta()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x66

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x67

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Oa()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Tb()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Hc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ic()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Tc()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final U()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->rb()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->aa()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ba()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ua()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->cb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ub()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Uc()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final V()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ec()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Va()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->db()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Vb()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->rb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Vc()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final W()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Wa()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->eb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Wb()Z
    .locals 4

    const/16 v3, 0x48

    const/4 v0, 0x1

    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->rb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x57

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x56

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x45

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->g()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Wc()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Tc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Tc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_1
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Vc()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final X()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ca()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->la()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Xa()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x66

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x67

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ea()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Xb()Z
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Xc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Cb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Y()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->da()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ea()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Ya()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Yb()Z
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Yc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->qb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Z()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Wc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ga()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Za()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Zb()Z
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Zc()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Db()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x25

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final _a()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Cc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final _b()Z
    .locals 1

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final _c()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Db()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Eb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final a(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Jc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final aa()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final ab()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->bb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final ac()Z
    .locals 1

    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final ad()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Db()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Fb()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Gb()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_2
    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final b()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final b(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Kc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final ba()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ec()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Rc()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final bb()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->gb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final bc()Z
    .locals 1

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final bd()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Db()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ub()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final c()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->zb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final c(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Lc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final ca()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ha()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->oa()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final cb()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->vb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final cc()Z
    .locals 1

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final cd()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Hb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final d()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ub()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final d(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Mc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final da()Z
    .locals 1

    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final db()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->vb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final dc()Z
    .locals 1

    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final dd()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->qb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final e()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->rb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final e(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Nc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final ea()Z
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final eb()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->hb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ib()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->jb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final ec()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_2
    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final ed()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x30

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_0
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->rb()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->sb()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_3
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final f()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Qc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final f(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Oc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final fa()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x58

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->j()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final fb()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x68

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x69

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x6f

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Oa()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final fc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final fd()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Hb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final g()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final g(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Pc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final ga()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ja()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ja()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Gc()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final gb()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->n()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final gc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final gd()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Db()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ub()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final h()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final h(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Qc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final ha()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ka()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->qa()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final hb()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x57

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x56

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Oa()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final hc()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x2b

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x2d

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v0, 0x31

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final hd()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->tb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final i()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->vb()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->wb()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final i(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Rc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final ia()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x60

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x61

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->X()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final ib()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->kb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final ic()Z
    .locals 1

    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final id()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ub()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final j()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->fa()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final j(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Sc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final ja()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jb()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->lb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ub()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jd()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final k()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->id()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final k(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Tc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final ka()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->na()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->sa()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final kb()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->mb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final kc()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final kd()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final l()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->k()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final l(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Uc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final la()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x62

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x63

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ca()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final lb()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ob()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->pb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final lc()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->rb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final ld()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->vb()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->wb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final m()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->rb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final m(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Vc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final ma()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->tb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->hd()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget-object v2, p0, v0

    const-string v3, "-p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    return-void

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/lua/bsh/Parser;

    new-instance v4, Ljava/io/FileReader;

    aget-object v5, p0, v2

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/lua/bsh/Parser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3, v1}, Lcom/lua/bsh/Parser;->setRetainComments(Z)V

    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/lua/bsh/Parser;->Line()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lcom/lua/bsh/Parser;->popNode()Lcom/lua/bsh/SimpleNode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private final mb()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ub()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Oa()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final mc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ab()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final md()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->xb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final n()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final n(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Wc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final na()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->pa()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ua()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final nb()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ub()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->eb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final nc()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final nd()I
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iget-object v1, v0, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    iput-object v1, p0, Lcom/lua/bsh/Parser;->jj_nt:Lcom/lua/bsh/Token;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->token_source:Lcom/lua/bsh/ParserTokenManager;

    invoke-virtual {v1}, Lcom/lua/bsh/ParserTokenManager;->getNextToken()Lcom/lua/bsh/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    iget v0, v1, Lcom/lua/bsh/Token;->kind:I

    :goto_0
    iput v0, p0, Lcom/lua/bsh/Parser;->d:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->jj_nt:Lcom/lua/bsh/Token;

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    goto :goto_0
.end method

.method private final o()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x32

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ga()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final o(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Xc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final oa()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x6c

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x6d

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ha()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final ob()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->vb()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final oc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final p()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Hb()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ha()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final p(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Yc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final pa()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ra()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ca()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final pb()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->vb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final pc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final q()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Hb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final q(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Zc()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final qa()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x6e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ka()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final qb()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ib()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Jb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Kb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Lb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->cd()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Mb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Nb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ob()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final qc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final r()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Hb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final r(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->_c()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final ra()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ta()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Fa()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final rb()Z
    .locals 2

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->kd()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final rc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final s()Z
    .locals 4

    const/16 v3, 0x4e

    const/4 v0, 0x1

    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ia()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_2
    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ja()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_3
    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ka()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_4
    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Hb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final s(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ad()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final sa()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x6a

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x6b

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->na()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final sb()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x68

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final sc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final t()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->fd()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final t(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->bd()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final ta()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ba()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Pa()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final tb()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Pb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Qb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final tc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final u()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x45

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_2
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final u(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->cd()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final ua()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x5a

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x5f

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->pa()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final ub()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Rb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Sb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->jd()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final uc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final v()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v2, 0x45

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_2
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final v(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->dd()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final va()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->rb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final vb()Z
    .locals 2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Tb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ub()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final vc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final w()Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->La()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_2
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final w(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ed()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final wa()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x21

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->lc()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final wb()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x78

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x79

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x7f

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x76

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x77

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x7a

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x7e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x7c

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x81

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x82

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x83

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v1, 0x84

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final wc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final x()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ab()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final x(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->fd()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final xa()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x36

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->lc()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final xb()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Kc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Vb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Wb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final xc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final y()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x35

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Bb()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final y(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->gd()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final ya()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ab()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final yb()Z
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Xb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Yb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Zb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->_b()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ac()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->bc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->cc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->dc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final yc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final z()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x38

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ab()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Ma()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Na()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final z(I)Z
    .locals 2

    iput p1, p0, Lcom/lua/bsh/Parser;->g:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    iput-object v0, p0, Lcom/lua/bsh/Parser;->f:Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->hd()Z
    :try_end_0
    .catch Lcom/lua/bsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final za()Z
    .locals 2

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->Da()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zb()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->rb()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lua/bsh/Parser;->ec()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zc()Z
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final AdditiveExpression()V
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x67

    const/16 v6, 0x66

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->MultiplicativeExpression()V

    :goto_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_2
    if-eq v0, v6, :cond_5

    if-ne v0, v7, :cond_4

    invoke-direct {p0, v7}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->MultiplicativeExpression()V

    new-instance v2, Lcom/lua/bsh/BSHBinaryExpression;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lcom/lua/bsh/BSHBinaryExpression;-><init>(I)V

    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v3, v2}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v2, Lcom/lua/bsh/BSHBinaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v2, v8}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_3
    throw v0

    :cond_4
    invoke-direct {p0, v5}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_5
    invoke-direct {p0, v6}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    goto :goto_2
.end method

.method public final AllocationExpression()V
    .locals 5

    const/16 v4, 0x28

    const/4 v2, 0x1

    const/4 v1, -0x1

    new-instance v3, Lcom/lua/bsh/BSHAllocationExpression;

    const/16 v0, 0x17

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHAllocationExpression;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->j(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->PrimitiveType()V

    :cond_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ArrayDimensions()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_1
    if-ne v0, v4, :cond_7

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AmbiguousName()V

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_2
    const/16 v1, 0x48

    if-eq v0, v1, :cond_6

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-nez v4, :cond_9

    instance-of v4, v0, Lcom/lua/bsh/ParseException;

    if-eqz v4, :cond_8

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_4
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Arguments()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Block()V

    goto :goto_0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_3

    :cond_7
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_8
    :try_start_5
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_9
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final AmbiguousName()V
    .locals 7

    const/4 v2, 0x1

    new-instance v3, Lcom/lua/bsh/BSHAmbiguousName;

    const/16 v0, 0xc

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHAmbiguousName;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x45

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->C(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/lua/bsh/BSHAmbiguousName;->text:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_1
.end method

.method public final AndExpression()V
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x6b

    const/16 v6, 0x6a

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->EqualityExpression()V

    :goto_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_2
    if-eq v0, v6, :cond_5

    if-ne v0, v7, :cond_4

    invoke-direct {p0, v7}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->EqualityExpression()V

    new-instance v2, Lcom/lua/bsh/BSHBinaryExpression;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lcom/lua/bsh/BSHBinaryExpression;-><init>(I)V

    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v3, v2}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v2, Lcom/lua/bsh/BSHBinaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v2, v8}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_3
    throw v0

    :cond_4
    invoke-direct {p0, v5}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_5
    invoke-direct {p0, v6}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    goto :goto_2
.end method

.method public final ArgumentList()V
    .locals 3

    const/16 v2, 0x4f

    :goto_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_0
.end method

.method public final Arguments()V
    .locals 5

    const/4 v2, 0x1

    new-instance v3, Lcom/lua/bsh/BSHArguments;

    const/16 v0, 0x16

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHArguments;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x48

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    :goto_1
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ArgumentList()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    instance-of v4, v0, Lcom/lua/bsh/ParseException;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :cond_2
    :try_start_4
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ArrayDimensions()V
    .locals 6

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/16 v1, 0x4c

    new-instance v3, Lcom/lua/bsh/BSHArrayDimensions;

    const/16 v0, 0x18

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHArrayDimensions;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->n(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {v3}, Lcom/lua/bsh/BSHArrayDimensions;->addDefinedDimension()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->k(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->m(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {v3}, Lcom/lua/bsh/BSHArrayDimensions;->addUndefinedDimension()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_9

    instance-of v1, v0, Lcom/lua/bsh/ParseException;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_1
    throw v1

    :cond_2
    :try_start_3
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v4, :cond_5

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_2
    if-ne v0, v1, :cond_7

    :cond_3
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {v3}, Lcom/lua/bsh/BSHArrayDimensions;->addUndefinedDimension()V

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v4, :cond_6

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_3
    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ArrayInitializer()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :cond_5
    :try_start_4
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_3

    :cond_7
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_1

    :cond_8
    :try_start_5
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_9
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final ArrayInitializer()V
    .locals 5

    const/4 v4, -0x1

    const/16 v1, 0x4f

    const/4 v2, 0x1

    new-instance v3, Lcom/lua/bsh/BSHArrayInitializer;

    const/4 v0, 0x6

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHArrayInitializer;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x4a

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v4, :cond_1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    :cond_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v4, :cond_3

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_1
    if-eq v0, v1, :cond_4

    :goto_2
    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_0

    :goto_3
    :sswitch_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->VariableInitializer()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->z(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-nez v4, :cond_6

    instance-of v4, v0, Lcom/lua/bsh/ParseException;

    if-eqz v4, :cond_5

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_4
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_1

    :cond_4
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_4

    :cond_5
    :try_start_5
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_6
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4a -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final Assignment()V
    .locals 5

    const/4 v1, 0x1

    new-instance v3, Lcom/lua/bsh/BSHAssignment;

    const/16 v0, 0xd

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHAssignment;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->PrimaryExpression()V

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AssignmentOperator()I

    move-result v0

    iput v0, v3, Lcom/lua/bsh/BSHAssignment;->operator:I

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v2

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v2, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/lua/bsh/ParseException;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    move v4, v2

    move-object v2, v0

    move v0, v4

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
.end method

.method public final AssignmentOperator()I
    .locals 4

    const/16 v0, 0x7c

    const/16 v1, 0x51

    const/4 v3, -0x1

    iget v2, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v2

    :cond_0
    if-eq v2, v1, :cond_1

    if-eq v2, v0, :cond_2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0x85

    :goto_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Parser;->getToken(I)Lcom/lua/bsh/Token;

    move-result-object v0

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    return v0

    :pswitch_1
    const/16 v0, 0x84

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x83

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x82

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x81

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x80

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x7f

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x7e

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x7a

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x79

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x78

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x77

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x76

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x76
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Block()V
    .locals 5

    const/4 v2, 0x1

    new-instance v3, Lcom/lua/bsh/BSHBlock;

    const/16 v0, 0x19

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHBlock;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x4a

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->p(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->BlockStatement()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/lua/bsh/ParseException;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v1

    :cond_1
    const/16 v0, 0x4b

    :try_start_3
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_1

    :cond_2
    :try_start_4
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final BlockStatement()V
    .locals 3

    const/4 v2, -0x1

    const v1, 0x7fffffff

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ClassDeclaration()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->r(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->MethodDeclaration()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->s(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->t(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->TypedVariableDeclaration()V

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->u(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Statement()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v2, :cond_5

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_5
    const/16 v1, 0x22

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x30

    if-eq v0, v1, :cond_8

    const/16 v1, 0x44

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->FormalComment()V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_7
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->PackageDeclaration()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ImportDeclaration()V

    goto :goto_0
.end method

.method public final BooleanLiteral()Z
    .locals 4

    const/16 v3, 0x37

    const/16 v2, 0x1a

    const/4 v1, -0x1

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    if-eq v0, v2, :cond_2

    if-ne v0, v3, :cond_1

    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_2
    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final BreakStatement()V
    .locals 5

    const/16 v4, 0x45

    const/4 v2, 0x1

    new-instance v3, Lcom/lua/bsh/BSHReturnStatement;

    const/16 v0, 0x23

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHReturnStatement;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0xc

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_0
    if-eq v0, v4, :cond_1

    :goto_1
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    const/16 v0, 0xc

    iput v0, v3, Lcom/lua/bsh/BSHReturnStatement;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    :try_start_2
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public final CastExpression()V
    .locals 5

    const/4 v4, -0x1

    const/16 v1, 0x48

    const/4 v2, 0x1

    new-instance v3, Lcom/lua/bsh/BSHCastExpression;

    const/16 v0, 0x11

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHCastExpression;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const v0, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Type()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->UnaryExpression()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v4, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_1
    if-ne v0, v1, :cond_3

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Type()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->UnaryExpressionNotPlusMinus()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    instance-of v4, v0, Lcom/lua/bsh/ParseException;

    if-eqz v4, :cond_4

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :cond_4
    :try_start_5
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_5
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final CastLookahead()V
    .locals 7

    const/16 v0, 0x56

    const/16 v6, 0x45

    const/16 v1, 0x28

    const/4 v5, -0x1

    const/16 v2, 0x48

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->PrimitiveType()V

    :goto_0
    return-void

    :cond_0
    const v3, 0x7fffffff

    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->c(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AmbiguousName()V

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v3, v5, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v3

    :cond_2
    if-ne v3, v2, :cond_8

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AmbiguousName()V

    const/16 v3, 0x49

    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget v3, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v3, v5, :cond_3

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v3

    :cond_3
    const/16 v4, 0x1a

    if-eq v3, v4, :cond_7

    const/16 v4, 0x37

    if-eq v3, v4, :cond_7

    const/16 v4, 0x39

    if-eq v3, v4, :cond_7

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_7

    const/16 v4, 0x40

    if-eq v3, v4, :cond_7

    if-eq v3, v6, :cond_6

    if-eq v3, v2, :cond_a

    if-eq v3, v1, :cond_9

    const/16 v1, 0x29

    if-eq v3, v1, :cond_7

    const/16 v1, 0x42

    if-eq v3, v1, :cond_7

    const/16 v1, 0x43

    if-eq v3, v1, :cond_7

    if-eq v3, v0, :cond_4

    const/16 v0, 0x57

    const/16 v1, 0x57

    if-ne v3, v1, :cond_5

    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_0

    :cond_5
    invoke-direct {p0, v5}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_6
    invoke-direct {p0, v6}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Literal()V

    goto :goto_0

    :cond_8
    invoke-direct {p0, v5}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_9
    move v0, v1

    goto :goto_1

    :cond_a
    move v0, v2

    goto :goto_1
.end method

.method public final ClassDeclaration()V
    .locals 9

    const/16 v7, 0x19

    const/16 v5, 0xd

    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v4, Lcom/lua/bsh/BSHClassDeclaration;

    invoke-direct {v4, v2}, Lcom/lua/bsh/BSHClassDeclaration;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v3}, Lcom/lua/bsh/Parser;->Modifiers(IZ)Lcom/lua/bsh/Modifiers;

    move-result-object v3

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v6, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_0
    if-eq v0, v5, :cond_3

    const/16 v5, 0x25

    if-ne v0, v5, :cond_1

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/lua/bsh/BSHClassDeclaration;->k:Z

    :goto_1
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v5

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v6, :cond_4

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_2
    if-eq v0, v7, :cond_5

    :goto_3
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v6, :cond_6

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_4
    const/16 v6, 0x21

    if-eq v0, v6, :cond_7

    :goto_5
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Block()V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v6}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iput-object v3, v4, Lcom/lua/bsh/BSHClassDeclaration;->h:Lcom/lua/bsh/Modifiers;

    iget-object v0, v5, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lcom/lua/bsh/BSHClassDeclaration;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    return-void

    :cond_0
    :try_start_2
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    move v3, v2

    :goto_6
    if-eqz v3, :cond_8

    :try_start_3
    iget-object v5, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v5, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_7
    :try_start_4
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-nez v3, :cond_a

    instance-of v3, v0, Lcom/lua/bsh/ParseException;

    if-eqz v3, :cond_9

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_8
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v1

    :cond_3
    const/16 v0, 0xd

    :try_start_5
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_8

    :cond_4
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_2

    :cond_5
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AmbiguousName()V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/lua/bsh/BSHClassDeclaration;->j:Z

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_4

    :cond_7
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->NameList()I

    move-result v0

    iput v0, v4, Lcom/lua/bsh/BSHClassDeclaration;->i:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catch_1
    move-exception v0

    move v3, v1

    goto :goto_6

    :cond_8
    :try_start_6
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v1, v3

    goto :goto_7

    :cond_9
    :try_start_7
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_a
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    move-object v1, v0

    move v0, v3

    goto :goto_8

    :catchall_3
    move-exception v0

    move v8, v1

    move-object v1, v0

    move v0, v8

    goto :goto_8
.end method

.method public final ConditionalAndExpression()V
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x63

    const/16 v6, 0x62

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->InclusiveOrExpression()V

    :goto_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_2
    if-eq v0, v6, :cond_5

    if-ne v0, v7, :cond_4

    invoke-direct {p0, v7}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->InclusiveOrExpression()V

    new-instance v2, Lcom/lua/bsh/BSHBinaryExpression;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lcom/lua/bsh/BSHBinaryExpression;-><init>(I)V

    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v3, v2}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v2, Lcom/lua/bsh/BSHBinaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v2, v8}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_3
    throw v0

    :cond_4
    invoke-direct {p0, v5}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_5
    invoke-direct {p0, v6}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    goto :goto_2
.end method

.method public final ConditionalExpression()V
    .locals 5

    const/16 v3, 0x58

    const/4 v4, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ConditionalOrExpression()V

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    if-eq v0, v3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v2, Lcom/lua/bsh/BSHTernaryExpression;

    const/16 v0, 0xe

    invoke-direct {v2, v0}, Lcom/lua/bsh/BSHTernaryExpression;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v2}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ConditionalExpression()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v2, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-nez v3, :cond_4

    instance-of v3, v0, Lcom/lua/bsh/ParseException;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v2, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_3
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_4
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final ConditionalOrExpression()V
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x61

    const/16 v6, 0x60

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ConditionalAndExpression()V

    :goto_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_2
    if-eq v0, v6, :cond_5

    if-ne v0, v7, :cond_4

    invoke-direct {p0, v7}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ConditionalAndExpression()V

    new-instance v2, Lcom/lua/bsh/BSHBinaryExpression;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lcom/lua/bsh/BSHBinaryExpression;-><init>(I)V

    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v3, v2}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v2, Lcom/lua/bsh/BSHBinaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v2, v8}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_3
    throw v0

    :cond_4
    invoke-direct {p0, v5}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_5
    invoke-direct {p0, v6}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    goto :goto_2
.end method

.method public final ContinueStatement()V
    .locals 5

    const/16 v4, 0x45

    const/4 v2, 0x1

    new-instance v3, Lcom/lua/bsh/BSHReturnStatement;

    const/16 v0, 0x23

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHReturnStatement;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x13

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_0
    if-eq v0, v4, :cond_1

    :goto_1
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x13

    iput v0, v3, Lcom/lua/bsh/BSHReturnStatement;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    :try_start_2
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public final DoStatement()V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/lua/bsh/BSHWhileStatement;

    const/16 v0, 0x1e

    invoke-direct {v4, v0}, Lcom/lua/bsh/BSHWhileStatement;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x15

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Statement()V

    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/lua/bsh/BSHWhileStatement;->isDoStatement:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :try_start_2
    iget-object v5, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v5, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    :try_start_3
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_3

    instance-of v2, v0, Lcom/lua/bsh/ParseException;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v0

    :catchall_1
    move-exception v0

    move v1, v3

    goto :goto_2

    :catch_1
    move-exception v0

    move v2, v3

    goto :goto_0

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v1, v2

    goto :goto_1

    :cond_2
    :try_start_5
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v0

    move v1, v2

    goto :goto_2
.end method

.method public final EmptyStatement()V
    .locals 1

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    return-void
.end method

.method public final EnhancedForStatement()V
    .locals 6

    const/4 v5, -0x1

    const/16 v2, 0x1e

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/lua/bsh/BSHEnhancedForStatement;

    const/16 v0, 0x20

    invoke-direct {v4, v0}, Lcom/lua/bsh/BSHEnhancedForStatement;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x4

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->x(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    const/16 v2, 0x59

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Statement()V

    iget-object v2, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget-object v0, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    :goto_0
    iput-object v0, v4, Lcom/lua/bsh/BSHEnhancedForStatement;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    :try_start_2
    iget-object v5, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v5, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    :try_start_3
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_6

    instance-of v2, v0, Lcom/lua/bsh/ParseException;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_4
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_4
    if-ne v0, v2, :cond_3

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Type()V

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    const/16 v2, 0x59

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Statement()V

    iget-object v2, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget-object v0, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_6
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_4

    :cond_3
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_1
    move-exception v0

    move v2, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    move v1, v3

    goto :goto_3

    :cond_4
    :try_start_7
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move v1, v2

    goto :goto_2

    :cond_5
    :try_start_8
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_6
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v0

    move v1, v2

    goto :goto_3
.end method

.method public final EqualityExpression()V
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x5f

    const/16 v6, 0x5a

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->InstanceOfExpression()V

    :goto_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_2
    if-eq v0, v6, :cond_5

    if-ne v0, v7, :cond_4

    invoke-direct {p0, v7}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->InstanceOfExpression()V

    new-instance v2, Lcom/lua/bsh/BSHBinaryExpression;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lcom/lua/bsh/BSHBinaryExpression;-><init>(I)V

    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v3, v2}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v2, Lcom/lua/bsh/BSHBinaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v2, v8}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_3
    throw v0

    :cond_4
    invoke-direct {p0, v5}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_5
    invoke-direct {p0, v6}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    goto :goto_2
.end method

.method public final ExclusiveOrExpression()V
    .locals 7

    const/16 v6, 0x6e

    const/4 v5, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AndExpression()V

    :goto_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    if-eq v0, v6, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v6}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AndExpression()V

    new-instance v2, Lcom/lua/bsh/BSHBinaryExpression;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lcom/lua/bsh/BSHBinaryExpression;-><init>(I)V

    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v3, v2}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v2, Lcom/lua/bsh/BSHBinaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v2, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final Expression()V
    .locals 2

    const/4 v1, -0x1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Assignment()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_1
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ConditionalExpression()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ForInit()V
    .locals 2

    const/4 v1, -0x1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->y(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->TypedVariableDeclaration()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_1
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->StatementExpressionList()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ForStatement()V
    .locals 5

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v3, Lcom/lua/bsh/BSHForStatement;

    const/16 v0, 0x1f

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHForStatement;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x1e

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    :goto_1
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_2
    sparse-switch v0, :sswitch_data_1

    :goto_3
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_4
    sparse-switch v0, :sswitch_data_2

    :goto_5
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Statement()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ForInit()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/lua/bsh/BSHForStatement;->hasForInit:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    instance-of v4, v0, Lcom/lua/bsh/ParseException;

    if-eqz v4, :cond_4

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/lua/bsh/BSHForStatement;->hasExpression:Z

    goto :goto_3

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_6

    :cond_3
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_4

    :sswitch_2
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ForUpdate()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/lua/bsh/BSHForStatement;->hasForUpdate:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :cond_4
    :try_start_5
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_5
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2f -> :sswitch_0
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3a -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xb -> :sswitch_1
        0xe -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1d -> :sswitch_1
        0x24 -> :sswitch_1
        0x26 -> :sswitch_1
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2f -> :sswitch_1
        0x37 -> :sswitch_1
        0x39 -> :sswitch_1
        0x3c -> :sswitch_1
        0x40 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_1
        0x45 -> :sswitch_1
        0x48 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0xb -> :sswitch_2
        0xe -> :sswitch_2
        0x11 -> :sswitch_2
        0x16 -> :sswitch_2
        0x1a -> :sswitch_2
        0x1d -> :sswitch_2
        0x24 -> :sswitch_2
        0x26 -> :sswitch_2
        0x28 -> :sswitch_2
        0x29 -> :sswitch_2
        0x2f -> :sswitch_2
        0x37 -> :sswitch_2
        0x39 -> :sswitch_2
        0x3c -> :sswitch_2
        0x40 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x45 -> :sswitch_2
        0x48 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
    .end sparse-switch
.end method

.method public final ForUpdate()V
    .locals 0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->StatementExpressionList()V

    return-void
.end method

.method public final FormalComment()V
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lcom/lua/bsh/BSHFormalComment;

    const/16 v0, 0x1a

    invoke-direct {v2, v0}, Lcom/lua/bsh/BSHFormalComment;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v2}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x44

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    iget-boolean v4, p0, Lcom/lua/bsh/Parser;->b:Z

    invoke-virtual {v3, v2, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget-object v0, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    iput-object v0, v2, Lcom/lua/bsh/BSHFormalComment;->text:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    iget-boolean v3, p0, Lcom/lua/bsh/Parser;->b:Z

    invoke-virtual {v1, v2, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public final FormalParameter()V
    .locals 6

    const/4 v5, -0x1

    const/16 v2, 0x45

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/lua/bsh/BSHFormalParameter;

    const/16 v0, 0x8

    invoke-direct {v4, v0}, Lcom/lua/bsh/BSHFormalParameter;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->A(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Type()V

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    iget-object v2, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget-object v0, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    :goto_0
    iput-object v0, v4, Lcom/lua/bsh/BSHFormalParameter;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    :try_start_2
    iget-object v5, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v5, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    :try_start_3
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_6

    instance-of v2, v0, Lcom/lua/bsh/ParseException;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_4
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_4
    if-ne v0, v2, :cond_3

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    iget-object v2, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget-object v0, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_6
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_4

    :cond_3
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_1
    move-exception v0

    move v2, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    move v1, v3

    goto :goto_3

    :cond_4
    :try_start_7
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move v1, v2

    goto :goto_2

    :cond_5
    :try_start_8
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_6
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v0

    move v1, v2

    goto :goto_3
.end method

.method public final FormalParameters()V
    .locals 6

    const/16 v5, 0x4f

    const/4 v4, -0x1

    const/4 v2, 0x1

    new-instance v3, Lcom/lua/bsh/BSHFormalParameters;

    const/4 v0, 0x7

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHFormalParameters;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x48

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_0
    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x24

    if-eq v0, v1, :cond_2

    const/16 v1, 0x26

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x45

    if-eq v0, v1, :cond_2

    :goto_1
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    :cond_2
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->FormalParameter()V

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v4, :cond_3

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_2
    if-eq v0, v5, :cond_1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_4
    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-nez v4, :cond_6

    instance-of v4, v0, Lcom/lua/bsh/ParseException;

    if-eqz v4, :cond_5

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_5
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_6
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
.end method

.method public final IfStatement()V
    .locals 5

    const/16 v4, 0x17

    const/4 v2, 0x1

    new-instance v3, Lcom/lua/bsh/BSHIfStatement;

    const/16 v0, 0x1d

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHIfStatement;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x20

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Statement()V

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    :goto_0
    if-eq v0, v4, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Statement()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    instance-of v4, v0, Lcom/lua/bsh/ParseException;

    if-eqz v4, :cond_3

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :cond_3
    :try_start_4
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_4
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final ImportDeclaration()V
    .locals 7

    const/16 v4, 0x30

    const/16 v2, 0x22

    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    new-instance v5, Lcom/lua/bsh/BSHImportDeclaration;

    const/4 v0, 0x4

    invoke-direct {v5, v0}, Lcom/lua/bsh/BSHImportDeclaration;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v5}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v5}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x3

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->w(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v6, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    move v2, v0

    :goto_0
    const/4 v0, 0x0

    if-eq v2, v4, :cond_3

    const/4 v2, 0x0

    move-object v4, v2

    :goto_1
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AmbiguousName()V

    iget v2, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v2, v6, :cond_4

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v2

    :goto_2
    const/16 v6, 0x50

    if-eq v2, v6, :cond_5

    :goto_3
    const/16 v2, 0x4e

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v2, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v5, Lcom/lua/bsh/BSHImportDeclaration;->staticImport:Z

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/lua/bsh/BSHImportDeclaration;->importPackage:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_4
    return-void

    :cond_2
    :try_start_2
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    move v2, v0

    goto :goto_0

    :cond_3
    const/16 v2, 0x30

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_2

    :cond_5
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    const/16 v2, 0x68

    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    move v2, v3

    :goto_5
    if-eqz v2, :cond_a

    :try_start_3
    iget-object v4, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v4, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_6
    :try_start_4
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_c

    instance-of v2, v0, Lcom/lua/bsh/ParseException;

    if-eqz v2, :cond_b

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v5, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v5}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_6
    throw v0

    :cond_7
    :try_start_5
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v6, :cond_8

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_8
    if-ne v0, v2, :cond_9

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0, v5}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/lua/bsh/BSHImportDeclaration;->superImport:Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    move v2, v1

    goto :goto_5

    :cond_8
    :try_start_7
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_8

    :cond_9
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move v1, v3

    goto :goto_7

    :cond_a
    :try_start_8
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move v1, v2

    goto :goto_6

    :cond_b
    :try_start_9
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_c
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_2
    move-exception v0

    move v1, v2

    goto :goto_7
.end method

.method public final InclusiveOrExpression()V
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x6d

    const/16 v6, 0x6c

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ExclusiveOrExpression()V

    :goto_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_2
    if-eq v0, v6, :cond_5

    if-ne v0, v7, :cond_4

    invoke-direct {p0, v7}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ExclusiveOrExpression()V

    new-instance v2, Lcom/lua/bsh/BSHBinaryExpression;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lcom/lua/bsh/BSHBinaryExpression;-><init>(I)V

    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v3, v2}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v2, Lcom/lua/bsh/BSHBinaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v2, v8}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_3
    throw v0

    :cond_4
    invoke-direct {p0, v5}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_5
    invoke-direct {p0, v6}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    goto :goto_2
.end method

.method public final InstanceOfExpression()V
    .locals 6

    const/16 v3, 0x23

    const/4 v5, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->RelationalExpression()V

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    if-eq v0, v3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Type()V

    new-instance v2, Lcom/lua/bsh/BSHBinaryExpression;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lcom/lua/bsh/BSHBinaryExpression;-><init>(I)V

    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v3, v2}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v2, Lcom/lua/bsh/BSHBinaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v2, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final LabeledStatement()V
    .locals 1

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Statement()V

    return-void
.end method

.method public final Line()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget v2, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v2

    :cond_0
    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->BlockStatement()V

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_2
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const-string v0, "End of File!"

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public final Literal()V
    .locals 8

    const/16 v6, 0x40

    const/16 v5, 0x3c

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/lua/bsh/BSHLiteral;

    const/16 v0, 0x15

    invoke-direct {v4, v0}, Lcom/lua/bsh/BSHLiteral;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_0
    const/16 v2, 0x1a

    if-eq v0, v2, :cond_e

    const/16 v2, 0x29

    if-eq v0, v2, :cond_d

    const/16 v2, 0x37

    if-eq v0, v2, :cond_e

    const/16 v2, 0x39

    if-eq v0, v2, :cond_c

    if-eq v0, v5, :cond_9

    if-eq v0, v6, :cond_4

    const/16 v2, 0x42

    if-eq v0, v2, :cond_3

    const/16 v2, 0x43

    if-ne v0, v2, :cond_2

    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    iget-object v2, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/lua/bsh/BSHLiteral;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    return-void

    :cond_0
    :try_start_3
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error parsing string: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Parser;->a(Ljava/lang/String;)Lcom/lua/bsh/ParseException;

    move-result-object v0

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v0

    move v2, v1

    :goto_2
    if-eqz v2, :cond_f

    :try_start_5
    iget-object v5, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v5, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3
    :try_start_6
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_11

    instance-of v2, v0, Lcom/lua/bsh/ParseException;

    if-eqz v2, :cond_10

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    const/4 v0, -0x1

    :try_start_7
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :catch_2
    move-exception v0

    move v2, v3

    goto :goto_2

    :cond_3
    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    iget-object v2, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v2, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/lua/bsh/BSHLiteral;->charSetup(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catch_3
    move-exception v2

    :try_start_a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error parsing character: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Parser;->a(Ljava/lang/String;)Lcom/lua/bsh/ParseException;

    move-result-object v0

    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_4
    const/16 v0, 0x40

    :try_start_b
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    iget-object v2, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget-object v0, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x66

    if-eq v2, v5, :cond_5

    const/16 v5, 0x46

    if-ne v2, v5, :cond_6

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/lua/bsh/Primitive;

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v2}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v0, v2}, Lcom/lua/bsh/Primitive;-><init>(F)V

    :goto_5
    iput-object v0, v4, Lcom/lua/bsh/BSHLiteral;->value:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    const/16 v5, 0x64

    if-eq v2, v5, :cond_7

    const/16 v5, 0x44

    if-ne v2, v5, :cond_8

    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_8
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/lua/bsh/Primitive;-><init>(D)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    :cond_9
    const/16 v0, 0x3c

    :try_start_d
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    iget-object v2, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget-object v0, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x6c

    if-eq v2, v5, :cond_a

    const/16 v5, 0x4c

    if-ne v2, v5, :cond_b

    :cond_a
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/lua/bsh/Primitive;-><init>(J)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_5

    :cond_b
    :try_start_f
    new-instance v2, Lcom/lua/bsh/Primitive;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v2, v5}, Lcom/lua/bsh/Primitive;-><init>(I)V

    iput-object v2, v4, Lcom/lua/bsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    :catch_4
    move-exception v2

    :try_start_10
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error or number too big for integer type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Parser;->a(Ljava/lang/String;)Lcom/lua/bsh/ParseException;

    move-result-object v0

    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_c
    :try_start_11
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->VoidLiteral()V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    :goto_6
    iput-object v0, v4, Lcom/lua/bsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    :cond_d
    :try_start_13
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->NullLiteral()V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    sget-object v0, Lcom/lua/bsh/Primitive;->NULL:Lcom/lua/bsh/Primitive;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_6

    :cond_e
    :try_start_15
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->BooleanLiteral()Z

    move-result v2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-direct {v0, v2}, Lcom/lua/bsh/Primitive;-><init>(Z)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move v1, v3

    goto/16 :goto_4

    :cond_f
    :try_start_17
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    move v1, v2

    goto/16 :goto_3

    :cond_10
    :try_start_18
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_11
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :catchall_2
    move-exception v0

    move v1, v2

    goto/16 :goto_4
.end method

.method public final MethodDeclaration()V
    .locals 9

    const/16 v7, 0x36

    const/4 v1, 0x0

    const/16 v6, 0x45

    const/4 v2, 0x1

    const/4 v5, -0x1

    new-instance v3, Lcom/lua/bsh/BSHMethodDeclaration;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHMethodDeclaration;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v4}, Lcom/lua/bsh/Parser;->Modifiers(IZ)Lcom/lua/bsh/Modifiers;

    move-result-object v0

    iput-object v0, v3, Lcom/lua/bsh/BSHMethodDeclaration;->modifiers:Lcom/lua/bsh/Modifiers;

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    iget-object v0, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    :goto_0
    iput-object v0, v3, Lcom/lua/bsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->FormalParameters()V

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_5

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_1
    if-eq v0, v7, :cond_6

    :goto_2
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_7

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_3
    const/16 v4, 0x4a

    if-eq v0, v4, :cond_9

    const/16 v4, 0x4e

    if-ne v0, v4, :cond_8

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_4
    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_5
    const/16 v4, 0xb

    if-eq v0, v4, :cond_1

    const/16 v4, 0xe

    if-eq v0, v4, :cond_1

    const/16 v4, 0x11

    if-eq v0, v4, :cond_1

    const/16 v4, 0x16

    if-eq v0, v4, :cond_1

    const/16 v4, 0x1d

    if-eq v0, v4, :cond_1

    const/16 v4, 0x24

    if-eq v0, v4, :cond_1

    const/16 v4, 0x26

    if-eq v0, v4, :cond_1

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_1

    const/16 v4, 0x39

    if-eq v0, v4, :cond_1

    if-ne v0, v6, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ReturnType()V

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    iget-object v0, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_5

    :cond_3
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v4, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v4, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-nez v4, :cond_b

    instance-of v4, v0, Lcom/lua/bsh/ParseException;

    if-eqz v4, :cond_a

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_6
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_4
    throw v1

    :cond_5
    :try_start_4
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto/16 :goto_1

    :cond_6
    const/16 v0, 0x36

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->NameList()I

    move-result v0

    iput v0, v3, Lcom/lua/bsh/BSHMethodDeclaration;->f:I

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_6

    :cond_7
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto/16 :goto_3

    :cond_8
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_9
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Block()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_4

    :cond_a
    :try_start_5
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_b
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final MethodInvocation()V
    .locals 5

    const/4 v1, 0x1

    new-instance v3, Lcom/lua/bsh/BSHMethodInvocation;

    const/16 v0, 0x13

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHMethodInvocation;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AmbiguousName()V

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Arguments()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v2

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v2, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/lua/bsh/ParseException;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    move v4, v2

    move-object v2, v0

    move v0, v4

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
.end method

.method public final Modifiers(IZ)Lcom/lua/bsh/Modifiers;
    .locals 8

    const/16 v7, 0x30

    const/16 v6, 0x27

    const/16 v5, 0x1b

    const/16 v4, 0xa

    const/4 v3, -0x1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget v1, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v1

    :cond_1
    if-eq v1, v4, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v1, v6, :cond_2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    if-eq v1, v7, :cond_2

    const/16 v2, 0x31

    if-eq v1, v2, :cond_2

    const/16 v2, 0x33

    if-eq v1, v2, :cond_2

    const/16 v2, 0x34

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    return-object v0

    :cond_2
    :pswitch_0
    iget v1, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v1, v3, :cond_3

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v1

    :cond_3
    if-eq v1, v4, :cond_c

    if-eq v1, v5, :cond_b

    if-eq v1, v6, :cond_a

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_9

    if-eq v1, v7, :cond_8

    const/16 v2, 0x31

    if-eq v1, v2, :cond_7

    const/16 v2, 0x33

    if-eq v1, v2, :cond_6

    const/16 v2, 0x34

    if-eq v1, v2, :cond_5

    packed-switch v1, :pswitch_data_1

    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :pswitch_1
    const/16 v1, 0x2d

    :goto_1
    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    :goto_2
    if-nez p2, :cond_0

    if-nez v0, :cond_4

    :try_start_0
    new-instance v0, Lcom/lua/bsh/Modifiers;

    invoke-direct {v0}, Lcom/lua/bsh/Modifiers;-><init>()V

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lua/bsh/Parser;->getToken(I)Lcom/lua/bsh/Token;

    move-result-object v1

    iget-object v1, v1, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/lua/bsh/Modifiers;->addModifier(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Parser;->a(Ljava/lang/String;)Lcom/lua/bsh/ParseException;

    move-result-object v0

    throw v0

    :pswitch_2
    const/16 v1, 0x2c

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x2b

    goto :goto_1

    :cond_5
    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_2

    :cond_6
    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_2

    :cond_7
    const/16 v1, 0x31

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_2

    :cond_8
    invoke-direct {p0, v7}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_2

    :cond_9
    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_2

    :cond_a
    invoke-direct {p0, v6}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_2

    :cond_b
    invoke-direct {p0, v5}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_2

    :cond_c
    invoke-direct {p0, v4}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final MultiplicativeExpression()V
    .locals 10

    const/4 v9, 0x2

    const/16 v8, 0x6f

    const/16 v7, 0x69

    const/16 v6, 0x68

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->UnaryExpression()V

    :goto_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v8, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_2
    if-eq v0, v6, :cond_6

    if-eq v0, v7, :cond_5

    if-ne v0, v8, :cond_4

    invoke-direct {p0, v8}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->UnaryExpression()V

    new-instance v2, Lcom/lua/bsh/BSHBinaryExpression;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lcom/lua/bsh/BSHBinaryExpression;-><init>(I)V

    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v3, v2}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v2, Lcom/lua/bsh/BSHBinaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v2, v9}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_3
    throw v0

    :cond_4
    invoke-direct {p0, v5}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_5
    invoke-direct {p0, v7}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-direct {p0, v6}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    goto :goto_2
.end method

.method public final NameList()I
    .locals 4

    const/16 v3, 0x4f

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AmbiguousName()V

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/lua/bsh/Parser;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v1

    :cond_0
    if-eq v1, v3, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AmbiguousName()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final NullLiteral()V
    .locals 1

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    return-void
.end method

.method public final PackageDeclaration()V
    .locals 5

    const/4 v1, 0x1

    new-instance v3, Lcom/lua/bsh/BSHPackageDeclaration;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHPackageDeclaration;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x2a

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AmbiguousName()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v2

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v2, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/lua/bsh/ParseException;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    move v4, v2

    move-object v2, v0

    move v0, v4

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
.end method

.method public final PostfixExpression()V
    .locals 5

    const/16 v0, 0x65

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v4, -0x1

    const v3, 0x7fffffff

    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->d(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->PrimaryExpression()V

    iget v3, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v3

    :cond_0
    if-eq v3, v1, :cond_5

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    new-instance v3, Lcom/lua/bsh/BSHUnaryExpression;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lcom/lua/bsh/BSHUnaryExpression;-><init>(I)V

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v3, Lcom/lua/bsh/BSHUnaryExpression;->kind:I

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/lua/bsh/BSHUnaryExpression;->postfix:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0, v4}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v0

    :cond_3
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v4, :cond_4

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_4
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v4}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->PrimaryExpression()V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method public final PreDecrementExpression()V
    .locals 6

    const/4 v2, 0x1

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->PrimaryExpression()V

    new-instance v3, Lcom/lua/bsh/BSHUnaryExpression;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lcom/lua/bsh/BSHUnaryExpression;-><init>(I)V

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v3, Lcom/lua/bsh/BSHUnaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public final PreIncrementExpression()V
    .locals 6

    const/4 v2, 0x1

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->PrimaryExpression()V

    new-instance v3, Lcom/lua/bsh/BSHUnaryExpression;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lcom/lua/bsh/BSHUnaryExpression;-><init>(I)V

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v3, Lcom/lua/bsh/BSHUnaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public final PrimaryExpression()V
    .locals 5

    const/4 v2, 0x1

    new-instance v3, Lcom/lua/bsh/BSHPrimaryExpression;

    const/16 v0, 0x12

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHPrimaryExpression;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->PrimaryPrefix()V

    :goto_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    :goto_1
    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x50

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->PrimarySuffix()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    instance-of v4, v0, Lcom/lua/bsh/ParseException;

    if-eqz v4, :cond_3

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :cond_3
    :try_start_4
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_4
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final PrimaryPrefix()V
    .locals 5

    const v4, 0x7fffffff

    const/16 v3, 0x48

    const/4 v2, -0x1

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x37

    if-eq v0, v1, :cond_7

    const/16 v1, 0x39

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x40

    if-eq v0, v1, :cond_7

    if-eq v0, v3, :cond_6

    const/16 v1, 0x28

    if-eq v0, v1, :cond_5

    const/16 v1, 0x29

    if-eq v0, v1, :cond_7

    const/16 v1, 0x42

    if-eq v0, v1, :cond_7

    const/16 v1, 0x43

    if-eq v0, v1, :cond_7

    invoke-direct {p0, v4}, Lcom/lua/bsh/Parser;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->MethodInvocation()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v4}, Lcom/lua/bsh/Parser;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Type()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_3
    const/16 v1, 0x45

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AmbiguousName()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AllocationExpression()V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Literal()V

    goto :goto_0
.end method

.method public final PrimarySuffix()V
    .locals 7

    const/16 v6, 0x50

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/lua/bsh/BSHPrimarySuffix;

    const/16 v0, 0x14

    invoke-direct {v4, v0}, Lcom/lua/bsh/BSHPrimarySuffix;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x0

    iput v0, v4, Lcom/lua/bsh/BSHPrimarySuffix;->operation:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move v2, v1

    :goto_1
    if-eqz v2, :cond_8

    :try_start_2
    iget-object v5, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v5, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    :try_start_3
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_a

    instance-of v2, v0, Lcom/lua/bsh/ParseException;

    if-eqz v2, :cond_9

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_4
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_4
    const/16 v2, 0x4a

    if-eq v0, v2, :cond_7

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_6

    if-ne v0, v6, :cond_5

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v2

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_3

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_5
    const/16 v5, 0x48

    if-eq v0, v5, :cond_4

    :goto_6
    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x2

    iput v0, v4, Lcom/lua/bsh/BSHPrimarySuffix;->operation:I

    iget-object v0, v2, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lcom/lua/bsh/BSHPrimarySuffix;->field:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_6
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_4

    :cond_3
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Arguments()V

    goto :goto_6

    :catch_1
    move-exception v0

    move v2, v3

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    move v1, v3

    goto :goto_3

    :cond_6
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x1

    iput v0, v4, Lcom/lua/bsh/BSHPrimarySuffix;->operation:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x4a

    :try_start_8
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x3

    iput v0, v4, Lcom/lua/bsh/BSHPrimarySuffix;->operation:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :cond_8
    :try_start_a
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move v1, v2

    goto/16 :goto_2

    :cond_9
    :try_start_b
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_a
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_2
    move-exception v0

    move v1, v2

    goto/16 :goto_3
.end method

.method public final PrimitiveType()V
    .locals 7

    const/16 v6, 0x11

    const/16 v5, 0xe

    const/4 v4, -0x1

    const/16 v1, 0xb

    const/4 v2, 0x1

    new-instance v3, Lcom/lua/bsh/BSHPrimitiveType;

    invoke-direct {v3, v1}, Lcom/lua/bsh/BSHPrimitiveType;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_9

    if-eq v0, v5, :cond_8

    if-eq v0, v6, :cond_7

    const/16 v1, 0x16

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x24

    if-eq v0, v1, :cond_4

    const/16 v1, 0x26

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    :goto_1
    iput-object v0, v3, Lcom/lua/bsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    :try_start_2
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v0

    :cond_3
    const/16 v0, 0x26

    :try_start_3
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :cond_4
    const/16 v0, 0x24

    :try_start_5
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :cond_5
    const/16 v0, 0x1d

    :try_start_7
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :cond_6
    const/16 v0, 0x16

    :try_start_9
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :cond_7
    const/16 v0, 0x11

    :try_start_b
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_1

    :cond_8
    const/16 v0, 0xe

    :try_start_d
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_1

    :cond_9
    const/16 v0, 0xb

    :try_start_f
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method public ReInit(Lcom/lua/bsh/ParserTokenManager;)V
    .locals 1

    iput-object p1, p0, Lcom/lua/bsh/Parser;->token_source:Lcom/lua/bsh/ParserTokenManager;

    new-instance v0, Lcom/lua/bsh/Token;

    invoke-direct {v0}, Lcom/lua/bsh/Token;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lcom/lua/bsh/Parser;->d:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0}, Lcom/lua/bsh/JJTParserState;->c()V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/lua/bsh/Parser;->c:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0, p1, v1, v1}, Lcom/lua/bsh/JavaCharStream;->ReInit(Ljava/io/InputStream;II)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token_source:Lcom/lua/bsh/ParserTokenManager;

    iget-object v1, p0, Lcom/lua/bsh/Parser;->c:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0, v1}, Lcom/lua/bsh/ParserTokenManager;->ReInit(Lcom/lua/bsh/JavaCharStream;)V

    new-instance v0, Lcom/lua/bsh/Token;

    invoke-direct {v0}, Lcom/lua/bsh/Token;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lcom/lua/bsh/Parser;->d:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0}, Lcom/lua/bsh/JJTParserState;->c()V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/lua/bsh/Parser;->c:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0, p1, v1, v1}, Lcom/lua/bsh/JavaCharStream;->ReInit(Ljava/io/Reader;II)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token_source:Lcom/lua/bsh/ParserTokenManager;

    iget-object v1, p0, Lcom/lua/bsh/Parser;->c:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0, v1}, Lcom/lua/bsh/ParserTokenManager;->ReInit(Lcom/lua/bsh/JavaCharStream;)V

    new-instance v0, Lcom/lua/bsh/Token;

    invoke-direct {v0}, Lcom/lua/bsh/Token;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lcom/lua/bsh/Parser;->d:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0}, Lcom/lua/bsh/JJTParserState;->c()V

    return-void
.end method

.method public final RelationalExpression()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ShiftExpression()V

    :goto_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_1
    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    invoke-direct {p0, v5}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :pswitch_1
    const/16 v0, 0x5e

    :goto_1
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ShiftExpression()V

    new-instance v2, Lcom/lua/bsh/BSHBinaryExpression;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lcom/lua/bsh/BSHBinaryExpression;-><init>(I)V

    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v3, v2}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v2, Lcom/lua/bsh/BSHBinaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v0

    :pswitch_2
    const/16 v0, 0x5d

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x5c

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x5b

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x55

    goto :goto_1

    :pswitch_6
    const/16 v0, 0x54

    goto :goto_1

    :pswitch_7
    const/16 v0, 0x53

    goto :goto_1

    :pswitch_8
    const/16 v0, 0x52

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x52
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final ReturnStatement()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v4, Lcom/lua/bsh/BSHReturnStatement;

    const/16 v0, 0x23

    invoke-direct {v4, v0}, Lcom/lua/bsh/BSHReturnStatement;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x2e

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    :goto_1
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v3, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x2e

    iput v0, v4, Lcom/lua/bsh/BSHReturnStatement;->kind:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    return-void

    :cond_0
    :try_start_2
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move v3, v2

    :goto_2
    if-eqz v3, :cond_2

    :try_start_3
    iget-object v5, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v5, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    :try_start_4
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-nez v3, :cond_4

    instance-of v3, v0, Lcom/lua/bsh/ParseException;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_1
    throw v0

    :catch_1
    move-exception v0

    move v3, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_4

    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v1, v3

    goto :goto_3

    :cond_3
    :try_start_6
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_4
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    move v1, v3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ReturnType()V
    .locals 6

    const/16 v5, 0x39

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v4, Lcom/lua/bsh/BSHReturnType;

    const/16 v0, 0xa

    invoke-direct {v4, v0}, Lcom/lua/bsh/BSHReturnType;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_0
    const/16 v3, 0xb

    if-eq v0, v3, :cond_0

    const/16 v3, 0xe

    if-eq v0, v3, :cond_0

    const/16 v3, 0x11

    if-eq v0, v3, :cond_0

    const/16 v3, 0x16

    if-eq v0, v3, :cond_0

    const/16 v3, 0x1d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x24

    if-eq v0, v3, :cond_0

    const/16 v3, 0x26

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_0

    if-eq v0, v5, :cond_5

    const/16 v3, 0x45

    if-ne v0, v3, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Type()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v0

    move v3, v2

    :goto_2
    if-eqz v3, :cond_6

    :try_start_2
    iget-object v5, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v5, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    :try_start_3
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-nez v3, :cond_8

    instance-of v3, v0, Lcom/lua/bsh/ParseException;

    if-eqz v3, :cond_7

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_4
    throw v0

    :cond_5
    const/16 v0, 0x39

    :try_start_4
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v3, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/lua/bsh/BSHReturnType;->isVoid:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catch_1
    move-exception v0

    move v3, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_4

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v1, v3

    goto :goto_3

    :cond_7
    :try_start_7
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_8
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    move v1, v3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4
.end method

.method public final ShiftExpression()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AdditiveExpression()V

    :goto_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v5, :cond_1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_1
    packed-switch v0, :pswitch_data_1

    invoke-direct {p0, v5}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :pswitch_1
    const/16 v0, 0x75

    :goto_1
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AdditiveExpression()V

    new-instance v2, Lcom/lua/bsh/BSHBinaryExpression;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lcom/lua/bsh/BSHBinaryExpression;-><init>(I)V

    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v3, v2}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v3, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v2, Lcom/lua/bsh/BSHBinaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v0

    :pswitch_2
    const/16 v0, 0x74

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x73

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x72

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x71

    goto :goto_1

    :pswitch_6
    const/16 v0, 0x70

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final Statement()V
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->LabeledStatement()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_1
    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ForStatement()V

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->EmptyStatement()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Block()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->WhileStatement()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->SwitchStatement()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->IfStatement()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->DoStatement()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->StatementExpression()V

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_3
    const/16 v1, 0xc

    if-eq v0, v1, :cond_a

    const/16 v1, 0x13

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_7

    const/16 v1, 0x33

    if-eq v0, v1, :cond_6

    const/16 v1, 0x35

    if-eq v0, v1, :cond_5

    const/16 v1, 0x38

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->TryStatement()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ThrowStatement()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->SynchronizedStatement()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ReturnStatement()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->EnhancedForStatement()V

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ContinueStatement()V

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->BreakStatement()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_6
        0xe -> :sswitch_6
        0x11 -> :sswitch_6
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x1a -> :sswitch_6
        0x1d -> :sswitch_6
        0x20 -> :sswitch_4
        0x24 -> :sswitch_6
        0x26 -> :sswitch_6
        0x28 -> :sswitch_6
        0x29 -> :sswitch_6
        0x2f -> :sswitch_6
        0x32 -> :sswitch_3
        0x37 -> :sswitch_6
        0x39 -> :sswitch_6
        0x3b -> :sswitch_2
        0x3c -> :sswitch_6
        0x40 -> :sswitch_6
        0x42 -> :sswitch_6
        0x43 -> :sswitch_6
        0x45 -> :sswitch_6
        0x48 -> :sswitch_6
        0x4a -> :sswitch_1
        0x4e -> :sswitch_0
        0x56 -> :sswitch_6
        0x57 -> :sswitch_6
        0x64 -> :sswitch_6
        0x65 -> :sswitch_6
        0x66 -> :sswitch_6
        0x67 -> :sswitch_6
    .end sparse-switch
.end method

.method public final StatementExpression()V
    .locals 0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    return-void
.end method

.method public final StatementExpressionList()V
    .locals 5

    const/16 v4, 0x4f

    const/4 v2, 0x1

    new-instance v3, Lcom/lua/bsh/BSHStatementExpressionList;

    const/16 v0, 0x22

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHStatementExpressionList;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->StatementExpression()V

    :goto_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    :goto_1
    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_1

    :cond_1
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->StatementExpression()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    instance-of v4, v0, Lcom/lua/bsh/ParseException;

    if-eqz v4, :cond_3

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :cond_3
    :try_start_4
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_4
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final SwitchLabel()V
    .locals 7

    const/16 v6, 0x14

    const/16 v5, 0xf

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v4, Lcom/lua/bsh/BSHSwitchLabel;

    const/16 v0, 0x1c

    invoke-direct {v4, v0}, Lcom/lua/bsh/BSHSwitchLabel;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_0
    if-eq v0, v5, :cond_4

    if-ne v0, v6, :cond_3

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v3, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/lua/bsh/BSHSwitchLabel;->g:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_1
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    return-void

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move v3, v1

    :goto_2
    if-eqz v3, :cond_5

    :try_start_3
    iget-object v5, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v5, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    :try_start_4
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-nez v3, :cond_7

    instance-of v3, v0, Lcom/lua/bsh/ParseException;

    if-eqz v3, :cond_6

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v0

    :cond_3
    const/4 v0, -0x1

    :try_start_5
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    move v3, v2

    goto :goto_2

    :cond_4
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_4

    :cond_5
    :try_start_6
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v1, v3

    goto :goto_3

    :cond_6
    :try_start_7
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_7
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    move v1, v3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4
.end method

.method public final SwitchStatement()V
    .locals 5

    const/4 v2, 0x1

    new-instance v3, Lcom/lua/bsh/BSHSwitchStatement;

    const/16 v0, 0x1b

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHSwitchStatement;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x32

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    :cond_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_0
    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->SwitchLabel()V

    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->v(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->BlockStatement()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    instance-of v4, v0, Lcom/lua/bsh/ParseException;

    if-eqz v4, :cond_4

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :cond_4
    :try_start_4
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_5
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final SynchronizedStatement()V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/lua/bsh/BSHBlock;

    const/16 v0, 0x19

    invoke-direct {v4, v0}, Lcom/lua/bsh/BSHBlock;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x33

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Block()V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/lua/bsh/BSHBlock;->isSynchronized:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :try_start_2
    iget-object v5, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v5, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    :try_start_3
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_3

    instance-of v2, v0, Lcom/lua/bsh/ParseException;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v0

    :catchall_1
    move-exception v0

    move v1, v3

    goto :goto_2

    :catch_1
    move-exception v0

    move v2, v3

    goto :goto_0

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v1, v2

    goto :goto_1

    :cond_2
    :try_start_5
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v0

    move v1, v2

    goto :goto_2
.end method

.method public final ThrowStatement()V
    .locals 5

    const/4 v1, 0x1

    new-instance v3, Lcom/lua/bsh/BSHThrowStatement;

    const/16 v0, 0x24

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHThrowStatement;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x35

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v2

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v2, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/lua/bsh/ParseException;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    move v4, v2

    move-object v2, v0

    move v0, v4

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
.end method

.method public final TryStatement()V
    .locals 8

    const/16 v7, 0x1c

    const/16 v6, 0x10

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/lua/bsh/BSHTryStatement;

    const/16 v0, 0x25

    invoke-direct {v4, v0}, Lcom/lua/bsh/BSHTryStatement;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x38

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Block()V

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v2

    :goto_1
    if-eq v2, v6, :cond_5

    iget v2, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v2

    :goto_2
    if-eq v2, v7, :cond_2

    :goto_3
    iget-object v2, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    return-void

    :cond_0
    :try_start_2
    iget v2, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_2

    :cond_2
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Block()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v3

    goto :goto_3

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->generateParseException()Lcom/lua/bsh/ParseException;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v0

    move v2, v1

    :goto_4
    if-eqz v2, :cond_6

    :try_start_4
    iget-object v5, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v5, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_5
    :try_start_5
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_8

    instance-of v2, v0, Lcom/lua/bsh/ParseException;

    if-eqz v2, :cond_7

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_4
    throw v0

    :cond_5
    const/16 v0, 0x10

    :try_start_6
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->FormalParameter()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Block()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v0, v3

    goto :goto_0

    :catchall_1
    move-exception v0

    move v1, v3

    goto :goto_6

    :catch_1
    move-exception v0

    move v2, v3

    goto :goto_4

    :cond_6
    :try_start_7
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move v1, v2

    goto :goto_5

    :cond_7
    :try_start_8
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_8
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v0

    move v1, v2

    goto :goto_6
.end method

.method public final Type()V
    .locals 5

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v3, Lcom/lua/bsh/BSHType;

    const/16 v0, 0x9

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHType;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_0
    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x24

    if-eq v0, v1, :cond_3

    const/16 v1, 0x26

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x45

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->AmbiguousName()V

    :goto_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->B(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {v3}, Lcom/lua/bsh/BSHType;->addArrayDimension()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-nez v4, :cond_6

    instance-of v4, v0, Lcom/lua/bsh/ParseException;

    if-eqz v4, :cond_5

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_3
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->PrimitiveType()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :cond_5
    :try_start_4
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_6
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final TypedVariableDeclaration()V
    .locals 7

    const/16 v6, 0x4f

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v4, Lcom/lua/bsh/BSHTypedVariableDeclaration;

    const/16 v0, 0x21

    invoke-direct {v4, v0}, Lcom/lua/bsh/BSHTypedVariableDeclaration;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/lua/bsh/Parser;->Modifiers(IZ)Lcom/lua/bsh/Modifiers;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Type()V

    :goto_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->VariableDeclarator()V

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_1
    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iput-object v2, v4, Lcom/lua/bsh/BSHTypedVariableDeclaration;->modifiers:Lcom/lua/bsh/Modifiers;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move v2, v1

    :goto_2
    if-eqz v2, :cond_3

    :try_start_3
    iget-object v5, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v5, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    :try_start_4
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_5

    instance-of v2, v0, Lcom/lua/bsh/ParseException;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_1
    throw v0

    :cond_2
    const/16 v0, 0x4f

    :try_start_5
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v0

    move v2, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    move v1, v3

    goto :goto_4

    :cond_3
    :try_start_6
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v1, v2

    goto :goto_3

    :cond_4
    :try_start_7
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_5
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    move v1, v2

    goto :goto_4
.end method

.method public final UnaryExpression()V
    .locals 5

    const/16 v0, 0x67

    const/16 v1, 0x66

    const/4 v2, 0x1

    const/4 v4, -0x1

    iget v3, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v3

    :cond_0
    sparse-switch v3, :sswitch_data_0

    invoke-direct {p0, v4}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :sswitch_0
    iget v3, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v3

    :cond_1
    if-eq v3, v1, :cond_4

    if-ne v3, v0, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->UnaryExpression()V

    new-instance v3, Lcom/lua/bsh/BSHUnaryExpression;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lcom/lua/bsh/BSHUnaryExpression;-><init>(I)V

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v3, Lcom/lua/bsh/BSHUnaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, v4}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_3
    throw v0

    :sswitch_1
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->PreDecrementExpression()V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->PreIncrementExpression()V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->UnaryExpressionNotPlusMinus()V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_3
        0xe -> :sswitch_3
        0x11 -> :sswitch_3
        0x16 -> :sswitch_3
        0x1a -> :sswitch_3
        0x1d -> :sswitch_3
        0x24 -> :sswitch_3
        0x26 -> :sswitch_3
        0x28 -> :sswitch_3
        0x29 -> :sswitch_3
        0x2f -> :sswitch_3
        0x37 -> :sswitch_3
        0x39 -> :sswitch_3
        0x3c -> :sswitch_3
        0x40 -> :sswitch_3
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x45 -> :sswitch_3
        0x48 -> :sswitch_3
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final UnaryExpressionNotPlusMinus()V
    .locals 5

    const/16 v4, 0x57

    const/16 v3, 0x56

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_3

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->E(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->CastExpression()V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_2
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->PostfixExpression()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_4
    if-eq v0, v3, :cond_7

    if-ne v0, v4, :cond_6

    invoke-direct {p0, v4}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->UnaryExpression()V

    new-instance v3, Lcom/lua/bsh/BSHUnaryExpression;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lcom/lua/bsh/BSHUnaryExpression;-><init>(I)V

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    :try_start_0
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget v0, v0, Lcom/lua/bsh/Token;->kind:I

    iput v0, v3, Lcom/lua/bsh/BSHUnaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;I)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_5
    throw v0

    :cond_6
    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :cond_7
    invoke-direct {p0, v3}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method public final VariableDeclarator()V
    .locals 7

    const/16 v6, 0x51

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/lua/bsh/BSHVariableDeclarator;

    const/4 v0, 0x5

    invoke-direct {v4, v0}, Lcom/lua/bsh/BSHVariableDeclarator;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v4}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x45

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    move-result-object v2

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :goto_0
    if-eq v0, v6, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    iget-object v0, v2, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lcom/lua/bsh/BSHVariableDeclarator;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x51

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->VariableInitializer()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    :try_start_3
    iget-object v5, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v5, v4}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    :try_start_4
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_5

    instance-of v2, v0, Lcom/lua/bsh/ParseException;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v4}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_2
    throw v0

    :catch_1
    move-exception v0

    move v2, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move v1, v3

    goto :goto_4

    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v1, v2

    goto :goto_3

    :cond_4
    :try_start_6
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_5
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    move v1, v2

    goto :goto_4
.end method

.method public final VariableInitializer()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/lua/bsh/Parser;->d:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lua/bsh/Parser;->nd()I

    move-result v0

    :cond_0
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-direct {v0}, Lcom/lua/bsh/ParseException;-><init>()V

    throw v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->ArrayInitializer()V

    :goto_0
    return-void

    :sswitch_1
    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0xe -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1d -> :sswitch_1
        0x24 -> :sswitch_1
        0x26 -> :sswitch_1
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2f -> :sswitch_1
        0x37 -> :sswitch_1
        0x39 -> :sswitch_1
        0x3c -> :sswitch_1
        0x40 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_1
        0x45 -> :sswitch_1
        0x48 -> :sswitch_1
        0x4a -> :sswitch_0
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
    .end sparse-switch
.end method

.method public final VoidLiteral()V
    .locals 1

    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    return-void
.end method

.method public final WhileStatement()V
    .locals 5

    const/4 v1, 0x1

    new-instance v3, Lcom/lua/bsh/BSHWhileStatement;

    const/16 v0, 0x1e

    invoke-direct {v3, v0}, Lcom/lua/bsh/BSHWhileStatement;-><init>(I)V

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3}, Lcom/lua/bsh/JJTParserState;->b(Lcom/lua/bsh/Node;)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->b(Lcom/lua/bsh/Node;)V

    const/16 v0, 0x3b

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lcom/lua/bsh/Parser;->F(I)Lcom/lua/bsh/Token;

    invoke-virtual {p0}, Lcom/lua/bsh/Parser;->Statement()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0, v3, v1}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;Z)V

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->a(Lcom/lua/bsh/Node;)V

    :cond_0
    throw v2

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v2, v3}, Lcom/lua/bsh/JJTParserState;->a(Lcom/lua/bsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/lua/bsh/ParseException;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/lua/bsh/ParseException;

    throw v0

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    move v4, v2

    move-object v2, v0

    move v0, v4

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
.end method

.method a(Ljava/lang/String;)Lcom/lua/bsh/ParseException;
    .locals 4

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iget v1, v0, Lcom/lua/bsh/Token;->beginLine:I

    iget v2, v0, Lcom/lua/bsh/Token;->beginColumn:I

    iget v3, v0, Lcom/lua/bsh/Token;->kind:I

    if-nez v3, :cond_0

    sget-object v0, Lcom/lua/bsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Parse error at line "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/ParseException;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    goto :goto_0
.end method

.method a(Lcom/lua/bsh/Node;)V
    .locals 1

    check-cast p1, Lcom/lua/bsh/SimpleNode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Parser;->getToken(I)Lcom/lua/bsh/Token;

    move-result-object v0

    iput-object v0, p1, Lcom/lua/bsh/SimpleNode;->e:Lcom/lua/bsh/Token;

    return-void
.end method

.method a(Ljava/io/Reader;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lua/bsh/Parser;->ReInit(Ljava/io/Reader;)V

    return-void
.end method

.method a()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Lcom/lua/bsh/Parser;->getToken(I)Lcom/lua/bsh/Token;

    move-result-object v2

    iget v2, v2, Lcom/lua/bsh/Token;->kind:I

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Parser;->getToken(I)Lcom/lua/bsh/Token;

    move-result-object v3

    iget v3, v3, Lcom/lua/bsh/Token;->kind:I

    const/16 v4, 0x48

    if-ne v3, v4, :cond_0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/lua/bsh/Parser;->getToken(I)Lcom/lua/bsh/Token;

    move-result-object v3

    iget v3, v3, Lcom/lua/bsh/Token;->kind:I

    if-eqz v3, :cond_0

    const/16 v4, 0x4e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x59

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method b(Lcom/lua/bsh/Node;)V
    .locals 1

    check-cast p1, Lcom/lua/bsh/SimpleNode;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Parser;->getToken(I)Lcom/lua/bsh/Token;

    move-result-object v0

    iput-object v0, p1, Lcom/lua/bsh/SimpleNode;->d:Lcom/lua/bsh/Token;

    return-void
.end method

.method b(Ljava/io/Reader;)V
    .locals 3

    iget-object v0, p0, Lcom/lua/bsh/Parser;->c:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v0}, Lcom/lua/bsh/JavaCharStream;->getEndLine()I

    move-result v1

    iget-object v2, p0, Lcom/lua/bsh/Parser;->c:Lcom/lua/bsh/JavaCharStream;

    invoke-virtual {v2}, Lcom/lua/bsh/JavaCharStream;->getEndColumn()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/lua/bsh/JavaCharStream;->ReInit(Ljava/io/Reader;II)V

    return-void
.end method

.method public final disable_tracing()V
    .locals 0

    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    return-void
.end method

.method public generateParseException()Lcom/lua/bsh/ParseException;
    .locals 5

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iget-object v0, v0, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    iget v1, v0, Lcom/lua/bsh/Token;->beginLine:I

    iget v2, v0, Lcom/lua/bsh/Token;->beginColumn:I

    iget v3, v0, Lcom/lua/bsh/Token;->kind:I

    if-nez v3, :cond_0

    sget-object v0, Lcom/lua/bsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Parse error at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", column "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ".  Encountered: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/ParseException;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/ParseException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getNextToken()Lcom/lua/bsh/Token;
    .locals 2

    iget-object v1, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    iget-object v0, v1, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lcom/lua/bsh/Parser;->d:I

    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->token_source:Lcom/lua/bsh/ParserTokenManager;

    invoke-virtual {v0}, Lcom/lua/bsh/ParserTokenManager;->getNextToken()Lcom/lua/bsh/Token;

    move-result-object v0

    iput-object v0, v1, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lcom/lua/bsh/Token;
    .locals 3

    iget-boolean v0, p0, Lcom/lua/bsh/Parser;->lookingAhead:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->e:Lcom/lua/bsh/Token;

    :goto_0
    const/4 v1, 0x0

    move-object v2, v0

    :goto_1
    if-lt v1, p1, :cond_1

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Parser;->token:Lcom/lua/bsh/Token;

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    if-eqz v0, :cond_2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/lua/bsh/Parser;->token_source:Lcom/lua/bsh/ParserTokenManager;

    invoke-virtual {v0}, Lcom/lua/bsh/ParserTokenManager;->getNextToken()Lcom/lua/bsh/Token;

    move-result-object v0

    iput-object v0, v2, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    goto :goto_2
.end method

.method public popNode()Lcom/lua/bsh/SimpleNode;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0}, Lcom/lua/bsh/JJTParserState;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    invoke-virtual {v0}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRetainComments(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lua/bsh/Parser;->b:Z

    return-void
.end method
