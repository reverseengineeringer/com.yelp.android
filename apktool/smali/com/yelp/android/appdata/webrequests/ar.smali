.class public Lcom/yelp/android/appdata/webrequests/ar;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "ClientUnregisterApiRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "client/unregister"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 14
    const-string/jumbo v0, "device_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/ar;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method
