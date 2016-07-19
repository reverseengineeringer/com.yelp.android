.class public Lcom/yelp/android/appdata/webrequests/am$b;
.super Lcom/yelp/android/appdata/webrequests/am;
.source "CheckinCommentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;Lcom/yelp/android/serializable/Comment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/am$a;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/Comment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "check_in/list_comments"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/appdata/webrequests/am;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 54
    const-string/jumbo v0, "check_in_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/am$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-eqz p3, :cond_0

    .line 56
    const-string/jumbo v0, "revision"

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Comment;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/am$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    const-string/jumbo v0, "limit"

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/am$b;->a(Ljava/lang/String;I)V

    .line 59
    return-void
.end method


# virtual methods
.method public synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/am;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/am$a;

    move-result-object v0

    return-object v0
.end method
