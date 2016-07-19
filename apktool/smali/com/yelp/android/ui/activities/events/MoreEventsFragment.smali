.class public Lcom/yelp/android/ui/activities/events/MoreEventsFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "MoreEventsFragment.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/br;

.field private b:Lcom/yelp/android/ui/activities/events/a;

.field private c:Lcom/yelp/android/serializable/EventSection;

.field private final d:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/br$a;",
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

    .line 156
    new-instance v0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment$2;-><init>(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->d:Lcom/yelp/android/appdata/webrequests/k$b;

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

.method static synthetic a(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)Lcom/yelp/android/ui/activities/events/a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/a;

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
    .line 124
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/a;

    invoke-virtual {v1, p3}, Lcom/yelp/android/ui/activities/events/a;->a(I)Lcom/yelp/android/serializable/Event;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->c:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/EventSection;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method protected b()V
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/br;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/br;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/br;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/br;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->c:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventSection;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->p()I

    move-result v2

    const/16 v3, 0x14

    iget-object v4, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->d:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/appdata/webrequests/br;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/br;

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/br;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/br;->a([Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->H_()V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->EventsSection:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    const-string/jumbo v1, "section_alias"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->c:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/EventSection;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
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
    new-instance v0, Lcom/yelp/android/ui/activities/events/a;

    invoke-direct {v0, p1, p0}, Lcom/yelp/android/ui/activities/events/a;-><init>(Landroid/os/Bundle;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/a;

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->c:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventSection;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/a;->a(Ljava/util/List;)V

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/a;->notifyDataSetChanged()V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/a;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b(I)V

    .line 56
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    .line 57
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/a;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    const v2, 0x7f0f03df

    invoke-virtual {v1, v2, v3, v3}, Lcom/yelp/android/ui/util/aj$c;->a(III)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Landroid/widget/ListAdapter;)V

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/a;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->c:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventSection;->b()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b(Z)V

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_EVENTS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 70
    :cond_1
    const-string/jumbo v0, "com.yelp.android.events.update"

    new-instance v1, Lcom/yelp/android/ui/activities/events/MoreEventsFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment$1;-><init>(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 113
    const-string/jumbo v0, "subscribed_events_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/br;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 114
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 104
    const-string/jumbo v0, "subscribed_events_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/br;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->d:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/br;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/br;

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a:Lcom/yelp/android/appdata/webrequests/br;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/br;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->H_()V

    .line 108
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->b:Lcom/yelp/android/ui/activities/events/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/a;->a(Landroid/os/Bundle;)V

    .line 120
    return-void
.end method
