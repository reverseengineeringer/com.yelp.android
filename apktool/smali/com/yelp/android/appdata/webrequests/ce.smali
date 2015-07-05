.class public Lcom/yelp/android/appdata/webrequests/ce;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "FeedRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/ui/activities/feed/FeedRequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/feed/FeedType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/appdata/webrequests/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ui/activities/feed/FeedType;",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/ui/activities/feed/FeedRequestResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/appdata/webrequests/ce;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/appdata/webrequests/j;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/appdata/webrequests/j;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ui/activities/feed/FeedType;",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/ui/activities/feed/FeedRequestResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feed/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/yelp/android/ui/activities/feed/FeedType;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 33
    if-eqz p1, :cond_0

    .line 34
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/ce;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    const-string/jumbo v0, "feed_item_types"

    const-string/jumbo v1, ","

    invoke-static {}, Lcom/yelp/android/ui/activities/feed/FeedItemType;->values()[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ce;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    if-eqz p4, :cond_1

    .line 38
    const-string/jumbo v0, "next_page_offset"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/ce;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_1
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/ce;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/ui/activities/feed/FeedRequestResult;
    .locals 3

    .prologue
    .line 54
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/ce;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/FeedType;->jsonKey:Ljava/lang/String;

    .line 60
    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/yelp/android/serializable/FeedEntry;->createFeedEntries(Lorg/json/JSONArray;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Ljava/util/ArrayList;

    move-result-object v1

    .line 63
    const/4 v0, 0x0

    .line 64
    const-string/jumbo v2, "next_page_offset"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    const-string/jumbo v0, "next_page_offset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->a(Ljava/util/List;Ljava/lang/String;)Lcom/yelp/android/ui/activities/feed/FeedRequestResult;

    move-result-object v0

    return-object v0

    .line 70
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ce;->a(Lorg/json/JSONObject;)Lcom/yelp/android/ui/activities/feed/FeedRequestResult;

    move-result-object v0

    return-object v0
.end method
