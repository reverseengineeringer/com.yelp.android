.class public Lcom/yelp/android/appdata/webrequests/be;
.super Lcom/yelp/android/av/g;
.source "ConfirmReservationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/Reservation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Reservation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Reservation;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/Reservation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "reservation/confirm"

    invoke-direct {p0, v0, v1, p8}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 26
    const-string/jumbo v0, "business_id"

    invoke-virtual {p7}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/be;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "reservation_provider"

    invoke-virtual {p7}, Lcom/yelp/android/serializable/YelpBusiness;->getReservationProviderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/be;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "size"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->getPartySize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/be;->addPostParam(Ljava/lang/String;I)V

    .line 29
    const-string/jumbo v0, "timestamp"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->getDatestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/be;->addPostParam(Ljava/lang/String;J)V

    .line 31
    const-string/jumbo v0, "query_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->getQueryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/be;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v0, "time_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->getTimeId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/be;->addPostParam(Ljava/lang/String;I)V

    .line 33
    const-string/jumbo v0, "reservation_lease_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->getTransactionLockId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/be;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v0, "email"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/be;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p5}, Lcom/yelp/android/appdata/webrequests/be;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, "first_name"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/be;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v0, "last_name"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/be;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v0, "special_instructions"

    invoke-virtual {p0, v0, p6}, Lcom/yelp/android/appdata/webrequests/be;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Reservation;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yelp/android/serializable/Reservation;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/be;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    return-object v0
.end method
