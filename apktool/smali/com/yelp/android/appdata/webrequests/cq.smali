.class public Lcom/yelp/android/appdata/webrequests/cq;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "LogoutRequest.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "account/logout"

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/cq;->a(Lorg/apache/http/client/HttpClient;)V

    .line 20
    return-void
.end method
