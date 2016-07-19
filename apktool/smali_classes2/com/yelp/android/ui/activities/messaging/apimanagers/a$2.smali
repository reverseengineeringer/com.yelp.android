.class Lcom/yelp/android/ui/activities/messaging/apimanagers/a$2;
.super Ljava/lang/Object;
.source "ApiConversationActionsManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;Lcom/yelp/android/serializable/Conversation;Ljava/lang/String;)V
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
    .line 47
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a$2;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

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
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a$2;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->a(Lcom/yelp/android/serializable/ConversationMessage;)V

    .line 61
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
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a$2;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/a;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/a;->d:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/core/c$a;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 54
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p2, Lcom/yelp/android/serializable/ConversationMessage;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/a$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/ConversationMessage;)V

    return-void
.end method
