.class public Lcom/androlua/LuaLexer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaLexer$CharSeqReader;
    }
.end annotation


# static fields
.field public static final YYEOF:I = -0x1

.field public static final YYINITIAL:I = 0x0

.field private static final a:[I

.field private static final b:[C

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[Ljava/lang/String;

.field private static final g:[I

.field public static final xBLOCK_COMMENT:I = 0xc

.field public static final xBLOCK_STRING:I = 0x8

.field public static final xCOMMENT:I = 0xa

.field public static final xDOUBLE_QUOTED_STRING:I = 0x4

.field public static final xSHEBANG:I = 0x2

.field public static final xSINGLE_QUOTED_STRING:I = 0x6


# instance fields
.field private h:Ljava/io/Reader;

.field private i:I

.field private j:I

.field private k:[C

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/androlua/LuaLexer;->a:[I

    const-string v0, "\t\u001c\u0001\u0003\u0001\u0002\u0001\u0000\u0001\u0003\u0001\u0001\u000e\u001c\u0004\u001b\u0001\u0003\u0001+\u0001\u0019\u0001*\u0001\u0004\u00010\u0001:\u0001\u001d\u00012\u00013\u0001/\u0001\t\u00016\u0001\u000e\u0001\r\u00011\u0001\u000b\t\u0006\u00018\u00017\u0001-\u0001\u0017\u0001,\u0001\u001b\u0001=\u0004\u0007\u0001\u0008\u0001\u0007\t\u0004\u0001\n\u0007\u0004\u0001\u000c\u0002\u0004\u0001\u0016\u0001\u001a\u0001\u0018\u00019\u0001\u0004\u0001\u001b\u0001\u001e\u0001\u001f\u0001%\u0001\u0015\u0001\u0010\u0001#\u0001\u0011\u0001(\u0001\u0012\u0001\u0004\u0001 \u0001!\u0001<\u0001\u0014\u0001\u0013\u0001\'\u0001\u0004\u0001\u000f\u0001\"\u0001&\u0001$\u0001\u0004\u0001)\u0001\u000c\u0002\u0004\u00014\u0001;\u00015\u0001.\u0006\u001c\u0001\u0005\u001a\u001c\u0001\u0000\u0001\u001b\u0004\u0004\u0004\u001b\u0001\u0004\u0002\u001b\u0001\u001c\u0007\u001b\u0001\u0004\u0004\u001b\u0001\u0004\u0005\u001b\u0017\u0004\u0001\u001b\u001f\u0004\u0001\u001b\u01ca\u0004\u0004\u001b\u000c\u0004\u000e\u001b\u0005\u0004\u0007\u001b\u0001\u0004\u0001\u001b\u0001\u0004\u0011\u001bp\u001c\u0005\u0004\u0001\u001b\u0002\u0004\u0002\u001b\u0004\u0004\u0008\u001b\u0001\u0004\u0001\u001b\u0003\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0014\u0004\u0001\u001bS\u0004\u0001\u001b\u008b\u0004\u0001\u001b\u0005\u001c\u0002\u001b\u009e\u0004\t\u001b&\u0004\u0002\u001b\u0001\u0004\u0007\u001b\'\u0004\u0007\u001b\u0001\u0004\u0001\u001b-\u001c\u0001\u001b\u0001\u001c\u0001\u001b\u0002\u001c\u0001\u001b\u0002\u001c\u0001\u001b\u0001\u001c\u0008\u001b\u001b\u0004\u0005\u001b\u0003\u0004\r\u001b\u0005\u001c\u0006\u001b\u0001\u0004\u0004\u001b\u000b\u001c\u0005\u001b+\u0004\u001f\u001c\u0004\u001b\u0002\u0004\u0001\u001cc\u0004\u0001\u001b\u0001\u0004\u0008\u001c\u0001\u001b\u0006\u001c\u0002\u0004\u0002\u001c\u0001\u001b\u0004\u001c\u0002\u0004\n\u001c\u0003\u0004\u0002\u001b\u0001\u0004\u000f\u001b\u0001\u001c\u0001\u0004\u0001\u001c\u001e\u0004\u001b\u001c\u0002\u001bY\u0004\u000b\u001c\u0001\u0004\u000e\u001b\n\u001c!\u0004\t\u001c\u0002\u0004\u0004\u001b\u0001\u0004\u0005\u001b\u0016\u0004\u0004\u001c\u0001\u0004\t\u001c\u0001\u0004\u0003\u001c\u0001\u0004\u0005\u001c\u0012\u001b\u0019\u0004\u0003\u001cD\u001b\u0001\u0004\u0001\u001b\u000b\u00047\u001b\u001b\u001c\u0001\u001b\u0004\u001c6\u0004\u0003\u001c\u0001\u0004\u0012\u001c\u0001\u0004\u0007\u001c\n\u0004\u0002\u001c\u0002\u001b\n\u001c\u0001\u001b\u0007\u0004\u0001\u001b\u0007\u0004\u0001\u001b\u0003\u001c\u0001\u001b\u0008\u0004\u0002\u001b\u0002\u0004\u0002\u001b\u0016\u0004\u0001\u001b\u0007\u0004\u0001\u001b\u0001\u0004\u0003\u001b\u0004\u0004\u0002\u001b\u0001\u001c\u0001\u0004\u0007\u001c\u0002\u001b\u0002\u001c\u0002\u001b\u0003\u001c\u0001\u0004\u0008\u001b\u0001\u001c\u0004\u001b\u0002\u0004\u0001\u001b\u0003\u0004\u0002\u001c\u0002\u001b\n\u001c\u0004\u0004\u0007\u001b\u0001\u0004\u0005\u001b\u0003\u001c\u0001\u001b\u0006\u0004\u0004\u001b\u0002\u0004\u0002\u001b\u0016\u0004\u0001\u001b\u0007\u0004\u0001\u001b\u0002\u0004\u0001\u001b\u0002\u0004\u0001\u001b\u0002\u0004\u0002\u001b\u0001\u001c\u0001\u001b\u0005\u001c\u0004\u001b\u0002\u001c\u0002\u001b\u0003\u001c\u0003\u001b\u0001\u001c\u0007\u001b\u0004\u0004\u0001\u001b\u0001\u0004\u0007\u001b\u000c\u001c\u0003\u0004\u0001\u001c\u000b\u001b\u0003\u001c\u0001\u001b\t\u0004\u0001\u001b\u0003\u0004\u0001\u001b\u0016\u0004\u0001\u001b\u0007\u0004\u0001\u001b\u0002\u0004\u0001\u001b\u0005\u0004\u0002\u001b\u0001\u001c\u0001\u0004\u0008\u001c\u0001\u001b\u0003\u001c\u0001\u001b\u0003\u001c\u0002\u001b\u0001\u0004\u000f\u001b\u0002\u0004\u0002\u001c\u0002\u001b\n\u001c\u0001\u001b\u0001\u0004\u000f\u001b\u0003\u001c\u0001\u001b\u0008\u0004\u0002\u001b\u0002\u0004\u0002\u001b\u0016\u0004\u0001\u001b\u0007\u0004\u0001\u001b\u0002\u0004\u0001\u001b\u0005\u0004\u0002\u001b\u0001\u001c\u0001\u0004\u0007\u001c\u0002\u001b\u0002\u001c\u0002\u001b\u0003\u001c\u0008\u001b\u0002\u001c\u0004\u001b\u0002\u0004\u0001\u001b\u0003\u0004\u0002\u001c\u0002\u001b\n\u001c\u0001\u001b\u0001\u0004\u0010\u001b\u0001\u001c\u0001\u0004\u0001\u001b\u0006\u0004\u0003\u001b\u0003\u0004\u0001\u001b\u0004\u0004\u0003\u001b\u0002\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0002\u0004\u0003\u001b\u0002\u0004\u0003\u001b\u0003\u0004\u0003\u001b\u000c\u0004\u0004\u001b\u0005\u001c\u0003\u001b\u0003\u001c\u0001\u001b\u0004\u001c\u0002\u001b\u0001\u0004\u0006\u001b\u0001\u001c\u000e\u001b\n\u001c\t\u001b\u0001\u0004\u0007\u001b\u0003\u001c\u0001\u001b\u0008\u0004\u0001\u001b\u0003\u0004\u0001\u001b\u0017\u0004\u0001\u001b\n\u0004\u0001\u001b\u0005\u0004\u0003\u001b\u0001\u0004\u0007\u001c\u0001\u001b\u0003\u001c\u0001\u001b\u0004\u001c\u0007\u001b\u0002\u001c\u0001\u001b\u0002\u0004\u0006\u001b\u0002\u0004\u0002\u001c\u0002\u001b\n\u001c\u0012\u001b\u0002\u001c\u0001\u001b\u0008\u0004\u0001\u001b\u0003\u0004\u0001\u001b\u0017\u0004\u0001\u001b\n\u0004\u0001\u001b\u0005\u0004\u0002\u001b\u0001\u001c\u0001\u0004\u0007\u001c\u0001\u001b\u0003\u001c\u0001\u001b\u0004\u001c\u0007\u001b\u0002\u001c\u0007\u001b\u0001\u0004\u0001\u001b\u0002\u0004\u0002\u001c\u0002\u001b\n\u001c\u0001\u001b\u0002\u0004\u000f\u001b\u0002\u001c\u0001\u001b\u0008\u0004\u0001\u001b\u0003\u0004\u0001\u001b)\u0004\u0002\u001b\u0001\u0004\u0007\u001c\u0001\u001b\u0003\u001c\u0001\u001b\u0004\u001c\u0001\u0004\u0008\u001b\u0001\u001c\u0008\u001b\u0002\u0004\u0002\u001c\u0002\u001b\n\u001c\n\u001b\u0006\u0004\u0002\u001b\u0002\u001c\u0001\u001b\u0012\u0004\u0003\u001b\u0018\u0004\u0001\u001b\t\u0004\u0001\u001b\u0001\u0004\u0002\u001b\u0007\u0004\u0003\u001b\u0001\u001c\u0004\u001b\u0006\u001c\u0001\u001b\u0001\u001c\u0001\u001b\u0008\u001c\u0012\u001b\u0002\u001c\r\u001b0\u0004\u0001\u001c\u0002\u0004\u0007\u001c\u0004\u001b\u0008\u0004\u0008\u001c\u0001\u001b\n\u001c\'\u001b\u0002\u0004\u0001\u001b\u0001\u0004\u0002\u001b\u0002\u0004\u0001\u001b\u0001\u0004\u0002\u001b\u0001\u0004\u0006\u001b\u0004\u0004\u0001\u001b\u0007\u0004\u0001\u001b\u0003\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0001\u0004\u0002\u001b\u0002\u0004\u0001\u001b\u0004\u0004\u0001\u001c\u0002\u0004\u0006\u001c\u0001\u001b\u0002\u001c\u0001\u0004\u0002\u001b\u0005\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0006\u001c\u0002\u001b\n\u001c\u0002\u001b\u0004\u0004 \u001b\u0001\u0004\u0017\u001b\u0002\u001c\u0006\u001b\n\u001c\u000b\u001b\u0001\u001c\u0001\u001b\u0001\u001c\u0001\u001b\u0001\u001c\u0004\u001b\u0002\u001c\u0008\u0004\u0001\u001b$\u0004\u0004\u001b\u0014\u001c\u0001\u001b\u0002\u001c\u0005\u0004\u000b\u001c\u0001\u001b$\u001c\t\u001b\u0001\u001c9\u001b+\u0004\u0014\u001c\u0001\u0004\n\u001c\u0006\u001b\u0006\u0004\u0004\u001c\u0004\u0004\u0003\u001c\u0001\u0004\u0003\u001c\u0002\u0004\u0007\u001c\u0003\u0004\u0004\u001c\r\u0004\u000c\u001c\u0001\u0004\u000f\u001c\u0002\u001b&\u0004\u0001\u001b\u0001\u0004\u0005\u001b\u0001\u0004\u0002\u001b+\u0004\u0001\u001b\u014d\u0004\u0001\u001b\u0004\u0004\u0002\u001b\u0007\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0004\u0004\u0002\u001b)\u0004\u0001\u001b\u0004\u0004\u0002\u001b!\u0004\u0001\u001b\u0004\u0004\u0002\u001b\u0007\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0004\u0004\u0002\u001b\u000f\u0004\u0001\u001b9\u0004\u0001\u001b\u0004\u0004\u0002\u001bC\u0004\u0002\u001b\u0003\u001c \u001b\u0010\u0004\u0010\u001bU\u0004\u000c\u001b\u026c\u0004\u0002\u001b\u0011\u0004\u0001\u0000\u001a\u0004\u0005\u001bK\u0004\u0003\u001b\u0003\u0004\u000f\u001b\r\u0004\u0001\u001b\u0004\u0004\u0003\u001c\u000b\u001b\u0012\u0004\u0003\u001c\u000b\u001b\u0012\u0004\u0002\u001c\u000c\u001b\r\u0004\u0001\u001b\u0003\u0004\u0001\u001b\u0002\u001c\u000c\u001b4\u0004 \u001c\u0003\u001b\u0001\u0004\u0003\u001b\u0002\u0004\u0001\u001c\u0002\u001b\n\u001c!\u001b\u0003\u001c\u0002\u001b\n\u001c\u0006\u001bX\u0004\u0008\u001b)\u0004\u0001\u001c\u0001\u0004\u0005\u001bF\u0004\n\u001b\u001d\u0004\u0003\u001b\u000c\u001c\u0004\u001b\u000c\u001c\n\u001b\n\u001c\u001e\u0004\u0002\u001b\u0005\u0004\u000b\u001b,\u0004\u0004\u001b\u0011\u001c\u0007\u0004\u0002\u001c\u0006\u001b\n\u001c&\u001b\u0017\u0004\u0005\u001c\u0004\u001b5\u0004\n\u001c\u0001\u001b\u001d\u001c\u0002\u001b\u000b\u001c\u0006\u001b\n\u001c\r\u001b\u0001\u0004X\u001b\u0005\u001c/\u0004\u0011\u001c\u0007\u0004\u0004\u001b\n\u001c\u0011\u001b\t\u001c\u000c\u001b\u0003\u001c\u001e\u0004\r\u001c\u0002\u0004\n\u001c,\u0004\u000e\u001c\u000c\u001b$\u0004\u0014\u001c\u0008\u001b\n\u001c\u0003\u001b\u0003\u0004\n\u001c$\u0004R\u001b\u0003\u001c\u0001\u001b\u0015\u001c\u0004\u0004\u0001\u001c\u0004\u0004\u0003\u001c\u0002\u0004\t\u001b\u00c0\u0004\'\u001c\u0015\u001b\u0004\u001c\u0116\u0004\u0002\u001b\u0006\u0004\u0002\u001b&\u0004\u0002\u001b\u0006\u0004\u0002\u001b\u0008\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u001f\u0004\u0002\u001b5\u0004\u0001\u001b\u0007\u0004\u0001\u001b\u0001\u0004\u0003\u001b\u0003\u0004\u0001\u001b\u0007\u0004\u0003\u001b\u0004\u0004\u0002\u001b\u0006\u0004\u0004\u001b\r\u0004\u0005\u001b\u0003\u0004\u0001\u001b\u0007\u0004\u0003\u001b\u000b\u0000\u0005\u001c\u0018\u001b\u0002\u0000\u0005\u001c\u0001\u0000\u000f\u001b\u0002\u0004\u0013\u001b\u0001\u0004\n\u001b\u0001\u0000\u0005\u001c\u0005\u001b\u0006\u001c\u0001\u001b\u0001\u0004\r\u001b\u0001\u0004\u0010\u001b\r\u0004\u0003\u001b\u001b\u0004\u0015\u001b\r\u001c\u0004\u001b\u0001\u001c\u0003\u001b\u000c\u001c\u0011\u001b\u0001\u0004\u0004\u001b\u0001\u0004\u0002\u001b\n\u0004\u0001\u001b\u0001\u0004\u0003\u001b\u0005\u0004\u0006\u001b\u0001\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0004\u0004\u0001\u001b\u000b\u0004\u0002\u001b\u0004\u0004\u0005\u001b\u0005\u0004\u0004\u001b\u0001\u0004\u0011\u001b)\u0004\u0a77\u001b/\u0004\u0001\u001b/\u0004\u0001\u001b\u0085\u0004\u0006\u001b\u0004\u0004\u0003\u001c\u0002\u0004\u000c\u001b&\u0004\u0001\u001b\u0001\u0004\u0005\u001b\u0001\u0004\u0002\u001b8\u0004\u0007\u001b\u0001\u0004\u000f\u001b\u0001\u001c\u0017\u0004\t\u001b\u0007\u0004\u0001\u001b\u0007\u0004\u0001\u001b\u0007\u0004\u0001\u001b\u0007\u0004\u0001\u001b\u0007\u0004\u0001\u001b\u0007\u0004\u0001\u001b\u0007\u0004\u0001\u001b\u0007\u0004\u0001\u001b \u001c/\u001b\u0001\u0004\u01d0\u001b\u0001\u0000\u0004\u001b\u0003\u0004\u0019\u001b\t\u0004\u0006\u001c\u0001\u001b\u0005\u0004\u0002\u001b\u0005\u0004\u0004\u001bV\u0004\u0002\u001b\u0002\u001c\u0002\u001b\u0003\u0004\u0001\u001bZ\u0004\u0001\u001b\u0004\u0004\u0005\u001b)\u0004\u0003\u001b^\u0004\u0011\u001b\u001b\u00045\u001b\u0010\u0004\u0200\u001b\u19b6\u0004J\u001b\u51cd\u00043\u001b\u048d\u0004C\u001b.\u0004\u0002\u001b\u010d\u0004\u0003\u001b\u0010\u0004\n\u001c\u0002\u0004\u0014\u001b/\u0004\u0001\u001c\u0004\u001b\n\u001c\u0001\u001b\u0019\u0004\u0007\u001b\u0001\u001cP\u0004\u0002\u001c%\u001b\t\u0004\u0002\u001bg\u0004\u0002\u001b\u0004\u0004\u0001\u001b\u0004\u0004\u000c\u001b\u000b\u0004M\u001b\n\u0004\u0001\u001c\u0003\u0004\u0001\u001c\u0004\u0004\u0001\u001c\u0017\u0004\u0005\u001c\u0010\u001b\u0001\u0004\u0007\u001b4\u0004\u000c\u001b\u0002\u001c2\u0004\u0011\u001c\u000b\u001b\n\u001c\u0006\u001b\u0012\u001c\u0006\u0004\u0003\u001b\u0001\u0004\u0004\u001b\n\u001c\u001c\u0004\u0008\u001c\u0002\u001b\u0017\u0004\r\u001c\u000c\u001b\u001d\u0004\u0003\u001b\u0004\u001c/\u0004\u000e\u001c\u000e\u001b\u0001\u0004\n\u001c&\u001b)\u0004\u000e\u001c\t\u001b\u0003\u0004\u0001\u001c\u0008\u0004\u0002\u001c\u0002\u001b\n\u001c\u0006\u001b\u0017\u0004\u0003\u001b\u0001\u0004\u0001\u001c\u0004\u001b0\u0004\u0001\u001c\u0001\u0004\u0003\u001c\u0002\u0004\u0002\u001c\u0005\u0004\u0002\u001c\u0001\u0004\u0001\u001c\u0001\u0004\u0018\u001b\u0003\u0004\u0002\u001b\u000b\u0004\u0005\u001c\u0002\u001b\u0003\u0004\u0002\u001c\n\u001b\u0006\u0004\u0002\u001b\u0006\u0004\u0002\u001b\u0006\u0004\t\u001b\u0007\u0004\u0001\u001b\u0007\u0004\u0091\u001b#\u0004\u0008\u001c\u0001\u001b\u0002\u001c\u0002\u001b\n\u001c\u0006\u001b\u2ba4\u0004\u000c\u001b\u0017\u0004\u0004\u001b1\u0004\u2104\u001b\u016e\u0004\u0002\u001bj\u0004&\u001b\u0007\u0004\u000c\u001b\u0005\u0004\u0005\u001b\u0001\u0004\u0001\u001c\n\u0004\u0001\u001b\r\u0004\u0001\u001b\u0005\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0002\u0004\u0001\u001b\u0002\u0004\u0001\u001bl\u0004!\u001b\u016b\u0004\u0012\u001b@\u0004\u0002\u001b6\u0004(\u001b\r\u0004\u0003\u001b\u0010\u001c\u0010\u001b\u0007\u001c\u000c\u001b\u0002\u0004\u0018\u001b\u0003\u0004\u0019\u001b\u0001\u0004\u0006\u001b\u0005\u0004\u0001\u001b\u0087\u0004\u0002\u001b\u0001\u001c\u0004\u001b\u0001\u0004\u000b\u001b\n\u001c\u0007\u001b\u001a\u0004\u0004\u001b\u0001\u0004\u0001\u001b\u001a\u0004\u000b\u001bY\u0004\u0003\u001b\u0006\u0004\u0002\u001b\u0006\u0004\u0002\u001b\u0006\u0004\u0002\u001b\u0003\u0004\u0003\u001b\u0002\u0004\u0003\u001b\u0002\u0004\u0012\u001b\u0003\u001c\u0004\u001b\u000c\u0004\u0001\u001b\u001a\u0004\u0001\u001b\u0013\u0004\u0001\u001b\u0002\u0004\u0001\u001b\u000f\u0004\u0002\u001b\u000e\u0004\"\u001b{\u0004E\u001b5\u0004\u0088\u001b\u0001\u001c\u0082\u001b\u001d\u0004\u0003\u001b1\u0004/\u001b\u001f\u0004\u0011\u001b\u001b\u00045\u001b\u001e\u0004\u0002\u001b$\u0004\u0004\u001b\u0008\u0004\u0001\u001b\u0005\u0004*\u001b\u009e\u0004\u0002\u001b\n\u001c\u0356\u001b\u0006\u0004\u0002\u001b\u0001\u0004\u0001\u001b,\u0004\u0001\u001b\u0002\u0004\u0003\u001b\u0001\u0004\u0002\u001b\u0017\u0004\u00aa\u001b\u0016\u0004\n\u001b\u001a\u0004F\u001b8\u0004\u0006\u001b\u0002\u0004@\u001b\u0001\u0004\u0003\u001c\u0001\u001b\u0002\u001c\u0005\u001b\u0004\u001c\u0004\u0004\u0001\u001b\u0003\u0004\u0001\u001b\u001b\u0004\u0004\u001b\u0003\u001c\u0004\u001b\u0001\u001c \u001b\u001d\u0004\u0083\u001b6\u0004\n\u001b\u0016\u0004\n\u001b\u0013\u0004\u008d\u001bI\u0004\u03b7\u001b\u0003\u001c5\u0004\u000f\u001c\u001f\u001b\n\u001c\u0010\u001b\u0003\u001c-\u0004\u000b\u001c\u0002\u001b\u0001\u001c\u0012\u001b\u0019\u0004\u0007\u001b\n\u001c\u0006\u001b\u0003\u001c$\u0004\u000e\u001c\u0001\u001b\n\u001c@\u001b\u0003\u001c0\u0004\u000e\u001c\u0004\u0004\u000b\u001b\n\u001c\u04a6\u001b+\u0004\r\u001c\u0008\u001b\n\u001c\u0936\u001b\u036f\u0004\u0091\u001bc\u0004\u0b9d\u001b\u042f\u0004\u33d1\u001b\u0239\u0004\u04c7\u001bE\u0004\u000b\u001b\u0001\u0004.\u001c\u0010\u001b\u0004\u001c\r\u0004\u4060\u001b\u0002\u0004\u2163\u001b\u0005\u001c\u0003\u001b\u0016\u001c\u0002\u001b\u0007\u001c\u001e\u001b\u0004\u001c\u0094\u001b\u0003\u001c\u01bb\u001bU\u0004\u0001\u001bG\u0004\u0001\u001b\u0002\u0004\u0002\u001b\u0001\u0004\u0002\u001b\u0002\u0004\u0002\u001b\u0004\u0004\u0001\u001b\u000c\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0007\u0004\u0001\u001bA\u0004\u0001\u001b\u0004\u0004\u0002\u001b\u0008\u0004\u0001\u001b\u0007\u0004\u0001\u001b\u001c\u0004\u0001\u001b\u0004\u0004\u0001\u001b\u0005\u0004\u0001\u001b\u0001\u0004\u0003\u001b\u0007\u0004\u0001\u001b\u0154\u0004\u0002\u001b\u0019\u0004\u0001\u001b\u0019\u0004\u0001\u001b\u001f\u0004\u0001\u001b\u0019\u0004\u0001\u001b\u001f\u0004\u0001\u001b\u0019\u0004\u0001\u001b\u001f\u0004\u0001\u001b\u0019\u0004\u0001\u001b\u001f\u0004\u0001\u001b\u0019\u0004\u0001\u001b\u0008\u0004\u0002\u001b2\u001c\u1600\u001b\u0004\u0004\u0001\u001b\u001b\u0004\u0001\u001b\u0002\u0004\u0001\u001b\u0001\u0004\u0002\u001b\u0001\u0004\u0001\u001b\n\u0004\u0001\u001b\u0004\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0001\u0004\u0006\u001b\u0001\u0004\u0004\u001b\u0001\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0003\u0004\u0001\u001b\u0002\u0004\u0001\u001b\u0001\u0004\u0002\u001b\u0001\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0001\u0004\u0001\u001b\u0002\u0004\u0001\u001b\u0001\u0004\u0002\u001b\u0004\u0004\u0001\u001b\u0007\u0004\u0001\u001b\u0004\u0004\u0001\u001b\u0004\u0004\u0001\u001b\u0001\u0004\u0001\u001b\n\u0004\u0001\u001b\u0011\u0004\u0005\u001b\u0003\u0004\u0001\u001b\u0005\u0004\u0001\u001b\u0011\u0004\u1144\u001b\ua6d7\u0004)\u001b\u1035\u0004\u000b\u001b\u00de\u0004\u3fe2\u001b\u021e\u0004\uffff\u001b\uffff\u001b\uffff\u001b\uffff\u001b\uffff\u001b\uffff\u001b\uffff\u001b\uffff\u001b\uffff\u001b\uffff\u001b\uffff\u001b\u05ee\u001b\u0001\u001c\u001e\u001b`\u001c\u0080\u001b\u00f0\u001c\uffff\u001b\uffff\u001b\ufe12\u001b"

    invoke-static {v0}, Lcom/androlua/LuaLexer;->a(Ljava/lang/String;)[C

    move-result-object v0

    sput-object v0, Lcom/androlua/LuaLexer;->b:[C

    invoke-static {}, Lcom/androlua/LuaLexer;->d()[I

    move-result-object v0

    sput-object v0, Lcom/androlua/LuaLexer;->c:[I

    invoke-static {}, Lcom/androlua/LuaLexer;->f()[I

    move-result-object v0

    sput-object v0, Lcom/androlua/LuaLexer;->d:[I

    invoke-static {}, Lcom/androlua/LuaLexer;->g()[I

    move-result-object v0

    sput-object v0, Lcom/androlua/LuaLexer;->e:[I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unknown internal scanner error"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Error: could not match input"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Error: pushback value was too large"

    aput-object v2, v0, v1

    sput-object v0, Lcom/androlua/LuaLexer;->f:[Ljava/lang/String;

    invoke-static {}, Lcom/androlua/LuaLexer;->e()[I

    move-result-object v0

    sput-object v0, Lcom/androlua/LuaLexer;->g:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/androlua/LuaLexer;->j:I

    const/16 v0, 0x4000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/androlua/LuaLexer;->k:[C

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaLexer;->s:Z

    iput v1, p0, Lcom/androlua/LuaLexer;->v:I

    iput v1, p0, Lcom/androlua/LuaLexer;->w:I

    iput-object p1, p0, Lcom/androlua/LuaLexer;->h:Ljava/io/Reader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/androlua/LuaLexer$CharSeqReader;

    invoke-direct {v0, p1}, Lcom/androlua/LuaLexer$CharSeqReader;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/androlua/LuaLexer;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method private static a(Ljava/lang/String;I[I)I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    :goto_0
    if-ge v1, v3, :cond_1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v2, v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    aput v5, p2, v0

    add-int/lit8 v0, v2, -0x1

    if-gtz v0, :cond_0

    add-int/lit8 v0, v4, 0x1

    move v6, v0

    move v0, v1

    move v1, v6

    goto :goto_0

    :cond_0
    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_1
    return v0
.end method

.method private a(I)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/androlua/LuaLexer;->f:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/androlua/LuaLexer;->f:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private a()Z
    .locals 5

    const/16 v4, 0x5b

    const/4 v1, 0x0

    iput v1, p0, Lcom/androlua/LuaLexer;->w:I

    invoke-direct {p0, v4, v1}, Lcom/androlua/LuaLexer;->a(CI)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x3d

    invoke-direct {p0, v3, v2}, Lcom/androlua/LuaLexer;->a(CI)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4, v2}, Lcom/androlua/LuaLexer;->a(CI)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v0, p0, Lcom/androlua/LuaLexer;->w:I

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private a(CI)Z
    .locals 5

    iget v1, p0, Lcom/androlua/LuaLexer;->l:I

    iget-object v2, p0, Lcom/androlua/LuaLexer;->k:[C

    array-length v3, v2

    const/4 v0, 0x0

    add-int v4, v1, p2

    if-lt v4, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/2addr v1, p2

    aget-char v1, v2, v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[C
    .locals 8

    const/4 v0, 0x0

    const/high16 v1, 0x110000

    new-array v3, v1, [C

    move v1, v0

    :goto_0
    const/16 v2, 0xb44

    if-ge v1, v2, :cond_1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v2, v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    int-to-char v6, v5

    int-to-char v6, v6

    int-to-char v6, v6

    int-to-char v6, v6

    int-to-char v6, v6

    aput-char v6, v3, v0

    add-int/lit8 v0, v2, -0x1

    if-gtz v0, :cond_0

    add-int/lit8 v0, v4, 0x1

    move v7, v0

    move v0, v1

    move v1, v7

    goto :goto_0

    :cond_0
    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private b()I
    .locals 4

    invoke-virtual {p0}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/androlua/LuaLexer;->w:I

    if-ge v0, v3, :cond_0

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/androlua/LuaLexer;->yylength()I

    move-result v1

    sub-int v0, v1, v0

    iget v1, p0, Lcom/androlua/LuaLexer;->w:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    :goto_1
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;I[I)I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ge v0, v3, :cond_1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1
    add-int/lit8 v2, v1, 0x1

    aput v5, p2, v1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    add-int/lit8 v0, v4, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method private static c(Ljava/lang/String;I[I)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v0, v3

    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private c()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/androlua/LuaLexer;->n:I

    if-lez v2, :cond_0

    iget v3, p0, Lcom/androlua/LuaLexer;->o:I

    iget v4, p0, Lcom/androlua/LuaLexer;->v:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/androlua/LuaLexer;->o:I

    iput v0, p0, Lcom/androlua/LuaLexer;->v:I

    iget-object v3, p0, Lcom/androlua/LuaLexer;->k:[C

    iget v4, p0, Lcom/androlua/LuaLexer;->o:I

    sub-int/2addr v4, v2

    invoke-static {v3, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/androlua/LuaLexer;->o:I

    iget v3, p0, Lcom/androlua/LuaLexer;->n:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/androlua/LuaLexer;->o:I

    iget v2, p0, Lcom/androlua/LuaLexer;->m:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/androlua/LuaLexer;->m:I

    iget v2, p0, Lcom/androlua/LuaLexer;->l:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/androlua/LuaLexer;->l:I

    iput v0, p0, Lcom/androlua/LuaLexer;->n:I

    :cond_0
    iget v2, p0, Lcom/androlua/LuaLexer;->m:I

    iget-object v3, p0, Lcom/androlua/LuaLexer;->k:[C

    array-length v4, v3

    iget v5, p0, Lcom/androlua/LuaLexer;->v:I

    sub-int/2addr v4, v5

    if-lt v2, v4, :cond_1

    array-length v2, v3

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    array-length v4, v3

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/androlua/LuaLexer;->k:[C

    iget v2, p0, Lcom/androlua/LuaLexer;->o:I

    iget v3, p0, Lcom/androlua/LuaLexer;->v:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/androlua/LuaLexer;->o:I

    iput v0, p0, Lcom/androlua/LuaLexer;->v:I

    :cond_1
    iget-object v2, p0, Lcom/androlua/LuaLexer;->k:[C

    array-length v3, v2

    iget v4, p0, Lcom/androlua/LuaLexer;->o:I

    sub-int/2addr v3, v4

    iget-object v5, p0, Lcom/androlua/LuaLexer;->h:Ljava/io/Reader;

    invoke-virtual {v5, v2, v4, v3}, Ljava/io/Reader;->read([CII)I

    move-result v2

    if-eqz v2, :cond_4

    if-lez v2, :cond_3

    iget v4, p0, Lcom/androlua/LuaLexer;->o:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/androlua/LuaLexer;->o:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/androlua/LuaLexer;->k:[C

    iget v3, p0, Lcom/androlua/LuaLexer;->o:I

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/androlua/LuaLexer;->o:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/androlua/LuaLexer;->o:I

    iput v1, p0, Lcom/androlua/LuaLexer;->v:I

    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reader returned 0 characters. See JFlex examples for workaround."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Ljava/lang/String;I[I)I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ge v0, v3, :cond_1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v6, v5, -0x1

    aput v6, p2, v1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    add-int/lit8 v0, v4, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method private static d()[I
    .locals 3

    const/16 v0, 0xe0

    new-array v0, v0, [I

    const-string v1, "\u0001\u0000\u0001\u0001\u0005\u0000\u0001\u0002\u0002\u0003\u0001\u0004\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0006\u0001\u0008\u0001\t\u0007\u0005\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0001\u0002\u0001\u000e\t\u0005\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0015\u0001\u0016\u0001\u0017\u0001\u0018\u0001\u0019\u0001\u001a\u0001\u001b\u0001\u001c\u0001\u001d\u0001\u001e\u0001\u001f\u0001 \u0001!\u0002\"\u0001\u0002\u0001\u0000\u0002#\u0002\u0006\u0001\u0000\u0001\u0006\u0001$\u0001%\u0004\u0005\u0001&\u0001\'\u0001(\u0003\u0005\u0001)\u0001*\u0001\u0000\u0001+\u0002\u0000\u000e\u0005\u0001,\u0001-\u0001.\u0001/\u00010\u00011\u00012\u00013\u00014\u0001(\u0001\"\u0004\u0000\u00015\u0002\u0000\u0002\u0006\u00016\u0002\u0000\u0002\u0005\u00017\u0002\u0005\u00018\u0001\u0010\u0001\u0005\u00019\u0001:\u00014\u0004\u0005\u0001;\t\u0005\u0001\u0000\u00015\u0001<\u0001\u0000\u0001\u0006\u0004\u0000\u0002\u0005\u0001=\u0001>\n\u0005\u0001?\u0001@\u0001A\u0001B\u0001\u0005\u0001C\u0002\u0000\u0001D\u0001\u0006\u0002\u0000\u0003\u0005\u0001E\u0001\u0005\u0001F\u0001G\u0002\u0005\u0001H\u0001\u0005\u0001I\u0001\u0005\u0001J\u0001\u0000\u0001\u0006\u0002\u0000\u0001K\u0001L\u0001M\u0001\u0005\u0001N\u0001O\u0002\u0005\u0003\u0000\u0001P\u0002\u0005\u0001Q\u0001\u0000\u0001R\u0001S\u0001Q\u0002\u0000\u0002T"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/androlua/LuaLexer;->a(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static e()[I
    .locals 3

    const/16 v0, 0xe0

    new-array v0, v0, [I

    const-string v1, "\u0001\u0000\u0001\u0001\u0005\u0000\u0001\t\u0001\u0001\u0001\t\u0003\u0001\u0001\t\u000c\u0001\u0002\t\u0001\u0001\u0001\t\u000e\u0001\u0002\t\u0001\u0001\u0006\t\u0001\u0001\u0001\t\u0002\u0001\u0001\t\u0003\u0001\u0001\u0000\u0001\t\u0003\u0001\u0001\u0000\u000e\u0001\u0001\t\u0001\u0000\u0001\t\u0002\u0000\u000e\u0001\u000b\t\u0004\u0000\u0001\u0001\u0002\u0000\u0002\u0001\u0001\t\u0002\u0000\u0008\u0001\u0002\t\u000f\u0001\u0001\u0000\u0002\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0014\u0001\u0002\u0000\u0002\u0001\u0002\u0000\u000e\u0001\u0001\u0000\u0001\u0001\u0002\u0000\u0008\u0001\u0003\u0000\u0004\u0001\u0001\u0000\u0003\u0001\u0002\u0000\u0002\u0001"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/androlua/LuaLexer;->b(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static f()[I
    .locals 3

    const/16 v0, 0xe0

    new-array v0, v0, [I

    const-string v1, "\u0000\u0000\u0000>\u0000|\u0000\u00ba\u0000\u00f8\u0000\u0136\u0000\u0174\u0000\u01b2\u0000\u01f0\u0000\u01b2\u0000\u022e\u0000\u026c\u0000\u02aa\u0000\u01b2\u0000\u02e8\u0000\u0326\u0000\u0364\u0000\u03a2\u0000\u03e0\u0000\u041e\u0000\u045c\u0000\u049a\u0000\u04d8\u0000\u0516\u0000\u0554\u0000\u0592\u0000\u01b2\u0000\u01b2\u0000\u05d0\u0000\u01b2\u0000\u060e\u0000\u064c\u0000\u068a\u0000\u06c8\u0000\u0706\u0000\u0744\u0000\u0782\u0000\u07c0\u0000\u07fe\u0000\u083c\u0000\u087a\u0000\u08b8\u0000\u08f6\u0000\u087a\u0000\u01b2\u0000\u01b2\u0000\u0934\u0000\u01b2\u0000\u01b2\u0000\u01b2\u0000\u01b2\u0000\u01b2\u0000\u01b2\u0000\u0972\u0000\u01b2\u0000\u09b0\u0000\u09ee\u0000\u01b2\u0000\u0a2c\u0000\u0a6a\u0000\u0aa8\u0000\u0ae6\u0000\u01b2\u0000\u0b24\u0000\u0b62\u0000\u0ba0\u0000\u0bde\u0000\u0c1c\u0000\u0c5a\u0000\u0c98\u0000\u0cd6\u0000\u0d14\u0000\u0d52\u0000\u0d90\u0000\u026c\u0000\u026c\u0000\u026c\u0000\u0dce\u0000\u0e0c\u0000\u0e4a\u0000\u026c\u0000\u01b2\u0000\u0554\u0000\u01b2\u0000\u0e88\u0000\u0ec6\u0000\u0f04\u0000\u0f42\u0000\u0f80\u0000\u0fbe\u0000\u0ffc\u0000\u103a\u0000\u1078\u0000\u10b6\u0000\u10f4\u0000\u1132\u0000\u1170\u0000\u11ae\u0000\u11ec\u0000\u122a\u0000\u01b2\u0000\u01b2\u0000\u01b2\u0000\u01b2\u0000\u01b2\u0000\u01b2\u0000\u01b2\u0000\u01b2\u0000\u01b2\u0000\u01b2\u0000\u01b2\u0000\u1268\u0000\u12a6\u0000\u12e4\u0000\u0aa8\u0000\u1322\u0000\u1360\u0000\u0c1c\u0000\u139e\u0000\u13dc\u0000\u01b2\u0000\u141a\u0000\u1458\u0000\u1496\u0000\u14d4\u0000\u026c\u0000\u1512\u0000\u1550\u0000\u026c\u0000\u026c\u0000\u158e\u0000\u01b2\u0000\u01b2\u0000\u026c\u0000\u15cc\u0000\u160a\u0000\u1648\u0000\u1686\u0000\u026c\u0000\u16c4\u0000\u1702\u0000\u1740\u0000\u177e\u0000\u17bc\u0000\u17fa\u0000\u1838\u0000\u1876\u0000\u18b4\u0000\u18f2\u0000\u1930\u0000\u196e\u0000\u19ac\u0000\u19ea\u0000\u0b62\u0000\u1a28\u0000\u1a66\u0000\u1aa4\u0000\u1ae2\u0000\u1b20\u0000\u1b5e\u0000\u026c\u0000\u1b9c\u0000\u1bda\u0000\u1c18\u0000\u1c56\u0000\u1c94\u0000\u1cd2\u0000\u1d10\u0000\u1d4e\u0000\u1d8c\u0000\u1dca\u0000\u026c\u0000\u026c\u0000\u026c\u0000\u026c\u0000\u1e08\u0000\u18f2\u0000\u1e46\u0000\u1e84\u0000\u1ec2\u0000\u1f00\u0000\u1f3e\u0000\u1f7c\u0000\u1fba\u0000\u1ff8\u0000\u2036\u0000\u026c\u0000\u2074\u0000\u026c\u0000\u026c\u0000\u20b2\u0000\u20f0\u0000\u026c\u0000\u212e\u0000\u026c\u0000\u216c\u0000\u026c\u0000\u21aa\u0000\u21e8\u0000\u2226\u0000\u2264\u0000\u026c\u0000\u026c\u0000\u026c\u0000\u22a2\u0000\u026c\u0000\u026c\u0000\u22e0\u0000\u231e\u0000\u235c\u0000\u239a\u0000\u23d8\u0000\u026c\u0000\u2416\u0000\u2454\u0000\u2492\u0000\u24d0\u0000\u026c\u0000\u026c\u0000\u250e\u0000\u254c\u0000\u258a\u0000\u25c8\u0000\u2606"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/androlua/LuaLexer;->c(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static g()[I
    .locals 3

    const/16 v0, 0x2644

    new-array v0, v0, [I

    const-string v1, "\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\u0008\u0001\r\u0002\u000c\u0001\u000e\u0001\u000c\u0001\u000f\u0001\u000c\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0015\u0001\u0016\u0001\u0017\u0001\u0018\u0001\u0019\u0001\u001a\u0001\u001b\u0001\u001c\u0001\u001d\u0002\u0008\u0001\u001e\u0001\u001f\u0001 \u0001\u000c\u0001!\u0001\"\u0001#\u0001$\u0001%\u0001&\u0002\u000c\u0001\'\u0001(\u0001)\u0001*\u0001+\u0001,\u0001-\u0001.\u0001/\u00010\u00011\u00012\u00013\u00014\u00015\u00016\u00017\u00018\u00019\u0001\u000c\u0001:\u0001\u0002\u0002\u0000;\u0002\u0019\u0000\u0001;A\u0000\u0001< \u0000\u0016\u0008\u0001=\'\u0008\u000e\u0000\u0001>/\u0000\u000e?\u0001@/?@\u0000\u0001\n>\u0000\u0001\u000b>\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0007\u0000\u0001\r\u0001\u0000\u0001A\u0002\u0000\u0001\r\u0001\u0000\u0001B\u0002\u0000\u0001A3\u0000\u0001\r\u0001\u0000\u0001A\u0002\u0000\u0001\r\u0001C\u0001B\u0002\u0000\u0001A3\u0000\u0001D\u0004\u0000\u0001D\u0001\u0000\u0001E>\u0000\u0001F3\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u000c\u0001G\u0005\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0005\u000c\u0001H\u0001\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0003\u000c\u0001I\u0008\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0004\u000c\u0001J\u0002\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0005\u000c\u0001K\u0001\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0005\u000c\u0001L\u0006\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001M\u0006\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0003\u000c\u0001N\u0001O\u0002\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u000c\u0001P\u0002\u000c\u0001Q\u0002\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0017\u0000\u0001R\u0001S=\u0000\u0001T4\u0000\u0001U\u0008\u0000\u0001V*\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0005\u000c\u0001W\u0001\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001X\u0006\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0004\u000c\u0001Y\u0002\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0001Z\u000b\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000b\u000c\u0001[\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0004\u000c\u0001\\\u0002\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0001]\u0005\u000c\u0001^\u0005\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0005\u000c\u0001_\u0001\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0004\u000c\u0001`\u0002\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0001a\u000b\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001b\u0006\u000c\u0006\u0000\u0001\u000c\u0001\u0000\n\u000c\u0001c\u0001\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\n\u000c\u0001d\u0001\u000c\u0012\u0000\u0001\u000c,\u0000\u0001e)\u0000\u0001f=\u0000\u0001g\u0014\u0000\u0001h(\u0000\u0001i\u0015\u0000\u0001jA\u0000\u0001kD\u0000\u0001l?\u0000\u0001m>\u0000\u0001n\u0002\u0000\u0019;\u0001o\u0001p#;\u001a<\u0001q\u0002<\u0001o <\u0016\u0000\u0001r\u0001s4\u0000\u0001t=\u0000\u0001u5\u0000\u0001D\u0002\u0000\u0001v\u0001\u0000\u0001D\u0002\u0000\u0001v5\u0000\u0001w\u0004\u0000\u0001w8\u0000\u0003x\u0002\u0000\u0001x\u0004\u0000\u0001x\u0004\u0000\u0001x\u0008\u0000\u0002x\u0003\u0000\u0001x\u0001\u0000\u0001x\u001e\u0000\u0001D\u0004\u0000\u0001D?\u0000\u0001y?\u0000\u0001z\u0001{1\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0008\u000c\u0001|\u0001}\u0002\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0006\u000c\u0001~\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0004\u000c\u0001\u007f\u0007\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0008\u000c\u0001\u0080\u0003\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0003\u000c\u0001\u0081\u0008\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0008\u000c\u0001\u0082\u0003\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0005\u000c\u0001\u0083\u0006\u000c\u0012\u0000\u0001\u000c-\u0000\u0001\u0084=\u0000\u0001\u0085\u0015\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0006\u000c\u0001\u0086\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u000c\u0001\u0087\u0005\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0007\u000c\u0001\u0088\u0004\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u0089\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0003\u000c\u0001\u008a\u0003\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u008b\u0006\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0003\u000c\u0001\u008c\u0008\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0005\u000c\u0001\u008d\u0001\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0008\u000c\u0001\u008e\u0003\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0005\u000c\u0001\u008f\u0001\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0004\u000c\u0001\u0090\u0007\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0006\u000c\u0001\u0091\u0005\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u000c\u0001\u0092\u0005\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u000c\u0001\u0093\u0001\u000c\u0001\u0094\u0003\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0002\u0000\u0002;\u0001\u0000\u0001;\u0001\u00008;\u0001\u0000\u0002<\u0001\u0000\u0001<\u0001\u00008<\u0018r\u0001\u0095%r\u0001\u0096\u0002\u0000\u000b\u0096\u0001\u0097/\u0096\u0016\u0000\u0001\u0098-\u0000\u0001w\u0001\u0000\u0001A\u0002\u0000\u0001w\u0004\u0000\u0001A3\u0000\u0002x\u0001\u0099\u0001\u0000\u0001\u009a\u0001x\u0001\u0000\u0001\u009b\u0002\u0000\u0001\u0099\u0004\u0000\u0001x\u0008\u0000\u0002x\u0003\u0000\u0001x\u0001\u0000\u0001x\u0001\u0000\u0001\u009a&\u0000\u0001\u009cA\u0000\u0001\u009d-\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0006\u000c\u0001\u009e\u0005\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u000c\u0001\u009f\u0005\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u000c\u0001\u00a0\u0005\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0004\u000c\u0001\u00a1\u0002\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u000c\u0001\u00a2\u0005\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0001\u00a3\u000b\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0001\u00a4\u000b\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0001\u00a5\u000b\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0001\u000c\u0001\u00a6\n\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0008\u000c\u0001\u00a7\u0003\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0004\u000c\u0001\u00a8\u0007\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0007\u000c\u0001\u00a9\u0004\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0003\u000c\u0001\u00aa\u0003\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0008\u000c\u0001\u00ab\u0003\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u000c\u0001\u00ac\u0005\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u000c\u0001\u00ad\u0005\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0005\u000c\u0001\u00ae\u0001\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0005\u000c\u0001\u00af\u0001\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0003\u000c\u0001\u00b0\u0008\u000c\u0012\u0000\u0001\u000c\u0001\u0000\u0017r\u0001\u0095\u0001\u00b1%r\u0001\u0096\u0002\u0000;\u0096\u0001\u0097\u0001\u00b2\u0001\u00b3;\u0097\u0016\u0000\u0001\u00b4\u0001\u0098,\u0000\u0002x\u0001\u0099\u0001v\u0001\u009a\u0001x\u0001\u0000\u0001\u009b\u0001v\u0001\u0000\u0001\u0099\u0004\u0000\u0001x\u0008\u0000\u0002x\u0003\u0000\u0001x\u0001\u0000\u0001x\u0001\u0000\u0001\u009a\u001c\u0000\u0003\u00b5\u0002\u0000\u0001\u00b5\u0004\u0000\u0001\u00b5\u0004\u0000\u0001\u00b5\u0008\u0000\u0002\u00b5\u0003\u0000\u0001\u00b5\u0001\u0000\u0001\u00b5)\u0000\u0001\u00b6A\u0000\u0001\u00b7,\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u00b8\u0006\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0001\u00b9\u000b\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0003\u000c\u0001\u00ba\u0003\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u00bb\u0006\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0006\u000c\u0001\u00bc\u0005\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0002\u000c\u0001\u00bd\t\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0003\u000c\u0001\u00be\u0008\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0006\u000c\u0001\u00bf\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0007\u000c\u0001\u00c0\u0004\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u000c\u0001\u00c1\u0005\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0008\u000c\u0001\u00c2\u0003\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0003\u000c\u0001\u00c3\u0008\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0003\u000c\u0001\u00c4\u0003\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u000c\u0001\u00c5\u0005\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0003\u0000\u0001\u00b3>\u0000\u0001\u00b3\n\u0000\u0001\u00c6/\u0000>\u00b4\u0006\u0000\u0002\u00b5\u0001\u00c7\u0001\u0000\u0001\u009a\u0001\u00b5\u0004\u0000\u0001\u00c7\u0004\u0000\u0001\u00b5\u0008\u0000\u0002\u00b5\u0003\u0000\u0001\u00b5\u0001\u0000\u0001\u00b5\u0001\u0000\u0001\u009a(\u0000\u0001\u00c8:\u0000\u0001\u00c92\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0005\u000c\u0001\u00ca\u0001\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0008\u000c\u0001\u00cb\u0003\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0005\u000c\u0001\u00cc\u0006\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0003\u000c\u0001\u00cd\u0008\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0001\u00ce\u000b\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\n\u000c\u0001\u00cf\u0001\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0003\u000c\u0001\u00d0\u0003\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0005\u000c\u0001\u00d1\u0001\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u000f\u0000\u0001\u00d25\u0000\u0002\u00b5\u0001\u00c7\u0001v\u0001\u009a\u0001\u00b5\u0002\u0000\u0001v\u0001\u0000\u0001\u00c7\u0004\u0000\u0001\u00b5\u0008\u0000\u0002\u00b5\u0003\u0000\u0001\u00b5\u0001\u0000\u0001\u00b5\u0001\u0000\u0001\u009a)\u0000\u0001\u00d3:\u0000\u0001\u00d41\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0008\u000c\u0001\u00d5\u0003\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0004\u000c\u0001\u00d6\u0002\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0007\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u0006\u000c\u0001\u00d7\u0005\u000c\u0012\u0000\u0001\u000c\u000f\u0000\u0001\u0097C\u0000\u0001\u00d8:\u0000\u0001\u00d90\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0005\u000c\u0001\u00da\u0001\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0005\u0000\u0005\u000c\u0001\u0000\u0003\u000c\u0002\u0000\u0001\u000c\u0001\u00db\u0005\u000c\u0006\u0000\u0001\u000c\u0001\u0000\u000c\u000c\u0012\u0000\u0001\u000c\u0004\u0000\u0001\u00dcL\u0000\u0001\u00dd+\u0000\u0001\u00dc\u0002\u0000;\u00dc\u0013\u0000\u0001\u00de>\u0000\u0001\u00df,\u0000\u0001\u00e0:\u0000\u0001\u00e0\u0002\u0000;\u00e0"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/androlua/LuaLexer;->d(Ljava/lang/String;I[I)I

    return-object v0
.end method


# virtual methods
.method public advance()Lcom/androlua/LuaTokenTypes;
    .locals 15

    iget v1, p0, Lcom/androlua/LuaLexer;->o:I

    iget-object v0, p0, Lcom/androlua/LuaLexer;->k:[C

    sget-object v7, Lcom/androlua/LuaLexer;->b:[C

    sget-object v8, Lcom/androlua/LuaLexer;->e:[I

    sget-object v9, Lcom/androlua/LuaLexer;->d:[I

    sget-object v10, Lcom/androlua/LuaLexer;->g:[I

    :goto_0
    :pswitch_0
    iget v3, p0, Lcom/androlua/LuaLexer;->l:I

    iget v4, p0, Lcom/androlua/LuaLexer;->q:I

    iget v2, p0, Lcom/androlua/LuaLexer;->n:I

    sub-int v5, v3, v2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/androlua/LuaLexer;->q:I

    const/4 v4, 0x0

    move v14, v2

    move v2, v4

    move v4, v14

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-static {v0, v4, v3}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    const/16 v11, 0x85

    if-eq v5, v11, :cond_1

    const/16 v11, 0x2028

    if-eq v5, v11, :cond_1

    const/16 v11, 0x2029

    if-eq v5, v11, :cond_1

    packed-switch v5, :pswitch_data_0

    iget v2, p0, Lcom/androlua/LuaLexer;->r:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/androlua/LuaLexer;->r:I

    :cond_0
    :goto_2
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v4, v6

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/androlua/LuaLexer;->p:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/androlua/LuaLexer;->p:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/androlua/LuaLexer;->r:I

    const/4 v2, 0x1

    goto :goto_3

    :pswitch_2
    if-nez v2, :cond_0

    iget v5, p0, Lcom/androlua/LuaLexer;->p:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/androlua/LuaLexer;->p:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/androlua/LuaLexer;->r:I

    goto :goto_3

    :cond_1
    :pswitch_3
    iget v2, p0, Lcom/androlua/LuaLexer;->p:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/androlua/LuaLexer;->p:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/androlua/LuaLexer;->r:I

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    if-ge v3, v1, :cond_5

    aget-char v2, v0, v3

    const/16 v4, 0xa

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_3

    iget v2, p0, Lcom/androlua/LuaLexer;->p:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/androlua/LuaLexer;->p:I

    :cond_3
    iput v3, p0, Lcom/androlua/LuaLexer;->n:I

    iput v3, p0, Lcom/androlua/LuaLexer;->m:I

    sget-object v2, Lcom/androlua/LuaLexer;->a:[I

    iget v4, p0, Lcom/androlua/LuaLexer;->j:I

    aget v2, v2, v4

    iput v2, p0, Lcom/androlua/LuaLexer;->i:I

    iget v5, p0, Lcom/androlua/LuaLexer;->i:I

    aget v2, v10, v5

    and-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    move v4, v1

    move v2, v3

    :goto_5
    if-ge v3, v4, :cond_9

    invoke-static {v0, v3, v4}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v3, v6

    :goto_6
    iget v6, p0, Lcom/androlua/LuaLexer;->i:I

    aget v6, v9, v6

    aget-char v11, v7, v1

    add-int/2addr v6, v11

    aget v6, v8, v6

    const/4 v11, -0x1

    if-ne v6, v11, :cond_b

    move v3, v2

    move v2, v1

    move v1, v4

    move v4, v5

    :goto_7
    iput v3, p0, Lcom/androlua/LuaLexer;->l:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    iget v2, p0, Lcom/androlua/LuaLexer;->n:I

    iget v3, p0, Lcom/androlua/LuaLexer;->m:I

    if-ne v2, v3, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaLexer;->t:Z

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    iget-boolean v2, p0, Lcom/androlua/LuaLexer;->t:Z

    if-eqz v2, :cond_7

    move v2, v1

    move-object v1, v0

    move v0, v3

    :cond_6
    const/4 v3, 0x0

    move-object v14, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move-object v0, v14

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/androlua/LuaLexer;->c()Z

    move-result v3

    iget v2, p0, Lcom/androlua/LuaLexer;->o:I

    iget v0, p0, Lcom/androlua/LuaLexer;->l:I

    iget-object v1, p0, Lcom/androlua/LuaLexer;->k:[C

    if-nez v3, :cond_6

    aget-char v3, v1, v0

    const/16 v4, 0xa

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    move-object v14, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move-object v0, v14

    goto :goto_4

    :cond_8
    const/4 v5, -0x1

    move v4, v1

    move v2, v3

    goto :goto_5

    :cond_9
    iget-boolean v1, p0, Lcom/androlua/LuaLexer;->t:Z

    if-eqz v1, :cond_a

    move v3, v4

    :goto_9
    const/4 v1, -0x1

    move v4, v5

    move v14, v2

    move v2, v1

    move v1, v3

    move v3, v14

    goto :goto_7

    :cond_a
    iput v3, p0, Lcom/androlua/LuaLexer;->m:I

    iput v2, p0, Lcom/androlua/LuaLexer;->l:I

    invoke-direct {p0}, Lcom/androlua/LuaLexer;->c()Z

    move-result v1

    iget v3, p0, Lcom/androlua/LuaLexer;->m:I

    iget v2, p0, Lcom/androlua/LuaLexer;->l:I

    iget-object v0, p0, Lcom/androlua/LuaLexer;->k:[C

    iget v4, p0, Lcom/androlua/LuaLexer;->o:I

    if-nez v1, :cond_12

    invoke-static {v0, v3, v4}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_6

    :cond_b
    iput v6, p0, Lcom/androlua/LuaLexer;->i:I

    iget v6, p0, Lcom/androlua/LuaLexer;->i:I

    aget v11, v10, v6

    and-int/lit8 v12, v11, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_13

    and-int/lit8 v2, v11, 0x8

    const/16 v5, 0x8

    if-ne v2, v5, :cond_11

    move v2, v1

    move v1, v4

    move v4, v6

    goto :goto_7

    :cond_c
    if-gez v4, :cond_d

    :goto_a
    packed-switch v4, :pswitch_data_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/androlua/LuaLexer;->a(I)V

    const/4 v0, 0x0

    throw v0

    :cond_d
    sget-object v2, Lcom/androlua/LuaLexer;->c:[I

    aget v4, v2, v4

    goto :goto_a

    :pswitch_4
    sget-object v0, Lcom/androlua/LuaTokenTypes;->ENDREGION:Lcom/androlua/LuaTokenTypes;

    goto :goto_8

    :pswitch_5
    sget-object v0, Lcom/androlua/LuaTokenTypes;->CONTINUE:Lcom/androlua/LuaTokenTypes;

    goto :goto_8

    :pswitch_6
    sget-object v0, Lcom/androlua/LuaTokenTypes;->FUNCTION:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_7
    sget-object v0, Lcom/androlua/LuaTokenTypes;->REGION:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_8
    sget-object v0, Lcom/androlua/LuaTokenTypes;->DEFAULT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_9
    sget-object v0, Lcom/androlua/LuaTokenTypes;->SWITCH:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_a
    sget-object v0, Lcom/androlua/LuaTokenTypes;->LAMBDA:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_b
    sget-object v0, Lcom/androlua/LuaTokenTypes;->ELSEIF:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_c
    sget-object v0, Lcom/androlua/LuaTokenTypes;->REPEAT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_d
    sget-object v0, Lcom/androlua/LuaTokenTypes;->RETURN:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_e
    sget-object v0, Lcom/androlua/LuaTokenTypes;->WHILE:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_f
    sget-object v0, Lcom/androlua/LuaTokenTypes;->UNTIL:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_10
    sget-object v0, Lcom/androlua/LuaTokenTypes;->FALSE:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_11
    sget-object v0, Lcom/androlua/LuaTokenTypes;->LOCAL:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_12
    sget-object v0, Lcom/androlua/LuaTokenTypes;->BREAK:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_13
    sget-object v0, Lcom/androlua/LuaTokenTypes;->DEFER:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_14
    invoke-direct {p0}, Lcom/androlua/LuaLexer;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    invoke-virtual {p0, v0}, Lcom/androlua/LuaLexer;->yypushback(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/androlua/LuaTokenTypes;->BLOCK_COMMENT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/androlua/LuaTokenTypes;->BLOCK_COMMENT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_15
    invoke-direct {p0}, Lcom/androlua/LuaLexer;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    invoke-virtual {p0, v0}, Lcom/androlua/LuaLexer;->yypushback(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/androlua/LuaTokenTypes;->LONG_STRING:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/androlua/LuaTokenTypes;->BAD_CHARACTER:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_16
    sget-object v0, Lcom/androlua/LuaTokenTypes;->WHEN:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_17
    sget-object v0, Lcom/androlua/LuaTokenTypes;->THEN:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_18
    sget-object v0, Lcom/androlua/LuaTokenTypes;->TRUE:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_19
    sget-object v0, Lcom/androlua/LuaTokenTypes;->CASE:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_1a
    sget-object v0, Lcom/androlua/LuaTokenTypes;->GOTO:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_1b
    sget-object v0, Lcom/androlua/LuaTokenTypes;->ELSE:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_1c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/androlua/LuaTokenTypes;->DOC_COMMENT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_1d
    sget-object v0, Lcom/androlua/LuaTokenTypes;->FOR:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_1e
    sget-object v0, Lcom/androlua/LuaTokenTypes;->MEAN:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_1f
    sget-object v0, Lcom/androlua/LuaTokenTypes;->LEF:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_20
    sget-object v0, Lcom/androlua/LuaTokenTypes;->NIL:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_21
    sget-object v0, Lcom/androlua/LuaTokenTypes;->END:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_22
    sget-object v0, Lcom/androlua/LuaTokenTypes;->ELLIPSIS:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/androlua/LuaTokenTypes;->SHORT_COMMENT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_24
    sget-object v0, Lcom/androlua/LuaTokenTypes;->AND:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_25
    sget-object v0, Lcom/androlua/LuaTokenTypes;->DOUBLE_COLON:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_26
    sget-object v0, Lcom/androlua/LuaTokenTypes;->DOUBLE_DIV:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_27
    sget-object v0, Lcom/androlua/LuaTokenTypes;->BIT_LTLT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_28
    sget-object v0, Lcom/androlua/LuaTokenTypes;->LE:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_29
    sget-object v0, Lcom/androlua/LuaTokenTypes;->BIT_RTRT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_2a
    sget-object v0, Lcom/androlua/LuaTokenTypes;->GE:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_2b
    sget-object v0, Lcom/androlua/LuaTokenTypes;->NE:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_2c
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/androlua/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/androlua/LuaTokenTypes;->SHEBANG:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_2d
    sget-object v0, Lcom/androlua/LuaTokenTypes;->EQ:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_2e
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/androlua/LuaLexer;->yybegin(I)V

    invoke-virtual {p0}, Lcom/androlua/LuaLexer;->yylength()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/androlua/LuaLexer;->yypushback(I)V

    invoke-direct {p0}, Lcom/androlua/LuaLexer;->a()Z

    goto/16 :goto_0

    :pswitch_2f
    sget-object v0, Lcom/androlua/LuaTokenTypes;->DO:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_30
    sget-object v0, Lcom/androlua/LuaTokenTypes;->OR:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_31
    sget-object v0, Lcom/androlua/LuaTokenTypes;->IF:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_32
    sget-object v0, Lcom/androlua/LuaTokenTypes;->IN:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_33
    invoke-direct {p0}, Lcom/androlua/LuaLexer;->a()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/androlua/LuaLexer;->yylength()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/androlua/LuaLexer;->yypushback(I)V

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/androlua/LuaLexer;->yybegin(I)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Lcom/androlua/LuaLexer;->yylength()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/androlua/LuaLexer;->yypushback(I)V

    :goto_b
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/androlua/LuaLexer;->yybegin(I)V

    goto/16 :goto_0

    :pswitch_34
    sget-object v0, Lcom/androlua/LuaTokenTypes;->CONCAT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_35
    invoke-virtual {p0}, Lcom/androlua/LuaLexer;->yylength()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/androlua/LuaLexer;->yypushback(I)V

    goto :goto_b

    :pswitch_36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/androlua/LuaTokenTypes;->STRING:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_37
    sget-object v0, Lcom/androlua/LuaTokenTypes;->AT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_38
    sget-object v0, Lcom/androlua/LuaTokenTypes;->BIT_OR:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_39
    sget-object v0, Lcom/androlua/LuaTokenTypes;->BIT_AND:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_3a
    sget-object v0, Lcom/androlua/LuaTokenTypes;->EXP:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_3b
    sget-object v0, Lcom/androlua/LuaTokenTypes;->COLON:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_3c
    sget-object v0, Lcom/androlua/LuaTokenTypes;->SEMI:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_3d
    sget-object v0, Lcom/androlua/LuaTokenTypes;->COMMA:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_3e
    sget-object v0, Lcom/androlua/LuaTokenTypes;->RCURLY:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_3f
    sget-object v0, Lcom/androlua/LuaTokenTypes;->LCURLY:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_40
    sget-object v0, Lcom/androlua/LuaTokenTypes;->RPAREN:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_41
    sget-object v0, Lcom/androlua/LuaTokenTypes;->LPAREN:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_42
    sget-object v0, Lcom/androlua/LuaTokenTypes;->DIV:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_43
    sget-object v0, Lcom/androlua/LuaTokenTypes;->MOD:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_44
    sget-object v0, Lcom/androlua/LuaTokenTypes;->MULT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_45
    sget-object v0, Lcom/androlua/LuaTokenTypes;->BIT_TILDE:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_46
    sget-object v0, Lcom/androlua/LuaTokenTypes;->LT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_47
    sget-object v0, Lcom/androlua/LuaTokenTypes;->GT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_48
    sget-object v0, Lcom/androlua/LuaTokenTypes;->NOT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_49
    sget-object v0, Lcom/androlua/LuaTokenTypes;->GETN:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_4a
    const/4 v2, 0x6

    :goto_c
    invoke-virtual {p0, v2}, Lcom/androlua/LuaLexer;->yybegin(I)V

    invoke-virtual {p0}, Lcom/androlua/LuaLexer;->yylength()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/androlua/LuaLexer;->yypushback(I)V

    goto/16 :goto_0

    :pswitch_4b
    const/4 v2, 0x4

    goto :goto_c

    :pswitch_4c
    sget-object v0, Lcom/androlua/LuaTokenTypes;->RBRACK:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_4d
    sget-object v0, Lcom/androlua/LuaTokenTypes;->ASSIGN:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_4e
    sget-object v0, Lcom/androlua/LuaTokenTypes;->LBRACK:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_4f
    sget-object v0, Lcom/androlua/LuaTokenTypes;->MINUS:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_50
    sget-object v0, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_51
    sget-object v0, Lcom/androlua/LuaTokenTypes;->PLUS:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_52
    sget-object v0, Lcom/androlua/LuaTokenTypes;->NUMBER:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_53
    sget-object v0, Lcom/androlua/LuaTokenTypes;->NAME:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_54
    sget-object v0, Lcom/androlua/LuaTokenTypes;->WHITE_SPACE:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_55
    sget-object v0, Lcom/androlua/LuaTokenTypes;->NEW_LINE:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_56
    sget-object v0, Lcom/androlua/LuaTokenTypes;->BAD_CHARACTER:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :pswitch_57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/androlua/LuaTokenTypes;->SHEBANG_CONTENT:Lcom/androlua/LuaTokenTypes;

    goto/16 :goto_8

    :cond_11
    move v2, v3

    :goto_d
    move v5, v6

    goto/16 :goto_5

    :cond_12
    move v3, v4

    goto/16 :goto_9

    :cond_13
    move v6, v5

    goto :goto_d

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final yybegin(I)V
    .locals 0

    iput p1, p0, Lcom/androlua/LuaLexer;->j:I

    return-void
.end method

.method public yychar()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaLexer;->q:I

    return v0
.end method

.method public final yycharat(I)C
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaLexer;->k:[C

    iget v1, p0, Lcom/androlua/LuaLexer;->n:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public final yyclose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaLexer;->t:Z

    iget v0, p0, Lcom/androlua/LuaLexer;->n:I

    iput v0, p0, Lcom/androlua/LuaLexer;->o:I

    iget-object v0, p0, Lcom/androlua/LuaLexer;->h:Ljava/io/Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_0
    return-void
.end method

.method public yycolumn()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaLexer;->r:I

    return v0
.end method

.method public final yylength()I
    .locals 2

    iget v0, p0, Lcom/androlua/LuaLexer;->l:I

    iget v1, p0, Lcom/androlua/LuaLexer;->n:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public yyline()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaLexer;->p:I

    return v0
.end method

.method public yypushback(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaLexer;->yylength()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/androlua/LuaLexer;->l:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/androlua/LuaLexer;->l:I

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/androlua/LuaLexer;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final yyreset(Ljava/io/Reader;)V
    .locals 3

    const/16 v2, 0x4000

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/androlua/LuaLexer;->h:Ljava/io/Reader;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaLexer;->s:Z

    iput-boolean v1, p0, Lcom/androlua/LuaLexer;->t:Z

    iput-boolean v1, p0, Lcom/androlua/LuaLexer;->u:Z

    iput v1, p0, Lcom/androlua/LuaLexer;->n:I

    iput v1, p0, Lcom/androlua/LuaLexer;->o:I

    iput v1, p0, Lcom/androlua/LuaLexer;->l:I

    iput v1, p0, Lcom/androlua/LuaLexer;->m:I

    iput v1, p0, Lcom/androlua/LuaLexer;->v:I

    iput v1, p0, Lcom/androlua/LuaLexer;->r:I

    iput v1, p0, Lcom/androlua/LuaLexer;->q:I

    iput v1, p0, Lcom/androlua/LuaLexer;->p:I

    iput v1, p0, Lcom/androlua/LuaLexer;->j:I

    iget-object v0, p0, Lcom/androlua/LuaLexer;->k:[C

    array-length v0, v0

    if-le v0, v2, :cond_0

    new-array v0, v2, [C

    iput-object v0, p0, Lcom/androlua/LuaLexer;->k:[C

    :cond_0
    return-void
.end method

.method public final yystate()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaLexer;->j:I

    return v0
.end method

.method public final yytext()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaLexer;->k:[C

    iget v1, p0, Lcom/androlua/LuaLexer;->n:I

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/androlua/LuaLexer;->l:I

    sub-int/2addr v3, v1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method
