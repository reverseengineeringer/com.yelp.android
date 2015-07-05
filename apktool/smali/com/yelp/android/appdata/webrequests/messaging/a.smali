.class public Lcom/yelp/android/appdata/webrequests/messaging/a;
.super Lcom/yelp/android/av/h;
.source "ConversationDeleteRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/av/i;)V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "conversation/hide"

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 12
    const-string/jumbo v0, "conversation_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/messaging/a;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "ConversationDeleteRequest"

    return-object v0
.end method
