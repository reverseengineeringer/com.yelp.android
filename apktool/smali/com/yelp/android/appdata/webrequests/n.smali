.class public Lcom/yelp/android/appdata/webrequests/n;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "BackgroundLocationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/core/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/BackgroundLocationResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(DDFZ)V
    .locals 5

    .prologue
    .line 19
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "/location/update"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 20
    const-string/jumbo v0, "latitude"

    invoke-virtual {p0, v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/n;->a(Ljava/lang/String;D)V

    .line 21
    const-string/jumbo v0, "longitude"

    invoke-virtual {p0, v0, p3, p4}, Lcom/yelp/android/appdata/webrequests/n;->a(Ljava/lang/String;D)V

    .line 22
    const-string/jumbo v0, "accuracy"

    float-to-double v2, p5

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/n;->a(Ljava/lang/String;D)V

    .line 23
    const-string/jumbo v0, "is_stationary"

    invoke-virtual {p0, v0, p6}, Lcom/yelp/android/appdata/webrequests/n;->a(Ljava/lang/String;Z)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/BackgroundLocationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/yelp/android/serializable/BackgroundLocationResponse;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v0, p1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BackgroundLocationResponse;

    return-object v0
.end method

.method public synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/n;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/BackgroundLocationResponse;

    move-result-object v0

    return-object v0
.end method
