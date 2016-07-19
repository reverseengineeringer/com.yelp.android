.class public Lcom/yelp/android/appdata/webrequests/ch;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "LineAccountUnlinkRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "account/line/unlink"

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 12
    return-void
.end method
