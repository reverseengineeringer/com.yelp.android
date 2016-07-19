.class public final Lcom/yelp/android/appdata/webrequests/at$c;
.super Lcom/yelp/android/appdata/webrequests/at;
.source "ComplimentsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/at$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    const-string/jumbo v0, "user/requests/compliments"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/appdata/webrequests/at;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;Z)V

    .line 48
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
    .line 44
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/at;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/at$a;

    move-result-object v0

    return-object v0
.end method
