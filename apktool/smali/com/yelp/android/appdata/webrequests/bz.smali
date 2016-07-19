.class public Lcom/yelp/android/appdata/webrequests/bz;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "ForceDirtySessionRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "client/force_dirty_session"

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 20
    const-string/jumbo v0, "context"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/bz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
