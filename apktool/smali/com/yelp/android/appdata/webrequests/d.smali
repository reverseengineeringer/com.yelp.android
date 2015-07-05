.class public Lcom/yelp/android/appdata/webrequests/d;
.super Lcom/yelp/android/av/g;
.source "AddBookmarkRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/YelpBookmark;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/YelpBookmark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "bookmarks/add"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 14
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/d;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpBookmark;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/yelp/android/serializable/YelpBookmark;

    const-string/jumbo v1, "bookmark"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/YelpBookmark;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/d;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpBookmark;

    move-result-object v0

    return-object v0
.end method
