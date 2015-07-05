.class Lcom/yelp/android/ui/activities/events/ax;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "MoreEventsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Lcom/yelp/android/appdata/webrequests/bz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/ax;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/bz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/bz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ax;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->j()V

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ax;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)Lcom/yelp/android/ui/activities/events/b;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/bz;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/b;->a(Ljava/util/Collection;)V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ax;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)Lcom/yelp/android/ui/activities/events/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/b;->notifyDataSetChanged()V

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ax;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ax;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)Lcom/yelp/android/ui/activities/events/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/b;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b(I)V

    .line 175
    iget v0, p2, Lcom/yelp/android/appdata/webrequests/bz;->b:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ax;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)Lcom/yelp/android/ui/activities/events/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/b;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ax;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Z)V

    .line 178
    :cond_0
    iget v0, p2, Lcom/yelp/android/appdata/webrequests/bz;->b:I

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ax;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_EVENTS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 181
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
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
    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ax;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->j()V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ax;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 165
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 154
    check-cast p2, Lcom/yelp/android/appdata/webrequests/bz;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/events/ax;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/bz;)V

    return-void
.end method
