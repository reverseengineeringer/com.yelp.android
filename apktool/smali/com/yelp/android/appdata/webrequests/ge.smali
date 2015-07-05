.class public Lcom/yelp/android/appdata/webrequests/ge;
.super Lcom/yelp/android/av/h;
.source "TwitterOAuthSaveTokenRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/av/i;)V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "account/twitter/save_request_token"

    invoke-direct {p0, v0, p3}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 9
    const-string/jumbo v0, "oauth_token"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/ge;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string/jumbo v0, "oauth_verifier"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/ge;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method
