.class public Lcom/yelp/android/appdata/webrequests/bg;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "EditCaptionRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 2

    .prologue
    .line 8
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "/business/photo/caption/edit"

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 9
    const-string/jumbo v0, "photo_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/bg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string/jumbo v0, "caption"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/bg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method
