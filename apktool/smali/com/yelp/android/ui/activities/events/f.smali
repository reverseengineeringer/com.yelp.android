.class Lcom/yelp/android/ui/activities/events/f;
.super Ljava/lang/Object;
.source "EventAttendeesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/f;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/f;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->a(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)Lcom/yelp/android/appdata/webrequests/bu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/f;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->a(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)Lcom/yelp/android/appdata/webrequests/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/bu;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/f;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/bu;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/f;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->b(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)Lcom/yelp/android/ui/activities/events/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/events/e;->b()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/f;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->c(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)Lcom/yelp/android/serializable/Event;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/events/f;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->d(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/appdata/webrequests/bu;-><init>(Ljava/util/List;Lcom/yelp/android/serializable/Event;Lcom/yelp/android/appdata/webrequests/m;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->a(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;Lcom/yelp/android/appdata/webrequests/bu;)Lcom/yelp/android/appdata/webrequests/bu;

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/f;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->a(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)Lcom/yelp/android/appdata/webrequests/bu;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bu;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 106
    :cond_1
    return-void
.end method
