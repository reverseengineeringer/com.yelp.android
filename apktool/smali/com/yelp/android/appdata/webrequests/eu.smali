.class public Lcom/yelp/android/appdata/webrequests/eu;
.super Lcom/yelp/android/av/g;
.source "ReviewHighlightListRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/ev;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ev;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "reviews/highlights"

    invoke-direct {p0, v0, v1, p5}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 21
    if-gtz p3, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Limit cannot be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    if-gez p2, :cond_1

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "BusinessId cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_2
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/eu;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/eu;->addUrlParam(Ljava/lang/String;I)V

    .line 32
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/eu;->addUrlParam(Ljava/lang/String;I)V

    .line 34
    if-eqz p4, :cond_3

    invoke-interface {p4}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getSearchTerms()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 35
    const-string/jumbo v0, "search_query"

    invoke-interface {p4}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getSearchTerms()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/eu;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_3
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ev;
    .locals 3

    .prologue
    .line 42
    const-string/jumbo v0, "review_highlights"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/ReviewHighlight;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    .line 44
    const-string/jumbo v1, "total"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 45
    new-instance v2, Lcom/yelp/android/appdata/webrequests/ev;

    invoke-direct {v2, v0, v1}, Lcom/yelp/android/appdata/webrequests/ev;-><init>(Ljava/util/ArrayList;I)V

    return-object v2
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/eu;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ev;

    move-result-object v0

    return-object v0
.end method
