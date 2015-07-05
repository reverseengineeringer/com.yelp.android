.class public Lcom/yelp/android/ui/activities/messaging/apimanagers/q;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/n;
.source "ApiUserActionsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/a;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;->d:Lcom/yelp/android/av/i;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/messaging/a;-><init>(Ljava/lang/String;Lcom/yelp/android/av/i;)V

    .line 31
    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->DELETE_CONVERSATION:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {p0, v0, v1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 32
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Conversation;Ljava/lang/String;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/c;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;->d:Lcom/yelp/android/av/i;

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/appdata/webrequests/messaging/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/av/i;)V

    .line 25
    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->FLAG_CONVERSATION:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {p0, v0, v1, p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 26
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/bg;ZLcom/yelp/android/ui/activities/messaging/apimanagers/p;)V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/p;->a()V

    .line 36
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/n;

    invoke-interface {p1}, Lcom/yelp/android/serializable/bg;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;->d:Lcom/yelp/android/av/i;

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/appdata/webrequests/messaging/n;-><init>(Ljava/lang/String;ZLcom/yelp/android/av/i;)V

    .line 38
    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->BLOCK_USER:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {p0, v0, v1, p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 39
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/bg;ZLcom/yelp/android/ui/activities/messaging/apimanagers/p;)V
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/p;->a()V

    .line 43
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/o;

    invoke-interface {p1}, Lcom/yelp/android/serializable/bg;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;->d:Lcom/yelp/android/av/i;

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/appdata/webrequests/messaging/o;-><init>(Ljava/lang/String;ZLcom/yelp/android/av/i;)V

    .line 45
    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->UNBLOCK_USER:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {p0, v0, v1, p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/q;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 46
    return-void
.end method
