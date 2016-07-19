.class Lcom/yelp/android/ui/activities/messaging/apimanagers/a$1;
.super Ljava/lang/Object;
.source "ApiConversationActionsManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;Lcom/yelp/android/serializable/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
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
    .line 17
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

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
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->MARK_CONVERSATION_READ:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;)V

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->i()V

    .line 37
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;

    sget-object v2, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->MARK_CONVERSATION_READ:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    iput-object v1, v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/f;

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
    .line 22
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Integer;)V

    return-void
.end method
