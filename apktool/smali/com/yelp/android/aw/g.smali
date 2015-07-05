.class public Lcom/yelp/android/aw/g;
.super Lcom/yelp/android/aw/f;
.source "TalkMessageRequest.java"


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
    .line 52
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "talk/messages/list"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/aw/f;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 53
    const-string/jumbo v0, "topic_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/aw/g;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz p2, :cond_0

    .line 55
    const-string/jumbo v0, "revision"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/aw/g;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/aw/g;->addUrlParam(Ljava/lang/String;I)V

    .line 58
    return-void
.end method


# virtual methods
.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/yelp/android/aw/f;->a(Lorg/json/JSONObject;)Lcom/yelp/android/aw/h;

    move-result-object v0

    return-object v0
.end method
