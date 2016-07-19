.class public Lcom/yelp/android/appdata/webrequests/bd;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "DeleteTipRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "quicktips/delete"

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 10
    const-string/jumbo v0, "quicktip_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/bd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method
