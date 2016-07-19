.class Lcom/yelp/android/ui/activities/messaging/apimanagers/e$2;
.super Ljava/lang/Object;
.source "ApiMessagesManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b(Ljava/lang/String;)Z
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
        "Lcom/yelp/android/serializable/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/e;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$2;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

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

    .line 108
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$2;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->k()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/e;Z)Z

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$2;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b(Lcom/yelp/android/ui/activities/messaging/apimanagers/e;)Lcom/yelp/android/cl/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/cl/b;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$2;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->i()V

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$2;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b(Lcom/yelp/android/ui/activities/messaging/apimanagers/e;Z)Z

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$2;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->j()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->Default:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/e;Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;)V

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$2;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->f()Lcom/yelp/android/ui/activities/messaging/apimanagers/c;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_NEW:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    invoke-interface {v0, v1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/c;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;Ljava/lang/Object;)V

    .line 116
    return-void

    .line 108
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
    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$2;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/e;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/ApiRequest$b;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 101
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    check-cast p2, Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Conversation;)V

    return-void
.end method
