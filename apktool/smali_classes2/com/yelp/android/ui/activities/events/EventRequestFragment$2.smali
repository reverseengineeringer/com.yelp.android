.class Lcom/yelp/android/ui/activities/events/EventRequestFragment$2;
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
        "Lcom/yelp/android/serializable/EventAttendees;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/EventAttendees;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/EventAttendees;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    new-instance v1, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

    sget-object v2, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_ATTENDEES_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    invoke-direct {v1, p2, v3, v2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;-><init>(Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;)Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-static {v0, v3}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/appdata/webrequests/bi;)Lcom/yelp/android/appdata/webrequests/bi;

    .line 244
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_ATTENDEES_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    invoke-virtual {v0, p2, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Ljava/lang/Object;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4
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
    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    new-instance v1, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

    sget-object v2, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_ATTENDEES_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    invoke-direct {v1, v3, p2, v2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;-><init>(Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;)Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-static {v0, v3}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/appdata/webrequests/bi;)Lcom/yelp/android/appdata/webrequests/bi;

    .line 231
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_ATTENDEES_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    invoke-virtual {v0, p2, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 220
    check-cast p2, Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/EventAttendees;)V

    return-void
.end method
