.class public Lcom/lua/b/b/a/a/q;
.super Landroid/view/View;

# interfaces
.implements Lcom/lua/b/b/a/b/f$a;


# static fields
.field public static final SCROLL_DOWN:I = 0x1

.field public static final SCROLL_LEFT:I = 0x2

.field public static final SCROLL_RIGHT:I = 0x3

.field public static final SCROLL_UP:I = 0x0

.field protected static a:F = 0.75f

.field protected static b:I = 0x4

.field protected static c:I = 0x10

.field protected static d:J = 0xfaL

.field private static e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:I

.field private C:I

.field private D:Z

.field private E:Lcom/lua/b/b/a/a/e;

.field private F:Landroid/text/ClipboardManager;

.field private G:F

.field private H:I

.field private I:I

.field private J:Lcom/lua/b/b/a/a/u;

.field private K:I

.field private L:Landroid/graphics/Typeface;

.field private M:Landroid/graphics/Typeface;

.field private N:Landroid/graphics/Typeface;

.field private O:C

.field private P:Z

.field private Q:Landroid/graphics/Paint;

.field private R:I

.field private final S:Ljava/lang/Runnable;

.field private final T:Ljava/lang/Runnable;

.field private final U:Ljava/lang/Runnable;

.field private final V:Ljava/lang/Runnable;

.field private W:I

.field private aa:J

.field private ba:Z

.field private ca:Landroid/view/MotionEvent;

.field private da:F

.field private ea:F

.field private final f:Landroid/widget/Scroller;

.field protected g:Z

.field protected h:Lcom/lua/b/b/a/a/v;

.field protected i:Lcom/lua/b/b/a/b/g;

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:Lcom/lua/b/b/a/b/c;

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:I

.field protected s:Z

.field protected t:Lcom/lua/b/b/a/a/c;

.field protected u:Z

.field private v:Lcom/lua/b/b/a/a/q$a;

.field private w:Lcom/lua/b/b/a/a/q$b;

.field private x:Lcom/lua/b/b/a/b/r;

.field private y:Lcom/lua/b/b/a/a/t;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string v2, "\u00c7\u0106\u010c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string v2, "\u010e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const-string v2, "\u011e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string v2, "\u0141"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string v2, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string v2, "\u00d1\u0143\u0147"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const-string v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string v2, "\u0158"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const-string v2, "\u015a\u0160\u015e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const-string v2, "\u0164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string v2, "\u00dd\u0178"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string v2, "\u0179\u017b\u017d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string v2, "\u00e7\u0107\u010d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string v2, "\u010f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string v2, "\u011f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string v2, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string v2, "\u0142"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string v2, "\u00f1\u0144\u0148"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string v2, "\u0159"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string v2, "\u00a7\u00df\u015b\u0161\u015f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string v2, "\u0165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-string v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-string v2, "\u00fd\u00ff"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string v2, "\u017a\u017c\u017e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const v1, 0xef01

    const-string v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const-string v2, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string v2, "\u00b2\u2154"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const-string v2, "\u00b3\u00be\u215c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const-string v2, "\u2074"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x35

    const-string v2, "\u215d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const-string v2, "\u215e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const-string v2, "\u207f\u2205"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string v2, "\u2030"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string v2, "\u2020\u2021"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const-string v2, "\u2013\u2014"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string v2, "\u00b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "[{<"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string v2, "]}>"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string v2, "\u00a1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string v2, "\u00bf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const-string v2, "\u201a\u201e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string v2, "\u2260\u2248\u221e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string v2, "\u2264\u00ab\u2039"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string v2, "\u2265\u00bb\u203a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->g:Z

    iput v2, p0, Lcom/lua/b/b/a/a/q;->j:I

    iput v0, p0, Lcom/lua/b/b/a/a/q;->k:I

    iput v0, p0, Lcom/lua/b/b/a/a/q;->l:I

    sget v0, Lcom/lua/b/b/a/a/q;->b:I

    iput v0, p0, Lcom/lua/b/b/a/a/q;->m:I

    new-instance v0, Lcom/lua/b/b/a/b/e;

    invoke-direct {v0}, Lcom/lua/b/b/a/b/e;-><init>()V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->o:Z

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->p:Z

    iput-boolean v1, p0, Lcom/lua/b/b/a/a/q;->q:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/lua/b/b/a/a/q;->r:I

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->s:Z

    iput-boolean v1, p0, Lcom/lua/b/b/a/a/q;->u:Z

    iput v2, p0, Lcom/lua/b/b/a/a/q;->z:I

    iput v2, p0, Lcom/lua/b/b/a/a/q;->B:I

    iput v2, p0, Lcom/lua/b/b/a/a/q;->C:I

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->D:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lua/b/b/a/a/q;->G:F

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->L:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->L:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->M:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->L:Landroid/graphics/Typeface;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->N:Landroid/graphics/Typeface;

    new-instance v0, Lcom/lua/b/b/a/a/g;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/g;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->S:Ljava/lang/Runnable;

    new-instance v0, Lcom/lua/b/b/a/a/h;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/h;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->T:Ljava/lang/Runnable;

    new-instance v0, Lcom/lua/b/b/a/a/i;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/i;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->U:Ljava/lang/Runnable;

    new-instance v0, Lcom/lua/b/b/a/a/j;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/j;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->V:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->ba:Z

    new-instance v0, Lcom/lua/b/b/a/b/g;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/b/g;-><init>(Lcom/lua/b/b/a/b/f$a;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    new-instance v0, Lcom/lua/b/b/a/a/v;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/v;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->f:Landroid/widget/Scroller;

    invoke-direct {p0}, Lcom/lua/b/b/a/a/q;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->g:Z

    iput v2, p0, Lcom/lua/b/b/a/a/q;->j:I

    iput v0, p0, Lcom/lua/b/b/a/a/q;->k:I

    iput v0, p0, Lcom/lua/b/b/a/a/q;->l:I

    sget v0, Lcom/lua/b/b/a/a/q;->b:I

    iput v0, p0, Lcom/lua/b/b/a/a/q;->m:I

    new-instance v0, Lcom/lua/b/b/a/b/e;

    invoke-direct {v0}, Lcom/lua/b/b/a/b/e;-><init>()V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->o:Z

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->p:Z

    iput-boolean v1, p0, Lcom/lua/b/b/a/a/q;->q:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/lua/b/b/a/a/q;->r:I

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->s:Z

    iput-boolean v1, p0, Lcom/lua/b/b/a/a/q;->u:Z

    iput v2, p0, Lcom/lua/b/b/a/a/q;->z:I

    iput v2, p0, Lcom/lua/b/b/a/a/q;->B:I

    iput v2, p0, Lcom/lua/b/b/a/a/q;->C:I

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->D:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lua/b/b/a/a/q;->G:F

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->L:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->L:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->M:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->L:Landroid/graphics/Typeface;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->N:Landroid/graphics/Typeface;

    new-instance v0, Lcom/lua/b/b/a/a/g;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/g;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->S:Ljava/lang/Runnable;

    new-instance v0, Lcom/lua/b/b/a/a/h;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/h;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->T:Ljava/lang/Runnable;

    new-instance v0, Lcom/lua/b/b/a/a/i;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/i;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->U:Ljava/lang/Runnable;

    new-instance v0, Lcom/lua/b/b/a/a/j;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/j;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->V:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->ba:Z

    new-instance v0, Lcom/lua/b/b/a/b/g;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/b/g;-><init>(Lcom/lua/b/b/a/b/f$a;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    new-instance v0, Lcom/lua/b/b/a/a/v;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/v;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->f:Landroid/widget/Scroller;

    invoke-direct {p0}, Lcom/lua/b/b/a/a/q;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->g:Z

    iput v2, p0, Lcom/lua/b/b/a/a/q;->j:I

    iput v0, p0, Lcom/lua/b/b/a/a/q;->k:I

    iput v0, p0, Lcom/lua/b/b/a/a/q;->l:I

    sget v0, Lcom/lua/b/b/a/a/q;->b:I

    iput v0, p0, Lcom/lua/b/b/a/a/q;->m:I

    new-instance v0, Lcom/lua/b/b/a/b/e;

    invoke-direct {v0}, Lcom/lua/b/b/a/b/e;-><init>()V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->o:Z

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->p:Z

    iput-boolean v1, p0, Lcom/lua/b/b/a/a/q;->q:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/lua/b/b/a/a/q;->r:I

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->s:Z

    iput-boolean v1, p0, Lcom/lua/b/b/a/a/q;->u:Z

    iput v2, p0, Lcom/lua/b/b/a/a/q;->z:I

    iput v2, p0, Lcom/lua/b/b/a/a/q;->B:I

    iput v2, p0, Lcom/lua/b/b/a/a/q;->C:I

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->D:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lua/b/b/a/a/q;->G:F

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->L:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->L:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->M:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->L:Landroid/graphics/Typeface;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->N:Landroid/graphics/Typeface;

    new-instance v0, Lcom/lua/b/b/a/a/g;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/g;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->S:Ljava/lang/Runnable;

    new-instance v0, Lcom/lua/b/b/a/a/h;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/h;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->T:Ljava/lang/Runnable;

    new-instance v0, Lcom/lua/b/b/a/a/i;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/i;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->U:Ljava/lang/Runnable;

    new-instance v0, Lcom/lua/b/b/a/a/j;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/j;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->V:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/lua/b/b/a/a/q;->ba:Z

    new-instance v0, Lcom/lua/b/b/a/b/g;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/b/g;-><init>(Lcom/lua/b/b/a/b/f$a;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    new-instance v0, Lcom/lua/b/b/a/a/v;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/v;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->f:Landroid/widget/Scroller;

    invoke-direct {p0}, Lcom/lua/b/b/a/a/q;->f()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;CII)I
    .locals 10

    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    invoke-virtual {p0, p2, p3}, Lcom/lua/b/b/a/a/q;->getAdvance(CI)I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-gt p3, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getContentWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p3, v0, :cond_1

    :cond_0
    sparse-switch p2, :sswitch_data_0

    iget-char v0, p0, Lcom/lua/b/b/a/a/q;->O:C

    if-eqz v0, :cond_3

    int-to-float v4, p3

    int-to-float v5, p4

    iget-object v6, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    new-array v1, v3, [C

    aput-char v0, v1, v2

    aput-char p2, v1, v9

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    int-to-char v0, v2

    int-to-char v0, v0

    iput-char v0, p0, Lcom/lua/b/b/a/a/q;->O:C

    :cond_1
    :goto_0
    return v8

    :sswitch_0
    iput-char p2, p0, Lcom/lua/b/b/a/a/q;->O:C

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    sget-object v3, Lcom/lua/b/b/a/b/c$a;->i:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v1, v3}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, p3

    int-to-float v5, p4

    iget-object v6, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    const-string v1, "\u00b7"

    :goto_1
    move-object v0, p1

    move v3, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_2
    const-string v1, " "

    int-to-float v4, p3

    int-to-float v5, p4

    iget-object v6, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    sget-object v3, Lcom/lua/b/b/a/b/c$a;->i:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v1, v3}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, p3

    int-to-float v5, p4

    iget-object v6, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    const-string v1, "\u21b5"

    goto :goto_1

    :sswitch_3
    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    sget-object v3, Lcom/lua/b/b/a/b/c$a;->i:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v1, v3}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, p3

    int-to-float v5, p4

    iget-object v6, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    const-string v1, "\u00bb"

    goto :goto_1

    :cond_3
    int-to-float v4, p3

    int-to-float v5, p4

    iget-object v6, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    new-array v1, v9, [C

    aput-char p2, v1, v2

    move-object v0, p1

    move v3, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;II)I
    .locals 3

    int-to-float v0, p3

    int-to-float v1, p4

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->Q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    return v0
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;IIII)I
    .locals 8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt p4, v3, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v7, v0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    const v1, -0x77777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getLeftOffset()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, p1, v0, p6, v1}, Lcom/lua/b/b/a/a/q;->a(Landroid/graphics/Canvas;III)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-gt p5, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getContentWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p5, v0, :cond_1

    :cond_0
    int-to-float v4, p5

    int-to-float v5, p6

    iget-object v6, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    :cond_1
    return v7

    :cond_2
    move v3, p4

    goto :goto_0
.end method

.method static synthetic a(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$a;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    return-object v0
.end method

.method private a(C)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v1, p0, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->a(C)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/q$a;->a(C)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    goto :goto_0
.end method

.method private a(FF)V
    .locals 5

    const/4 v1, 0x0

    float-to-int v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int/2addr v2, v0

    float-to-int v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getMaxScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v2, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getMaxScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-le v3, v2, :cond_2

    move v1, v2

    :cond_0
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/lua/b/b/a/a/q;->smoothScrollTo(II)V

    return-void

    :cond_1
    if-gez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    if-ltz v3, :cond_0

    move v1, v3

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private a(ILandroid/view/KeyEvent;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendKeyEvent:2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "lua"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->isSelectText()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/lua/b/b/a/a/q;->g()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->d(Z)V

    :cond_0
    :goto_0
    const/16 v0, 0x7a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->isSelectText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lua/b/b/a/a/q;->h()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0, v2}, Lcom/lua/b/b/a/a/q$a;->d(Z)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0, v2}, Lcom/lua/b/b/a/a/q$a;->c(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0, v2}, Lcom/lua/b/b/a/a/q$a;->b(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->e()V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->f()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/lua/b/b/a/a/q;->moveCaret(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v1, 0x0

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v3

    mul-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v4

    mul-int/2addr v3, v4

    if-lt v3, v7, :cond_2

    if-gt v2, v8, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v4}, Lcom/lua/b/b/a/a/q;->c(I)Lcom/lua/b/b/a/b/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v5}, Lcom/lua/b/b/a/a/q;->c(I)Lcom/lua/b/b/a/b/q;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/lua/b/b/a/a/q;->j:I

    if-ge v5, v6, :cond_5

    iget v10, v0, Landroid/graphics/Rect;->right:I

    if-lt v10, v6, :cond_5

    if-eqz v1, :cond_3

    iget v6, v1, Landroid/graphics/Rect;->left:I

    if-ge v6, v5, :cond_5

    :cond_3
    move-object v6, v0

    :goto_2
    int-to-float v1, v4

    int-to-float v2, v2

    int-to-float v4, v3

    iget-object v5, p0, Lcom/lua/b/b/a/a/q;->Q:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v1, v6

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_0

    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v2

    mul-int/2addr v0, v2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v3

    mul-int/2addr v3, v2

    if-lt v3, v7, :cond_0

    if-gt v0, v8, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v2}, Lcom/lua/b/b/a/a/q;->c(I)Lcom/lua/b/b/a/b/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/q;->c(I)Lcom/lua/b/b/a/b/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->Q:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    sget-object v5, Lcom/lua/b/b/a/b/c$a;->e:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v4, v5}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    int-to-float v2, v0

    int-to-float v4, v3

    iget-object v5, p0, Lcom/lua/b/b/a/a/q;->Q:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->Q:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    sget-object v2, Lcom/lua/b/b/a/b/c$a;->i:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v1, v2}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    :cond_5
    move-object v6, v1

    goto :goto_2
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iput p2, p0, Lcom/lua/b/b/a/a/q;->H:I

    iput p3, p0, Lcom/lua/b/b/a/a/q;->I:I

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    sget-object v2, Lcom/lua/b/b/a/b/c$a;->g:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v1, v2}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;)I

    move-result v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, p3, v2}, Lcom/lua/b/b/a/a/q;->a(Landroid/graphics/Canvas;III)V

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;III)V
    .locals 6

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    int-to-float v1, p2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    add-int v3, p2, p4

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, p3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic a(Lcom/lua/b/b/a/a/q;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/q;->f(I)V

    return-void
.end method

.method static synthetic a(Lcom/lua/b/b/a/a/q;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lua/b/b/a/a/q;->d(II)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 6

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    new-instance v0, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    new-instance v1, Lcom/lua/b/b/a/a/n;

    invoke-direct {v1, p0, v3, p2}, Lcom/lua/b/b/a/a/n;-><init>(Lcom/lua/b/b/a/a/q;Landroid/text/SpannableStringBuilder;Z)V

    invoke-virtual {v0, v1}, Landroid/text/method/CharacterPickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/text/method/CharacterPickerDialog;->show()V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;CII)I
    .locals 5

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/a/q;->getAdvance(C)I

    move-result v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    sget-object v4, Lcom/lua/b/b/a/b/c$a;->d:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v3, v4}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1, p3, p4, v1}, Lcom/lua/b/b/a/a/q;->a(Landroid/graphics/Canvas;III)V

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    sget-object v4, Lcom/lua/b/b/a/b/c$a;->c:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v3, v4}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lua/b/b/a/a/q;->a(Landroid/graphics/Canvas;CII)I

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    return v1
.end method

.method static synthetic b(Lcom/lua/b/b/a/a/q;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->S:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b(C)V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v1, p0, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    :goto_0
    sget-object v1, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q$a;->i()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lua/b/b/a/a/q;->a(Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_0
    move v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/q$a;->a(C)V

    goto :goto_1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->o:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lua/b/b/a/a/q;->z:I

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->getPaintBaseline(I)I

    move-result v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    sget-object v4, Lcom/lua/b/b/a/b/c$a;->h:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v3, v4}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    iget v3, p0, Lcom/lua/b/b/a/a/q;->B:I

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getContentWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/lua/b/b/a/a/q;->a(Landroid/graphics/Canvas;III)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/lua/b/b/a/a/q;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/q;->i(I)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/graphics/Canvas;)I
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method static synthetic c(Lcom/lua/b/b/a/a/q;I)I
    .locals 0

    iput p1, p0, Lcom/lua/b/b/a/a/q;->z:I

    return p1
.end method

.method static synthetic c(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/u;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->J:Lcom/lua/b/b/a/a/u;

    return-object v0
.end method

.method private d(Landroid/graphics/Canvas;)I
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method static synthetic d(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/b/r;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->x:Lcom/lua/b/b/a/b/r;

    return-object v0
.end method

.method private d(II)V
    .locals 7

    const/4 v1, 0x0

    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Invalid startRow and/or endRow"

    invoke-static {v0, v2}, Lcom/lua/b/b/a/b/v;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/v;->a()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v3

    mul-int/2addr v3, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    mul-int v4, v5, p2

    add-int/2addr v4, v6

    add-int/2addr v0, v4

    invoke-super {p0, v1, v2, v3, v0}, Landroid/view/View;->invalidate(IIII)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 22

    invoke-direct/range {p0 .. p1}, Lcom/lua/b/b/a/a/q;->c(Landroid/graphics/Canvas;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v2, v15}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v14

    if-gez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/g;->length()I

    invoke-virtual/range {p0 .. p0}, Lcom/lua/b/b/a/a/q;->isWordWrap()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v2, v14}, Lcom/lua/b/b/a/b/g;->a(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move v8, v2

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lua/b/b/a/a/q;->D:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->Q:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v4}, Lcom/lua/b/b/a/b/g;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lua/b/b/a/a/q;->C:I

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/lua/b/b/a/a/q;->d(Landroid/graphics/Canvas;)I

    move-result v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lua/b/b/a/a/q;->getPaintBaseline(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/g;->g()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "No spans to paint in TextWarrior.paint()"

    invoke-static {v2, v3}, Lcom/lua/b/b/a/b/v;->a(ZLjava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/lua/b/b/a/b/q;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lua/b/b/a/b/q;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    const/4 v4, 0x1

    const/4 v3, 0x0

    move/from16 v21, v3

    move v3, v4

    move-object v4, v2

    move/from16 v2, v21

    :goto_2
    invoke-virtual {v4}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v5

    add-int v9, v2, v5

    move/from16 v0, v18

    if-ge v3, v0, :cond_9

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lua/b/b/a/b/q;

    add-int/lit8 v10, v3, 0x1

    move-object v11, v2

    :goto_3
    if-eqz v11, :cond_4

    if-le v9, v14, :cond_a

    :cond_4
    invoke-virtual {v4}, Lcom/lua/b/b/a/b/q;->b()I

    move-result v13

    invoke-virtual {v4}, Lcom/lua/b/b/a/b/q;->b()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lua/b/b/a/a/q;->L:Landroid/graphics/Typeface;

    :goto_4
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    invoke-virtual {v4}, Lcom/lua/b/b/a/b/q;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lua/b/b/a/b/c;->a(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v2}, Lcom/lua/b/b/a/b/g;->f()I

    move-result v19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lua/b/b/a/a/q;->D:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->Q:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    sget-object v4, Lcom/lua/b/b/a/b/c$a;->i:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {v3, v4}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lua/b/b/a/a/q;->C:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lua/b/b/a/a/q;->W:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lua/b/b/a/a/q;->C:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lua/b/b/a/a/q;->W:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lua/b/b/a/a/q;->Q:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/lua/b/b/a/a/q;->getMaxScrollY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/lua/b/b/a/a/q;->getMaxScrollY()I

    move-result v4

    div-int/2addr v3, v4

    add-int v4, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/lua/b/b/a/a/q;->getMaxScrollY()I

    move-result v5

    div-int/2addr v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lua/b/b/a/a/q;->R:I

    sub-int v5, v2, v4

    div-int/lit8 v6, v3, 0x4

    if-ge v5, v6, :cond_5

    div-int/lit8 v2, v3, 0x4

    add-int/2addr v2, v4

    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lua/b/b/a/a/q;->C:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lua/b/b/a/a/q;->W:I

    div-int/lit8 v3, v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lua/b/b/a/a/q;->R:I

    sub-int v3, v5, v3

    div-int/lit8 v20, v7, 0x4

    sub-int v3, v3, v20

    int-to-float v3, v3

    int-to-float v4, v4

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v6, v7, 0x4

    sub-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lua/b/b/a/a/q;->Q:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    const/4 v2, 0x1

    if-eq v13, v2, :cond_e

    const/16 v2, 0x1e

    if-eq v13, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->L:Landroid/graphics/Typeface;

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v6, 0x0

    move-object v3, v2

    move v5, v8

    move-object v7, v11

    move v4, v14

    move v2, v6

    move v8, v13

    move v11, v12

    move v12, v15

    :goto_6
    move/from16 v0, v16

    if-gt v12, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v6, v12}, Lcom/lua/b/b/a/b/g;->f(I)I

    move-result v20

    move/from16 v0, v19

    if-lt v12, v0, :cond_f

    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/lua/b/b/a/a/q;->b(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/lua/b/b/a/a/q;->isWordWrap()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/lua/b/b/a/a/q;->a(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v2, v15, 0x1

    move v8, v2

    goto/16 :goto_1

    :cond_9
    const/4 v11, 0x0

    move v10, v3

    goto/16 :goto_3

    :cond_a
    move v2, v9

    move v3, v10

    move-object v4, v11

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lua/b/b/a/a/q;->N:Landroid/graphics/Typeface;

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lua/b/b/a/a/q;->M:Landroid/graphics/Typeface;

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->N:Landroid/graphics/Typeface;

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->M:Landroid/graphics/Typeface;

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/lua/b/b/a/a/q;->D:Z

    if-eqz v6, :cond_1b

    if-eq v5, v2, :cond_1b

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v6, v11}, Lcom/lua/b/b/a/a/q;->a(Landroid/graphics/Canvas;Ljava/lang/String;II)I

    move v6, v5

    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lua/b/b/a/a/q;->C:I

    const/4 v13, 0x0

    move v14, v13

    move v13, v2

    move/from16 v21, v10

    move v10, v4

    move/from16 v4, v21

    :goto_8
    move/from16 v0, v20

    if-ge v14, v0, :cond_15

    if-eqz v7, :cond_19

    if-lt v10, v9, :cond_19

    invoke-virtual {v7}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v15

    invoke-virtual {v7}, Lcom/lua/b/b/a/b/q;->b()I

    move-result v7

    if-eq v8, v7, :cond_18

    const/4 v2, 0x1

    if-eq v7, v2, :cond_12

    const/16 v2, 0x1e

    if-eq v7, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->L:Landroid/graphics/Typeface;

    :goto_9
    if-eq v3, v2, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    invoke-virtual {v3, v7}, Lcom/lua/b/b/a/b/c;->a(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object v8, v2

    :goto_b
    move/from16 v0, v18

    if-ge v4, v0, :cond_13

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lua/b/b/a/b/q;

    add-int/lit8 v3, v4, 0x1

    :goto_c
    add-int v4, v15, v9

    move/from16 v21, v7

    move-object v7, v8

    move v8, v3

    move v3, v4

    move-object v4, v2

    move/from16 v2, v21

    :goto_d
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lua/b/b/a/a/q;->j:I

    if-ne v10, v9, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v11}, Lcom/lua/b/b/a/a/q;->a(Landroid/graphics/Canvas;II)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v9, v10}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v15, v10}, Lcom/lua/b/b/a/a/q$a;->c(I)Z

    move-result v15

    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v13, v11}, Lcom/lua/b/b/a/a/q;->b(Landroid/graphics/Canvas;CII)I

    move-result v9

    :goto_e
    add-int/lit8 v15, v10, 0x1

    add-int/lit8 v10, v14, 0x1

    add-int/2addr v9, v13

    move v13, v9

    move v14, v10

    move v9, v3

    move v10, v15

    move-object v3, v7

    move-object v7, v4

    move v4, v8

    move v8, v2

    goto/16 :goto_8

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->N:Landroid/graphics/Typeface;

    goto :goto_9

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->M:Landroid/graphics/Typeface;

    goto :goto_9

    :cond_13
    const/4 v2, 0x0

    move v3, v4

    goto :goto_c

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v13, v11}, Lcom/lua/b/b/a/a/q;->a(Landroid/graphics/Canvas;CII)I

    move-result v9

    goto :goto_e

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    add-int/lit8 v14, v10, -0x1

    invoke-virtual {v2, v14}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v2

    const/16 v14, 0xa

    if-ne v2, v14, :cond_1a

    add-int/lit8 v2, v5, 0x1

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lua/b/b/a/a/q;->B:I

    if-le v13, v14, :cond_16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lua/b/b/a/a/q;->B:I

    :cond_16
    add-int/lit8 v12, v12, 0x1

    add-int/2addr v5, v11

    move v11, v5

    move v5, v2

    move v2, v6

    move/from16 v21, v4

    move v4, v10

    move/from16 v10, v21

    goto/16 :goto_6

    :cond_17
    move-object v2, v3

    goto/16 :goto_a

    :cond_18
    move-object v8, v3

    goto/16 :goto_b

    :cond_19
    move v2, v8

    move v8, v4

    move-object v4, v7

    move-object v7, v3

    move v3, v9

    goto/16 :goto_d

    :cond_1a
    move v2, v5

    goto :goto_f

    :cond_1b
    move v6, v2

    goto/16 :goto_7
.end method

.method static synthetic e(Lcom/lua/b/b/a/a/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/lua/b/b/a/a/q;->g()V

    return-void
.end method

.method private e(II)Z
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/q$b;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->w:Lcom/lua/b/b/a/a/q$b;

    return-object v0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/q;->ba:Z

    new-instance v0, Lcom/lua/b/b/a/a/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lua/b/b/a/a/q$a;-><init>(Lcom/lua/b/b/a/a/q;Lcom/lua/b/b/a/a/g;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->F:Landroid/text/ClipboardManager;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    sget v1, Lcom/lua/b/b/a/a/q;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->Q:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->Q:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->Q:Landroid/graphics/Paint;

    sget v1, Lcom/lua/b/b/a/a/q;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    new-instance v0, Lcom/lua/b/b/a/a/k;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/k;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->x:Lcom/lua/b/b/a/b/r;

    new-instance v0, Lcom/lua/b/b/a/a/l;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/l;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->y:Lcom/lua/b/b/a/a/t;

    new-instance v0, Lcom/lua/b/b/a/a/m;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/m;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->J:Lcom/lua/b/b/a/a/u;

    invoke-direct {p0}, Lcom/lua/b/b/a/a/q;->i()V

    new-instance v0, Lcom/lua/b/b/a/a/e;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/e;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->E:Lcom/lua/b/b/a/a/e;

    new-instance v0, Lcom/lua/b/b/a/a/c;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/c;-><init>(Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->t:Lcom/lua/b/b/a/a/c;

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->t:Lcom/lua/b/b/a/a/c;

    invoke-static {}, Lcom/lua/b/b/a/b/j;->f()Lcom/lua/b/b/a/b/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/c;->a(Lcom/lua/b/b/a/b/i;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private f(I)V
    .locals 5

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Invalid startRow"

    invoke-static {v0, v2}, Lcom/lua/b/b/a/b/v;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/v;->a()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v3

    mul-int/2addr v3, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v0, v3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-super {p0, v1, v0, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private g(I)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/a/q;->c(I)Lcom/lua/b/b/a/b/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/q;->b()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getContentWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getContentWidth()I

    move-result v2

    sub-int/2addr v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/lua/b/b/a/a/q;->R:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int v0, v1, v0

    iget v1, p0, Lcom/lua/b/b/a/a/q;->R:I

    sub-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/t;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->y:Lcom/lua/b/b/a/a/t;

    return-object v0
.end method

.method private g()V
    .locals 2

    iget v0, p0, Lcom/lua/b/b/a/a/q;->z:I

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lua/b/b/a/a/q;->d(II)V

    return-void
.end method

.method private h(I)I
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getContentHeight()I

    move-result v2

    add-int/2addr v0, v2

    if-le v1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getContentHeight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v1, p0, Lcom/lua/b/b/a/a/q;->k:I

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v2, p0, Lcom/lua/b/b/a/a/q;->l:I

    invoke-virtual {v1, v2}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lua/b/b/a/a/q;->d(II)V

    return-void
.end method

.method static synthetic h(Lcom/lua/b/b/a/a/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/lua/b/b/a/a/q;->h()V

    return-void
.end method

.method static synthetic i(Lcom/lua/b/b/a/a/q;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->T:Ljava/lang/Runnable;

    return-object v0
.end method

.method private i()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/lua/b/b/a/a/q;->j:I

    iput v1, p0, Lcom/lua/b/b/a/a/q;->z:I

    iput v1, p0, Lcom/lua/b/b/a/a/q;->B:I

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->d(Z)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->i()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->clearSpans()V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getContentWidth()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->a()V

    :cond_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->x:Lcom/lua/b/b/a/b/r;

    invoke-interface {v0, v1}, Lcom/lua/b/b/a/b/r;->a(I)V

    invoke-virtual {p0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method private i(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Invalid charOffset given"

    invoke-static {v0, v3}, Lcom/lua/b/b/a/b/v;->a(ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/q;->h(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/q;->g(I)I

    move-result v3

    if-nez v0, :cond_1

    if-nez v3, :cond_1

    :goto_1
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v0}, Landroid/view/View;->scrollBy(II)V

    move v2, v1

    goto :goto_1
.end method

.method private j(I)I
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    const v0, 0x7fffffff

    const-string v1, "MeasureSpec cannot be UNSPECIFIED. Setting dimensions to max."

    invoke-static {v1}, Lcom/lua/b/b/a/b/v;->a(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method static synthetic j(Lcom/lua/b/b/a/a/q;)I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->z:I

    return v0
.end method

.method static synthetic k(Lcom/lua/b/b/a/a/q;)I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/b/b/a/a/q;->z:I

    return v0
.end method

.method static synthetic l(Lcom/lua/b/b/a/a/q;)I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lua/b/b/a/a/q;->z:I

    return v0
.end method

.method static synthetic m(Lcom/lua/b/b/a/a/q;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->U:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic n(Lcom/lua/b/b/a/a/q;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->V:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic o(Lcom/lua/b/b/a/a/q;)Lcom/lua/b/b/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->E:Lcom/lua/b/b/a/a/e;

    return-object v0
.end method

.method static synthetic p(Lcom/lua/b/b/a/a/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->ba:Z

    return v0
.end method


# virtual methods
.method a(II)I
    .locals 13

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v0

    div-int v1, p2, v0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->f()I

    move-result v0

    if-le v1, v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v4, v1}, Lcom/lua/b/b/a/b/g;->d(I)Ljava/lang/String;

    move-result-object v7

    iget v5, p0, Lcom/lua/b/b/a/a/q;->C:I

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    move v6, v2

    move v4, v2

    :goto_1
    if-ge v6, v8, :cond_3

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    if-eqz v4, :cond_4

    move v1, v2

    move v4, v5

    :goto_2
    if-lt v4, p1, :cond_5

    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v6, v1, :cond_6

    add-int/2addr v0, v6

    goto :goto_0

    :sswitch_0
    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v9, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    new-array v10, v11, [C

    aput-char v1, v10, v2

    aput-char v4, v10, v3

    invoke-virtual {v9, v10, v2, v11}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v5

    move v4, v1

    move v1, v3

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getSpaceAdvance()I

    move-result v1

    :goto_3
    add-int/2addr v1, v5

    move v12, v4

    move v4, v1

    move v1, v12

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getEOLAdvance()I

    move-result v1

    goto :goto_3

    :sswitch_3
    invoke-virtual {p0, v5}, Lcom/lua/b/b/a/a/q;->e(I)I

    move-result v1

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v1}, Lcom/lua/b/b/a/a/q;->getCharAdvance(C)I

    move-result v1

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move v4, v1

    goto :goto_1

    :cond_6
    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method a(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method protected a()Z
    .locals 3

    iget v1, p0, Lcom/lua/b/b/a/a/q;->j:I

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->c()I

    move-result v2

    const/4 v0, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(I)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const-string v0, "Invalid scroll direction"

    invoke-static {v0}, Lcom/lua/b/b/a/b/v;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->V:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/lua/b/b/a/a/q;->z:I

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v3, p0, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->V:Ljava/lang/Runnable;

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->U:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v1, p0, Lcom/lua/b/b/a/a/q;->j:I

    if-lez v1, :cond_0

    iget v2, p0, Lcom/lua/b/b/a/a/q;->z:I

    iget-object v3, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v1

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->U:Ljava/lang/Runnable;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->S:Ljava/lang/Runnable;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->T:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->T:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method b(II)I
    .locals 13

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v0

    div-int v0, p2, v0

    iget-object v3, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v3, v0}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v6

    if-ltz v6, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v3, v0}, Lcom/lua/b/b/a/b/g;->d(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    move v5, v1

    move v3, v1

    move v4, v1

    :goto_1
    if-ge v5, v8, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    if-eqz v3, :cond_3

    move v0, v1

    move v3, v4

    :goto_2
    if-lt v3, p1, :cond_4

    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v5, v0, :cond_0

    add-int v0, v6, v5

    goto :goto_0

    :sswitch_0
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v9, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    new-array v10, v11, [C

    aput-char v0, v10, v1

    aput-char v3, v10, v2

    invoke-virtual {v9, v10, v1, v11}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v4

    move v3, v0

    move v0, v2

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getSpaceAdvance()I

    move-result v0

    :goto_3
    add-int/2addr v0, v4

    move v12, v3

    move v3, v0

    move v0, v12

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getEOLAdvance()I

    move-result v0

    goto :goto_3

    :sswitch_3
    invoke-virtual {p0, v4}, Lcom/lua/b/b/a/a/q;->e(I)I

    move-result v0

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->getCharAdvance(C)I

    move-result v0

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method b(I)Landroid/graphics/Rect;
    .locals 5

    const/4 v1, -0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->c()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/a/q;->c(I)Lcom/lua/b/b/a/b/q;

    move-result-object v3

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v3}, Lcom/lua/b/b/a/b/q;->a()I

    move-result v4

    invoke-virtual {v3}, Lcom/lua/b/b/a/b/q;->b()I

    move-result v3

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method protected b()Z
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->z:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(I)Lcom/lua/b/b/a/b/q;
    .locals 13

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v0

    iget-object v3, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v3, v0}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v6

    iget v4, p0, Lcom/lua/b/b/a/a/q;->C:I

    iget-object v3, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v3, v0}, Lcom/lua/b/b/a/b/g;->d(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    move v3, v4

    move v5, v1

    move v0, v1

    :goto_0
    add-int v9, v6, v5

    if-gt v9, p1, :cond_1

    if-ge v5, v8, :cond_1

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    if-eqz v0, :cond_0

    move v0, v1

    move v3, v4

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_0

    :sswitch_0
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v9, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    new-array v10, v11, [C

    aput-char v3, v10, v1

    aput-char v0, v10, v2

    invoke-virtual {v9, v10, v1, v11}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v4

    move v3, v0

    move v0, v2

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getSpaceAdvance()I

    move-result v3

    :goto_2
    add-int/2addr v3, v4

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getEOLAdvance()I

    move-result v3

    goto :goto_2

    :sswitch_3
    invoke-virtual {p0, v4}, Lcom/lua/b/b/a/a/q;->e(I)I

    move-result v3

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v3}, Lcom/lua/b/b/a/a/q;->getCharAdvance(C)I

    move-result v3

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/lua/b/b/a/b/q;

    invoke-direct {v0, v3, v4}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method c(II)V
    .locals 9

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->f:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getMaxScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getMaxScrollY()I

    move-result v8

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method protected c()Z
    .locals 3

    iget v1, p0, Lcom/lua/b/b/a/a/q;->z:I

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->f()I

    move-result v2

    const/4 v0, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelSpanning()V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->a()V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->f:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public copy()V
    .locals 2

    iget v0, p0, Lcom/lua/b/b/a/a/q;->k:I

    iget v1, p0, Lcom/lua/b/b/a/a/q;->l:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->F:Landroid/text/ClipboardManager;

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->a(Landroid/text/ClipboardManager;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    return-void
.end method

.method public copy(Landroid/text/ClipboardManager;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/q$a;->a(Landroid/text/ClipboardManager;)V

    return-void
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    const/16 v4, 0x12

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_4

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getSelectionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    :cond_3
    return-object v0

    :cond_4
    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0
.end method

.method public createDocumentProvider()Lcom/lua/b/b/a/b/g;
    .locals 2

    new-instance v0, Lcom/lua/b/b/a/b/g;

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-direct {v0, v1}, Lcom/lua/b/b/a/b/g;-><init>(Lcom/lua/b/b/a/b/g;)V

    return-object v0
.end method

.method public cut()V
    .locals 2

    iget v0, p0, Lcom/lua/b/b/a/a/q;->k:I

    iget v1, p0, Lcom/lua/b/b/a/a/q;->l:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->F:Landroid/text/ClipboardManager;

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->b(Landroid/text/ClipboardManager;)V

    :cond_0
    return-void
.end method

.method public cut(Landroid/text/ClipboardManager;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/q$a;->b(Landroid/text/ClipboardManager;)V

    return-void
.end method

.method protected d()I
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v0, v1, v0

    return v0
.end method

.method protected d(I)I
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/b/g;->b(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Invalid char offset given to getColumn"

    invoke-static {v0, v2}, Lcom/lua/b/b/a/b/v;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/b/g;->e(I)I

    move-result v0

    sub-int v0, p1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(I)I
    .locals 5

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->p:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lua/b/b/a/a/q;->m:I

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    const-string v2, "\u00b7"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    float-to-int v1, v1

    mul-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lua/b/b/a/a/q;->C:I

    iget v1, p0, Lcom/lua/b/b/a/a/q;->W:I

    sub-int v0, p1, v0

    div-int/2addr v0, v1

    iget v2, p0, Lcom/lua/b/b/a/a/q;->m:I

    rem-int/2addr v0, v2

    sub-int v0, v2, v0

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method e()V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->T:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->U:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->V:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public focusCaret()V
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-direct {p0, v0}, Lcom/lua/b/b/a/a/q;->i(I)Z

    return-void
.end method

.method public focusSelectionEnd()V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->a(Z)V

    return-void
.end method

.method public focusSelectionStart()V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->a(Z)V

    return-void
.end method

.method public format()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/lua/b/b/a/a/q;->selectText(Z)V

    new-instance v0, Lcom/lua/b/b/a/b/g;

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-direct {v0, v1}, Lcom/lua/b/b/a/b/g;-><init>(Lcom/lua/b/b/a/b/g;)V

    iget v1, p0, Lcom/lua/b/b/a/a/q;->r:I

    invoke-static {v0, v1}, Lcom/lua/b/b/a/b/b;->a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/g;->b()V

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/g;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v1, v6, v2, v4, v5}, Lcom/lua/b/b/a/b/g;->a(IIJ)V

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v6, v2, v3}, Lcom/lua/b/b/a/b/g;->a([CIJ)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->d()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->clearSpans()V

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->respan()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getAdvance(C)I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    iget-char v1, p0, Lcom/lua/b/b/a/a/q;->O:C

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    new-array v3, v5, [C

    aput-char v1, v3, v0

    aput-char p1, v3, v4

    invoke-virtual {v2, v3, v0, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    :goto_0
    float-to-int v0, v0

    :goto_1
    :sswitch_0
    return v0

    :sswitch_1
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getSpaceAdvance()I

    move-result v0

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getEOLAdvance()I

    move-result v0

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getTabAdvance()I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    new-array v2, v4, [C

    aput-char p1, v2, v0

    invoke-virtual {v1, v2, v0, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method public getAdvance(CI)I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    iget-char v1, p0, Lcom/lua/b/b/a/a/q;->O:C

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    new-array v3, v5, [C

    aput-char v1, v3, v0

    aput-char p1, v3, v4

    invoke-virtual {v2, v3, v0, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    :goto_0
    float-to-int v0, v0

    :goto_1
    :sswitch_0
    return v0

    :sswitch_1
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getSpaceAdvance()I

    move-result v0

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getEOLAdvance()I

    move-result v0

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0, p2}, Lcom/lua/b/b/a/a/q;->e(I)I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    new-array v2, v4, [C

    aput-char p1, v2, v0

    invoke-virtual {v1, v2, v0, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method public getAutoIndentWidth()I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->r:I

    return v0
.end method

.method public getCaretPosition()I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->j:I

    return v0
.end method

.method public getCaretRow()I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->z:I

    return v0
.end method

.method public getCaretX()I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->H:I

    return v0
.end method

.method public getCaretY()I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->I:I

    return v0
.end method

.method public getCharAdvance(C)I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    new-array v1, v3, [C

    aput-char p1, v1, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getColorScheme()Lcom/lua/b/b/a/b/c;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    return-object v0
.end method

.method protected getContentHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getContentWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getEOLAdvance()I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    const-string v1, "\u21b5"

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    sget v0, Lcom/lua/b/b/a/a/q;->a:F

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    const-string v2, " "

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getLeftOffset()I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->C:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->c()I

    move-result v0

    return v0
.end method

.method getMaxScrollX()I
    .locals 3

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->isWordWrap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lua/b/b/a/a/q;->C:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/lua/b/b/a/a/q;->B:I

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getContentWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    invoke-virtual {v2}, Lcom/lua/b/b/a/a/v;->a()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lua/b/b/a/a/q;->R:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method getMaxScrollY()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/g;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getContentHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    invoke-virtual {v2}, Lcom/lua/b/b/a/a/v;->a()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getNumVisibleRows()I
    .locals 4

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getContentHeight()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getPaintBaseline(I)I
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v2

    mul-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v0, v1, v0

    return v0
.end method

.method public final getRowWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->getContentWidth()I

    move-result v0

    iget v1, p0, Lcom/lua/b/b/a/a/q;->C:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSelectionEnd()I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->l:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/lua/b/b/a/a/q;->j:I

    :cond_0
    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->k:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/lua/b/b/a/a/q;->j:I

    :cond_0
    return v0
.end method

.method protected getSpaceAdvance()I
    .locals 4

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    const-string v1, "\u00b7"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lua/b/b/a/a/q;->W:I

    goto :goto_0
.end method

.method protected getTabAdvance()I
    .locals 5

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->p:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/lua/b/b/a/a/q;->m:I

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    const-string v2, "\u00b7"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    mul-int/2addr v0, v1

    return v0

    :cond_0
    iget v1, p0, Lcom/lua/b/b/a/a/q;->m:I

    iget v0, p0, Lcom/lua/b/b/a/a/q;->W:I

    goto :goto_0
.end method

.method public getTextSize()F
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTopOffset()I
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->K:I

    return v0
.end method

.method public getUiState()Landroid/os/Parcelable;
    .locals 1

    new-instance v0, Lcom/lua/b/b/a/a/q$c;

    invoke-direct {v0, p0}, Lcom/lua/b/b/a/a/q$c;-><init>(Lcom/lua/b/b/a/a/q;)V

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->G:F

    return v0
.end method

.method public hasLayout()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inSelectionRange(I)Z
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/q$a;->c(I)Z

    move-result v0

    return v0
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->ba:Z

    return v0
.end method

.method public isEdited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->g:Z

    return v0
.end method

.method public isFlingScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSaveEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isSelectText()Z
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->c()Z

    move-result v0

    return v0
.end method

.method public final isSelectText2()Z
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->d()Z

    move-result v0

    return v0
.end method

.method public isShowLineNumbers()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->D:Z

    return v0
.end method

.method public isWordWrap()Z
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v0

    return v0
.end method

.method public moveCaret(I)V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/q$a;->d(I)V

    return-void
.end method

.method public moveCaretDown()V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->e()V

    return-void
.end method

.method public moveCaretLeft()V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->b(Z)V

    return-void
.end method

.method public moveCaretRight()V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->c(Z)V

    return-void
.end method

.method public moveCaretUp()V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->f()V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const v0, 0x20001

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v0, 0x50000006

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->w:Lcom/lua/b/b/a/a/q$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lua/b/b/a/a/q$b;

    invoke-direct {v0, p0, p0}, Lcom/lua/b/b/a/a/q$b;-><init>(Lcom/lua/b/b/a/a/q;Lcom/lua/b/b/a/a/q;)V

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->w:Lcom/lua/b/b/a/a/q$b;

    :goto_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->w:Lcom/lua/b/b/a/a/q$b;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$b;->b()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/q;->e(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget-object v0, Lcom/lua/c/a/a/a/f;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/v;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/lua/b/b/a/a/q;->g()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/lua/b/b/a/a/q;->a(FF)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->ba:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_3

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    :goto_0
    iput v0, p0, Lcom/lua/b/b/a/a/q;->da:F

    iput v1, p0, Lcom/lua/b/b/a/a/q;->ea:F

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    invoke-virtual {v2, p1}, Lcom/lua/b/b/a/a/v;->b(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/lua/b/b/a/a/q;->ca:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    iget-object v3, p0, Lcom/lua/b/b/a/a/q;->ca:Landroid/view/MotionEvent;

    iget v4, p0, Lcom/lua/b/b/a/a/q;->da:F

    sub-float/2addr v4, v0

    iget v5, p0, Lcom/lua/b/b/a/a/q;->ea:F

    sub-float/2addr v5, v1

    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/lua/b/b/a/a/v;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const v2, 0xef01

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    invoke-virtual {v0, p1, p2}, Lcom/lua/b/b/a/a/v;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/lua/b/b/a/a/s;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/lua/b/b/a/a/q;->a(ILandroid/view/KeyEvent;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3f

    if-eq p1, v0, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    sget-object v0, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/lua/b/b/a/a/q;->a(Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/lua/b/b/a/a/s;->b(Landroid/view/KeyEvent;)C

    move-result v0

    if-nez v0, :cond_4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-ne v2, v1, :cond_7

    iget-boolean v2, p0, Lcom/lua/b/b/a/a/q;->s:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Lcom/lua/b/b/a/a/q;->a(C)V

    :cond_5
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-direct {p0, v0}, Lcom/lua/b/b/a/a/q;->b(C)V

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/lua/b/b/a/a/q;->s:Z

    if-eqz v2, :cond_8

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-boolean v2, p0, Lcom/lua/b/b/a/a/q;->s:Z

    if-nez v2, :cond_5

    sget-object v2, Lcom/lua/b/b/a/a/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_9
    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v2, v0}, Lcom/lua/b/b/a/a/q$a;->a(C)V

    goto :goto_1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/lua/b/b/a/a/q;->s:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/lua/b/b/a/a/s;->b(Landroid/view/KeyEvent;)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    iget v3, p0, Lcom/lua/b/b/a/a/q;->j:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lua/b/b/a/a/q$a;->a(C)V

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v2, v1}, Lcom/lua/b/b/a/a/q$a;->a(C)V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    invoke-virtual {v0, p1, p2}, Lcom/lua/b/b/a/a/v;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lua/b/b/a/a/q;->K:I

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->P:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->respan()V

    :cond_0
    if-lez p4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lua/b/b/a/a/q;->P:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->t:Lcom/lua/b/b/a/a/c;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/c;->c(I)V

    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/q;->j(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/lua/b/b/a/a/q;->j(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq p3, p1, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->a()V

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->j()V

    if-ge p2, p4, :cond_1

    iget v0, p0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-direct {p0, v0}, Lcom/lua/b/b/a/a/q;->i(I)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/v;->a(Landroid/view/MotionEvent;)Z

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/lua/b/b/a/a/q;->e(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v2, v3}, Lcom/lua/b/b/a/a/q$a;->c(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gez v1, :cond_1

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v2, v3}, Lcom/lua/b/b/a/a/q$a;->b(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q$a;->e()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-gez v0, :cond_3

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v1}, Lcom/lua/b/b/a/a/q$a;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public paste()V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->F:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lua/b/b/a/a/q$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public paste(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/q$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x100

    if-eq p1, v1, :cond_4

    const/16 v1, 0x200

    if-eq p1, v1, :cond_2

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_3

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->moveCaretUp()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->moveCaretLeft()V

    goto :goto_0

    :cond_4
    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_5

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->moveCaretDown()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->moveCaretRight()V

    goto :goto_0
.end method

.method public replaceText(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->b()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lua/b/b/a/a/q$a;->b(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->i()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->d()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->g()V

    return-void
.end method

.method public respan()V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->b()V

    return-void
.end method

.method public restoreUiState(Landroid/os/Parcelable;)V
    .locals 4

    check-cast p1, Lcom/lua/b/b/a/a/q$c;

    iget v0, p1, Lcom/lua/b/b/a/a/q$c;->a:I

    iget-boolean v1, p1, Lcom/lua/b/b/a/a/q$c;->d:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/lua/b/b/a/a/o;

    iget v2, p1, Lcom/lua/b/b/a/a/q$c;->e:I

    iget v3, p1, Lcom/lua/b/b/a/a/q$c;->f:I

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/lua/b/b/a/a/o;-><init>(Lcom/lua/b/b/a/a/q;III)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/lua/b/b/a/a/f;

    invoke-direct {v1, p0, v0}, Lcom/lua/b/b/a/a/f;-><init>(Lcom/lua/b/b/a/a/q;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public selectAll()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v1}, Lcom/lua/b/b/a/b/g;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/lua/b/b/a/a/q$a;->a(IIZZ)V

    return-void
.end method

.method public selectText(Z)V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/lua/b/b/a/a/q;->h()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/lua/b/b/a/a/q$a;->d(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/lua/b/b/a/a/q;->g()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setAutoComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lua/b/b/a/a/q;->u:Z

    return-void
.end method

.method public setAutoIndent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lua/b/b/a/a/q;->q:Z

    return-void
.end method

.method public setAutoIndentWidth(I)V
    .locals 0

    iput p1, p0, Lcom/lua/b/b/a/a/q;->r:I

    return-void
.end method

.method public setBoldTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/b/a/a/q;->M:Landroid/graphics/Typeface;

    return-void
.end method

.method public setChirality(Z)V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/v;->a(Z)V

    return-void
.end method

.method public setColorScheme(Lcom/lua/b/b/a/b/c;)V
    .locals 1

    iput-object p1, p0, Lcom/lua/b/b/a/a/q;->n:Lcom/lua/b/b/a/b/c;

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/a/v;->a(Lcom/lua/b/b/a/b/c;)V

    sget-object v0, Lcom/lua/b/b/a/b/c$a;->b:Lcom/lua/b/b/a/b/c$a;

    invoke-virtual {p1, v0}, Lcom/lua/b/b/a/b/c;->a(Lcom/lua/b/b/a/b/c$a;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setDocumentProvider(Lcom/lua/b/b/a/b/g;)V
    .locals 1

    iput-object p1, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-direct {p0}, Lcom/lua/b/b/a/a/q;->i()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->a()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->b()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->ba:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEdited(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lua/b/b/a/a/q;->g:Z

    return-void
.end method

.method public setHighlightCurrentRow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lua/b/b/a/a/q;->o:Z

    invoke-direct {p0}, Lcom/lua/b/b/a/a/q;->g()V

    return-void
.end method

.method public setItalicTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/b/a/a/q;->N:Landroid/graphics/Typeface;

    return-void
.end method

.method public setLongPressCaps(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lua/b/b/a/a/q;->s:Z

    return-void
.end method

.method public setNavigationMethod(Lcom/lua/b/b/a/a/v;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/b/a/a/q;->h:Lcom/lua/b/b/a/a/v;

    return-void
.end method

.method public setNonPrintingCharVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q;->p:Z

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/lua/b/b/a/a/q;->p:Z

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->a()V

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->j()V

    iget v0, p0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-direct {p0, v0}, Lcom/lua/b/b/a/a/q;->i(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/lua/b/b/a/a/t;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/b/a/a/q;->y:Lcom/lua/b/b/a/a/t;

    return-void
.end method

.method public setRowListener(Lcom/lua/b/b/a/b/r;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/b/a/a/q;->x:Lcom/lua/b/b/a/b/r;

    return-void
.end method

.method public setSelection(II)V
    .locals 3

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/lua/b/b/a/a/q$a;->a(IIZZ)V

    return-void
.end method

.method public setSelectionRange(II)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/lua/b/b/a/a/q$a;->a(IIZZ)V

    return-void
.end method

.method public setShowLineNumbers(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lua/b/b/a/a/q;->D:Z

    return-void
.end method

.method public setTabSpaces(I)V
    .locals 1

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/lua/b/b/a/a/q;->m:I

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->a()V

    :cond_2
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->j()V

    iget v0, p0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-direct {p0, v0}, Lcom/lua/b/b/a/a/q;->i(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setTextSize(I)V
    .locals 10

    const/16 v6, 0x61

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    const/16 v0, 0x50

    if-ge p1, v0, :cond_0

    int-to-float v0, p1

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {p0, v6}, Lcom/lua/b/b/a/a/q;->getAdvance(C)I

    move-result v1

    int-to-double v4, v1

    sget v1, Lcom/lua/b/b/a/a/q;->c:I

    div-int v1, p1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/lua/b/b/a/a/q;->G:F

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->Q:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->a()V

    :cond_2
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->j()V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v6}, Lcom/lua/b/b/a/a/q;->getAdvance(C)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v6, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p0}, Lcom/lua/b/b/a/a/q;->d()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v8, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v0, v4

    double-to-int v0, v0

    mul-double/2addr v2, v6

    double-to-int v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lua/b/b/a/a/q;->R:I

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lua/b/b/a/a/q;->W:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iput-object p1, p0, Lcom/lua/b/b/a/a/q;->L:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->M:Landroid/graphics/Typeface;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/b/b/a/a/q;->N:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->Q:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->a()V

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->j()V

    iget v0, p0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-direct {p0, v0}, Lcom/lua/b/b/a/a/q;->i(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setWordWrap(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0, p1}, Lcom/lua/b/b/a/b/g;->a(Z)V

    if-eqz p1, :cond_0

    iput v1, p0, Lcom/lua/b/b/a/a/q;->B:I

    invoke-virtual {p0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->j()V

    iget v0, p0, Lcom/lua/b/b/a/a/q;->j:I

    invoke-direct {p0, v0}, Lcom/lua/b/b/a/a/q;->i(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setZoom(F)V
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/lua/b/b/a/a/q;->G:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/lua/b/b/a/a/q;->G:F

    sget v0, Lcom/lua/b/b/a/a/q;->c:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/lua/b/b/a/a/q;->Q:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->i:Lcom/lua/b/b/a/b/g;

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/g;->a()V

    :cond_2
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->v:Lcom/lua/b/b/a/a/q$a;

    invoke-virtual {v0}, Lcom/lua/b/b/a/a/q$a;->j()V

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->A:Landroid/graphics/Paint;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lua/b/b/a/a/q;->R:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public final smoothScrollBy(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lua/b/b/a/a/q;->aa:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/lua/b/b/a/a/q;->f:Landroid/widget/Scroller;

    invoke-virtual {v2, v1, v0, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lua/b/b/a/a/q;->aa:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/lua/b/b/a/a/q;->smoothScrollBy(II)V

    return-void
.end method

.method public stopFlingScrolling()V
    .locals 2

    iget-object v0, p0, Lcom/lua/b/b/a/a/q;->f:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method
