.class public Lcom/yelp/android/appdata/webrequests/messaging/b;
.super Lcom/yelp/android/av/g;
.source "ConversationDetailRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/Conversation;",
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
            "Lcom/yelp/android/serializable/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "conversation"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 18
    const-string/jumbo v0, "conversation_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/messaging/b;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string/jumbo v0, "message_count"

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/messaging/b;->addUrlParam(Ljava/lang/String;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Conversation;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/yelp/android/serializable/Conversation;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "conversation"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/messaging/b;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "ConversationDetailRequest"

    return-object v0
.end method
