.class public Lcom/luajava/LuaState;
.super Ljava/lang/Object;


# static fields
.field public static final LUAI_MAXSTACK:I = 0xf4240

.field public static final LUA_ERRERR:I = 0x6

.field public static final LUA_ERRGCMM:I = 0x5

.field public static final LUA_ERRMEM:I = 0x4

.field public static final LUA_ERRRUN:I = 0x2

.field public static final LUA_ERRSYNTAX:I = 0x3

.field public static final LUA_GCCOLLECT:I = 0x2

.field public static final LUA_GCCOUNT:I = 0x3

.field public static final LUA_GCCOUNTB:I = 0x4

.field public static final LUA_GCRESTART:I = 0x1

.field public static final LUA_GCSETPAUSE:I = 0x6

.field public static final LUA_GCSETSTEPMUL:I = 0x7

.field public static final LUA_GCSTEP:I = 0x5

.field public static final LUA_GCSTOP:I = 0x0

.field public static final LUA_MULTRET:I = -0x1

.field public static final LUA_OPEQ:I = 0x0

.field public static final LUA_OPLE:I = 0x2

.field public static final LUA_OPLT:I = 0x1

.field public static final LUA_REGISTRYINDEX:I = -0xf4628

.field public static final LUA_RIDX_GLOBALS:I = 0x2

.field public static final LUA_RIDX_LAST:I = 0x2

.field public static final LUA_RIDX_MAINTHREAD:I = 0x1

.field public static final LUA_TBOOLEAN:I = 0x1

.field public static final LUA_TFUNCTION:I = 0x6

.field public static final LUA_TINTEGER:I = 0x9

.field public static final LUA_TLIGHTUSERDATA:I = 0x2

.field public static final LUA_TNIL:I = 0x0

.field public static final LUA_TNONE:I = -0x1

.field public static final LUA_TNUMBER:I = 0x3

.field public static final LUA_TSTRING:I = 0x4

.field public static final LUA_TTABLE:I = 0x5

.field public static final LUA_TTHREAD:I = 0x8

.field public static final LUA_TUSERDATA:I = 0x7

.field public static final LUA_YIELD:I = 0x1

.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private b:J

.field private c:Lcom/androlua/LuaContext;

.field private d:I

.field private final e:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "luajava"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/luajava/LuaState;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/luajava/LuaState;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/luajava/LuaState;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luajava/LuaState;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/luajava/LuaState;->_newstate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/luajava/LuaState;->b:J

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/luajava/LuaState;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/luajava/LuaState;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luajava/LuaState;->f:Ljava/util/ArrayList;

    iput-wide p1, p0, Lcom/luajava/LuaState;->b:J

    invoke-static {p0}, Lcom/luajava/LuaStateFactory;->insertLuaState(Lcom/luajava/LuaState;)J

    return-void
.end method

.method private synchronized native declared-synchronized _LargError(JILjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LcallMeta(JILjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LcheckAny(JI)V
.end method

.method private synchronized native declared-synchronized _LcheckInteger(JI)I
.end method

.method private synchronized native declared-synchronized _LcheckNumber(JI)D
.end method

.method private synchronized native declared-synchronized _LcheckStack(JILjava/lang/String;)V
.end method

.method private synchronized native declared-synchronized _LcheckString(JI)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _LcheckType(JII)V
.end method

.method private synchronized native declared-synchronized _LdoFile(JLjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LdoString(JLjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LgetMetaField(JILjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LgetMetatable(JLjava/lang/String;)V
.end method

.method private synchronized native declared-synchronized _Lgsub(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _LloadBuffer(J[BJLjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LloadFile(JLjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LloadString(JLjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LnewMetatable(JLjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LoptInteger(JII)I
.end method

.method private synchronized native declared-synchronized _LoptNumber(JID)D
.end method

.method private synchronized native declared-synchronized _LoptString(JILjava/lang/String;)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _Lref(JI)I
.end method

.method private synchronized native declared-synchronized _LtoString(JI)[B
.end method

.method private synchronized native declared-synchronized _LunRef(JII)V
.end method

.method private synchronized native declared-synchronized _Lwhere(JI)V
.end method

.method private synchronized native declared-synchronized _call(JII)V
.end method

.method private synchronized native declared-synchronized _checkStack(JI)I
.end method

.method private synchronized native declared-synchronized _close(J)V
.end method

.method private synchronized native declared-synchronized _compare(JIII)I
.end method

.method private synchronized native declared-synchronized _concat(JI)V
.end method

.method private synchronized native declared-synchronized _copy(JII)V
.end method

.method private synchronized native declared-synchronized _createTable(JII)V
.end method

.method private synchronized native declared-synchronized _dump(JI)[B
.end method

.method private synchronized native declared-synchronized _equal(JII)I
.end method

.method private synchronized native declared-synchronized _error(J)I
.end method

.method private synchronized native declared-synchronized _gc(JII)I
.end method

.method private synchronized native declared-synchronized _getField(JILjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _getGlobal(JLjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _getI(JIJ)I
.end method

.method private synchronized native declared-synchronized _getMetaTable(JI)I
.end method

.method private synchronized native declared-synchronized _getObjectFromUserdata(JI)I
.end method

.method private synchronized native declared-synchronized _getTable(JI)I
.end method

.method private synchronized native declared-synchronized _getTop(J)I
.end method

.method private synchronized native declared-synchronized _getUpValue(JII)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _getUserValue(JI)I
.end method

.method private synchronized native declared-synchronized _insert(JI)V
.end method

.method private synchronized native declared-synchronized _isBoolean(JI)I
.end method

.method private synchronized native declared-synchronized _isCFunction(JI)I
.end method

.method private synchronized native declared-synchronized _isFunction(JI)I
.end method

.method private synchronized native declared-synchronized _isInteger(JI)I
.end method

.method private synchronized native declared-synchronized _isJavaFunction(JI)Z
.end method

.method private synchronized native declared-synchronized _isNil(JI)I
.end method

.method private synchronized native declared-synchronized _isNone(JI)I
.end method

.method private synchronized native declared-synchronized _isNoneOrNil(JI)I
.end method

.method private synchronized native declared-synchronized _isNumber(JI)I
.end method

.method private synchronized native declared-synchronized _isObject(JI)Z
.end method

.method private synchronized native declared-synchronized _isString(JI)I
.end method

.method private synchronized native declared-synchronized _isTable(JI)I
.end method

.method private synchronized native declared-synchronized _isThread(JI)I
.end method

.method private synchronized native declared-synchronized _isUserdata(JI)I
.end method

.method private synchronized native declared-synchronized _isYieldable(J)I
.end method

.method private synchronized native declared-synchronized _lessThan(JII)I
.end method

.method private synchronized native declared-synchronized _newTable(J)V
.end method

.method private synchronized native declared-synchronized _newstate()J
.end method

.method private synchronized native declared-synchronized _newthread(J)J
.end method

.method private synchronized native declared-synchronized _next(JI)I
.end method

.method private synchronized native declared-synchronized _objlen(JI)I
.end method

.method private synchronized native declared-synchronized _openBase(J)V
.end method

.method private synchronized native declared-synchronized _openDebug(J)V
.end method

.method private synchronized native declared-synchronized _openIo(J)V
.end method

.method private synchronized native declared-synchronized _openLibs(J)V
.end method

.method private synchronized native declared-synchronized _openLuajava(J)V
.end method

.method private synchronized native declared-synchronized _openMath(J)V
.end method

.method private synchronized native declared-synchronized _openOs(J)V
.end method

.method private synchronized native declared-synchronized _openPackage(J)V
.end method

.method private synchronized native declared-synchronized _openString(J)V
.end method

.method private synchronized native declared-synchronized _openTable(J)V
.end method

.method private synchronized native declared-synchronized _pcall(JIII)I
.end method

.method private synchronized native declared-synchronized _pop(JI)V
.end method

.method private synchronized native declared-synchronized _pushBoolean(JI)V
.end method

.method private synchronized native declared-synchronized _pushGlobalTable(J)V
.end method

.method private synchronized native declared-synchronized _pushInteger(JJ)V
.end method

.method private synchronized native declared-synchronized _pushJavaFunction(JLcom/luajava/JavaFunction;)V
.end method

.method private synchronized native declared-synchronized _pushJavaObject(JLjava/lang/String;IZ)V
.end method

.method private synchronized native declared-synchronized _pushLString(J[BI)V
.end method

.method private synchronized native declared-synchronized _pushNil(J)V
.end method

.method private synchronized native declared-synchronized _pushNumber(JD)V
.end method

.method private synchronized native declared-synchronized _pushString(JLjava/lang/String;)V
.end method

.method private synchronized native declared-synchronized _pushValue(JI)V
.end method

.method private synchronized native declared-synchronized _rawGet(JI)I
.end method

.method private synchronized native declared-synchronized _rawGetI(JIJ)I
.end method

.method private synchronized native declared-synchronized _rawSet(JI)V
.end method

.method private synchronized native declared-synchronized _rawSetI(JIJ)V
.end method

.method private synchronized native declared-synchronized _rawequal(JII)I
.end method

.method private synchronized native declared-synchronized _rawlen(JI)I
.end method

.method private synchronized native declared-synchronized _remove(JI)V
.end method

.method private synchronized native declared-synchronized _replace(JI)V
.end method

.method private synchronized native declared-synchronized _resume(JJI)I
.end method

.method private synchronized native declared-synchronized _rotate(JII)V
.end method

.method private synchronized native declared-synchronized _setField(JILjava/lang/String;)V
.end method

.method private synchronized native declared-synchronized _setGlobal(JLjava/lang/String;)V
.end method

.method private synchronized native declared-synchronized _setI(JIJ)V
.end method

.method private synchronized native declared-synchronized _setMetaTable(JI)I
.end method

.method private synchronized native declared-synchronized _setTable(JI)V
.end method

.method private synchronized native declared-synchronized _setTop(JI)V
.end method

.method private synchronized native declared-synchronized _setUpValue(JII)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _setUserValue(JI)V
.end method

.method private synchronized native declared-synchronized _status(J)I
.end method

.method private synchronized native declared-synchronized _strlen(JI)I
.end method

.method private synchronized native declared-synchronized _toBoolean(JI)I
.end method

.method private synchronized native declared-synchronized _toBuffer(JI)[B
.end method

.method private synchronized native declared-synchronized _toInteger(JI)J
.end method

.method private synchronized native declared-synchronized _toNumber(JI)D
.end method

.method private synchronized native declared-synchronized _toString(JI)[B
.end method

.method private synchronized native declared-synchronized _toThread(JI)J
.end method

.method private synchronized native declared-synchronized _type(JI)I
.end method

.method private synchronized native declared-synchronized _typeName(JI)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _xmove(JJI)V
.end method

.method private synchronized native declared-synchronized _yield(JI)I
.end method

.method public static convertLuaNumber(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Double;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Double;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    :cond_6
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v0

    goto :goto_0

    :cond_7
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object p0, v0

    goto :goto_0

    :cond_8
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    move-object p0, v0

    goto/16 :goto_0

    :cond_9
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Double;->byteValue()B

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    move-object p0, v0

    goto/16 :goto_0

    :cond_a
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Double;->shortValue()S

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    move-object p0, v0

    goto/16 :goto_0

    :cond_b
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    :cond_c
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method public static convertLuaNumber(Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Long;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Long;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Long;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    :cond_6
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v0

    goto :goto_0

    :cond_7
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object p0, v0

    goto :goto_0

    :cond_8
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Long;->floatValue()F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    move-object p0, v0

    goto/16 :goto_0

    :cond_9
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Long;->byteValue()B

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    move-object p0, v0

    goto/16 :goto_0

    :cond_a
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Long;->shortValue()S

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    move-object p0, v0

    goto/16 :goto_0

    :cond_b
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    :cond_c
    const/4 p0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public LargError(ILjava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LargError(JILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LcallMeta(ILjava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LcallMeta(JILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LcheckAny(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LcheckAny(JI)V

    return-void
.end method

.method public LcheckInteger(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LcheckInteger(JI)I

    move-result v0

    return v0
.end method

.method public LcheckNumber(I)D
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LcheckNumber(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public LcheckStack(ILjava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LcheckStack(JILjava/lang/String;)V

    return-void
.end method

.method public LcheckString(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LcheckString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LcheckType(II)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LcheckType(JII)V

    return-void
.end method

.method public LdoFile(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LdoFile(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LdoString(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LdoString(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LgetMetaField(ILjava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LgetMetaField(JILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LgetMetatable(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LgetMetatable(JLjava/lang/String;)V

    return-void
.end method

.method public Lgsub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    iget-wide v2, p0, Lcom/luajava/LuaState;->b:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/luajava/LuaState;->_Lgsub(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LloadBuffer([BLjava/lang/String;)I
    .locals 7

    iget-wide v1, p0, Lcom/luajava/LuaState;->b:J

    array-length v0, p1

    int-to-long v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/luajava/LuaState;->_LloadBuffer(J[BJLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LloadFile(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LloadFile(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LloadString(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LloadString(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LnewMetatable(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LnewMetatable(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LoptInteger(II)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LoptInteger(JII)I

    move-result v0

    return v0
.end method

.method public LoptNumber(ID)D
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->b:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_LoptNumber(JID)D

    move-result-wide v0

    return-wide v0
.end method

.method public LoptString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LoptString(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Lref(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_Lref(JI)I

    move-result v0

    return v0
.end method

.method public LtoString(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v2, v3, p1}, Lcom/luajava/LuaState;->_LtoString(JI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public LunRef(II)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LunRef(JII)V

    return-void
.end method

.method public Lwhere(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_Lwhere(JI)V

    return-void
.end method

.method public call(II)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_call(JII)V

    return-void
.end method

.method public checkStack(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_checkStack(JI)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-static {v0, v1}, Lcom/luajava/LuaStateFactory;->removeLuaState(J)V

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_close(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/luajava/LuaState;->b:J

    iget-object v0, p0, Lcom/luajava/LuaState;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/luajava/LuaState;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public compare(III)I
    .locals 7

    iget-wide v2, p0, Lcom/luajava/LuaState;->b:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/luajava/LuaState;->_compare(JIII)I

    move-result v0

    return v0
.end method

.method public concat(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_concat(JI)V

    return-void
.end method

.method public copy(II)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_copy(JII)V

    return-void
.end method

.method public createTable(II)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_createTable(JII)V

    return-void
.end method

.method public dump(I)[B
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_dump(JI)[B

    move-result-object v0

    return-object v0
.end method

.method public equal(II)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_equal(JII)I

    move-result v0

    return v0
.end method

.method public error()I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_error(J)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finalize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/luajava/LuaState;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "luaState"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaState;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to release luaState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/luajava/LuaState;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public gc(II)I
    .locals 3

    iget-object v0, p0, Lcom/luajava/LuaState;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/luajava/LuaState;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/luajava/LuaState;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_gc(JII)I

    move-result v0

    return v0
.end method

.method public getContext()Lcom/androlua/LuaContext;
    .locals 1

    iget-object v0, p0, Lcom/luajava/LuaState;->c:Lcom/androlua/LuaContext;

    return-object v0
.end method

.method public getField(ILjava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_getField(JILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFunction(I)Lcom/luajava/LuaFunction;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFunction(Ljava/lang/String;)Lcom/luajava/LuaFunction;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGlobal(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getGlobal(JLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getI(IJ)I
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->b:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_getI(JIJ)I

    move-result v0

    return v0
.end method

.method public getJavaObject(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/luajava/LuaState;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLuaObject(I)Lcom/luajava/LuaObject;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isFunction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/luajava/LuaFunction;

    invoke-direct {v0, p0, p1}, Lcom/luajava/LuaFunction;-><init>(Lcom/luajava/LuaState;I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isTable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/luajava/LuaTable;

    invoke-direct {v0, p0, p1}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p0, p1}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;I)V

    goto :goto_0
.end method

.method public getLuaObject(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/luajava/LuaObject;
    .locals 4

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/luajava/LuaState;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Object must have the same LuaState as the parent!"

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLuaObject(Lcom/luajava/LuaObject;Ljava/lang/Number;)Lcom/luajava/LuaObject;
    .locals 1

    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaObject;Ljava/lang/Number;)V

    return-object v0
.end method

.method public getLuaObject(Lcom/luajava/LuaObject;Ljava/lang/String;)Lcom/luajava/LuaObject;
    .locals 1

    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;
    .locals 2

    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushGlobalTable()V

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->rawGet(I)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->pop(I)V

    return-object v0
.end method

.method public getMetaTable(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getMetaTable(JI)I

    move-result v0

    return v0
.end method

.method public getObjectFromUserdata(I)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getObjectFromUserdata(JI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->getJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPointer()J
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    return-wide v0
.end method

.method public getTable(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getTable(JI)I

    move-result v0

    return v0
.end method

.method public getTop()I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_getTop(J)I

    move-result v0

    return v0
.end method

.method public getUpValue(II)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_getUpValue(JII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserValue(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getUserValue(JI)I

    move-result v0

    return v0
.end method

.method public insert(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_insert(JI)V

    return-void
.end method

.method public isBoolean(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isBoolean(JI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCFunction(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isCFunction(JI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFunction(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isFunction(JI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInteger(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isInteger(JI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJavaFunction(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isJavaFunction(JI)Z

    move-result v0

    return v0
.end method

.method public isNil(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isNil(JI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNone(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isNone(JI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoneOrNil(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isNoneOrNil(JI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumber(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isNumber(JI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isObject(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isObject(JI)Z

    move-result v0

    return v0
.end method

.method public isString(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isString(JI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTable(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isTable(JI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThread(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isThread(JI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserdata(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isUserdata(JI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isYieldable()I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_isYieldable(J)I

    move-result v0

    return v0
.end method

.method public lessThan(II)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_lessThan(JII)I

    move-result v0

    return v0
.end method

.method public newTable()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_newTable(J)V

    return-void
.end method

.method public newThread()Lcom/luajava/LuaState;
    .locals 4

    new-instance v0, Lcom/luajava/LuaState;

    iget-wide v2, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v2, v3}, Lcom/luajava/LuaState;->_newthread(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/luajava/LuaState;-><init>(J)V

    invoke-static {v0}, Lcom/luajava/LuaStateFactory;->insertLuaState(Lcom/luajava/LuaState;)J

    return-object v0
.end method

.method public next(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_next(JI)I

    move-result v0

    return v0
.end method

.method public objLen(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_objlen(JI)I

    move-result v0

    return v0
.end method

.method public openBase()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openBase(J)V

    return-void
.end method

.method public openDebug()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openDebug(J)V

    return-void
.end method

.method public openIo()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openIo(J)V

    return-void
.end method

.method public openLibs()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openLibs(J)V

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openLuajava(J)V

    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushPrimitive()V

    return-void
.end method

.method public openLuajava()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openLuajava(J)V

    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushPrimitive()V

    return-void
.end method

.method public openMath()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openMath(J)V

    return-void
.end method

.method public openOs()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openOs(J)V

    return-void
.end method

.method public openPackage()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openPackage(J)V

    return-void
.end method

.method public openString()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openString(J)V

    return-void
.end method

.method public openTable()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openTable(J)V

    return-void
.end method

.method public pcall(III)I
    .locals 7

    iget-wide v2, p0, Lcom/luajava/LuaState;->b:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/luajava/LuaState;->_pcall(JIII)I

    move-result v0

    return v0
.end method

.method public pop(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pop(JI)V

    return-void
.end method

.method public pushBoolean(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushBoolean(JI)V

    return-void
.end method

.method public pushContext(Lcom/androlua/LuaContext;)V
    .locals 1

    iput-object p1, p0, Lcom/luajava/LuaState;->c:Lcom/androlua/LuaContext;

    const-string v0, "_LuaContext"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const v0, -0xf4628

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setTable(I)V

    return-void
.end method

.method public pushGlobalTable()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushGlobalTable(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pushInteger(J)V
    .locals 3

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_pushInteger(JJ)V

    return-void
.end method

.method public pushJavaFunction(Lcom/luajava/JavaFunction;)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushJavaFunction(JLcom/luajava/JavaFunction;)V

    return-void
.end method

.method public pushJavaObject(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/luajava/LuaState;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushJavaObject(Ljava/lang/Object;)V
    .locals 7

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushNil()V

    :goto_0
    return-void

    :cond_0
    iget v5, p0, Lcom/luajava/LuaState;->d:I

    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lcom/luajava/LuaState;->d:I

    invoke-virtual {p0, v5, p1}, Lcom/luajava/LuaState;->pushJavaObject(ILjava/lang/Object;)V

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    :goto_1
    :try_start_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/luajava/LuaState;->b:J

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/luajava/LuaState;->_pushJavaObject(JLjava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_2
    :try_start_1
    iget-wide v2, p0, Lcom/luajava/LuaState;->b:J

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/luajava/LuaState;->_pushJavaObject(JLjava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public pushNil()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushNil(J)V

    return-void
.end method

.method public pushNumber(D)V
    .locals 3

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_pushNumber(JD)V

    return-void
.end method

.method public pushObjectValue(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushNil()V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushBoolean(Z)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/luajava/LuaState;->pushInteger(J)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    int-to-long v0, v0

    goto :goto_1

    :cond_3
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_2

    :cond_4
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    goto :goto_2

    :cond_5
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_2

    :cond_6
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/luajava/LuaState;->pushNumber(D)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_3

    :cond_8
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lcom/luajava/LuaString;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/luajava/LuaString;

    invoke-virtual {p1}, Lcom/luajava/LuaString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushString([B)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lcom/luajava/JavaFunction;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/luajava/JavaFunction;

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushJavaFunction(Lcom/luajava/JavaFunction;)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p1, Lcom/luajava/LuaObject;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    if-ne v0, p0, :cond_c

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public pushPrimitive()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "byte"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "char"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "short"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "int"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "long"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "float"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "double"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    return-void
.end method

.method public pushString(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushNil(J)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public pushString([B)V
    .locals 3

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushNil(J)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    array-length v2, p1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/luajava/LuaState;->_pushLString(J[BI)V

    goto :goto_0
.end method

.method public pushValue(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushValue(JI)V

    return-void
.end method

.method public rawGet(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_rawGet(JI)I

    move-result v0

    return v0
.end method

.method public rawGetI(IJ)I
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->b:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_rawGetI(JIJ)I

    move-result v0

    return v0
.end method

.method public rawLen(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_rawlen(JI)I

    move-result v0

    return v0
.end method

.method public rawSet(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_rawSet(JI)V

    return-void
.end method

.method public rawSetI(IJ)V
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->b:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_rawSetI(JIJ)V

    return-void
.end method

.method public rawequal(II)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_rawequal(JII)I

    move-result v0

    return v0
.end method

.method public remove(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_remove(JI)V

    return-void
.end method

.method public removeJavaObject(I)V
    .locals 2

    iget-object v0, p0, Lcom/luajava/LuaState;->f:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public replace(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_replace(JI)V

    return-void
.end method

.method public resume(Lcom/luajava/LuaState;I)I
    .locals 7

    iget-wide v2, p0, Lcom/luajava/LuaState;->b:J

    invoke-virtual {p1}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/luajava/LuaState;->_resume(JJI)I

    move-result v0

    return v0
.end method

.method public rotate(II)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_rotate(JII)V

    return-void
.end method

.method public setField(ILjava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_setField(JILjava/lang/String;)V

    return-void
.end method

.method public setGlobal(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setGlobal(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setI(IJ)V
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->b:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_setI(JIJ)V

    return-void
.end method

.method public setMetaTable(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setMetaTable(JI)I

    move-result v0

    return v0
.end method

.method public setTable(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setTable(JI)V

    return-void
.end method

.method public setTop(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setTop(JI)V

    return-void
.end method

.method public setUpValue(II)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_setUpValue(JII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setUserValue(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setUserValue(JI)V

    return-void
.end method

.method public status()I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_status(J)I

    move-result v0

    return v0
.end method

.method public strLen(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_strlen(JI)I

    move-result v0

    return v0
.end method

.method public toBoolean(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toBoolean(JI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toBuffer(I)[B
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toBuffer(JI)[B

    move-result-object v0

    return-object v0
.end method

.method public toInteger(I)J
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toInteger(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public toJavaObject(I)Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isBoolean(I)Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->toBoolean(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->type(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isFunction(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isTable(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->getTable()Lcom/luajava/LuaTable;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->type(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isInteger(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isUserdata(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isObject(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getObjectFromUserdata(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isNil(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toNumber(I)D
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toNumber(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v2, v3, p1}, Lcom/luajava/LuaState;->_toString(JI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public toThread(I)Lcom/luajava/LuaState;
    .locals 4

    new-instance v0, Lcom/luajava/LuaState;

    iget-wide v2, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v2, v3, p1}, Lcom/luajava/LuaState;->_toThread(JI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/luajava/LuaState;-><init>(J)V

    return-object v0
.end method

.method public type(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_type(JI)I

    move-result v0

    return v0
.end method

.method public typeName(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_typeName(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xmove(Lcom/luajava/LuaState;I)V
    .locals 7

    iget-wide v2, p0, Lcom/luajava/LuaState;->b:J

    iget-wide v4, p1, Lcom/luajava/LuaState;->b:J

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/luajava/LuaState;->_xmove(JJI)V

    return-void
.end method

.method public yield(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_yield(JI)I

    move-result v0

    return v0
.end method
