.class public Lcom/lua/b/b/a/b/v;
.super Ljava/lang/Exception;


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/lua/b/b/a/b/v;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TextWarrior assertion failed: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "lua"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
