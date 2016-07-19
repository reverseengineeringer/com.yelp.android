.class public final Lcom/yelp/android/appdata/webrequests/at$b;
.super Lcom/yelp/android/appdata/webrequests/at;
.source "ComplimentsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/at$a;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 63
    const-string/jumbo v0, "user/compliments"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/appdata/webrequests/at;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;Z)V

    .line 64
    const-string/jumbo v0, "offset"

    invoke-super {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/at;->a(Ljava/lang/String;I)V

    .line 65
    const-string/jumbo v0, "limit"

    invoke-super {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/at;->a(Ljava/lang/String;I)V

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const-string/jumbo v0, "user_id"

    invoke-super {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
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
    .line 56
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/at;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/at$a;

    move-result-object v0

    return-object v0
.end method
