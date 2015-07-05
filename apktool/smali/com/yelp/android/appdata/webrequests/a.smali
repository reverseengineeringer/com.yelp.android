.class public Lcom/yelp/android/appdata/webrequests/a;
.super Lcom/yelp/android/av/g;
.source "AccountConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "account/config"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 13
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a:Lcom/yelp/android/serializable/az;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/az;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/RemoteConfigPreferences;

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/a;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    return-object v0
.end method
