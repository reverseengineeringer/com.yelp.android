.class Lcom/yelp/android/ui/activities/messaging/apimanagers/k;
.super Ljava/lang/Object;
.source "ApiMessagesManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/serializable/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/i;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/k;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Conversation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/Conversation;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 95
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/k;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->getBizUser()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->getReviewId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/i;Z)Z

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/k;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->b(Lcom/yelp/android/ui/activities/messaging/apimanagers/i;)Lcom/yelp/android/bb/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/bb/d;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/k;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->i()V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/k;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->b(Lcom/yelp/android/ui/activities/messaging/apimanagers/i;Z)Z

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/k;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->getLatestMessages()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->Default:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/i;Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/k;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->f()Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_NEW:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    invoke-interface {v0, v1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;Ljava/lang/Object;)V

    .line 102
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/k;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/i;)Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/m;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 89
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    check-cast p2, Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/k;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Conversation;)V

    return-void
.end method
