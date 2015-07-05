.class Lcom/yelp/android/ui/activities/events/aa;
.super Ljava/lang/Object;
.source "EventRequestFragment.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/aa;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/aa;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_DISABLE_REMINDER_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    invoke-static {v0, v2, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Ljava/lang/Object;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    .line 297
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/aa;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 298
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/aa;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_DISABLE_REMINDER_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    invoke-static {v0, p2, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    .line 291
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/aa;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 292
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 287
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/events/aa;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
