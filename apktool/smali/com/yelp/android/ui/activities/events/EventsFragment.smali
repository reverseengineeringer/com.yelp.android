.class public Lcom/yelp/android/ui/activities/events/EventsFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "EventsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/events/EventsFragment$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/bs;

.field private b:Z

.field private c:Lcom/yelp/android/ui/activities/events/EventsFragment$a;

.field private d:Lcom/yelp/android/ui/util/aj;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/events/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yelp/android/appdata/webrequests/YelpException;

.field private final g:Lcom/yelp/android/ui/panels/PanelError$a;

.field private final i:Lcom/yelp/android/ui/activities/support/b$e;

.field private final j:Lcom/yelp/android/appdata/webrequests/k$b;
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
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 228
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventsFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventsFragment$2;-><init>(Lcom/yelp/android/ui/activities/events/EventsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->g:Lcom/yelp/android/ui/panels/PanelError$a;

    .line 265
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventsFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventsFragment$3;-><init>(Lcom/yelp/android/ui/activities/events/EventsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->i:Lcom/yelp/android/ui/activities/support/b$e;

    .line 279
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventsFragment$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventsFragment$4;-><init>(Lcom/yelp/android/ui/activities/events/EventsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->j:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 307
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventsFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/appdata/webrequests/YelpException;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->f:Lcom/yelp/android/appdata/webrequests/YelpException;

    return-object p1
.end method

.method private a(Lcom/yelp/android/serializable/Event;)Lcom/yelp/android/serializable/EventSection;
    .locals 5

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
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

    check-cast v0, Lcom/yelp/android/ui/activities/events/a;

    .line 202
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/a;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 203
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/events/a;->a(I)Lcom/yelp/android/serializable/Event;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/yelp/android/serializable/Event;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/a;->b()Lcom/yelp/android/serializable/EventSection;

    move-result-object v0

    .line 208
    :goto_2
    if-eqz v0, :cond_1

    .line 212
    :goto_3
    return-object v0

    .line 202
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 211
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
    .line 38
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->f()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventsFragment;Lcom/yelp/android/util/ErrorType;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->b(Lcom/yelp/android/util/ErrorType;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventsFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 38
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

    .line 166
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Landroid/widget/ListAdapter;)V

    .line 168
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_EVENTS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 189
    :goto_0
    return-void

    .line 171
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->d:Lcom/yelp/android/ui/util/aj;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->e:Ljava/util/List;

    move v1, v2

    .line 173
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 174
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/EventSection;

    .line 175
    new-instance v4, Lcom/yelp/android/ui/activities/events/a;

    invoke-direct {v4, v0, p0}, Lcom/yelp/android/ui/activities/events/a;-><init>(Lcom/yelp/android/serializable/EventSection;Landroid/support/v4/app/Fragment;)V

    .line 176
    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->e:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    move v3, v2

    .line 179
    :goto_2
    iget-object v5, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->d:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventSection;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventSection;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v7

    const v8, 0x7f0101cd

    invoke-virtual {v7, v8}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v7

    const v8, 0x7f0f03df

    invoke-virtual {v7, v8, v2, v3}, Lcom/yelp/android/ui/util/aj$c;->a(III)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 185
    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventSection;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/yelp/android/ui/activities/events/a;->a(Ljava/util/Collection;)V

    .line 186
    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/events/a;->notifyDataSetChanged()V

    .line 173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 178
    :cond_2
    sget v3, Lcom/yelp/android/appdata/n;->c:I

    goto :goto_2

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->d:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventsFragment;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/events/EventsFragment;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->A()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/yelp/android/util/ErrorType;)V
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->l()V

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->g:Lcom/yelp/android/ui/panels/PanelError$a;

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 219
    sget-object v0, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    if-ne p1, v0, :cond_0

    .line 220
    const/4 v0, 0x0

    const v1, 0x7f0706c1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a(ZI)Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->i:Lcom/yelp/android/ui/activities/support/b$e;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a(Lcom/yelp/android/ui/activities/support/b$e;)V

    .line 224
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/events/EventsFragment;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->g()V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/events/EventsFragment;)Lcom/yelp/android/ui/panels/PanelError$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->g:Lcom/yelp/android/ui/panels/PanelError$a;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/events/EventsFragment;)Lcom/yelp/android/appdata/webrequests/YelpException;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->f:Lcom/yelp/android/appdata/webrequests/YelpException;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 155
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/bs;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a([Lcom/yelp/android/appdata/webrequests/ApiRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->H_()V

    .line 160
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bs;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->j:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/bs;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/bs;

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/bs;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/bs;->a(J)V

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/bs;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bs;->a([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/bs;

    .line 261
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->z()V

    .line 262
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->f()V

    .line 263
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 127
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 128
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 131
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->l()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/events/a;

    .line 133
    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/a;->b()Lcom/yelp/android/serializable/EventSection;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventSection;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->c:Lcom/yelp/android/ui/activities/events/EventsFragment$a;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/events/EventsFragment$a;->a(Lcom/yelp/android/serializable/EventSection;)V

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/serializable/Event;)Lcom/yelp/android/serializable/EventSection;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventSection;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->EventsSections:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->b(Z)V

    .line 71
    if-nez p1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->f()V

    .line 88
    :goto_0
    const-string/jumbo v0, "com.yelp.android.events.update"

    new-instance v1, Lcom/yelp/android/ui/activities/events/EventsFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/events/EventsFragment$1;-><init>(Lcom/yelp/android/ui/activities/events/EventsFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 96
    return-void

    .line 74
    :cond_0
    const-string/jumbo v0, "request_finished"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->b:Z

    .line 75
    const-string/jumbo v0, "saved_error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->f:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 76
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->b:Z

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->H_()V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->f:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->f:Lcom/yelp/android/appdata/webrequests/YelpException;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->g:Lcom/yelp/android/ui/panels/PanelError$a;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/panels/PanelError$a;)V

    goto :goto_0

    .line 82
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
    .line 57
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/activities/events/EventsFragment$a;

    move-object v1, v0

    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->c:Lcom/yelp/android/ui/activities/events/EventsFragment$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onAttach(Landroid/app/Activity;)V

    .line 63
    return-void

    .line 58
    :catch_0
    move-exception v1

    .line 59
    new-instance v1, Ljava/lang/ClassCastException;

    const-string/jumbo v2, "The corresponding activity must implement the ActivityListener interface"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 122
    const-string/jumbo v0, "my_events_request_tag"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/bs;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 123
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 246
    const/16 v0, 0xfa

    if-ne v0, p1, :cond_1

    .line 247
    invoke-static {p2, p3}, Lcom/yelp/android/appdata/k;->a([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v0

    .line 249
    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->F()V

    .line 252
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->g()V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 116
    const-string/jumbo v0, "my_events_request_tag"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/bs;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->j:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/bs;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->a:Lcom/yelp/android/appdata/webrequests/bs;

    .line 117
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/a;

    .line 104
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/a;->a(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/a;->b()Lcom/yelp/android/serializable/EventSection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_0
    const-string/jumbo v0, "saved_event_sections"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 109
    :cond_1
    const-string/jumbo v0, "request_finished"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    const-string/jumbo v0, "saved_error"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment;->f:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 111
    return-void
.end method
