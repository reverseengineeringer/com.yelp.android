.class public Lcom/yelp/android/appdata/webrequests/messaging/d;
.super Lcom/yelp/android/av/g;
.source "ConversationMarkReadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "conversation/mark_read"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 13
    const-string/jumbo v0, "conversation_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/messaging/d;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "unread_message_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/messaging/d;->a(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "ConversationMarkReadRequest"

    return-object v0
.end method
