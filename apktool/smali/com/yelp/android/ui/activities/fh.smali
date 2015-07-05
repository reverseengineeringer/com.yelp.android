.class Lcom/yelp/android/ui/activities/fh;
.super Lcom/facebook/TokenCachingStrategy;
.source "FacebookConnectManager.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/facebook/TokenCachingStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/fc;)V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/fh;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 544
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->x()V

    .line 545
    return-void
.end method

.method public load()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 531
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->t()Landroid/util/Pair;

    move-result-object v1

    .line 533
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 534
    const-string/jumbo v3, "com.facebook.TokenCachingStrategy.Token"

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string/jumbo v3, "com.facebook.TokenCachingStrategy.ExpirationDate"

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 536
    return-object v2
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 521
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    const-string/jumbo v1, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/i;->a(Ljava/lang/String;J)Z

    .line 523
    return-void
.end method
