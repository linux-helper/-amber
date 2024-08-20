.class public abstract Lcom/lua/c/a/a/k;
.super Lcom/lua/c/a/a/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/c/a/a/k$a;
    }
.end annotation


# static fields
.field public static final A:Lcom/lua/c/a/a/j;

.field public static final B:Lcom/lua/c/a/a/j;

.field public static final C:Lcom/lua/c/a/a/j;

.field private static D:I

.field public static final E:[Lcom/lua/c/a/a/k;

.field public static final F:Lcom/lua/c/a/a/j;

.field public static final G:Lcom/lua/c/a/a/j;

.field public static final H:Lcom/lua/c/a/a/j;

.field public static final I:Lcom/lua/c/a/a/j;

.field public static final J:Lcom/lua/c/a/a/j;

.field public static final K:Lcom/lua/c/a/a/j;

.field public static final L:Lcom/lua/c/a/a/j;

.field public static final a:[Ljava/lang/String;

.field public static final b:Lcom/lua/c/a/a/k;

.field public static final c:Lcom/lua/c/a/a/d;

.field public static final d:Lcom/lua/c/a/a/d;

.field public static final e:Lcom/lua/c/a/a/k;

.field public static final f:Lcom/lua/c/a/a/i;

.field public static final g:Lcom/lua/c/a/a/i;

.field public static final h:Lcom/lua/c/a/a/i;

.field public static final i:[Lcom/lua/c/a/a/k;

.field public static j:Lcom/lua/c/a/a/j;

.field public static final k:Lcom/lua/c/a/a/j;

.field public static final l:Lcom/lua/c/a/a/j;

.field public static final m:Lcom/lua/c/a/a/j;

.field public static final n:Lcom/lua/c/a/a/j;

.field public static final o:Lcom/lua/c/a/a/j;

.field public static final p:Lcom/lua/c/a/a/j;

.field public static final q:Lcom/lua/c/a/a/j;

.field public static final r:Lcom/lua/c/a/a/j;

.field public static final s:Lcom/lua/c/a/a/j;

.field public static final t:Lcom/lua/c/a/a/j;

.field public static final u:Lcom/lua/c/a/a/j;

.field public static final v:Lcom/lua/c/a/a/j;

.field public static final w:Lcom/lua/c/a/a/j;

.field public static final x:Lcom/lua/c/a/a/j;

.field public static final y:Lcom/lua/c/a/a/j;

.field public static final z:Lcom/lua/c/a/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "nil"

    aput-object v2, v1, v0

    const-string v2, "boolean"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "lightuserdata"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "number"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "string"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "table"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "function"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "userdata"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "thread"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "value"

    aput-object v3, v1, v2

    sput-object v1, Lcom/lua/c/a/a/k;->a:[Ljava/lang/String;

    sget-object v1, Lcom/lua/c/a/a/h;->M:Lcom/lua/c/a/a/h;

    sput-object v1, Lcom/lua/c/a/a/k;->b:Lcom/lua/c/a/a/k;

    sget-object v1, Lcom/lua/c/a/a/d;->M:Lcom/lua/c/a/a/d;

    sput-object v1, Lcom/lua/c/a/a/k;->c:Lcom/lua/c/a/a/d;

    sget-object v1, Lcom/lua/c/a/a/d;->N:Lcom/lua/c/a/a/d;

    sput-object v1, Lcom/lua/c/a/a/k;->d:Lcom/lua/c/a/a/d;

    sget-object v1, Lcom/lua/c/a/a/k$a;->O:Lcom/lua/c/a/a/k$a;

    sput-object v1, Lcom/lua/c/a/a/k;->e:Lcom/lua/c/a/a/k;

    invoke-static {v0}, Lcom/lua/c/a/a/g;->b(I)Lcom/lua/c/a/a/g;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->f:Lcom/lua/c/a/a/i;

    invoke-static {v4}, Lcom/lua/c/a/a/g;->b(I)Lcom/lua/c/a/a/g;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->g:Lcom/lua/c/a/a/i;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/lua/c/a/a/g;->b(I)Lcom/lua/c/a/a/g;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->h:Lcom/lua/c/a/a/i;

    new-array v1, v0, [Lcom/lua/c/a/a/k;

    sput-object v1, Lcom/lua/c/a/a/k;->i:[Lcom/lua/c/a/a/k;

    const-string v1, "_ENV"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->j:Lcom/lua/c/a/a/j;

    const-string v1, "__index"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->k:Lcom/lua/c/a/a/j;

    const-string v1, "__newindex"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->l:Lcom/lua/c/a/a/j;

    const-string v1, "__call"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->m:Lcom/lua/c/a/a/j;

    const-string v1, "__mode"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->n:Lcom/lua/c/a/a/j;

    const-string v1, "__metatable"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->o:Lcom/lua/c/a/a/j;

    const-string v1, "__add"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->p:Lcom/lua/c/a/a/j;

    const-string v1, "__sub"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->q:Lcom/lua/c/a/a/j;

    const-string v1, "__div"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->r:Lcom/lua/c/a/a/j;

    const-string v1, "__mul"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->s:Lcom/lua/c/a/a/j;

    const-string v1, "__pow"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->t:Lcom/lua/c/a/a/j;

    const-string v1, "__mod"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->u:Lcom/lua/c/a/a/j;

    const-string v1, "__unm"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->v:Lcom/lua/c/a/a/j;

    const-string v1, "__len"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->w:Lcom/lua/c/a/a/j;

    const-string v1, "__eq"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->x:Lcom/lua/c/a/a/j;

    const-string v1, "__lt"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->y:Lcom/lua/c/a/a/j;

    const-string v1, "__le"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->z:Lcom/lua/c/a/a/j;

    const-string v1, "__tostring"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->A:Lcom/lua/c/a/a/j;

    const-string v1, "__concat"

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->B:Lcom/lua/c/a/a/j;

    const-string v1, ""

    invoke-static {v1}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v1

    sput-object v1, Lcom/lua/c/a/a/k;->C:Lcom/lua/c/a/a/j;

    const/16 v1, 0xfa

    sput v1, Lcom/lua/c/a/a/k;->D:I

    sget v1, Lcom/lua/c/a/a/k;->D:I

    new-array v1, v1, [Lcom/lua/c/a/a/k;

    sput-object v1, Lcom/lua/c/a/a/k;->E:[Lcom/lua/c/a/a/k;

    :goto_0
    sget v1, Lcom/lua/c/a/a/k;->D:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/lua/c/a/a/k;->E:[Lcom/lua/c/a/a/k;

    sget-object v2, Lcom/lua/c/a/a/k;->b:Lcom/lua/c/a/a/k;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "__idiv"

    invoke-static {v0}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v0

    sput-object v0, Lcom/lua/c/a/a/k;->F:Lcom/lua/c/a/a/j;

    const-string v0, "__band"

    invoke-static {v0}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v0

    sput-object v0, Lcom/lua/c/a/a/k;->G:Lcom/lua/c/a/a/j;

    const-string v0, "__bor"

    invoke-static {v0}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v0

    sput-object v0, Lcom/lua/c/a/a/k;->H:Lcom/lua/c/a/a/j;

    const-string v0, "__bxor"

    invoke-static {v0}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v0

    sput-object v0, Lcom/lua/c/a/a/k;->I:Lcom/lua/c/a/a/j;

    const-string v0, "__shl"

    invoke-static {v0}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v0

    sput-object v0, Lcom/lua/c/a/a/k;->J:Lcom/lua/c/a/a/j;

    const-string v0, "__shr"

    invoke-static {v0}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v0

    sput-object v0, Lcom/lua/c/a/a/k;->K:Lcom/lua/c/a/a/j;

    const-string v0, "__bnot"

    invoke-static {v0}, Lcom/lua/c/a/a/k;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v0

    sput-object v0, Lcom/lua/c/a/a/k;->L:Lcom/lua/c/a/a/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lua/c/a/a/o;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/lua/c/a/a/k;
    .locals 1

    new-instance v0, Lcom/lua/c/a/a/f;

    invoke-direct {v0, p0}, Lcom/lua/c/a/a/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/o;)Lcom/lua/c/a/a/o;
    .locals 1

    invoke-virtual {p1}, Lcom/lua/c/a/a/o;->b()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lua/c/a/a/o$b;

    invoke-direct {v0, p0, p1}, Lcom/lua/c/a/a/o$b;-><init>(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/o;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static b([Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/o;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    array-length v0, p0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/lua/c/a/a/o$a;

    sget-object v1, Lcom/lua/c/a/a/k;->e:Lcom/lua/c/a/a/k;

    invoke-direct {v0, p0, v1}, Lcom/lua/c/a/a/o$a;-><init>([Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/o;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lua/c/a/a/o$b;

    aget-object v1, p0, v2

    aget-object v2, p0, v3

    invoke-direct {v0, v1, v2}, Lcom/lua/c/a/a/o$b;-><init>(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/o;)V

    goto :goto_0

    :cond_1
    aget-object v0, p0, v2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/lua/c/a/a/k;->e:Lcom/lua/c/a/a/k;

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Lcom/lua/c/a/a/j;
    .locals 1

    invoke-static {p0}, Lcom/lua/c/a/a/j;->d(Ljava/lang/String;)Lcom/lua/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public static h(D)Lcom/lua/c/a/a/i;
    .locals 2

    invoke-static {p0, p1}, Lcom/lua/c/a/a/e;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public static l(J)Lcom/lua/c/a/a/i;
    .locals 2

    invoke-static {p0, p1}, Lcom/lua/c/a/a/g;->l(J)Lcom/lua/c/a/a/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/lua/c/a/a/k;
    .locals 0

    return-object p0
.end method

.method public a(D)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->p:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/lua/c/a/a/k;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object p0, Lcom/lua/c/a/a/k;->b:Lcom/lua/c/a/a/k;

    goto :goto_0
.end method

.method public a(J)Lcom/lua/c/a/a/k;
    .locals 3

    long-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/k;->a(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->p:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/lua/c/a/a/k;D)Lcom/lua/c/a/a/k;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/k;->i(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/c/a/a/k;->h()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2, p3}, Lcom/lua/c/a/a/k;->h(D)Lcom/lua/c/a/a/i;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/lua/c/a/a/k;->b(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attempt to perform arithmetic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on number and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lua/c/a/a/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/c/a/a/k;->a(Ljava/lang/String;)Lcom/lua/c/a/a/k;

    const/4 v0, 0x0

    throw v0
.end method

.method protected a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/k;->i(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/c/a/a/k;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p1}, Lcom/lua/c/a/a/k;->i(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/c/a/a/k;->h()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0, p0, p2}, Lcom/lua/c/a/a/k;->b(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attempt to perform arithmetic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lua/c/a/a/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lua/c/a/a/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/c/a/a/k;->a(Ljava/lang/String;)Lcom/lua/c/a/a/k;

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lcom/lua/c/a/a/k;->f()Lcom/lua/c/a/a/k;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/lua/c/a/a/k;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/lua/c/a/a/k;->a([Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/c/a/a/o;->a()Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/lua/c/a/a/k;Ljava/lang/String;)Lcom/lua/c/a/a/k;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/lua/c/a/a/k;->i(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/c/a/a/k;->h()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lua/c/a/a/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/lua/c/a/a/f;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/c/a/a/f;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/o;)Lcom/lua/c/a/a/o;
    .locals 1

    invoke-static {p1, p2}, Lcom/lua/c/a/a/k;->b(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/o;)Lcom/lua/c/a/a/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/o;)Lcom/lua/c/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/lua/c/a/a/o;)Lcom/lua/c/a/a/o;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/c/a/a/k;->f()Lcom/lua/c/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/o;)Lcom/lua/c/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/o;
    .locals 1

    invoke-static {p1}, Lcom/lua/c/a/a/k;->b([Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/o;)Lcom/lua/c/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/lua/c/a/a/j;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(D)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->r:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lcom/lua/c/a/a/k;
    .locals 5

    sget-object v0, Lcom/lua/c/a/a/k;->G:Lcom/lua/c/a/a/j;

    long-to-double v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->G:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/c/a/a/k;->f()Lcom/lua/c/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)Lcom/lua/c/a/a/k;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expected, got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lua/c/a/a/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/lua/c/a/a/f;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/c/a/a/f;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c(D)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->u:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public c(J)Lcom/lua/c/a/a/k;
    .locals 5

    sget-object v0, Lcom/lua/c/a/a/k;->H:Lcom/lua/c/a/a/j;

    long-to-double v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->H:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/String;)Lcom/lua/c/a/a/k;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' not implemented for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lua/c/a/a/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/lua/c/a/a/f;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/c/a/a/f;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lua/c/a/a/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/lua/c/a/a/k;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attempt to perform arithmetic on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lua/c/a/a/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/lua/c/a/a/f;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/c/a/a/f;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public d(D)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->s:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public d(J)Lcom/lua/c/a/a/k;
    .locals 5

    sget-object v0, Lcom/lua/c/a/a/k;->I:Lcom/lua/c/a/a/j;

    long-to-double v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->I:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/lua/c/a/a/k;
    .locals 2

    sget-object v0, Lcom/lua/c/a/a/k;->L:Lcom/lua/c/a/a/j;

    const-string v1, "attempt to perform arithmetic on "

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Ljava/lang/String;)Lcom/lua/c/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lua/c/a/a/k;->e(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public e(D)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->t:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public e(J)Lcom/lua/c/a/a/k;
    .locals 5

    sget-object v0, Lcom/lua/c/a/a/k;->F:Lcom/lua/c/a/a/j;

    long-to-double v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/c/a/a/k;->f()Lcom/lua/c/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lua/c/a/a/k;->b(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()Lcom/lua/c/a/a/k;
    .locals 2

    sget-object v0, Lcom/lua/c/a/a/k;->m:Lcom/lua/c/a/a/j;

    const-string v1, "attempt to call "

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Ljava/lang/String;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public f(J)Lcom/lua/c/a/a/k;
    .locals 5

    sget-object v0, Lcom/lua/c/a/a/k;->s:Lcom/lua/c/a/a/j;

    long-to-double v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->r:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public f(D)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Lcom/lua/c/a/a/k;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g(D)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->q:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public g(J)Lcom/lua/c/a/a/k;
    .locals 3

    long-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/k;->e(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/lua/c/a/a/k;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->F:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(J)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Lcom/lua/c/a/a/k;
    .locals 2

    sget-object v0, Lcom/lua/c/a/a/k;->v:Lcom/lua/c/a/a/j;

    const-string v1, "attempt to perform arithmetic on "

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Ljava/lang/String;)Lcom/lua/c/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lua/c/a/a/k;->e(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public i(J)Lcom/lua/c/a/a/k;
    .locals 5

    sget-object v0, Lcom/lua/c/a/a/k;->J:Lcom/lua/c/a/a/j;

    long-to-double v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public i(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/c/a/a/k;->g()Lcom/lua/c/a/a/k;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lua/c/a/a/k;->b:Lcom/lua/c/a/a/k;

    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/lua/c/a/a/k;->m(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    const/4 v0, 0x0

    throw v0
.end method

.method public j()Lcom/lua/c/a/a/j;
    .locals 1

    const-string v0, "strValue"

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/k;->b(Ljava/lang/String;)Lcom/lua/c/a/a/k;

    const/4 v0, 0x0

    throw v0
.end method

.method public j(J)Lcom/lua/c/a/a/k;
    .locals 5

    sget-object v0, Lcom/lua/c/a/a/k;->K:Lcom/lua/c/a/a/j;

    long-to-double v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public j(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->u:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public k()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k(J)Lcom/lua/c/a/a/k;
    .locals 3

    long-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/lua/c/a/a/k;->g(D)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public k(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->s:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public l(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->t:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public m(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    const-string v0, "rawget"

    invoke-virtual {p0, v0}, Lcom/lua/c/a/a/k;->c(Ljava/lang/String;)Lcom/lua/c/a/a/k;

    const/4 v0, 0x0

    throw v0
.end method

.method public n(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->J:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public o(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->K:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public p(Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/k;->q:Lcom/lua/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/lua/c/a/a/k;->a(Lcom/lua/c/a/a/k;Lcom/lua/c/a/a/k;)Lcom/lua/c/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/c/a/a/k;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
