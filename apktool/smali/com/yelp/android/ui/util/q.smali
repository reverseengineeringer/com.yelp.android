.class public Lcom/yelp/android/ui/util/q;
.super Ljava/lang/Object;
.source "DFPUtils.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public static a(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
    .locals 6

    .prologue
    .line 36
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 37
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 49
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    instance-of v4, v1, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 51
    check-cast v1, Lorg/json/JSONArray;

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "\""

    const-string/jumbo v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    sget-object v0, Lcom/yelp/android/ui/util/q;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/yelp/android/appdata/Features;->dfp_advertising_hash:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    const-string/jumbo v0, "adid"

    sget-object v1, Lcom/yelp/android/ui/util/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    new-instance v1, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lcom/yelp/android/ui/util/q;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/yelp/android/ui/util/r;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/r;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method
