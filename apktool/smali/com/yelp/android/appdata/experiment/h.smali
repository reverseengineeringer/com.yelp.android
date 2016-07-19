.class public Lcom/yelp/android/appdata/experiment/h;
.super Ljava/lang/Object;
.source "PreferenceStringValueStorage.java"

# interfaces
.implements Lcom/yelp/android/appdata/experiment/i;


# static fields
.field public static a:Lcom/yelp/android/appdata/experiment/h;

.field public static b:Lcom/yelp/android/appdata/experiment/h;

.field public static c:Lcom/yelp/android/appdata/experiment/h;

.field public static d:Lcom/yelp/android/appdata/experiment/h;


# instance fields
.field private final e:Ljava/lang/String;

.field private f:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/yelp/android/appdata/experiment/h;

    const-string/jumbo v1, "ExperimentsSelected"

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/experiment/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/h;->a:Lcom/yelp/android/appdata/experiment/h;

    .line 21
    new-instance v0, Lcom/yelp/android/appdata/experiment/h;

    const-string/jumbo v1, "Experiment"

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/experiment/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/h;->b:Lcom/yelp/android/appdata/experiment/h;

    .line 23
    new-instance v0, Lcom/yelp/android/appdata/experiment/h;

    const-string/jumbo v1, "local_experiment"

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/experiment/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/h;->c:Lcom/yelp/android/appdata/experiment/h;

    .line 25
    new-instance v0, Lcom/yelp/android/appdata/experiment/h;

    const-string/jumbo v1, "Features"

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/experiment/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/h;->d:Lcom/yelp/android/appdata/experiment/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yelp/android/appdata/experiment/h;->e:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private a()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/appdata/experiment/h;->f:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/appdata/experiment/h;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/experiment/h;->f:Landroid/content/SharedPreferences;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/experiment/h;->f:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private b()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/yelp/android/appdata/experiment/h;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/yelp/android/appdata/experiment/h;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yelp/android/appdata/experiment/h;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/yelp/android/appdata/l;

    iget-object v1, p0, Lcom/yelp/android/appdata/experiment/h;->e:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/appdata/l;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/l;->b([Ljava/lang/Object;)Lcom/yelp/android/util/q;

    .line 53
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/yelp/android/appdata/experiment/h;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    return-void
.end method
