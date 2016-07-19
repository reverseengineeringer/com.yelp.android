.class public Lcom/yelp/android/appdata/webrequests/LocalIssueRequest;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "LocalIssueRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/LocalIssueRequest$IdType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/core/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/LocalIssueResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/LocalIssueRequest$IdType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/LocalIssueRequest$IdType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/LocalIssueResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    sget-object v0, Lcom/yelp/android/appdata/webrequests/LocalIssueRequest$IdType;->MARKET_ID:Lcom/yelp/android/appdata/webrequests/LocalIssueRequest$IdType;

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "weekly"

    :goto_0
    invoke-direct {p0, v1, v0, p3}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 21
    sget-object v0, Lcom/yelp/android/appdata/webrequests/LocalIssueRequest$IdType;->MARKET_ID:Lcom/yelp/android/appdata/webrequests/LocalIssueRequest$IdType;

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "market_id"

    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/LocalIssueRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void

    .line 20
    :cond_0
    const-string/jumbo v0, "weekly/issue"

    goto :goto_0

    .line 21
    :cond_1
    const-string/jumbo v0, "id"

    goto :goto_1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/LocalIssueResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    sget-object v0, Lcom/yelp/android/serializable/LocalIssueResponse;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v0, p1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalIssueResponse;

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
    .line 12
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/LocalIssueRequest;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/LocalIssueResponse;

    move-result-object v0

    return-object v0
.end method
