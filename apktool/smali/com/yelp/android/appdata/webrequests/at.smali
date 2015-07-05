.class public Lcom/yelp/android/appdata/webrequests/at;
.super Lcom/yelp/android/av/g;
.source "ClientRegisterApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "client/register"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 25
    if-nez p1, :cond_0

    .line 26
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object p1

    .line 29
    :cond_0
    if-eqz p1, :cond_1

    .line 30
    const-string/jumbo v0, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/at;->addPostParam(Ljava/lang/String;D)V

    .line 31
    const-string/jumbo v0, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/at;->addPostParam(Ljava/lang/String;D)V

    .line 32
    const-string/jumbo v0, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/at;->addPostParam(Ljava/lang/String;D)V

    .line 35
    :cond_1
    const-string/jumbo v0, "gcm_registration_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/at;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/at;->a(Lorg/json/JSONObject;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
