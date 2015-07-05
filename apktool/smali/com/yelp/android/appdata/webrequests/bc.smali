.class public final Lcom/yelp/android/appdata/webrequests/bc;
.super Lcom/yelp/android/appdata/webrequests/az;
.source "ComplimentsRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/bb;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 60
    const-string/jumbo v0, "user/compliments"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/appdata/webrequests/az;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;Z)V

    .line 61
    const-string/jumbo v0, "offset"

    invoke-super {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/az;->addUrlParam(Ljava/lang/String;I)V

    .line 62
    const-string/jumbo v0, "limit"

    invoke-super {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/az;->addUrlParam(Ljava/lang/String;I)V

    .line 63
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const-string/jumbo v0, "user_id"

    invoke-super {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/az;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/az;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/bb;

    move-result-object v0

    return-object v0
.end method
