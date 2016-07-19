.class public Lcom/yelp/android/appdata/webrequests/az;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "DealRedeemRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "deal/redeem"

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 9
    const-string/jumbo v0, "deal_purchase_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/az;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method
