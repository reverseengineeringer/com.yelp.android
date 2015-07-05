.class public Lcom/yelp/android/aw/c;
.super Lcom/yelp/android/aw/f;
.source "EventMessageRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/aw/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "event/messages/list"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/aw/f;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 10
    const-string/jumbo v0, "event_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/aw/c;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    if-eqz p2, :cond_0

    .line 12
    const-string/jumbo v0, "revision"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/aw/c;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/aw/c;->addUrlParam(Ljava/lang/String;I)V

    .line 15
    return-void
.end method
