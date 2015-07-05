.class public Lcom/yelp/android/appdata/webrequests/dk;
.super Lcom/yelp/android/av/h;
.source "LogoutRequest.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/yelp/android/av/i;)V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "account/logout"

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/dk;->setHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 20
    return-void
.end method
