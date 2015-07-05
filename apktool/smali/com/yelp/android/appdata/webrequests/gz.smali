.class public Lcom/yelp/android/appdata/webrequests/gz;
.super Lcom/yelp/android/av/g;
.source "UserTipsRequest.java"


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
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/User;IIZZ)V
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
            "IIZZ)V"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "user/quicktips"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 24
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/gz;->addUrlParam(Ljava/lang/String;I)V

    .line 25
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/gz;->addUrlParam(Ljava/lang/String;I)V

    .line 26
    const-string/jumbo v0, "only_first_tips"

    invoke-virtual {p0, v0, p5}, Lcom/yelp/android/appdata/webrequests/gz;->addUrlParam(Ljava/lang/String;Z)V

    .line 27
    const-string/jumbo v0, "only_tips_of_the_day"

    invoke-virtual {p0, v0, p6}, Lcom/yelp/android/appdata/webrequests/gz;->addUrlParam(Ljava/lang/String;Z)V

    .line 28
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/gz;->a:Lcom/yelp/android/serializable/User;

    .line 29
    if-eqz p2, :cond_0

    .line 30
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/gz;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/gz;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
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
    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    const-string/jumbo v0, "quicktips"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Tip;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 39
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/gz;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Tip;->setUser(Lcom/yelp/android/serializable/User;)V

    .line 40
    new-instance v4, Lcom/yelp/android/ui/activities/feed/UserIdOverridenTipFeedEntry;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/gz;->a:Lcom/yelp/android/serializable/User;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/gz;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v4, v1, v0, p0}, Lcom/yelp/android/ui/activities/feed/UserIdOverridenTipFeedEntry;-><init>(Ljava/lang/String;Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 43
    :cond_1
    return-object v2
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/gz;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
