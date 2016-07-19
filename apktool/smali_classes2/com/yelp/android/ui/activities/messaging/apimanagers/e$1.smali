.class Lcom/yelp/android/ui/activities/messaging/apimanagers/e$1;
.super Ljava/lang/Object;
.source "ApiMessagesManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/apimanagers/e;
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
        "Lcom/yelp/android/appdata/webrequests/messaging/m$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/e;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/messaging/m$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/messaging/m$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->i()V

    .line 41
    check-cast p1, Lcom/yelp/android/appdata/webrequests/messaging/m;

    .line 42
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    iget-object v3, p2, Lcom/yelp/android/appdata/webrequests/messaging/m$a;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/messaging/m;->b()Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/e;Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;)V

    .line 44
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/messaging/m;->b()Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->OlderThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    if-ne v2, v3, :cond_1

    .line 45
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->f()Lcom/yelp/android/ui/activities/messaging/apimanagers/c;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/messaging/m;->b()Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    move-result-object v4

    iget-object v5, p2, Lcom/yelp/android/appdata/webrequests/messaging/m$a;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    invoke-virtual {v3, v4, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Z)Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/messaging/m$a;->a:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/c;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;Ljava/lang/Object;)V

    .line 68
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 45
    goto :goto_0

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    iget-object v3, p2, Lcom/yelp/android/appdata/webrequests/messaging/m$a;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/messaging/m;->b()Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v2, v3, v4, v5}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a(Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;I)Z

    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->f()Lcom/yelp/android/ui/activities/messaging/apimanagers/c;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_TRASHED:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    invoke-interface {v0, v1, v6}, Lcom/yelp/android/ui/activities/messaging/apimanagers/c;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;Ljava/lang/Object;)V

    goto :goto_1

    .line 60
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->f()Lcom/yelp/android/ui/activities/messaging/apimanagers/c;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/messaging/m;->b()Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    move-result-object v4

    iget-object v5, p2, Lcom/yelp/android/appdata/webrequests/messaging/m$a;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v3, v4, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Z)Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    move-result-object v0

    invoke-interface {v2, v0, v6}, Lcom/yelp/android/ui/activities/messaging/apimanagers/c;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
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
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->i()V

    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$1;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->f()Lcom/yelp/android/ui/activities/messaging/apimanagers/c;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/c;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 34
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p2, Lcom/yelp/android/appdata/webrequests/messaging/m$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/messaging/m$a;)V

    return-void
.end method
