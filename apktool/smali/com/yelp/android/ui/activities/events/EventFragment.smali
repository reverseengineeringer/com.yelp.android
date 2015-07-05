.class public Lcom/yelp/android/ui/activities/events/EventFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "EventFragment.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/events/ba;

.field private b:Lcom/yelp/android/ui/util/bs;

.field private c:Lcom/yelp/android/ui/map/YelpMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/YelpMap",
            "<",
            "Lcom/yelp/android/serializable/by;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

.field private e:Lcom/yelp/android/ui/activities/events/al;

.field private g:Lcom/yelp/android/ui/activities/events/af;

.field private h:Lcom/yelp/android/serializable/Event;

.field private i:Lcom/yelp/android/serializable/EventAttendees;

.field private j:Lcom/yelp/android/analytics/iris/IriSource;

.field private k:Z

.field private l:Z

.field private final m:Lcom/yelp/android/ui/widgets/o;

.field private final n:Landroid/view/View$OnClickListener;

.field private final o:Lcom/yelp/android/ui/map/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/f",
            "<",
            "Lcom/yelp/android/serializable/by;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/view/View$OnClickListener;

.field private final q:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

.field private final r:Landroid/view/View$OnClickListener;

.field private final s:Lcom/yelp/android/ui/dialogs/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 893
    new-instance v0, Lcom/yelp/android/ui/activities/events/q;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/q;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->m:Lcom/yelp/android/ui/widgets/o;

    .line 900
    new-instance v0, Lcom/yelp/android/ui/activities/events/r;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/r;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->n:Landroid/view/View$OnClickListener;

    .line 907
    new-instance v0, Lcom/yelp/android/ui/activities/events/s;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/s;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->o:Lcom/yelp/android/ui/map/f;

    .line 922
    new-instance v0, Lcom/yelp/android/ui/activities/events/t;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/t;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->p:Landroid/view/View$OnClickListener;

    .line 932
    new-instance v0, Lcom/yelp/android/ui/activities/events/i;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/i;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->q:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    .line 945
    new-instance v0, Lcom/yelp/android/ui/activities/events/j;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/j;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->r:Landroid/view/View$OnClickListener;

    .line 964
    new-instance v0, Lcom/yelp/android/ui/activities/events/k;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/k;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->s:Lcom/yelp/android/ui/dialogs/r;

    return-void
.end method

.method private F()V
    .locals 6

    .prologue
    const v5, 0x7f0c0413

    const/4 v4, 0x0

    .line 704
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    .line 705
    if-nez v0, :cond_2

    .line 706
    new-instance v1, Lcom/yelp/android/ui/util/cj;

    const v0, 0x7f03010f

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/util/cj;-><init>(I)V

    .line 707
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getType()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    if-ne v0, v2, :cond_1

    const v0, 0x7f070190

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    const v2, 0x7f0c03db

    sget v3, Lcom/yelp/android/appdata/ao;->c:I

    invoke-virtual {v0, v2, v4, v3}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    const v2, 0x7f01015e

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    .line 715
    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v2, v5, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    move-object v0, v1

    .line 726
    :goto_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/cj;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/yelp/android/ui/util/cj;->a(Lcom/yelp/android/serializable/User;Z)V

    .line 729
    :cond_0
    return-void

    .line 707
    :cond_1
    const v0, 0x7f07059a

    goto :goto_0

    .line 717
    :cond_2
    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/profile/s;

    .line 718
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/s;->a()Lcom/yelp/android/ui/util/au;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/cj;

    goto :goto_1
.end method

.method private G()V
    .locals 3

    .prologue
    .line 856
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    const-string/jumbo v2, "com.yelp.android.events.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 858
    return-void
.end method

.method private H()V
    .locals 4

    .prologue
    .line 861
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 870
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 866
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 868
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivity(Landroid/content/Intent;)V

    .line 869
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->EventPullOpenPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "event_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/Event;Lcom/yelp/android/serializable/Event$EventType;Lcom/yelp/android/analytics/iris/IriSource;)Lcom/yelp/android/ui/activities/events/EventFragment;
    .locals 3

    .prologue
    .line 126
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;-><init>()V

    .line 127
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 128
    const-string/jumbo v2, "args_event"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 129
    const-string/jumbo v2, "event_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 130
    const-string/jumbo v2, "event_source"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 131
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->setArguments(Landroid/os/Bundle;)V

    .line 132
    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/Event;Ljava/lang/String;)Lcom/yelp/android/ui/activities/events/EventFragment;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;-><init>()V

    .line 147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 148
    const-string/jumbo v2, "args_event"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 149
    const-string/jumbo v2, "event_source"

    sget-object v3, Lcom/yelp/android/analytics/iris/IriSource;->EventsSections:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 150
    const-string/jumbo v2, "section_alias"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->setArguments(Landroid/os/Bundle;)V

    .line 152
    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/yelp/android/serializable/Event$EventType;Lcom/yelp/android/analytics/iris/IriSource;)Lcom/yelp/android/ui/activities/events/EventFragment;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;-><init>()V

    .line 137
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 138
    const-string/jumbo v2, "event_id_or_alias"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v2, "event_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 140
    const-string/jumbo v2, "event_source"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->setArguments(Landroid/os/Bundle;)V

    .line 142
    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 396
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/bs;

    .line 398
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 399
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->k()V

    .line 400
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/al;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/al;->a(Lcom/yelp/android/ui/util/bs;Landroid/view/ViewGroup;)V

    .line 401
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/ui/activities/events/af;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/af;->a(Lcom/yelp/android/ui/util/bs;Landroid/view/ViewGroup;)V

    .line 402
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->l()V

    .line 403
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/EventFragment;->b(Landroid/os/Bundle;)V

    .line 404
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->u()V

    .line 405
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->v()V

    .line 406
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->F()V

    .line 408
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 409
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const v1, 0x7f0a00d6

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelector(I)V

    .line 414
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 418
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->k:Z

    .line 420
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->w()V

    .line 421
    return-void
.end method

.method private a(Lcom/yelp/android/analytics/iris/IriSource;)V
    .locals 6

    .prologue
    .line 732
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "beginTime"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getBeginTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "eventLocation"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getFormattedLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "description"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getFormattedDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "eventTimeZone"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 740
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getTimeEnd()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 741
    const-string/jumbo v1, "endTime"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getEndTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 743
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivity(Landroid/content/Intent;)V

    .line 744
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 745
    const-string/jumbo v1, "event_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-virtual {p1, v0}, Lcom/yelp/android/analytics/iris/IriSource;->addParameter(Ljava/util/Map;)V

    .line 747
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->EventAddToCalendar:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 748
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventFragment;Lcom/yelp/android/analytics/iris/IriSource;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030109

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 496
    const v0, 0x7f0c01fb

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 502
    check-cast v6, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    .line 504
    invoke-virtual {v6}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->getYelpMap()Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    .line 506
    const v0, 0x7f0c01fc

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;

    .line 508
    const v0, 0x7f0c03ca

    invoke-virtual {v8, v0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    .line 509
    const v0, 0x7f0c03cb

    invoke-virtual {v8, v0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    .line 511
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->hasBusiness()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v7

    .line 512
    check-cast v0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    .line 514
    new-instance v2, Lcom/yelp/android/ui/map/l;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Event;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/yelp/android/ui/map/l;-><init>(Landroid/app/Activity;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 516
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Event;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getAssetForMap()I

    move-result v3

    const/4 v5, 0x1

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->b(Lcom/yelp/android/serializable/by;Lcom/yelp/android/ui/map/e;ILandroid/os/Bundle;Z)Z

    .line 519
    invoke-virtual {v6}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->o:Lcom/yelp/android/ui/map/f;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setInfoWindowListener(Lcom/yelp/android/ui/map/f;)V

    .line 521
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->q:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/ui/map/l;->a(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 522
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->c()V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getGeneralAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    :goto_0
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    :cond_1
    invoke-virtual {v6}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 550
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->hasBusiness()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 552
    const v0, 0x7f0c03c9

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;

    .line 555
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->e(Landroid/view/View;)V

    .line 558
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->setLeft(Z)V

    .line 567
    :cond_2
    :goto_1
    const v0, 0x7f0700a4

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/yelp/android/ui/util/k;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f030109

    new-instance v2, Lcom/yelp/android/ui/util/h;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    invoke-static {v2}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    const v3, 0x7f01015e

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 575
    return-void

    :cond_3
    move-object v0, v7

    .line 527
    check-cast v0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    .line 529
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    new-instance v2, Lcom/yelp/android/ui/map/d;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/map/d;-><init>(Landroid/content/Context;)V

    const v3, 0x7f02028c

    const/4 v5, 0x1

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->a(Lcom/yelp/android/serializable/by;Lcom/yelp/android/ui/map/e;ILandroid/os/Bundle;Z)Z

    .line 532
    invoke-virtual {v0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 533
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->c()V

    .line 538
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getLocationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    invoke-virtual {v9}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 563
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->setLeft(Z)V

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/events/EventFragment;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->H()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/ui/activities/events/EventRequestFragment;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 374
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    .line 375
    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->f()V

    .line 385
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    .line 379
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v0, :cond_1

    const v0, 0x7f07063d

    :goto_1
    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f07035d

    goto :goto_1
.end method

.method private e(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 686
    const v0, 0x7f0c0310

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 687
    const v1, 0x7f0c009c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 688
    const v2, 0x7f0c032c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 690
    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Event;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v1

    .line 693
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0022

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getAvgRating()F

    move-result v1

    invoke-static {v2, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/TextView;F)V

    .line 696
    invoke-static {p0}, Lcom/bumptech/glide/h;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/j;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/d;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 698
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 388
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FlagEvent:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v1, "event_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 389
    const v0, 0x7f070487

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0704f4

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/FlagContentDialog;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->s:Lcom/yelp/android/ui/dialogs/r;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;->a(Lcom/yelp/android/ui/dialogs/r;)V

    .line 392
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "tag_flag_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->v()V

    .line 431
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->F()V

    .line 432
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 433
    return-void
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 440
    invoke-virtual {p0, v3, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 444
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f030144

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    .line 445
    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/profile/s;

    .line 446
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/s;->clear()V

    .line 450
    iput-object v3, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    .line 451
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->l:Z

    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/serializable/Event;)V

    .line 454
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->a:Lcom/yelp/android/ui/activities/events/ba;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Lcom/yelp/android/ui/activities/events/ba;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->m:Lcom/yelp/android/ui/widgets/o;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->n:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/events/ba;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/widgets/o;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->a:Lcom/yelp/android/ui/activities/events/ba;

    .line 460
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->a:Lcom/yelp/android/ui/activities/events/ba;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;)V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->a:Lcom/yelp/android/ui/activities/events/ba;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/ba;->a(Lcom/yelp/android/serializable/Event;Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 463
    return-void
.end method

.method private l()V
    .locals 6

    .prologue
    const v5, 0x7f030107

    const/4 v4, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 469
    const v0, 0x7f0c03c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 470
    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Event;->getFormattedTimeRange(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    const v0, 0x7f0c03c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 473
    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Event;->getFormattedShortDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    const v0, 0x7f0c03be

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/ui/activities/events/h;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/events/h;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    const v0, 0x7f0c0119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/ui/activities/events/m;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/events/m;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/bs;

    new-instance v2, Lcom/yelp/android/ui/util/h;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    invoke-static {v2}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 489
    return-void
.end method

.method private u()V
    .locals 12

    .prologue
    const v11, 0x7f030103

    const/16 v6, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 578
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 579
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v11, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 582
    const v0, 0x7f0c03b6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 583
    new-instance v3, Lcom/yelp/android/ui/activities/events/n;

    invoke-direct {v3, p0, v1}, Lcom/yelp/android/ui/activities/events/n;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    const v0, 0x7f0c03b7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;

    .line 592
    new-instance v3, Lcom/yelp/android/ui/activities/events/o;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->EventAddToCalendar:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v3, p0, v4}, Lcom/yelp/android/ui/activities/events/o;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    const v3, 0x7f0c03b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 602
    iget-object v4, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->getTalkTopicId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->getType()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    if-eq v4, v5, :cond_1

    .line 603
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getTalkTopicUserCount()I

    move-result v4

    .line 604
    const v0, 0x7f0c03b9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 605
    if-nez v4, :cond_0

    .line 606
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 613
    const-string/jumbo v4, "event_id"

    iget-object v5, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    new-instance v4, Lcom/yelp/android/ui/activities/events/p;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->EventTalk:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v4, p0, v5, v0, v1}, Lcom/yelp/android/ui/activities/events/p;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/bs;

    new-instance v1, Lcom/yelp/android/ui/util/h;

    new-array v3, v10, [Landroid/view/View;

    aput-object v2, v3, v9

    invoke-direct {v1, v3}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    invoke-static {v1}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    const v2, 0x7f01015e

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 635
    return-void

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e000a

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 623
    :cond_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 627
    invoke-virtual {v0, v10}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->setRight(Z)V

    .line 628
    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->refreshDrawableState()V

    goto :goto_1
.end method

.method private v()V
    .locals 7

    .prologue
    const v6, 0x7f030144

    const/4 v5, 0x3

    .line 639
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    .line 640
    if-nez v0, :cond_1

    .line 646
    new-instance v0, Lcom/yelp/android/ui/activities/events/aq;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/events/aq;-><init>()V

    .line 647
    const v1, 0x7f0702f5

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    const v2, 0x7f01015f

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    const v2, 0x7f0c001d

    sget v3, Lcom/yelp/android/appdata/ao;->l:I

    sget v4, Lcom/yelp/android/appdata/ao;->c:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    .line 653
    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v2, v6, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 664
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/aq;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventAttendees;->getAttendees()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 683
    :cond_0
    :goto_1
    return-void

    .line 655
    :cond_1
    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/profile/s;

    .line 656
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/s;->a()Lcom/yelp/android/ui/util/au;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/aq;

    goto :goto_0

    .line 670
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventAttendees;->getAttendees()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 672
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 673
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    .line 674
    iget-object v4, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/EventAttendees;->getAttendees()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 676
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventAttendees;->getAttendees()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_4

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventAttendees;->getAttendeesText()Ljava/lang/String;

    move-result-object v1

    .line 680
    :goto_3
    invoke-virtual {v0, v3, v1}, Lcom/yelp/android/ui/activities/events/aq;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/aq;->notifyDataSetChanged()V

    goto :goto_1

    .line 676
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 304
    instance-of v1, v0, Lcom/yelp/android/serializable/User;

    if-eqz v1, :cond_0

    .line 307
    sget-object v1, Lcom/yelp/android/ui/activities/events/aq;->a:Lcom/yelp/android/serializable/User;

    if-ne v0, v1, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/ActivityEventAttendees;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;Lcom/yelp/android/serializable/EventAttendees;)Landroid/content/Intent;

    move-result-object v0

    .line 310
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivity(Landroid/content/Intent;)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->EventUser:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "event_id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 751
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->j()V

    .line 752
    sget-object v0, Lcom/yelp/android/ui/activities/events/l;->a:[I

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 779
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 754
    :pswitch_0
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 755
    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    .line 756
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 757
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_EVENT:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->populateError(Lcom/yelp/android/util/ErrorType;)V

    goto :goto_0

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0

    .line 764
    :pswitch_1
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->l:Z

    .line 765
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->g()V

    goto :goto_0

    .line 768
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/al;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/al;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0

    .line 771
    :pswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/ui/activities/events/af;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/af;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0

    .line 752
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 785
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->j()V

    .line 786
    sget-object v2, Lcom/yelp/android/ui/activities/events/l;->a:[I

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 790
    :pswitch_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    if-nez v2, :cond_2

    .line 791
    :goto_1
    check-cast p1, Lcom/yelp/android/serializable/Event;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    .line 795
    if-eqz v0, :cond_1

    .line 796
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->E()V

    .line 800
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Landroid/os/Bundle;)V

    .line 801
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/ui/activities/events/af;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/af;->b()V

    .line 802
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->w()V

    .line 803
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->G()V

    .line 807
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->l:Z

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/serializable/Event;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 790
    goto :goto_1

    .line 812
    :pswitch_1
    check-cast p1, Lcom/yelp/android/serializable/EventAttendees;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    .line 813
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->l:Z

    .line 818
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->g()V

    goto :goto_0

    .line 823
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/al;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/al;->a(Ljava/lang/Object;)V

    .line 824
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->w()V

    .line 825
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->G()V

    .line 826
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->i()V

    goto :goto_0

    .line 830
    :pswitch_3
    sget-object v2, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_ENABLE_REMINDER_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    if-ne p2, v2, :cond_3

    .line 832
    :goto_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/Event;->setReminderNotification(Z)V

    .line 833
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/al;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/al;->b()V

    .line 834
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->G()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 830
    goto :goto_2

    .line 837
    :pswitch_4
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 841
    :pswitch_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/ui/activities/events/af;

    check-cast p1, Lcom/yelp/android/serializable/EventRsvp;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/af;->a(Lcom/yelp/android/serializable/EventRsvp;)V

    .line 842
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->G()V

    .line 843
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->i()V

    goto :goto_0

    .line 846
    :pswitch_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/ui/activities/events/af;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/af;->a()V

    .line 847
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->G()V

    .line 848
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->i()V

    goto :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/ui/activities/events/af;

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/activities/events/af;->a(Ljava/util/ArrayList;)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/ui/activities/events/af;

    invoke-virtual {v0, p3, p2}, Lcom/yelp/android/ui/activities/events/af;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    return-object v0
.end method

.method d()Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    if-nez v0, :cond_0

    .line 877
    const/4 v0, 0x0

    .line 879
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Event:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 4
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
    .line 884
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 885
    const-string/jumbo v1, "event_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->j:Lcom/yelp/android/analytics/iris/IriSource;

    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->EventsSections:Lcom/yelp/android/analytics/iris/IriSource;

    if-ne v1, v2, :cond_0

    .line 887
    const-string/jumbo v1, "section_alias"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "section_alias"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->j:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v1, v0}, Lcom/yelp/android/analytics/iris/IriSource;->addParameter(Ljava/util/Map;)V

    .line 890
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    if-eqz v0, :cond_3

    .line 196
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Landroid/os/Bundle;)V

    .line 215
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 221
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->l:Z

    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/serializable/Event;)V

    .line 224
    :cond_2
    return-void

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "event_id_or_alias"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "event_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event$EventType;

    .line 206
    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-virtual {v2, v1, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Ljava/lang/String;Lcom/yelp/android/serializable/Event$EventType;)V

    goto :goto_0

    .line 211
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_EVENT:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->populateError(Lcom/yelp/android/util/ErrorType;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 280
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 281
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 282
    sparse-switch p1, :sswitch_data_0

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 284
    :sswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->f()V

    goto :goto_0

    .line 287
    :sswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/al;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/al;->a()V

    goto :goto_0

    .line 290
    :sswitch_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getType()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Ljava/lang/String;Lcom/yelp/android/serializable/Event$EventType;)V

    goto :goto_0

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        0x400 -> :sswitch_0
        0x417 -> :sswitch_2
        0x41a -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    if-eqz p1, :cond_2

    .line 159
    const-string/jumbo v0, "saved_event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    .line 160
    const-string/jumbo v0, "saved_event_source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/IriSource;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->j:Lcom/yelp/android/analytics/iris/IriSource;

    .line 161
    const-string/jumbo v0, "saved_event_attendees"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/EventAttendees;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    .line 162
    const-string/jumbo v0, "saved_event_attendees_request_done"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->l:Z

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "tag_request_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    .line 172
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    const-string/jumbo v2, "tag_request_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 181
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "tag_flag_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;

    .line 183
    if-eqz v0, :cond_1

    .line 184
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->s:Lcom/yelp/android/ui/dialogs/r;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->a(Lcom/yelp/android/ui/dialogs/r;)V

    .line 186
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/activities/events/al;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/events/al;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/al;

    .line 187
    new-instance v0, Lcom/yelp/android/ui/activities/events/af;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/events/af;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/ui/activities/events/af;

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->setHasOptionsMenu(Z)V

    .line 189
    return-void

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_event"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    .line 165
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "event_source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/IriSource;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->j:Lcom/yelp/android/analytics/iris/IriSource;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 325
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->k:Z

    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 328
    :cond_0
    const v0, 0x7f10000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 330
    const v0, 0x7f0c04fe

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getSubscriptionStatusEnum()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v0

    sget-object v4, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    if-eq v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 333
    const v0, 0x7f0c04ff

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Event;->getType()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    if-eq v3, v4, :cond_2

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 330
    goto :goto_1

    :cond_2
    move v1, v2

    .line 333
    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDestroy()V

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->d()V

    .line 276
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDestroyView()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->a:Lcom/yelp/android/ui/activities/events/ba;

    .line 268
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 338
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 352
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 340
    :sswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    goto :goto_0

    .line 343
    :sswitch_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/al;

    sget-object v2, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/events/al;->a(Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V

    goto :goto_0

    .line 346
    :sswitch_2
    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->Menu:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    goto :goto_0

    .line 349
    :sswitch_3
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->e()V

    goto :goto_0

    .line 338
    :sswitch_data_0
    .sparse-switch
        0x7f0c03b7 -> :sswitch_2
        0x7f0c04f0 -> :sswitch_0
        0x7f0c04fe -> :sswitch_1
        0x7f0c04ff -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->b()V

    .line 243
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 229
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->k:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->a:Lcom/yelp/android/ui/activities/events/ba;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/ba;->b(Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->c()V

    .line 235
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 248
    const-string/jumbo v0, "saved_event"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->h:Lcom/yelp/android/serializable/Event;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 249
    const-string/jumbo v0, "saved_event_source"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->j:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 250
    const-string/jumbo v0, "saved_event_attendees_request_done"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    if-eqz v0, :cond_0

    .line 252
    const-string/jumbo v0, "saved_event_attendees"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;)V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/al;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/al;->a(Landroid/os/Bundle;)V

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/ui/activities/events/af;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/af;->a(Landroid/os/Bundle;)V

    .line 259
    return-void
.end method
