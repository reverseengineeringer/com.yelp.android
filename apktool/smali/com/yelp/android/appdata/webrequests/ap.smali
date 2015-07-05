.class public Lcom/yelp/android/appdata/webrequests/ap;
.super Lcom/yelp/android/appdata/webrequests/am;
.source "CheckinCommentRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/Comment;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/an;",
            ">;",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            "Lcom/yelp/android/serializable/Comment;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "check_in/save_comment"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/appdata/webrequests/am;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 63
    const-string/jumbo v0, "check_in_id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ap;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/ap;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-eqz p3, :cond_0

    .line 66
    const-string/jumbo v0, "revision"

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Comment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ap;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/am;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/an;

    move-result-object v0

    return-object v0
.end method
