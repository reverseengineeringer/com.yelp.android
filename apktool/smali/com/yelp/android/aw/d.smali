.class public Lcom/yelp/android/aw/d;
.super Lcom/yelp/android/aw/f;
.source "EventMessageRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/aw/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "event/message/save"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/aw/f;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 23
    const-string/jumbo v0, "event_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/aw/d;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/aw/d;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "revision"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/aw/d;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
