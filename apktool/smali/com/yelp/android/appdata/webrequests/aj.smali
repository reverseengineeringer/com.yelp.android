.class public Lcom/yelp/android/appdata/webrequests/aj;
.super Lcom/yelp/android/av/h;
.source "CancelReservationRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/av/i;)V
    .locals 2

    .prologue
    .line 9
    const-string/jumbo v0, "reservation/cancel"

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 10
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/aj;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "reservation_provider"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getReservationProviderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/aj;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method
