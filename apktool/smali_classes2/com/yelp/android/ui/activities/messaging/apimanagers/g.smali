.class public abstract Lcom/yelp/android/ui/activities/messaging/apimanagers/g;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/d;
.source "ApiMessagingActionsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/yelp/android/ui/activities/messaging/apimanagers/f;

.field protected b:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

.field protected c:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

.field protected final d:Lcom/yelp/android/appdata/webrequests/core/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;-><init>()V

    .line 50
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$1;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/g;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->d:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 79
    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "**>;",
            "Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;",
            "Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iput-object p3, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    .line 36
    iput-object p2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    .line 37
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method protected a(Lcom/yelp/android/serializable/ConversationMessage;)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {v0, v1, p1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;)V

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->i()V

    .line 48
    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/f;

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V
    .locals 2

    .prologue
    .line 15
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    .line 16
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/f;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/f;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/f;

    .line 22
    :cond_0
    return-void
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->i()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    .line 28
    return-void
.end method
