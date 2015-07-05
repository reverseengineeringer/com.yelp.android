.class public Lcom/yelp/android/appdata/webrequests/bn;
.super Lcom/yelp/android/av/h;
.source "EditCaptionRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/av/i;)V
    .locals 2

    .prologue
    .line 9
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "/business/photo/caption/edit"

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/av/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 10
    const-string/jumbo v0, "photo_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/bn;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "caption"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/bn;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method
