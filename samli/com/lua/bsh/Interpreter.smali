.class public Lcom/lua/bsh/Interpreter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/lua/bsh/ConsoleInterface;
.implements Ljava/io/Serializable;


# static fields
.field public static DEBUG:Z = false

.field public static LOCALSCOPING:Z = false

.field public static TRACE:Z = false

.field public static final VERSION:Ljava/lang/String; = "2.0b4"

.field static transient a:Ljava/io/PrintStream; = null

.field static b:Ljava/lang/String; = "\n"

.field static c:Lcom/lua/bsh/This;

.field static d:Ljava/lang/Class;


# instance fields
.field private e:Z

.field transient f:Lcom/lua/bsh/Parser;

.field g:Lcom/lua/bsh/NameSpace;

.field transient h:Ljava/io/Reader;

.field transient i:Ljava/io/PrintStream;

.field transient j:Ljava/io/PrintStream;

.field k:Lcom/lua/bsh/ConsoleInterface;

.field l:Lcom/lua/bsh/Interpreter;

.field m:Ljava/lang/String;

.field private n:Z

.field protected o:Z

.field protected p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/lua/bsh/Interpreter;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    new-instance v1, Ljava/io/StringReader;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lua/bsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLcom/lua/bsh/NameSpace;)V

    iput-boolean v6, p0, Lcom/lua/bsh/Interpreter;->o:Z

    const-string v0, "bsh.evalOnly"

    new-instance v1, Lcom/lua/bsh/Primitive;

    invoke-direct {v1, v6}, Lcom/lua/bsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/lua/bsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/lua/bsh/ConsoleInterface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lua/bsh/Interpreter;-><init>(Lcom/lua/bsh/ConsoleInterface;Lcom/lua/bsh/NameSpace;)V

    return-void
.end method

.method public constructor <init>(Lcom/lua/bsh/ConsoleInterface;Lcom/lua/bsh/NameSpace;)V
    .locals 6

    invoke-interface {p1}, Lcom/lua/bsh/ConsoleInterface;->getIn()Ljava/io/Reader;

    move-result-object v1

    invoke-interface {p1}, Lcom/lua/bsh/ConsoleInterface;->getOut()Ljava/io/PrintStream;

    move-result-object v2

    invoke-interface {p1}, Lcom/lua/bsh/ConsoleInterface;->getErr()Ljava/io/PrintStream;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/lua/bsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLcom/lua/bsh/NameSpace;)V

    invoke-virtual {p0, p1}, Lcom/lua/bsh/Interpreter;->setConsole(Lcom/lua/bsh/ConsoleInterface;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/lua/bsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLcom/lua/bsh/NameSpace;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLcom/lua/bsh/NameSpace;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/lua/bsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLcom/lua/bsh/NameSpace;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLcom/lua/bsh/NameSpace;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lua/bsh/Interpreter;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lua/bsh/Interpreter;->n:Z

    new-instance v0, Lcom/lua/bsh/Parser;

    invoke-direct {v0, p1}, Lcom/lua/bsh/Parser;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/lua/bsh/Interpreter;->f:Lcom/lua/bsh/Parser;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-object p1, p0, Lcom/lua/bsh/Interpreter;->h:Ljava/io/Reader;

    iput-object p2, p0, Lcom/lua/bsh/Interpreter;->i:Ljava/io/PrintStream;

    iput-object p3, p0, Lcom/lua/bsh/Interpreter;->j:Ljava/io/PrintStream;

    iput-boolean p4, p0, Lcom/lua/bsh/Interpreter;->p:Z

    sput-object p3, Lcom/lua/bsh/Interpreter;->a:Ljava/io/PrintStream;

    iput-object p6, p0, Lcom/lua/bsh/Interpreter;->l:Lcom/lua/bsh/Interpreter;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Lcom/lua/bsh/Interpreter;->getStrictJava()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Interpreter;->setStrictJava(Z)V

    :cond_0
    iput-object p7, p0, Lcom/lua/bsh/Interpreter;->m:Ljava/lang/String;

    invoke-static {p0}, Lcom/lua/bsh/BshClassManager;->createClassManager(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/BshClassManager;

    move-result-object v2

    if-nez p5, :cond_4

    new-instance v3, Lcom/lua/bsh/NameSpace;

    const-string v4, "global"

    invoke-direct {v3, v2, v4}, Lcom/lua/bsh/NameSpace;-><init>(Lcom/lua/bsh/BshClassManager;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    :goto_0
    const-string v2, "bsh"

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Interpreter;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/lua/bsh/This;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/lua/bsh/Interpreter;->f()V

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/lua/bsh/Interpreter;->a()V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-boolean v4, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Time to initialize interpreter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sub-long v0, v2, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iput-object p5, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static b()V
    .locals 4

    :try_start_0
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lua/bsh/Interpreter;->b:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lcom/lua/bsh/Interpreter;->a:Ljava/io/PrintStream;

    const-string v0, "debug"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    const-string v0, "trace"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lua/bsh/Interpreter;->TRACE:Z

    const-string v0, "localscoping"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lua/bsh/Interpreter;->LOCALSCOPING:Z

    const-string v0, "outfile"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->redirectOutputToFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Could not init static(3):"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Could not init static(2):"

    goto :goto_1

    :catch_2
    move-exception v2

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Could not init static:"

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x50

    const/16 v2, 0x20

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " . . . "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->f:Lcom/lua/bsh/Parser;

    invoke-virtual {v0}, Lcom/lua/bsh/Parser;->Line()Z

    move-result v0

    return v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "getBshPrompt()"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "bsh % "

    goto :goto_0
.end method

.method public static final debug(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lua/bsh/Interpreter;->a:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "// Debug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private e()Lcom/lua/bsh/JJTParserState;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->f:Lcom/lua/bsh/Parser;

    iget-object v0, v0, Lcom/lua/bsh/Parser;->a:Lcom/lua/bsh/JJTParserState;

    return-object v0
.end method

.method private f()V
    .locals 4

    invoke-virtual {p0}, Lcom/lua/bsh/Interpreter;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v0

    const-string v1, "bsh"

    new-instance v2, Lcom/lua/bsh/NameSpace;

    const-string v3, "Bsh Object"

    invoke-direct {v2, v0, v3}, Lcom/lua/bsh/NameSpace;-><init>(Lcom/lua/bsh/BshClassManager;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lua/bsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/lua/bsh/Interpreter;->c:Lcom/lua/bsh/This;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lua/bsh/NameSpace;

    const-string v2, "Bsh Shared System Object"

    invoke-direct {v1, v0, v2}, Lcom/lua/bsh/NameSpace;-><init>(Lcom/lua/bsh/BshClassManager;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v1

    sput-object v1, Lcom/lua/bsh/Interpreter;->c:Lcom/lua/bsh/This;

    :cond_0
    const-string v1, "bsh.system"

    sget-object v2, Lcom/lua/bsh/Interpreter;->c:Lcom/lua/bsh/This;

    invoke-virtual {p0, v1, v2}, Lcom/lua/bsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "bsh.shared"

    sget-object v2, Lcom/lua/bsh/Interpreter;->c:Lcom/lua/bsh/This;

    invoke-virtual {p0, v1, v2}, Lcom/lua/bsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "bsh.help"

    new-instance v2, Lcom/lua/bsh/NameSpace;

    const-string v3, "Bsh Command Help Text"

    invoke-direct {v2, v0, v3}, Lcom/lua/bsh/NameSpace;-><init>(Lcom/lua/bsh/BshClassManager;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/lua/bsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "bsh.cwd"

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lua/bsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "bsh.interactive"

    new-instance v1, Lcom/lua/bsh/Primitive;

    iget-boolean v2, p0, Lcom/lua/bsh/Interpreter;->p:Z

    invoke-direct {v1, v2}, Lcom/lua/bsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/lua/bsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bsh.evalOnly"

    new-instance v1, Lcom/lua/bsh/Primitive;

    iget-boolean v2, p0, Lcom/lua/bsh/Interpreter;->o:Z

    invoke-direct {v1, v2}, Lcom/lua/bsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/lua/bsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "bsh.cwd"

    const-string v1, "."

    invoke-virtual {p0, v0, v1}, Lcom/lua/bsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static invokeMain(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/lua/bsh/Interpreter;->d:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "[Ljava.lang.String;"

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/lua/bsh/Interpreter;->d:Ljava/lang/Class;

    :cond_0
    const-string v1, "main"

    new-array v2, v3, [Ljava/lang/Class;

    aput-object v0, v2, v4

    invoke-static {v5, p0, v1, v2, v3}, Lcom/lua/bsh/Reflect;->a(Lcom/lua/bsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    array-length v1, p0

    if-lez v1, :cond_3

    aget-object v2, p0, v4

    array-length v1, p0

    if-le v1, v5, :cond_1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Ljava/lang/String;

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v5, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v1

    :goto_0
    new-instance v1, Lcom/lua/bsh/Interpreter;

    invoke-direct {v1}, Lcom/lua/bsh/Interpreter;-><init>()V

    const-string v4, "bsh.args"

    invoke-virtual {v1, v4, v3}, Lcom/lua/bsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v4, v1, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v1, v2, v4}, Lcom/lua/bsh/Interpreter;->source(Ljava/lang/String;Lcom/lua/bsh/NameSpace;)Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lua/bsh/TargetError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/lua/bsh/EvalError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    :try_start_1
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/lua/bsh/Interpreter;->invokeMain(Ljava/lang/Class;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    move-object v3, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    instance-of v3, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, " main method threw exception:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/lua/bsh/TargetError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/lua/bsh/EvalError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "File not found: "

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "I/O Error: "

    goto :goto_2

    :catch_3
    move-exception v1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Evaluation Error: "

    goto :goto_2

    :catch_4
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Script threw exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/lua/bsh/TargetError;->inNativeCode()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2, v3}, Lcom/lua/bsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.1."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/lua/bsh/Interpreter$1;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lcom/lua/bsh/Interpreter$1;-><init>(Ljava/io/InputStream;)V

    :goto_3
    new-instance v2, Lcom/lua/bsh/Interpreter;

    new-instance v3, Lcom/lua/bsh/CommandLineReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Lcom/lua/bsh/CommandLineReader;-><init>(Ljava/io/Reader;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/lua/bsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;Z)V

    invoke-virtual {v2}, Lcom/lua/bsh/Interpreter;->run()V

    goto/16 :goto_1

    :cond_4
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    goto :goto_3
.end method

.method public static redirectOutputToFile(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t redirect output to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".bshrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    invoke-virtual {p0, v0, v1}, Lcom/lua/bsh/Interpreter;->source(Ljava/lang/String;Lcom/lua/bsh/NameSpace;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find rc file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/lua/bsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/lua/bsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lua/bsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final error(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->k:Lcom/lua/bsh/ConsoleInterface;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "// Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lua/bsh/ConsoleInterface;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->j:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "// Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->j:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    goto :goto_0
.end method

.method public eval(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    const-string v1, "eval stream"

    invoke-virtual {p0, p1, v0, v1}, Lcom/lua/bsh/Interpreter;->eval(Ljava/io/Reader;Lcom/lua/bsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/io/Reader;Lcom/lua/bsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    sget-boolean v1, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "eval: nameSpace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/lua/bsh/Interpreter;

    iget-object v3, p0, Lcom/lua/bsh/Interpreter;->i:Ljava/io/PrintStream;

    iget-object v4, p0, Lcom/lua/bsh/Interpreter;->j:Ljava/io/PrintStream;

    move-object v2, p1

    move-object v6, p2

    move-object v7, p0

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/lua/bsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLcom/lua/bsh/NameSpace;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)V

    new-instance v6, Lcom/lua/bsh/CallStack;

    invoke-direct {v6, p2}, Lcom/lua/bsh/CallStack;-><init>(Lcom/lua/bsh/NameSpace;)V

    move-object v3, v9

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    move-object v1, v3

    :goto_1
    invoke-static {v1}, Lcom/lua/bsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_2
    :try_start_0
    invoke-direct {v1}, Lcom/lua/bsh/Interpreter;->c()Z

    move-result v5

    invoke-direct {v1}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lua/bsh/JJTParserState;->a()I

    move-result v2

    if-lez v2, :cond_5

    invoke-direct {v1}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lua/bsh/JJTParserState;->d()Lcom/lua/bsh/Node;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    move-object v4, v0
    :try_end_0
    .catch Lcom/lua/bsh/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lua/bsh/InterpreterError; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/lua/bsh/TargetError; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/lua/bsh/EvalError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/lua/bsh/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, p3}, Lcom/lua/bsh/SimpleNode;->setSourceFile(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lua/bsh/Interpreter;->TRACE:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "// "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lcom/lua/bsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Interpreter;->println(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v4, v6, v1}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/lua/bsh/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/lua/bsh/InterpreterError; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lcom/lua/bsh/TargetError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/lua/bsh/EvalError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lcom/lua/bsh/TokenMgrError; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    invoke-virtual {v6}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v2

    if-gt v2, v10, :cond_7

    instance-of v2, v3, Lcom/lua/bsh/ReturnControl;

    if-eqz v2, :cond_4

    move-object v0, v3

    check-cast v0, Lcom/lua/bsh/ReturnControl;

    move-object v2, v0

    iget-object v2, v2, Lcom/lua/bsh/ReturnControl;->value:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/lua/bsh/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/lua/bsh/InterpreterError; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lcom/lua/bsh/TargetError; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lcom/lua/bsh/EvalError; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lcom/lua/bsh/TokenMgrError; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {v1}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->c()V

    invoke-virtual {v6}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v1

    if-le v1, v10, :cond_f

    invoke-virtual {v6}, Lcom/lua/bsh/CallStack;->clear()V

    invoke-virtual {v6, p2}, Lcom/lua/bsh/CallStack;->push(Lcom/lua/bsh/NameSpace;)V

    move-object v1, v2

    goto :goto_1

    :cond_4
    :try_start_3
    iget-boolean v2, v1, Lcom/lua/bsh/Interpreter;->q:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq v3, v2, :cond_5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "<"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v7, ">"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lua/bsh/Interpreter;->println(Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/lua/bsh/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/lua/bsh/InterpreterError; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lcom/lua/bsh/TargetError; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lcom/lua/bsh/EvalError; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lcom/lua/bsh/TokenMgrError; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    invoke-direct {v1}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lua/bsh/JJTParserState;->c()V

    invoke-virtual {v6}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v2

    if-le v2, v10, :cond_1

    move v2, v5

    :cond_6
    :goto_2
    invoke-virtual {v6}, Lcom/lua/bsh/CallStack;->clear()V

    invoke-virtual {v6, p2}, Lcom/lua/bsh/CallStack;->push(Lcom/lua/bsh/NameSpace;)V

    move v5, v2

    goto/16 :goto_0

    :cond_7
    :try_start_4
    new-instance v2, Lcom/lua/bsh/InterpreterError;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Callstack growing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Lcom/lua/bsh/ParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/lua/bsh/InterpreterError; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/lua/bsh/TargetError; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lcom/lua/bsh/EvalError; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lcom/lua/bsh/TokenMgrError; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v2

    :try_start_5
    sget-boolean v3, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    invoke-virtual {v2, v3}, Lcom/lua/bsh/ParseException;->getMessage(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Interpreter;->error(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v2, p3}, Lcom/lua/bsh/ParseException;->setErrorSourceFile(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    invoke-direct {v1}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->c()V

    invoke-virtual {v6}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v1

    if-le v1, v10, :cond_9

    invoke-virtual {v6}, Lcom/lua/bsh/CallStack;->clear()V

    invoke-virtual {v6, p2}, Lcom/lua/bsh/CallStack;->push(Lcom/lua/bsh/NameSpace;)V

    :cond_9
    throw v2

    :catch_1
    move-exception v2

    move v11, v5

    move-object v5, v2

    move v2, v11

    :goto_3
    :try_start_6
    sget-boolean v7, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v7, :cond_a

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    invoke-virtual {v5}, Lcom/lua/bsh/EvalError;->a()Lcom/lua/bsh/SimpleNode;

    move-result-object v7

    if-nez v7, :cond_b

    invoke-virtual {v5, v4}, Lcom/lua/bsh/EvalError;->a(Lcom/lua/bsh/SimpleNode;)V

    :cond_b
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/lua/bsh/EvalError;->reThrow(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-direct {v1}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lua/bsh/JJTParserState;->c()V

    invoke-virtual {v6}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v4

    if-gt v4, v10, :cond_6

    :cond_c
    move v5, v2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    move v11, v5

    move-object v5, v2

    move v2, v11

    :goto_4
    :try_start_7
    invoke-virtual {v5}, Lcom/lua/bsh/EvalError;->a()Lcom/lua/bsh/SimpleNode;

    move-result-object v7

    if-nez v7, :cond_d

    invoke-virtual {v5, v4}, Lcom/lua/bsh/EvalError;->a(Lcom/lua/bsh/SimpleNode;)V

    :cond_d
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/lua/bsh/EvalError;->reThrow(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-direct {v1}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lua/bsh/JJTParserState;->c()V

    invoke-virtual {v6}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v4

    if-le v4, v10, :cond_c

    goto/16 :goto_2

    :catch_3
    move-exception v2

    move-object v4, v9

    :goto_5
    :try_start_8
    new-instance v3, Lcom/lua/bsh/EvalError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " Token Parsing Error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lcom/lua/bsh/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v4, v6}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v3

    :catch_4
    move-exception v2

    move-object v4, v9

    :goto_6
    sget-boolean v3, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    new-instance v3, Lcom/lua/bsh/EvalError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " unknown error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v4, v6}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v3

    :catch_5
    move-exception v2

    move-object v4, v9

    move v11, v5

    move-object v5, v2

    move v2, v11

    goto/16 :goto_3

    :catch_6
    move-exception v2

    move-object v4, v9

    move v11, v5

    move-object v5, v2

    move v2, v11

    goto/16 :goto_4

    :catch_7
    move-exception v2

    move-object v4, v9

    :goto_7
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    new-instance v3, Lcom/lua/bsh/EvalError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " internal Error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v4, v6}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_f
    move-object v1, v2

    goto/16 :goto_1

    :catch_8
    move-exception v2

    move v11, v5

    move-object v5, v2

    move v2, v11

    goto/16 :goto_3

    :catch_9
    move-exception v2

    move v11, v5

    move-object v5, v2

    move v2, v11

    goto/16 :goto_4

    :catch_a
    move-exception v2

    goto :goto_7

    :catch_b
    move-exception v2

    goto :goto_6

    :catch_c
    move-exception v2

    goto/16 :goto_5
.end method

.method public eval(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    sget-boolean v0, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "eval(String): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    invoke-virtual {p0, p1, v0}, Lcom/lua/bsh/Interpreter;->eval(Ljava/lang/String;Lcom/lua/bsh/NameSpace;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/lang/String;Lcom/lua/bsh/NameSpace;)Ljava/lang/Object;
    .locals 3

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "inline evaluation of: ``"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lcom/lua/bsh/Interpreter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\'\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/lua/bsh/Interpreter;->eval(Ljava/io/Reader;Lcom/lua/bsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v0, p1, p0}, Lcom/lua/bsh/NameSpace;->get(Ljava/lang/String;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/lua/bsh/SimpleNode;->JAVACODE:Lcom/lua/bsh/SimpleNode;

    new-instance v2, Lcom/lua/bsh/CallStack;

    invoke-direct {v2}, Lcom/lua/bsh/CallStack;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method public getClassManager()Lcom/lua/bsh/BshClassManager;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/Interpreter;->getNameSpace()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/bsh/NameSpace;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v0

    return-object v0
.end method

.method public getErr()Ljava/io/PrintStream;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->j:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getIn()Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->h:Ljava/io/Reader;

    return-object v0
.end method

.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v0, p0}, Lcom/lua/bsh/NameSpace;->a(Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lua/bsh/This;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/lua/bsh/SimpleNode;->JAVACODE:Lcom/lua/bsh/SimpleNode;

    new-instance v2, Lcom/lua/bsh/CallStack;

    invoke-direct {v2}, Lcom/lua/bsh/CallStack;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method public getNameSpace()Lcom/lua/bsh/NameSpace;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    return-object v0
.end method

.method public getOut()Ljava/io/PrintStream;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->i:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getParent()Lcom/lua/bsh/Interpreter;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->l:Lcom/lua/bsh/Interpreter;

    return-object v0
.end method

.method public getShowResults()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lua/bsh/Interpreter;->q:Z

    return v0
.end method

.method public getSourceFileInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<unknown source>"

    goto :goto_0
.end method

.method public getStrictJava()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lua/bsh/Interpreter;->e:Z

    return v0
.end method

.method public pathToFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "bsh.cwd"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Interpreter;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final print(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->k:Lcom/lua/bsh/ConsoleInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/lua/bsh/ConsoleInterface;->print(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->i:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->i:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    goto :goto_0
.end method

.method public final println(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/lua/bsh/Interpreter;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Interpreter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/lua/bsh/Interpreter;->o:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/lua/bsh/Interpreter;->p:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "printBanner();"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v5, Lcom/lua/bsh/CallStack;

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    invoke-direct {v5, v0}, Lcom/lua/bsh/CallStack;-><init>(Lcom/lua/bsh/NameSpace;)V

    move v1, v4

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/lua/bsh/Interpreter;->p:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/lua/bsh/Interpreter;->n:Z

    if-eqz v0, :cond_2

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v0, "BeanShell 2.0b4 - by Pat Niemeyer (pat@pat.net)"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Interpreter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-boolean v0, p0, Lcom/lua/bsh/Interpreter;->p:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/lua/bsh/Interpreter;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Interpreter;->print(Ljava/lang/Object;)V

    :cond_4
    invoke-direct {p0}, Lcom/lua/bsh/Interpreter;->c()Z
    :try_end_1
    .catch Lcom/lua/bsh/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/lua/bsh/InterpreterError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/lua/bsh/TargetError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/lua/bsh/EvalError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/lua/bsh/TokenMgrError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    invoke-direct {p0}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/bsh/JJTParserState;->a()I

    move-result v0

    if-lez v0, :cond_7

    invoke-direct {p0}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/bsh/JJTParserState;->d()Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    sget-boolean v3, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, ">"

    invoke-virtual {v0, v3}, Lcom/lua/bsh/SimpleNode;->dump(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, v5, p0}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v3

    if-gt v3, v2, :cond_9

    instance-of v3, v0, Lcom/lua/bsh/ReturnControl;

    if-eqz v3, :cond_6

    check-cast v0, Lcom/lua/bsh/ReturnControl;

    iget-object v0, v0, Lcom/lua/bsh/ReturnControl;->value:Ljava/lang/Object;

    :cond_6
    sget-object v3, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq v0, v3, :cond_7

    const-string v3, "$_"

    invoke-virtual {p0, v3, v0}, Lcom/lua/bsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/lua/bsh/Interpreter;->q:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "<"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ">"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Interpreter;->println(Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/lua/bsh/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/lua/bsh/InterpreterError; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/lua/bsh/TargetError; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/lua/bsh/EvalError; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lcom/lua/bsh/TokenMgrError; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    invoke-direct {p0}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/bsh/JJTParserState;->c()V

    invoke-virtual {v5}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v0

    if-le v0, v2, :cond_1

    move v0, v1

    :cond_8
    :goto_2
    invoke-virtual {v5}, Lcom/lua/bsh/CallStack;->clear()V

    iget-object v1, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v5, v1}, Lcom/lua/bsh/CallStack;->push(Lcom/lua/bsh/NameSpace;)V

    move v1, v0

    goto/16 :goto_1

    :cond_9
    :try_start_3
    new-instance v0, Lcom/lua/bsh/InterpreterError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Callstack growing: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/lua/bsh/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/lua/bsh/InterpreterError; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/lua/bsh/TargetError; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/lua/bsh/EvalError; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lcom/lua/bsh/TokenMgrError; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Parser Error: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    invoke-virtual {v0, v6}, Lcom/lua/bsh/ParseException;->getMessage(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Interpreter;->error(Ljava/lang/Object;)V

    sget-boolean v3, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    iget-boolean v0, p0, Lcom/lua/bsh/Interpreter;->p:Z

    if-nez v0, :cond_17

    move v0, v2

    :goto_3
    iget-object v1, p0, Lcom/lua/bsh/Interpreter;->f:Lcom/lua/bsh/Parser;

    iget-object v3, p0, Lcom/lua/bsh/Interpreter;->h:Ljava/io/Reader;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/Parser;->a(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-direct {p0}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->c()V

    invoke-virtual {v5}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v1

    if-gt v1, v2, :cond_8

    :cond_b
    move v1, v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_4
    :try_start_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Error parsing input: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lua/bsh/Interpreter;->error(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/lua/bsh/Interpreter;->f:Lcom/lua/bsh/Parser;

    iget-object v3, p0, Lcom/lua/bsh/Interpreter;->h:Ljava/io/Reader;

    invoke-virtual {v1, v3}, Lcom/lua/bsh/Parser;->b(Ljava/io/Reader;)V

    iget-boolean v1, p0, Lcom/lua/bsh/Interpreter;->p:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_c

    move v0, v2

    :cond_c
    invoke-direct {p0}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->c()V

    invoke-virtual {v5}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v1

    if-le v1, v2, :cond_b

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_5
    :try_start_6
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unknown error: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Interpreter;->error(Ljava/lang/Object;)V

    sget-boolean v3, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    iget-boolean v1, p0, Lcom/lua/bsh/Interpreter;->p:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v1, :cond_e

    move v0, v2

    :cond_e
    invoke-direct {p0}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->c()V

    invoke-virtual {v5}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v1

    if-le v1, v2, :cond_b

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move-object v3, v0

    move v0, v1

    :goto_6
    :try_start_7
    iget-boolean v1, p0, Lcom/lua/bsh/Interpreter;->p:Z

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "EvalError: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/lua/bsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {p0, v1}, Lcom/lua/bsh/Interpreter;->error(Ljava/lang/Object;)V

    sget-boolean v1, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_f

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    iget-boolean v1, p0, Lcom/lua/bsh/Interpreter;->p:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v1, :cond_10

    move v0, v2

    :cond_10
    invoke-direct {p0}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->c()V

    invoke-virtual {v5}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v1

    if-le v1, v2, :cond_b

    goto/16 :goto_2

    :cond_11
    :try_start_8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "EvalError: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/lua/bsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    :goto_8
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "// Uncaught Exception: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Interpreter;->error(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/lua/bsh/TargetError;->inNativeCode()Z

    move-result v3

    if-eqz v3, :cond_12

    sget-boolean v3, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    iget-object v6, p0, Lcom/lua/bsh/Interpreter;->j:Ljava/io/PrintStream;

    invoke-virtual {v1, v3, v6}, Lcom/lua/bsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    :cond_12
    iget-boolean v3, p0, Lcom/lua/bsh/Interpreter;->p:Z

    if-nez v3, :cond_13

    move v0, v2

    :cond_13
    const-string v3, "$_e"

    invoke-virtual {v1}, Lcom/lua/bsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/lua/bsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-direct {p0}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->c()V

    invoke-virtual {v5}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v1

    if-le v1, v2, :cond_b

    goto/16 :goto_2

    :catch_6
    move-exception v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_9
    :try_start_9
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Internal Error: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lua/bsh/Interpreter;->error(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    iget-boolean v1, p0, Lcom/lua/bsh/Interpreter;->p:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v1, :cond_14

    move v0, v2

    :cond_14
    invoke-direct {p0}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->c()V

    invoke-virtual {v5}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v1

    if-le v1, v2, :cond_b

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/lua/bsh/Interpreter;->e()Lcom/lua/bsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lua/bsh/JJTParserState;->c()V

    invoke-virtual {v5}, Lcom/lua/bsh/CallStack;->depth()I

    move-result v1

    if-le v1, v2, :cond_15

    invoke-virtual {v5}, Lcom/lua/bsh/CallStack;->clear()V

    iget-object v1, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v5, v1}, Lcom/lua/bsh/CallStack;->push(Lcom/lua/bsh/NameSpace;)V

    :cond_15
    throw v0

    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bsh Interpreter: No stream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_7
    move-exception v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_9

    :catch_8
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto/16 :goto_8

    :catch_9
    move-exception v0

    move-object v3, v0

    move v0, v1

    goto/16 :goto_6

    :catch_a
    move-exception v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto/16 :goto_5

    :catch_b
    move-exception v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto/16 :goto_4

    :cond_17
    move v0, v1

    goto/16 :goto_3
.end method

.method public set(Ljava/lang/String;D)V
    .locals 2

    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-direct {v0, p2, p3}, Lcom/lua/bsh/Primitive;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/lua/bsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;F)V
    .locals 1

    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-direct {v0, p2}, Lcom/lua/bsh/Primitive;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Lcom/lua/bsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-direct {v0, p2}, Lcom/lua/bsh/Primitive;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/lua/bsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-direct {v0, p2, p3}, Lcom/lua/bsh/Primitive;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/lua/bsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-nez p2, :cond_0

    sget-object p2, Lcom/lua/bsh/Primitive;->NULL:Lcom/lua/bsh/Primitive;

    :cond_0
    new-instance v1, Lcom/lua/bsh/CallStack;

    invoke-direct {v1}, Lcom/lua/bsh/CallStack;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/lua/bsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v0, p1}, Lcom/lua/bsh/NameSpace;->b(Ljava/lang/String;)Lcom/lua/bsh/Name;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/lua/bsh/Name;->toLHS(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/LHS;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/lua/bsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2}, Lcom/lua/bsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/lua/bsh/SimpleNode;->JAVACODE:Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v0, v2, v1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method public set(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/lua/bsh/Primitive;

    invoke-direct {v0, p2}, Lcom/lua/bsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/lua/bsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/Interpreter;->getClassManager()Lcom/lua/bsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lua/bsh/BshClassManager;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public setConsole(Lcom/lua/bsh/ConsoleInterface;)V
    .locals 1

    iput-object p1, p0, Lcom/lua/bsh/Interpreter;->k:Lcom/lua/bsh/ConsoleInterface;

    const-string v0, "bsh.console"

    invoke-virtual {p0, v0, p1}, Lcom/lua/bsh/Interpreter;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/lua/bsh/ConsoleInterface;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Interpreter;->setOut(Ljava/io/PrintStream;)V

    invoke-interface {p1}, Lcom/lua/bsh/ConsoleInterface;->getErr()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/Interpreter;->setErr(Ljava/io/PrintStream;)V

    return-void
.end method

.method public setErr(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/Interpreter;->j:Ljava/io/PrintStream;

    return-void
.end method

.method public setExitOnEOF(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lua/bsh/Interpreter;->n:Z

    return-void
.end method

.method public setNameSpace(Lcom/lua/bsh/NameSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    return-void
.end method

.method public setOut(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/Interpreter;->i:Ljava/io/PrintStream;

    return-void
.end method

.method public setShowResults(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lua/bsh/Interpreter;->q:Z

    return-void
.end method

.method public setStrictJava(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lua/bsh/Interpreter;->e:Z

    return-void
.end method

.method public source(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    invoke-virtual {p0, p1, v0}, Lcom/lua/bsh/Interpreter;->source(Ljava/lang/String;Lcom/lua/bsh/NameSpace;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public source(Ljava/lang/String;Lcom/lua/bsh/NameSpace;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/lua/bsh/Interpreter;->pathToFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-boolean v1, Lcom/lua/bsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Sourcing file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lua/bsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {p0, v1, p2, p1}, Lcom/lua/bsh/Interpreter;->eval(Ljava/io/Reader;Lcom/lua/bsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
.end method

.method public unset(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/lua/bsh/CallStack;

    invoke-direct {v0}, Lcom/lua/bsh/CallStack;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/lua/bsh/Interpreter;->g:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v1, p1}, Lcom/lua/bsh/NameSpace;->b(Ljava/lang/String;)Lcom/lua/bsh/Name;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/lua/bsh/Name;->toLHS(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/LHS;

    move-result-object v0

    iget v1, v0, Lcom/lua/bsh/LHS;->c:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/lua/bsh/LHS;->a:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v0, p1}, Lcom/lua/bsh/NameSpace;->unsetVariable(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/lua/bsh/EvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t unset, not a variable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/lua/bsh/SimpleNode;->JAVACODE:Lcom/lua/bsh/SimpleNode;

    new-instance v3, Lcom/lua/bsh/CallStack;

    invoke-direct {v3}, Lcom/lua/bsh/CallStack;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/lua/bsh/EvalError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/lua/bsh/SimpleNode;->JAVACODE:Lcom/lua/bsh/SimpleNode;

    new-instance v3, Lcom/lua/bsh/CallStack;

    invoke-direct {v3}, Lcom/lua/bsh/CallStack;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1
.end method
