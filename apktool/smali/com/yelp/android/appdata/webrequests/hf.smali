.class public Lcom/yelp/android/appdata/webrequests/hf;
.super Lcom/yelp/android/av/g;
.source "WeeklyIssueRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/WeeklyIssueResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/WeeklyIssueResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "weekly"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 16
    const-string/jumbo v0, "market_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/hf;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/WeeklyIssueResponse;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/yelp/android/serializable/WeeklyIssueResponse;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v0, p1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/WeeklyIssueResponse;

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/hf;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/WeeklyIssueResponse;

    move-result-object v0

    return-object v0
.end method
