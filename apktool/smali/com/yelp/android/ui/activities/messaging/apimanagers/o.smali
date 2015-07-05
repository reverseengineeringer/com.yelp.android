.class Lcom/yelp/android/ui/activities/messaging/apimanagers/o;
.super Ljava/lang/Object;
.source "ApiMessagingActionsManager.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/apimanagers/n;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/n;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/o;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/o;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->a(Lcom/yelp/android/serializable/ConversationMessage;)V

    .line 54
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4
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
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/o;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/n;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/o;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/n;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/o;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/n;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/p;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/o;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/n;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->i()V

    .line 67
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/o;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/n;

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/m;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/o;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/n;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/m;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    iput-object v1, v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/m;

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/o;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
