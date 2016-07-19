.class public Lcom/yelp/android/appdata/webrequests/messaging/c;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "ConversationFlagRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "conversation/flag"

    invoke-direct {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 10
    const-string/jumbo v0, "conversation_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/messaging/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "message"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/messaging/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "ConversationFlagRequest"

    return-object v0
.end method
