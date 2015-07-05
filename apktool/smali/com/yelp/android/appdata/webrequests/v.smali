.class public Lcom/yelp/android/appdata/webrequests/v;
.super Lcom/yelp/android/av/g;
.source "BusinessCategorySuggestRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/BusinessCategorySuggest;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "business/category_suggest"

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 20
    const-string/jumbo v0, "term"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/v;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    const-string/jumbo v0, "country_code"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/v;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessCategorySuggest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    const-string/jumbo v0, "suggestions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/BusinessCategorySuggest;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/v;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
