.class public abstract Lcom/yelp/android/ui/activities/messaging/apimanagers/n;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/h;
.source "ApiMessagingActionsManager.java"


# instance fields
.field protected a:Lcom/yelp/android/ui/activities/messaging/apimanagers/m;

.field protected b:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

.field protected c:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

.field protected final d:Lcom/yelp/android/av/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;-><init>()V

    .line 49
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/o;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/o;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/n;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->d:Lcom/yelp/android/av/i;

    .line 77
    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;",
            "Lcom/yelp/android/ui/activities/messaging/apimanagers/p;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iput-object p3, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    .line 35
    iput-object p2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    .line 36
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method protected a(Lcom/yelp/android/serializable/ConversationMessage;)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {v0, v1, p1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/p;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;)V

    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->i()V

    .line 47
    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/m;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/m;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/m;

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V
    .locals 2

    .prologue
    .line 14
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    .line 15
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/m;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/m;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/m;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/m;

    .line 21
    :cond_0
    return-void
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;->i()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/n;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    .line 27
    return-void
.end method
