.class public Lcom/yelp/android/appdata/webrequests/ac;
.super Lcom/yelp/android/appdata/webrequests/ShareRequest;
.source "BusinessPhotoShareRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, "business/photo/share/"

    invoke-direct {p0, v0, p3, p2}, Lcom/yelp/android/appdata/webrequests/ShareRequest;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)V

    .line 8
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/ac;->a:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 9
    const-string/jumbo v0, "photo_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/ac;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method
