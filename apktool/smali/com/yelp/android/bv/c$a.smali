.class public Lcom/yelp/android/bv/c$a;
.super Lcom/yelp/android/bv/c;
.source "TalkMessageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/bv/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/bv/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "talk/messages/list"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/bv/c;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 57
    const-string/jumbo v0, "topic_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/bv/c$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-eqz p2, :cond_0

    .line 59
    const-string/jumbo v0, "revision"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/bv/c$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/bv/c$a;->a(Ljava/lang/String;I)V

    .line 62
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
    .line 49
    invoke-super {p0, p1}, Lcom/yelp/android/bv/c;->a(Lorg/json/JSONObject;)Lcom/yelp/android/bv/c$b;

    move-result-object v0

    return-object v0
.end method
