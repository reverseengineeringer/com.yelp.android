.class public Lcom/yelp/android/ui/activities/messaging/apimanagers/a;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/n;
.source "ApiConversationActionsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;Lcom/yelp/android/serializable/Conversation;)V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/d;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/a;)V

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/messaging/d;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 34
    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->MARK_CONVERSATION_READ:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {p0, v0, v1, p1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 35
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;Lcom/yelp/android/serializable/Conversation;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/h;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/apimanagers/c;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/c;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/a;)V

    invoke-direct {v0, v1, p3, v2}, Lcom/yelp/android/appdata/webrequests/messaging/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 54
    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->SEND_MESSAGE:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {p0, v0, v1, p1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 55
    return-void
.end method
