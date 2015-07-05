.class public Lcom/yelp/android/aw/i;
.super Lcom/yelp/android/aw/f;
.source "TalkMessageRequest.java"


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
    .line 65
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "talk/message/save"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/aw/f;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 66
    const-string/jumbo v0, "topic_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/aw/i;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/aw/i;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "revision"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/aw/i;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/yelp/android/aw/f;->a(Lorg/json/JSONObject;)Lcom/yelp/android/aw/h;

    move-result-object v0

    return-object v0
.end method
