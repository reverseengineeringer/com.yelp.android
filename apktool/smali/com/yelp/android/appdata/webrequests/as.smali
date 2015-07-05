.class public Lcom/yelp/android/appdata/webrequests/as;
.super Lcom/yelp/android/av/h;
.source "ClearUserAlertsRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8
    const-string/jumbo v0, "user/alerts_v2/clear"

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 9
    const-string/jumbo v0, "revision"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/as;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method
