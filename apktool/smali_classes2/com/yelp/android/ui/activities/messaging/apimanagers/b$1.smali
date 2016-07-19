.class Lcom/yelp/android/ui/activities/messaging/apimanagers/b$1;
.super Ljava/lang/Object;
.source "ApiConversationsManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;)V
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
        "Lcom/yelp/android/appdata/webrequests/messaging/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/b;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/messaging/f$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/messaging/f$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->i()V

    .line 107
    check-cast p1, Lcom/yelp/android/appdata/webrequests/messaging/f;

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/messaging/f$a;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/messaging/f;->b()Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/b;Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;)V

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/messaging/f$a;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/messaging/f;->b()Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a(Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;I)Z

    move-result v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->f()Lcom/yelp/android/ui/activities/messaging/apimanagers/c;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_TRASHED:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    invoke-interface {v0, v1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/c;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;Ljava/lang/Object;)V

    .line 132
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->f()Lcom/yelp/android/ui/activities/messaging/apimanagers/c;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/messaging/f;->b()Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    move-result-object v3

    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/messaging/f$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Z)Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/c;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
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
    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->i()V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->f()Lcom/yelp/android/ui/activities/messaging/apimanagers/c;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/c;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 100
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    check-cast p2, Lcom/yelp/android/appdata/webrequests/messaging/f$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/messaging/f$a;)V

    return-void
.end method
