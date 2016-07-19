.class public Lcom/yelp/android/appdata/webrequests/am$c;
.super Lcom/yelp/android/appdata/webrequests/am;
.source "CheckinCommentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/Comment;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/am$a;",
            ">;",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            "Lcom/yelp/android/serializable/Comment;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "check_in/save_comment"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/appdata/webrequests/am;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 70
    const-string/jumbo v0, "check_in_id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/am$c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/am$c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    if-eqz p3, :cond_0

    .line 73
    const-string/jumbo v0, "revision"

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Comment;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/am$c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
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
    .line 62
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/am;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/am$a;

    move-result-object v0

    return-object v0
.end method
