.class public Lcom/yelp/android/appdata/webrequests/gg;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "UserAlertsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/AlertsResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/serializable/AlertsResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "user/alerts_v2"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/gg;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/j;)V

    .line 30
    return-void

    .line 28
    :cond_0
    const-string/jumbo v0, "alerts_v2"

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/serializable/AlertsResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->COARSE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->DAY:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 35
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/gg;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/serializable/AlertsResponse;",
            ">;)",
            "Lcom/yelp/android/appdata/webrequests/gg;"
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 20
    new-instance v2, Lcom/yelp/android/appdata/webrequests/gg;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lcom/yelp/android/appdata/webrequests/gg;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/j;)V

    .line 21
    invoke-static {v1}, Lcom/yelp/android/util/m;->a(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/yelp/android/appdata/webrequests/gg;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_0
    return-object v2
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/AlertsResponse;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/yelp/android/serializable/AlertsResponse;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v0, p1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertsResponse;

    return-object v0
.end method

.method public isLocationAbsolutelyRequired()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/gg;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/AlertsResponse;

    move-result-object v0

    return-object v0
.end method
