.class public Lcom/yelp/android/appdata/webrequests/eq;
.super Lcom/yelp/android/av/g;
.source "ReverseGeocodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/er;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(DDLcom/yelp/android/appdata/webrequests/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/er;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "geocode/reverse"

    invoke-direct {p0, v0, v1, p5}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 25
    const-string/jumbo v0, "latitude"

    invoke-virtual {p0, v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/eq;->addUrlParam(Ljava/lang/String;D)V

    .line 26
    const-string/jumbo v0, "longitude"

    invoke-virtual {p0, v0, p3, p4}, Lcom/yelp/android/appdata/webrequests/eq;->addUrlParam(Ljava/lang/String;D)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/er;
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    sget-object v0, Lcom/yelp/android/serializable/Location;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Location;

    .line 36
    :cond_0
    const-string/jumbo v1, "yelp_available"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 38
    new-instance v2, Lcom/yelp/android/appdata/webrequests/er;

    invoke-direct {v2, v0, v1}, Lcom/yelp/android/appdata/webrequests/er;-><init>(Lcom/yelp/android/serializable/Location;Z)V

    return-object v2
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/eq;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/er;

    move-result-object v0

    return-object v0
.end method
