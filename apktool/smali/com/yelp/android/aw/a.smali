.class public Lcom/yelp/android/aw/a;
.super Lcom/yelp/android/av/h;
.source "ClientUnregisterApiRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 8
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "client/unregister"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/av/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 9
    const-string/jumbo v0, "ydid"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/aw/a;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method
