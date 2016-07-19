.class public Lcom/yelp/android/appdata/webrequests/bv;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "FacebookAutoFriendPostRequest.java"


# direct methods
.method public constructor <init>(ZLcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 2

    .prologue
    .line 11
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "account/facebook/auto_friend"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 12
    const-string/jumbo v0, "enabled"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/bv;->b(Ljava/lang/String;Z)V

    .line 13
    return-void
.end method
