.class public Lcom/yelp/android/appdata/webrequests/gy;
.super Lcom/yelp/android/av/g;
.source "UserReviewsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/serializable/User;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/User;IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;",
            ">;>;",
            "Lcom/yelp/android/serializable/User;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 25
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "user/reviews"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 26
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/gy;->addUrlParam(Ljava/lang/String;I)V

    .line 27
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/gy;->addUrlParam(Ljava/lang/String;I)V

    .line 28
    const-string/jumbo v0, "first_to_reviews_only"

    invoke-virtual {p0, v0, p5}, Lcom/yelp/android/appdata/webrequests/gy;->addUrlParam(Ljava/lang/String;Z)V

    .line 29
    if-eqz p2, :cond_0

    .line 30
    const-string/jumbo v0, "user_id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/gy;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/gy;->a:Lcom/yelp/android/serializable/User;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/gy;->a:Lcom/yelp/android/serializable/User;

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v2

    .line 43
    const-string/jumbo v0, "reviews"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v3, Lcom/yelp/android/serializable/YelpBusinessReview;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v3}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 45
    new-instance v4, Ljava/util/Locale;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->setLocale(Ljava/util/Locale;)V

    .line 46
    new-instance v4, Lcom/yelp/android/serializable/ReviewFeedEntry;

    invoke-direct {v4, v0, p0}, Lcom/yelp/android/serializable/ReviewFeedEntry;-><init>(Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 47
    invoke-virtual {v4}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/gy;->a:Lcom/yelp/android/serializable/User;

    .line 48
    :goto_1
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v4}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getInfoProvider()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->populateDataFromUser(Lcom/yelp/android/serializable/User;)V

    .line 51
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v4}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    goto :goto_1

    .line 53
    :cond_2
    return-object v1
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/gy;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
