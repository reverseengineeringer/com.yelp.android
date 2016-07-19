.class public Lcom/yelp/android/appdata/webrequests/au;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "ConfirmReservationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/core/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/Reservation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Reservation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
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
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Reservation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "reservation/confirm"

    invoke-direct {p0, v0, v1, p8}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 27
    const-string/jumbo v0, "business_id"

    invoke-virtual {p7}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "reservation_provider"

    invoke-virtual {p7}, Lcom/yelp/android/serializable/YelpBusiness;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "size"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/au;->b(Ljava/lang/String;I)V

    .line 30
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

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/au;->b(Ljava/lang/String;J)V

    .line 35
    const-string/jumbo v0, "reservation_lease_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, "email"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p5}, Lcom/yelp/android/appdata/webrequests/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v0, "first_name"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "last_name"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "special_instructions"

    invoke-virtual {p0, v0, p6}, Lcom/yelp/android/appdata/webrequests/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Reservation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/yelp/android/serializable/Reservation;->CREATOR:Lcom/yelp/android/serializable/a;

    const-string/jumbo v1, "reservation"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/a;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

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
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/au;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    return-object v0
.end method
