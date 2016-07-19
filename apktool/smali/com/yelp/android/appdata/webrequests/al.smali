.class public Lcom/yelp/android/appdata/webrequests/al;
.super Lcom/yelp/android/appdata/webrequests/ShareRequest;
.source "CheckInShareRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, "check_in/share/"

    invoke-direct {p0, v0, p4, p2}, Lcom/yelp/android/appdata/webrequests/ShareRequest;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)V

    .line 8
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/al;->a:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 9
    const-string/jumbo v0, "check_in_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/al;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->YELP:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    const-string/jumbo v0, "with_award"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/al;->b(Ljava/lang/String;Z)V

    .line 13
    :cond_0
    return-void
.end method
