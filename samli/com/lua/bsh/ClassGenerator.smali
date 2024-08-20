.class public abstract Lcom/lua/bsh/ClassGenerator;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lua/bsh/ClassGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassGenerator()Lcom/lua/bsh/ClassGenerator;
    .locals 3

    sget-object v0, Lcom/lua/bsh/ClassGenerator;->a:Lcom/lua/bsh/ClassGenerator;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "bsh.ClassGeneratorImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/ClassGenerator;

    sput-object v0, Lcom/lua/bsh/ClassGenerator;->a:Lcom/lua/bsh/ClassGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v0, Lcom/lua/bsh/ClassGenerator;->a:Lcom/lua/bsh/ClassGenerator;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "ClassGenerator unavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/Capabilities$Unavailable;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/Capabilities$Unavailable;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract generateClass(Ljava/lang/String;Lcom/lua/bsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lcom/lua/bsh/BSHBlock;ZLcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;
.end method

.method public abstract invokeSuperclassMethod(Lcom/lua/bsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setInstanceNameSpaceParent(Ljava/lang/Object;Ljava/lang/String;Lcom/lua/bsh/NameSpace;)V
.end method
