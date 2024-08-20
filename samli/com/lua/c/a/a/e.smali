.class public Lcom/lua/c/a/a/e;
.super Lcom/lua/c/a/a/i;


# static fields
.field public static final N:Lcom/lua/c/a/a/e;

.field public static final O:Lcom/lua/c/a/a/e;

.field public static final P:Lcom/lua/c/a/a/e;


# instance fields
.field final Q:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/lua/c/a/a/e;

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v2, v3}, Lcom/lua/c/a/a/e;-><init>(D)V

    sput-object v0, Lcom/lua/c/a/a/e;->N:Lcom/lua/c/a/a/e;

    new-instance v0, Lcom/lua/c/a/a/e;

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v2, v3}, Lcom/lua/c/a/a/e;-><init>(D)V

    sput-object v0, Lcom/lua/c/a/a/e;->O:Lcom/lua/c/a/a/e;

    new-instance v0, Lcom/lua/c/a/a/e;

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v2, v3}, Lcom/lua/c/a/a/e;-><init>(D)V

    sput-object v0, Lcom/lua/c/a/a/e;->P:Lcom/lua/c/a/a/e;

    return-void
.end method

.method private constructor <init>(D)V
    .locals 1

    invoke-direct {p0}, Lcom/lua/c/a/a/i;-><init>()V

    iput-wide p1, p0, Lcom/lua/c/a/a/e;->Q:D

    return-void
.end method

.method public static a(DD)Lcom/lua/c/a/a/k;
    .locals 4

    const-wide/16 v2, 0x0

    cmpl-double v0, p2, v2

    if-eqz v0, :cond_0

    div-double v0, p0, p2

    invoke-static {v0, v1}, Lcom/lua/c/a/a/e;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    cmpl-double v0, p0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcom/lua/c/a/a/e;->O:Lcom/lua/c/a/a/e;

    goto :goto_0

    :cond_1
    cmpl-double v0, p0, v2

    if-nez v0, :cond_2

    sget-object v0, Lcom/lua/c/a/a/e;->N:Lcom/lua/c/a/a/e;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/lua/c/a/a/e;->P:Lcom/lua/c/a/a/e;

    goto :goto_0
.end method

.method public static b(DD)Lcom/lua/c/a/a/k;
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/e;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lua/c/a/a/e;->N:Lcom/lua/c/a/a/e;

    goto :goto_0
.end method

.method public static h(D)Lcom/lua/c/a/a/i;
    .locals 4

    double-to-long v0, p0

    long-to-double v2, v0

    cmpl-double v2, p0, v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lua/c/a/a/e;

    invoke-direct {v0, p0, p1}, Lcom/lua/c/a/a/e;-><init>(D)V

    goto :goto_0
.end method


# virtual methods
.method public a(D)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/e;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->a(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public b(D)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    invoke-static {p1, p2, v0, v1}, Lcom/lua/c/a/a/e;->a(DD)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    double-to-long v0, v0

    and-long/2addr v0, p1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->b(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public c(D)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    invoke-static {p1, p2, v0, v1}, Lcom/lua/c/a/a/e;->b(DD)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public c(J)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    double-to-long v0, v0

    or-long/2addr v0, p1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->c(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    double-to-long v2, v0

    long-to-double v4, v2

    cmpl-double v4, v4, v0

    if-nez v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "nan"

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    const-string v0, "-inf"

    goto :goto_0

    :cond_2
    const-string v0, "inf"

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d(D)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/e;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public d(J)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    double-to-long v0, v0

    xor-long/2addr v0, p1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->d(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/lua/c/a/a/k;
    .locals 4

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    double-to-long v0, v0

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public e(D)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/k;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public e(J)Lcom/lua/c/a/a/k;
    .locals 5

    long-to-double v0, p1

    iget-wide v2, p0, Lcom/lua/c/a/a/e;->Q:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/lua/c/a/a/k;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/lua/c/a/a/e;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/lua/c/a/a/e;

    iget-wide v2, p1, Lcom/lua/c/a/a/e;->Q:D

    iget-wide v4, p0, Lcom/lua/c/a/a/e;->Q:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public f(J)Lcom/lua/c/a/a/k;
    .locals 5

    long-to-double v0, p1

    iget-wide v2, p0, Lcom/lua/c/a/a/e;->Q:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/lua/c/a/a/e;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->b(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public f(D)Z
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(D)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/e;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public g(J)Lcom/lua/c/a/a/k;
    .locals 5

    long-to-double v0, p1

    iget-wide v2, p0, Lcom/lua/c/a/a/e;->Q:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/k;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/lua/c/a/a/k;)Z
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->f(D)Z

    move-result v0

    return v0
.end method

.method public h(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->e(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public h(J)Z
    .locals 5

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    long-to-double v2, p1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    long-to-int v0, v0

    add-int/2addr v0, v2

    return v0
.end method

.method public i()Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    neg-double v0, v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/e;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public i(J)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    double-to-long v0, v0

    long-to-int v0, v0

    shl-long v0, p1, v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/lua/c/a/a/j;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/c/a/a/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/c/a/a/j;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public j(J)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    double-to-long v0, v0

    long-to-int v0, v0

    shr-long v0, p1, v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public j(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->c(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public k()D
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    return-wide v0
.end method

.method public k(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->d(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public l(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->e(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public n(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->i(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public o(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->j(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public p(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/e;->Q:D

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->g(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method
