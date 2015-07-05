.class public Lcom/yelp/android/appdata/webrequests/al;
.super Lcom/yelp/android/appdata/webrequests/ShareRequest;
.source "CheckInShareRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Lcom/yelp/android/av/i;)V
    .locals 1

    .prologue
    .line 6
    const-string/jumbo v0, "check_in/share/"

    invoke-direct {p0, v0, p3, p2}, Lcom/yelp/android/appdata/webrequests/ShareRequest;-><init>(Ljava/lang/String;Lcom/yelp/android/av/i;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)V

    .line 7
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/al;->a:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 8
    const-string/jumbo v0, "check_in_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/al;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method
