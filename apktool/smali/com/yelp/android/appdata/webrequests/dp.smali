.class public Lcom/yelp/android/appdata/webrequests/dp;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "ReservationLeaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/core/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/ReservationLeaseResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/serializable/Reservation;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Reservation;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Reservation;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/ReservationLeaseResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "reservation/lock"

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 23
    const-string/jumbo v0, "size"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/dp;->b(Ljava/lang/String;I)V

    .line 24
    const-string/jumbo v0, "timestamp"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->m()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/services/f;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/dp;->b(Ljava/lang/String;J)V

    .line 29
    const-string/jumbo v0, "business_id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/dp;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string/jumbo v0, "reservation_provider"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/dp;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dp;->a:Lcom/yelp/android/serializable/Reservation;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReservationLeaseResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dp;->a:Lcom/yelp/android/serializable/Reservation;

    const-string/jumbo v1, "reservation_lease_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Reservation;->a(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/yelp/android/serializable/ReservationLeaseResponse;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReservationLeaseResponse;-><init>()V

    .line 38
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReservationLeaseResponse;->a(Lorg/json/JSONObject;)V

    .line 39
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dp;->a:Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ReservationLeaseResponse;->a(Lcom/yelp/android/serializable/Reservation;)V

    .line 40
    return-object v0
.end method

.method public synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/dp;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReservationLeaseResponse;

    move-result-object v0

    return-object v0
.end method
