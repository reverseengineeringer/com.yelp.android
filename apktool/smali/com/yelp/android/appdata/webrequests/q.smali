.class public Lcom/yelp/android/appdata/webrequests/q;
.super Lcom/yelp/android/appdata/webrequests/ShareRequest;
.source "BadgeShareRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "/badge/share/"

    invoke-direct {p0, v0, p4, p3}, Lcom/yelp/android/appdata/webrequests/ShareRequest;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)V

    .line 18
    const-string/jumbo v0, "badge_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string/jumbo v0, "check_in_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
