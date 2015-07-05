.class public Lcom/yelp/android/appdata/webrequests/MarkOfferRequest;
.super Lcom/yelp/android/av/h;
.source "MarkOfferRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;Ljava/lang/String;Lcom/yelp/android/av/i;)V
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 26
    const-string/jumbo v0, "offer_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
