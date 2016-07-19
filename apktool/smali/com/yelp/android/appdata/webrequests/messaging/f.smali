.class public Lcom/yelp/android/appdata/webrequests/messaging/f;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "ConversationsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/messaging/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/core/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/messaging/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/messaging/f$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "conversations"

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 52
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/messaging/f;->a:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    .line 53
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/messaging/f;->a:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    invoke-virtual {v0, p0, p2}, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->addParameter(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "limit"

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/messaging/f;->a(Ljava/lang/String;I)V

    .line 55
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/messaging/f$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/f$a;

    const-string/jumbo v1, "conversations"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/Conversation;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v1, v2}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "unread_message_count"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/messaging/f$a;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public b()Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/messaging/f;->a:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    return-object v0
.end method

.method public synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/messaging/f;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/messaging/f$a;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "ConversationsRequest"

    return-object v0
.end method
