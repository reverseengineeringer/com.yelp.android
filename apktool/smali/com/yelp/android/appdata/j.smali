.class public Lcom/yelp/android/appdata/j;
.super Ljava/lang/Object;
.source "ApplicationSettingsBase.java"


# instance fields
.field protected final a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field protected final b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/yelp/android/appdata/j;->b:Landroid/content/Context;

    .line 42
    new-instance v0, Lcom/yelp/android/util/c;

    invoke-direct {v0, p1}, Lcom/yelp/android/util/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/j;->a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/j;->d:Z

    .line 44
    return-void
.end method

.method private a()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/appdata/j;->b:Landroid/content/Context;

    const-string/jumbo v1, "HowdyPartna"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected Z()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yelp/android/appdata/j;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/appdata/j;->b:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    return v1
.end method

.method public a(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/util/PlatformQualifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yelp/android/appdata/j;->b:Landroid/content/Context;

    const-string/jumbo v1, "cred"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    if-eqz p2, :cond_0

    .line 95
    new-instance v1, Ljava/lang/String;

    invoke-static {p2}, Lcom/yelp/android/services/a;->a([B)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public aa()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/appdata/j;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "partnerXref"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ab()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/yelp/android/appdata/j;->d:Z

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/yelp/android/appdata/j;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "preinstalled_cohort"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/j;->c:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/j;->d:Z

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/yelp/android/appdata/j;->b:Landroid/content/Context;

    const-string/jumbo v2, "cred"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 88
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/yelp/android/services/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method
