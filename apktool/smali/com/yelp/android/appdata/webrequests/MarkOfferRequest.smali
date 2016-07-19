.class public Lcom/yelp/android/appdata/webrequests/MarkOfferRequest;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "MarkOfferRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 25
    const-string/jumbo v0, "offer_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
