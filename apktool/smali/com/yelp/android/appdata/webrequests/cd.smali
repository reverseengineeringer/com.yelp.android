.class public Lcom/yelp/android/appdata/webrequests/cd;
.super Lcom/yelp/android/av/h;
.source "FacebookAutoFriendPostRequest.java"


# direct methods
.method public constructor <init>(ZLcom/yelp/android/appdata/webrequests/m;)V
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "account/facebook/auto_friend"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/av/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 13
    const-string/jumbo v0, "enabled"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/cd;->addPostParam(Ljava/lang/String;Z)V

    .line 14
    return-void
.end method
