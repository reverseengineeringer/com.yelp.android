.class Lcom/yelp/android/ui/activities/messaging/apimanagers/b;
.super Ljava/lang/Object;
.source "ApiConversationActionsManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/a;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->MARK_CONVERSATION_READ:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/p;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;)V

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->i()V

    .line 32
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/m;

    sget-object v2, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->MARK_CONVERSATION_READ:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/m;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    iput-object v1, v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/m;

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
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
    .line 20
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Integer;)V

    return-void
.end method
