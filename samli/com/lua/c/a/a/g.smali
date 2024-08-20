.class public Lcom/lua/c/a/a/g;
.super Lcom/lua/c/a/a/i;


# static fields
.field private static final N:[Lcom/lua/c/a/a/g;


# instance fields
.field public final O:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x200

    new-array v0, v6, [Lcom/lua/c/a/a/g;

    sput-object v0, Lcom/lua/c/a/a/g;->N:[Lcom/lua/c/a/a/g;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    sget-object v1, Lcom/lua/c/a/a/g;->N:[Lcom/lua/c/a/a/g;

    new-instance v2, Lcom/lua/c/a/a/g;

    add-int/lit16 v3, v0, -0x100

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Lcom/lua/c/a/a/g;-><init>(J)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lcom/lua/c/a/a/i;-><init>()V

    iput-wide p1, p0, Lcom/lua/c/a/a/g;->O:J

    return-void
.end method

.method public static b(I)Lcom/lua/c/a/a/g;
    .locals 4

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/16 v0, -0x100

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/lua/c/a/a/g;->N:[Lcom/lua/c/a/a/g;

    add-int/lit16 v1, p0, 0x100

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lua/c/a/a/g;

    int-to-long v2, p0

    invoke-direct {v0, v2, v3}, Lcom/lua/c/a/a/g;-><init>(J)V

    goto :goto_0
.end method

.method public static l(J)Lcom/lua/c/a/a/i;
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0xff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    const-wide/16 v0, -0x100

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    sget-object v0, Lcom/lua/c/a/a/g;->N:[Lcom/lua/c/a/a/g;

    const-wide/16 v2, 0x100

    add-long/2addr v2, p0

    long-to-int v1, v2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/lua/c/a/a/k;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/lua/c/a/a/g;

    invoke-direct {v0, p0, p1}, Lcom/lua/c/a/a/g;-><init>(J)V

    goto :goto_0
.end method


# virtual methods
.method public a(D)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/e;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->a(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public b(D)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    long-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Lcom/lua/c/a/a/e;->a(DD)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    and-long/2addr v0, p1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->b(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public c(D)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    long-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Lcom/lua/c/a/a/e;->b(DD)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public c(J)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    or-long/2addr v0, p1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->c(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(D)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/e;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public d(J)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    xor-long/2addr v0, p1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->d(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/lua/c/a/a/k;
    .locals 4

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public e(D)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    long-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/k;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public e(J)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    div-long v0, p1, v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/lua/c/a/a/g;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/lua/c/a/a/g;

    iget-wide v2, p1, Lcom/lua/c/a/a/g;->O:J

    iget-wide v4, p0, Lcom/lua/c/a/a/g;->O:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public f(J)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    mul-long/2addr v0, p1

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    long-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->b(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public f(D)Z
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    long-to-double v0, v0

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

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/e;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public g(J)Lcom/lua/c/a/a/k;
    .locals 5

    long-to-double v0, p1

    iget-wide v2, p0, Lcom/lua/c/a/a/g;->O:J

    long-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/k;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/lua/c/a/a/k;)Z
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->h(J)Z

    move-result v0

    return v0
.end method

.method public h(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->e(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public h(J)Z
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    neg-long v0, v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public i(J)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    long-to-int v0, v0

    shl-long v0, p1, v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/lua/c/a/a/j;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/c/a/a/j;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public j(J)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    long-to-int v0, v0

    shr-long v0, p1, v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public j(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    long-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->c(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public k()D
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public k(J)Lcom/lua/c/a/a/k;
    .locals 3

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public k(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->f(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public l(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->g(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public n(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->i(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public o(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->j(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public p(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    iget-wide v0, p0, Lcom/lua/c/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lcom/lua/c/a/a/k;->k(J)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method
