.class public Lcom/androlua/LuaPreferenceFragment;
.super Landroid/preference/PreferenceFragment;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private a:Lcom/luajava/LuaTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private c:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaTable;)V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaPreferenceFragment;->a:Lcom/luajava/LuaTable;

    return-void
.end method

.method private a(Lcom/luajava/LuaTable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {p1}, Lcom/luajava/LuaTable;->length()I

    move-result v5

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v6

    move v3, v0

    :goto_0
    if-gt v3, v5, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaTable;

    const-wide/16 v8, 0x1

    :try_start_0
    invoke-virtual {v0, v8, v9}, Lcom/luajava/LuaObject;->getI(J)Lcom/luajava/LuaObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->isNil()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-virtual {v1, v2}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaTable$LuaEntry;

    invoke-virtual {v0}, Lcom/luajava/LuaTable$LuaEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    instance-of v8, v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_0

    :try_start_1
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/luajava/LuaTable$LuaEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v1, v2, v0}, Lcom/luajava/LuaJavaAPI;->javaSetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v6}, Lcom/luajava/LuaState;->getContext()Lcom/androlua/LuaContext;

    move-result-object v1

    const-string v2, "LuaPreferenceFragment"

    invoke-interface {v1, v2, v0}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fist value Must be a Class<Preference>, checked import package."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->setStorageDeviceProtected()V

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/androlua/LuaPreferenceFragment;->a:Lcom/luajava/LuaTable;

    invoke-direct {p0, v0}, Lcom/androlua/LuaPreferenceFragment;->a(Lcom/luajava/LuaTable;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaPreferenceFragment;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaPreferenceFragment;->c:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaPreferenceFragment;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaPreferenceFragment;->c:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public setPreference(Lcom/luajava/LuaTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/androlua/LuaPreferenceFragment;->a:Lcom/luajava/LuaTable;

    return-void
.end method
