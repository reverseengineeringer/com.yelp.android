.class public abstract Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/h;
.source "ApiListManager.java"


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/g;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/h;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

    .line 21
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Z)Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;
.end method

.method protected a(Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->OlderThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->Default:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    if-eq p2, v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()Lcom/yelp/android/ui/activities/messaging/apimanagers/g;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

    return-object v0
.end method
