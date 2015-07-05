.class Lcom/yelp/android/ui/activities/notifications/i;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/i;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 1
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
    .line 281
    invoke-static {}, Lcom/yelp/android/appdata/ab;->a()Lcom/yelp/android/appdata/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ab;->g()V

    .line 282
    return-void
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
    .line 277
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 273
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/notifications/i;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
