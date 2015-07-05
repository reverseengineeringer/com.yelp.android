.class public Lcom/yelp/android/appdata/webrequests/fu;
.super Lcom/yelp/android/av/h;
.source "SearchFeedbackRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 10
    const-string/jumbo v0, "search/feedback"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 11
    const-string/jumbo v0, "request_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/fu;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "uri"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/fu;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "comment"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/fu;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method
