.class Lcom/yelp/android/ui/activities/events/EventsFragment$4;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "EventsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/events/EventsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/EventSection;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventsFragment;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$4;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/EventSection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$4;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/ui/activities/events/EventsFragment;Z)Z

    .line 301
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$4;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/ui/activities/events/EventsFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 302
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$4;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->l()V

    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$4;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/ui/activities/events/EventsFragment;Ljava/util/List;)V

    .line 304
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$4;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/ui/activities/events/EventsFragment;Z)Z

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$4;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorLocationServicesDisabled:I

    invoke-direct {v1, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/ui/activities/events/EventsFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$4;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/ui/activities/events/EventsFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 287
    const/4 v0, 0x0

    return v0
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
    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$4;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/ui/activities/events/EventsFragment;Z)Z

    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$4;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/ui/activities/events/EventsFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$4;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$4;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->e(Lcom/yelp/android/ui/activities/events/EventsFragment;)Lcom/yelp/android/appdata/webrequests/YelpException;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/ui/activities/events/EventsFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 295
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 280
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/events/EventsFragment$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
