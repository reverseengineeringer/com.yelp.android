.class public Lcom/yelp/android/ui/activities/messaging/apimanagers/h;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/g;
.source "ApiUserActionsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/a;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;->d:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/messaging/a;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 31
    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->DELETE_CONVERSATION:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {p0, v0, v1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 32
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Conversation;Ljava/lang/String;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/c;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;->d:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/appdata/webrequests/messaging/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 25
    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->FLAG_CONVERSATION:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {p0, v0, v1, p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 26
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/e;ZLcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;->a()V

    .line 37
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/n;

    invoke-interface {p1}, Lcom/yelp/android/serializable/e;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;->d:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/appdata/webrequests/messaging/n;-><init>(Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 39
    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->BLOCK_USER:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {p0, v0, v1, p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 40
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/e;ZLcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;->a()V

    .line 45
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/o;

    invoke-interface {p1}, Lcom/yelp/android/serializable/e;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;->d:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/appdata/webrequests/messaging/o;-><init>(Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 48
    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->UNBLOCK_USER:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {p0, v0, v1, p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 49
    return-void
.end method
