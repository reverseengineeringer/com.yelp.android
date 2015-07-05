.class public Lcom/yelp/android/appdata/webrequests/go;
.super Lcom/yelp/android/av/g;
.source "UserDraftsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/ReviewDraftFeedEntry;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ReviewDraftFeedEntry;",
            ">;>;II)V"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "user/reviews/drafts"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 22
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/go;->addUrlParam(Ljava/lang/String;I)V

    .line 23
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/go;->addUrlParam(Ljava/lang/String;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ReviewDraftFeedEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    const-string/jumbo v0, "drafts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    sget-object v2, Lcom/yelp/android/serializable/ReviewDraft;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v2}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewDraft;

    .line 32
    new-instance v3, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;

    invoke-direct {v3, v0}, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;-><init>(Lcom/yelp/android/serializable/ReviewDraft;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_0
    return-object v1
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/go;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
