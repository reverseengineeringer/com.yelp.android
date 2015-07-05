.class public Lcom/yelp/android/ui/activities/events/EventsFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "EventsFragment.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/ca;

.field private b:Z

.field private c:Lcom/yelp/android/ui/activities/events/av;

.field private d:Lcom/yelp/android/ui/util/bs;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/events/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/yelp/android/appdata/webrequests/YelpException;

.field private final h:Lcom/yelp/android/ui/panels/aa;

.field private final i:Lcom/yelp/android/ui/activities/support/o;

.field private final j:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/EventSection;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 220
    new-instance v0, Lcom/yelp/android/ui/activities/events/as;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/as;-><init>(Lcom/yelp/android/ui/activities/events/EventsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->h:Lcom/yelp/android/ui/panels/aa;

    .line 229
    new-instance v0, Lcom/yelp/android/ui/activities/events/at;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/at;-><init>(Lcom/yelp/android/ui/activities/events/EventsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->i:Lcom/yelp/android/ui/activities/support/o;

    .line 243
    new-instance v0, Lcom/yelp/android/ui/activities/events/au;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/au;-><init>(Lcom/yelp/android/ui/activities/events/EventsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->j:Lcom/yelp/android/appdata/webrequests/j;

    .line 270
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventsFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/appdata/webrequests/YelpException;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->g:Lcom/yelp/android/appdata/webrequests/YelpException;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventsFragment;Lcom/yelp/android/appdata/webrequests/ca;)Lcom/yelp/android/appdata/webrequests/ca;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/ca;

    return-object p1
.end method

.method private a(Lcom/yelp/android/serializable/Event;)Lcom/yelp/android/serializable/EventSection;
    .locals 5

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/b;

    .line 195
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/b;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 196
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/events/b;->a(I)Lcom/yelp/android/serializable/Event;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/yelp/android/serializable/Event;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/b;->b()Lcom/yelp/android/serializable/EventSection;

    move-result-object v0

    .line 201
    :goto_2
    if-eqz v0, :cond_1

    .line 205
    :goto_3
    return-object v0

    .line 195
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 204
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventsFragment;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->e()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventsFragment;Lcom/yelp/android/util/ErrorType;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->b(Lcom/yelp/android/util/ErrorType;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventsFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/EventSection;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 159
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Landroid/widget/ListAdapter;)V

    .line 161
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_EVENTS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 182
    :goto_0
    return-void

    .line 164
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->d:Lcom/yelp/android/ui/util/bs;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->e:Ljava/util/List;

    move v1, v2

    .line 166
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 167
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/EventSection;

    .line 168
    new-instance v4, Lcom/yelp/android/ui/activities/events/b;

    invoke-direct {v4, v0, p0}, Lcom/yelp/android/ui/activities/events/b;-><init>(Lcom/yelp/android/serializable/EventSection;Landroid/support/v4/app/Fragment;)V

    .line 169
    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->e:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    move v3, v2

    .line 172
    :goto_2
    iget-object v5, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->d:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventSection;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventSection;->getHeader()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v7

    const v8, 0x7f01015f

    invoke-virtual {v7, v8}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v7

    const v8, 0x7f0c03b4

    invoke-virtual {v7, v8, v2, v3}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 178
    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventSection;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/yelp/android/ui/activities/events/b;->a(Ljava/util/Collection;)V

    .line 179
    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/events/b;->notifyDataSetChanged()V

    .line 166
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 171
    :cond_2
    sget v3, Lcom/yelp/android/appdata/ao;->c:I

    goto :goto_2

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->d:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventsFragment;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/events/EventsFragment;)Lcom/yelp/android/ui/panels/aa;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->h:Lcom/yelp/android/ui/panels/aa;

    return-object v0
.end method

.method private b(Lcom/yelp/android/util/ErrorType;)V
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->j()V

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->h:Lcom/yelp/android/ui/panels/aa;

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 212
    sget-object v0, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    if-ne p1, v0, :cond_0

    .line 213
    const/4 v0, 0x0

    const v1, 0x7f0703dd

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a(ZI)Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->i:Lcom/yelp/android/ui/activities/support/o;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a(Lcom/yelp/android/ui/activities/support/o;)V

    .line 216
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 218
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/events/EventsFragment;)Lcom/yelp/android/appdata/webrequests/YelpException;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->g:Lcom/yelp/android/appdata/webrequests/YelpException;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/ca;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isCompleted([Lcom/yelp/android/appdata/webrequests/ApiRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->i_()V

    .line 153
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ca;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->j:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/ca;-><init>(Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/ca;

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/ca;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/ca;->setLocationTimeout(J)V

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/ca;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ca;->executeWithLocation([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 121
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 122
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 125
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getTimeStart()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/events/b;

    .line 127
    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/b;->b()Lcom/yelp/android/serializable/EventSection;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventSection;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->c:Lcom/yelp/android/ui/activities/events/av;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/events/av;->a(Lcom/yelp/android/serializable/EventSection;)V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/serializable/Event;)Lcom/yelp/android/serializable/EventSection;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventSection;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->EventsSections:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Z)V

    .line 67
    if-nez p1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->e()V

    .line 83
    :goto_0
    const-string/jumbo v0, "com.yelp.android.events.update"

    new-instance v1, Lcom/yelp/android/ui/activities/events/ar;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/events/ar;-><init>(Lcom/yelp/android/ui/activities/events/EventsFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 90
    return-void

    .line 70
    :cond_0
    const-string/jumbo v0, "request_finished"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->b:Z

    .line 71
    const-string/jumbo v0, "saved_error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->g:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 72
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->b:Z

    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->i_()V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->g:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->g:Lcom/yelp/android/appdata/webrequests/YelpException;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->h:Lcom/yelp/android/ui/panels/aa;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/panels/aa;)V

    goto :goto_0

    .line 78
    :cond_2
    const-string/jumbo v0, "saved_event_sections"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 53
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/activities/events/av;

    move-object v1, v0

    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->c:Lcom/yelp/android/ui/activities/events/av;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onAttach(Landroid/app/Activity;)V

    .line 59
    return-void

    .line 54
    :catch_0
    move-exception v1

    .line 55
    new-instance v1, Ljava/lang/ClassCastException;

    const-string/jumbo v2, "The corresponding activity must implement the ActivityListener interface"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 116
    const-string/jumbo v0, "my_events_request_tag"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/ca;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V

    .line 117
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 110
    const-string/jumbo v0, "my_events_request_tag"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/ca;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->j:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ca;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/ca;

    .line 111
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/b;

    .line 98
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/b;->a(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/b;->b()Lcom/yelp/android/serializable/EventSection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_0
    const-string/jumbo v0, "saved_event_sections"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 103
    :cond_1
    const-string/jumbo v0, "request_finished"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    const-string/jumbo v0, "saved_error"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->g:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 105
    return-void
.end method
