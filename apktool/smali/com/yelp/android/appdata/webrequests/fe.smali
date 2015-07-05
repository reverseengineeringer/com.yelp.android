.class public Lcom/yelp/android/appdata/webrequests/fe;
.super Lcom/yelp/android/appdata/webrequests/ShareRequest;
.source "ReviewShareRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Lcom/yelp/android/av/i;)V
    .locals 1

    .prologue
    .line 6
    const-string/jumbo v0, "/review/share/"

    invoke-direct {p0, v0, p3, p2}, Lcom/yelp/android/appdata/webrequests/ShareRequest;-><init>(Ljava/lang/String;Lcom/yelp/android/av/i;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)V

    .line 7
    const-string/jumbo v0, "review_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/fe;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method
