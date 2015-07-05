.class public Lcom/yelp/android/appdata/experiment/e;
.super Ljava/lang/Object;
.source "PreferenceStringValueStorage.java"

# interfaces
.implements Lcom/yelp/android/appdata/experiment/f;


# static fields
.field public static a:Lcom/yelp/android/appdata/experiment/e;

.field public static b:Lcom/yelp/android/appdata/experiment/e;

.field public static c:Lcom/yelp/android/appdata/experiment/e;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/yelp/android/appdata/experiment/e;

    const-string/jumbo v1, "Experiment"

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/experiment/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/e;->a:Lcom/yelp/android/appdata/experiment/e;

    .line 20
    new-instance v0, Lcom/yelp/android/appdata/experiment/e;

    const-string/jumbo v1, "local_experiment"

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/experiment/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/e;->b:Lcom/yelp/android/appdata/experiment/e;

    .line 22
    new-instance v0, Lcom/yelp/android/appdata/experiment/e;

    const-string/jumbo v1, "Features"

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/experiment/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/e;->c:Lcom/yelp/android/appdata/experiment/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yelp/android/appdata/experiment/e;->d:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private a()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 32
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/appdata/experiment/e;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yelp/android/appdata/experiment/e;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 37
    new-instance v0, Lcom/yelp/android/appdata/ae;

    iget-object v1, p0, Lcom/yelp/android/appdata/experiment/e;->d:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/appdata/ae;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/ae;->b([Ljava/lang/Object;)Lcom/yelp/android/util/aa;

    .line 38
    return-void
.end method
