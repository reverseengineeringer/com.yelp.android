.class Lcom/yelp/android/ui/activities/events/EventRequestFragment$1;
.super Ljava/lang/Object;
.source "EventRequestFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/events/EventRequestFragment;
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
        "Lcom/yelp/android/serializable/Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$1;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$1;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    invoke-static {v0, p2, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Ljava/lang/Object;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$1;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 216
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
    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$1;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    invoke-static {v0, p2, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$1;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 210
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 204
    check-cast p2, Lcom/yelp/android/serializable/Event;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Event;)V

    return-void
.end method
