.class public Lcom/yelp/android/appdata/webrequests/cf;
.super Lcom/yelp/android/av/g;
.source "FindReservationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/cg;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/Calendar;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/cg;",
            ">;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/util/Calendar;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 25
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "reservation/search"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 26
    iput p4, p0, Lcom/yelp/android/appdata/webrequests/cf;->a:I

    .line 27
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/cf;->b:Ljava/util/Date;

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 30
    const-string/jumbo v2, "timestamp"

    invoke-virtual {p0, v2, v0, v1}, Lcom/yelp/android/appdata/webrequests/cf;->addUrlParam(Ljava/lang/String;J)V

    .line 31
    const-string/jumbo v0, "business_id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/cf;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v0, "size"

    iget v1, p0, Lcom/yelp/android/appdata/webrequests/cf;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/cf;->addUrlParam(Ljava/lang/String;I)V

    .line 33
    const-string/jumbo v0, "reservation_provider"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getReservationProviderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/cf;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/cg;
    .locals 5

    .prologue
    .line 39
    const-string/jumbo v0, "query_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string/jumbo v0, "times"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/serializable/Reservation;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v2}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    .line 43
    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Reservation;->setQueryId(Ljava/lang/String;)V

    .line 44
    iget v4, p0, Lcom/yelp/android/appdata/webrequests/cf;->a:I

    invoke-virtual {v0, v4}, Lcom/yelp/android/serializable/Reservation;->setPartySize(I)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 47
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cg;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/cf;->b:Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/cg;-><init>(Ljava/util/Date;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/cf;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/cg;

    move-result-object v0

    return-object v0
.end method
