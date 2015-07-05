.class public Lcom/yelp/android/appdata/webrequests/messaging/l;
.super Lcom/yelp/android/av/g;
.source "MessagesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/messaging/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/messaging/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "conversation/messages"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 49
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/messaging/l;->a:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    .line 50
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/messaging/l;->a:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    invoke-virtual {v0, p0, p3}, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->addParameter(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V

    .line 51
    const-string/jumbo v0, "conversation_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/messaging/l;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v0, "limit"

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/messaging/l;->addUrlParam(Ljava/lang/String;I)V

    .line 53
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/messaging/l;->a:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/messaging/m;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/m;

    const-string/jumbo v1, "conversation_messages"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/ConversationMessage;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v1, v2}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "total"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/messaging/m;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/messaging/l;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/messaging/m;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "MessagesRequest"

    return-object v0
.end method
