.class Lcom/yelp/android/ui/activities/events/EventAttendeesFragment$2;
.super Ljava/lang/Object;
.source "EventAttendeesFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;
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
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->b(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)Lcom/yelp/android/ui/activities/events/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/events/b;->a(Ljava/util/Collection;)V

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->b(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)Lcom/yelp/android/ui/activities/events/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/b;->notifyDataSetChanged()V

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->b(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)Lcom/yelp/android/ui/activities/events/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 135
    :cond_0
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
    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment$2;->a:Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->a(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 126
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
