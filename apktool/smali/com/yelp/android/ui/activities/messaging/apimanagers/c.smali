.class Lcom/yelp/android/ui/activities/messaging/apimanagers/c;
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
        "Lcom/yelp/android/serializable/ConversationMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/a;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/c;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/ConversationMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/ConversationMessage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/c;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->a(Lcom/yelp/android/serializable/ConversationMessage;)V

    .line 52
    return-void
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
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/c;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->d:Lcom/yelp/android/av/i;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/av/i;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 46
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p2, Lcom/yelp/android/serializable/ConversationMessage;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/ConversationMessage;)V

    return-void
.end method
