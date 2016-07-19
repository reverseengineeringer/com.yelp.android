.class public Lcom/yelp/android/appdata/webrequests/eb;
.super Lcom/yelp/android/appdata/webrequests/ShareRequest;
.source "ReviewShareRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, "/review/share/"

    invoke-direct {p0, v0, p4, p2}, Lcom/yelp/android/appdata/webrequests/ShareRequest;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)V

    .line 8
    const-string/jumbo v0, "review_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/eb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "with_award"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/eb;->b(Ljava/lang/String;Z)V

    .line 10
    return-void
.end method
