.class public Lcom/yelp/android/appdata/webrequests/ak;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "CheckInRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/YelpCheckIn;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpCheckIn;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "check_in"

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 27
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/ak;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    if-eqz p2, :cond_0

    .line 29
    const-string/jumbo v0, "comment"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/ak;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 1

    .prologue
    .line 51
    invoke-static {p1, p0}, Lcom/yelp/android/serializable/YelpCheckIn;->checkInFromJSONResponse(Lorg/json/JSONObject;Lcom/yelp/android/av/g;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 36
    const-string/jumbo v1, "request_id"

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ak;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusinessId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v1, "lyi71l"

    invoke-static {v1}, Lcom/adjust/sdk/e;->a(Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->CheckedIn:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 41
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ak;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 42
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ak;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-super {p0, v0}, Lcom/yelp/android/appdata/webrequests/h;->onSuccess(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method protected synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ak;->a(Lcom/yelp/android/serializable/YelpCheckIn;)V

    return-void
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ak;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    return-object v0
.end method
