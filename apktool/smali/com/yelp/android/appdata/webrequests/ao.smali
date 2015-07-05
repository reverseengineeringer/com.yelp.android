.class public Lcom/yelp/android/appdata/webrequests/ao;
.super Lcom/yelp/android/appdata/webrequests/am;
.source "CheckinCommentRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;Lcom/yelp/android/serializable/Comment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/an;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/Comment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "check_in/list_comments"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/appdata/webrequests/am;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 50
    const-string/jumbo v0, "check_in_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/ao;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz p3, :cond_0

    .line 52
    const-string/jumbo v0, "revision"

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Comment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ao;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    const-string/jumbo v0, "limit"

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ao;->addUrlParam(Ljava/lang/String;I)V

    .line 55
    return-void
.end method


# virtual methods
.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/am;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/an;

    move-result-object v0

    return-object v0
.end method
