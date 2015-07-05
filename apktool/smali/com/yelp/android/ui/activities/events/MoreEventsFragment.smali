.class public Lcom/yelp/android/ui/activities/events/MoreEventsFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "MoreEventsFragment.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/by;

.field private b:Lcom/yelp/android/ui/activities/events/b;

.field private c:Lcom/yelp/android/serializable/EventSection;

.field private final d:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/bz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 153
    new-instance v0, Lcom/yelp/android/ui/activities/events/ax;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/ax;-><init>(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->d:Lcom/yelp/android/appdata/webrequests/j;

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/EventSection;)Lcom/yelp/android/ui/activities/events/MoreEventsFragment;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;-><init>()V

    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 41
    const-string/jumbo v2, "events_section"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)Lcom/yelp/android/ui/activities/events/b;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/b;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 123
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 124
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/b;

    invoke-virtual {v1, p3}, Lcom/yelp/android/ui/activities/events/b;->a(I)Lcom/yelp/android/serializable/Event;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->c:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/EventSection;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method protected b()V
    .locals 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/by;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/by;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/by;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/by;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->c:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventSection;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->p()I

    move-result v2

    const/16 v3, 0x14

    iget-object v4, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->d:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/appdata/webrequests/by;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/j;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/by;

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/by;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/by;->executeWithLocation([Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->i_()V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->EventsSection:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    const-string/jumbo v1, "section_alias"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->c:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/EventSection;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "events_section"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/EventSection;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->c:Lcom/yelp/android/serializable/EventSection;

    .line 50
    new-instance v0, Lcom/yelp/android/ui/activities/events/b;

    invoke-direct {v0, p1, p0}, Lcom/yelp/android/ui/activities/events/b;-><init>(Landroid/os/Bundle;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/b;

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->c:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventSection;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/b;->a(Ljava/util/List;)V

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/b;->notifyDataSetChanged()V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/b;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b(I)V

    .line 56
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    .line 57
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/b;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    const v2, 0x7f0c03b4

    invoke-virtual {v1, v2, v3, v3}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Landroid/widget/ListAdapter;)V

    .line 63
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/b;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->c:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventSection;->getTotal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Z)V

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_EVENTS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 70
    :cond_1
    const-string/jumbo v0, "com.yelp.android.events.update"

    new-instance v1, Lcom/yelp/android/ui/activities/events/aw;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/events/aw;-><init>(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 98
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 112
    const-string/jumbo v0, "subscribed_events_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/by;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 103
    const-string/jumbo v0, "subscribed_events_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/by;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->d:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/by;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/by;

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/by;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/by;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/by;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->i_()V

    .line 107
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/b;->a(Landroid/os/Bundle;)V

    .line 119
    return-void
.end method
