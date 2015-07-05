.class public Lcom/yelp/android/appdata/webrequests/dw;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "NearbyTalkTopicsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/dx;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/yelp/android/appdata/webrequests/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "talk/topics/nearby"

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->COARSE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->DAY:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->METERS:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 37
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/dw;->addUrlParam(Ljava/lang/String;I)V

    .line 38
    const-string/jumbo v0, "limit"

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/dw;->addUrlParam(Ljava/lang/String;I)V

    .line 39
    const-string/jumbo v0, "address"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/dw;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/dw;->a:Z

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/dx;
    .locals 4

    .prologue
    .line 51
    const-string/jumbo v0, "topics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/TalkTopic;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    .line 53
    const-string/jumbo v1, "total"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 54
    const-string/jumbo v2, "talk_location_prompt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    new-instance v3, Lcom/yelp/android/appdata/webrequests/dx;

    invoke-direct {v3, v0, v2, v1}, Lcom/yelp/android/appdata/webrequests/dx;-><init>(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-object v3
.end method

.method public isLocationAbsolutelyRequired()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/dw;->a:Z

    return v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/dw;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/dx;

    move-result-object v0

    return-object v0
.end method
