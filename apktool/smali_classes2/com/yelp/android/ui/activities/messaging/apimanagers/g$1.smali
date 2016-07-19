.class Lcom/yelp/android/ui/activities/messaging/apimanagers/g$1;
.super Ljava/lang/Object;
.source "ApiMessagingActionsManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/apimanagers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/g;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

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
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->a(Lcom/yelp/android/serializable/ConversationMessage;)V

    .line 56
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
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->i()V

    .line 69
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    iput-object v1, v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/f;

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
