.class public Lcom/yelp/android/appdata/webrequests/em;
.super Lcom/yelp/android/av/g;
.source "ReservationLeaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/en;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/serializable/Reservation;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Reservation;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Reservation;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/en;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "reservation/lock"

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 21
    const-string/jumbo v0, "size"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->getPartySize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/em;->addPostParam(Ljava/lang/String;I)V

    .line 22
    const-string/jumbo v0, "timestamp"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->getDatestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/em;->addPostParam(Ljava/lang/String;J)V

    .line 24
    const-string/jumbo v0, "business_id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/em;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "query_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->getQueryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/em;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "time_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->getSelectedTimeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/em;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "reservation_provider"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getReservationProviderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/em;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/em;->a:Lcom/yelp/android/serializable/Reservation;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/en;
    .locals 5

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/em;->a:Lcom/yelp/android/serializable/Reservation;

    const-string/jumbo v1, "reservation_lease_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Reservation;->setTransactionLockId(Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "last_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string/jumbo v2, "legal_disclaimer"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    new-instance v3, Lcom/yelp/android/appdata/webrequests/en;

    iget-object v4, p0, Lcom/yelp/android/appdata/webrequests/em;->a:Lcom/yelp/android/serializable/Reservation;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/en;-><init>(Lcom/yelp/android/serializable/Reservation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/em;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/en;

    move-result-object v0

    return-object v0
.end method
