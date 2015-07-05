.class public Lcom/yelp/android/appdata/webrequests/dl;
.super Lcom/yelp/android/av/h;
.source "LogoutWebSessionRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 13
    const-string/jumbo v0, "account/logout/web_session"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 14
    const-string/jumbo v0, "public_session_token"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/dl;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string/jumbo v0, "private_session_token"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/dl;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method
