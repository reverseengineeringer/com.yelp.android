.class public Lcom/yelp/android/ui/activities/events/EventFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "EventFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/events/EventFragment$7;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/events/g;

.field private b:Lcom/yelp/android/ui/util/aj;

.field private c:Lcom/yelp/android/ui/map/YelpMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/YelpMap",
            "<",
            "Lcom/yelp/android/serializable/f;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

.field private e:Lcom/yelp/android/ui/activities/events/d;

.field private f:Lcom/yelp/android/ui/activities/events/c;

.field private g:Lcom/yelp/android/serializable/Event;

.field private i:Lcom/yelp/android/serializable/EventAttendees;

.field private j:Lcom/yelp/android/analytics/iris/IriSource;

.field private k:Z

.field private l:Z

.field private final m:Lcom/yelp/android/ui/widgets/d$a;

.field private final n:Landroid/view/View$OnClickListener;

.field private final o:Lcom/yelp/android/ui/map/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/e$a",
            "<",
            "Lcom/yelp/android/serializable/f;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/view/View$OnClickListener;

.field private final q:Lcom/google/android/gms/maps/c$e;

.field private final r:Landroid/view/View$OnClickListener;

.field private final s:Lcom/yelp/android/ui/dialogs/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 956
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventFragment$14;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventFragment$14;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->m:Lcom/yelp/android/ui/widgets/d$a;

    .line 964
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventFragment$15;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventFragment$15;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->n:Landroid/view/View$OnClickListener;

    .line 972
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventFragment$2;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->o:Lcom/yelp/android/ui/map/e$a;

    .line 988
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventFragment$3;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->p:Landroid/view/View$OnClickListener;

    .line 1000
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventFragment$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventFragment$4;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->q:Lcom/google/android/gms/maps/c$e;

    .line 1015
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventFragment$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventFragment$5;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->r:Landroid/view/View$OnClickListener;

    .line 1036
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventFragment$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventFragment$6;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->s:Lcom/yelp/android/ui/dialogs/b;

    return-void
.end method

.method private H()V
    .locals 4

    .prologue
    .line 923
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->J()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 933
    :goto_0
    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->J()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 928
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 931
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivity(Landroid/content/Intent;)V

    .line 932
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->EventPullOpenPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "event_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/Event;Lcom/yelp/android/serializable/Event$EventType;Lcom/yelp/android/analytics/iris/IriSource;)Lcom/yelp/android/ui/activities/events/EventFragment;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;-><init>()V

    .line 131
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 132
    const-string/jumbo v2, "args_event"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    const-string/jumbo v2, "event_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 134
    const-string/jumbo v2, "event_source"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 135
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->setArguments(Landroid/os/Bundle;)V

    .line 136
    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/Event;Ljava/lang/String;)Lcom/yelp/android/ui/activities/events/EventFragment;
    .locals 4

    .prologue
    .line 151
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;-><init>()V

    .line 152
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 153
    const-string/jumbo v2, "args_event"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 154
    const-string/jumbo v2, "event_source"

    sget-object v3, Lcom/yelp/android/analytics/iris/IriSource;->EventsSections:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 155
    const-string/jumbo v2, "section_alias"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->setArguments(Landroid/os/Bundle;)V

    .line 157
    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/yelp/android/serializable/Event$EventType;Lcom/yelp/android/analytics/iris/IriSource;)Lcom/yelp/android/ui/activities/events/EventFragment;
    .locals 3

    .prologue
    .line 141
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;-><init>()V

    .line 142
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 143
    const-string/jumbo v2, "event_id_or_alias"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v2, "event_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 145
    const-string/jumbo v2, "event_source"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 146
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->setArguments(Landroid/os/Bundle;)V

    .line 147
    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 409
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/aj;

    .line 411
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 412
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->k()V

    .line 413
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/d;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/d;->a(Lcom/yelp/android/ui/util/aj;Landroid/view/ViewGroup;)V

    .line 414
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->f:Lcom/yelp/android/ui/activities/events/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/c;->a(Lcom/yelp/android/ui/util/aj;Landroid/view/ViewGroup;)V

    .line 415
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->t()V

    .line 416
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/EventFragment;->b(Landroid/os/Bundle;)V

    .line 417
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->u()V

    .line 418
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->v()V

    .line 419
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->w()V

    .line 421
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 422
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const v1, 0x7f0e0125

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelector(I)V

    .line 427
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 431
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->k:Z

    .line 433
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->y()V

    .line 434
    return-void
.end method

.method private a(Lcom/yelp/android/analytics/iris/IriSource;)V
    .locals 6

    .prologue
    .line 794
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "beginTime"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->e()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "eventLocation"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "description"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "eventTimeZone"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 802
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->k()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 803
    const-string/jumbo v1, "endTime"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 805
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivity(Landroid/content/Intent;)V

    .line 806
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 807
    const-string/jumbo v1, "event_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    invoke-virtual {p1, v0}, Lcom/yelp/android/analytics/iris/IriSource;->addParameter(Ljava/util/Map;)V

    .line 809
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->EventAddToCalendar:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 810
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventFragment;Lcom/yelp/android/analytics/iris/IriSource;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/google/android/gms/maps/c$e;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->q:Lcom/google/android/gms/maps/c$e;

    return-object v0
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030169

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 523
    const v0, 0x7f0f0220

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    .line 529
    check-cast v0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    .line 531
    invoke-virtual {v0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->getYelpMap()Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    .line 533
    const v0, 0x7f0f0245

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;

    .line 535
    const v0, 0x7f0f04ae

    invoke-virtual {v7, v0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 536
    const v0, 0x7f0f04af

    invoke-virtual {v7, v0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    .line 538
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v6

    .line 539
    check-cast v0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    .line 541
    new-instance v2, Lcom/yelp/android/ui/map/k;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Event;->t()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/yelp/android/ui/map/k;-><init>(Landroid/app/Activity;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 543
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->t()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Event;->t()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->B()I

    move-result v3

    invoke-static {}, Lcom/yelp/android/util/f;->a()Z

    move-result v5

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->b(Lcom/yelp/android/serializable/f;Lcom/yelp/android/ui/map/e;ILandroid/os/Bundle;Z)Z

    .line 550
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->o:Lcom/yelp/android/ui/map/e$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setInfoWindowListener(Lcom/yelp/android/ui/map/e$a;)V

    .line 552
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventFragment$9;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventFragment$9;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    .line 560
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1}, Lcom/yelp/android/ui/map/YelpMap;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/events/EventFragment$10;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment$10;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;Lcom/google/android/gms/maps/c$e;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/e;)V

    .line 568
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->c()V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->A()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->t()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    :goto_0
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 600
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 602
    const v0, 0x7f0f04ad

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;

    .line 604
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->f(Landroid/view/View;)V

    .line 607
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->setLeft(Z)V

    .line 616
    :cond_2
    :goto_1
    const v0, 0x7f070120

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->A()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/yelp/android/ui/util/h;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f030169

    new-instance v2, Lcom/yelp/android/ui/util/e;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    invoke-static {v2}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    const v3, 0x7f0101cc

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 625
    return-void

    :cond_3
    move-object v0, v6

    .line 573
    check-cast v0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    .line 575
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    new-instance v2, Lcom/yelp/android/ui/map/d;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/map/d;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020379

    invoke-static {}, Lcom/yelp/android/util/f;->a()Z

    move-result v5

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->a(Lcom/yelp/android/serializable/f;Lcom/yelp/android/ui/map/e;ILandroid/os/Bundle;Z)Z

    .line 582
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 583
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->c()V

    .line 588
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->A()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    invoke-virtual {v8}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 612
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->setLeft(Z)V

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/ui/map/YelpMap;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/events/EventFragment;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->H()V

    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/ui/activities/events/EventRequestFragment;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 385
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    .line 386
    if-eqz v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->g()V

    .line 396
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070209

    const v2, 0x7f070399

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/app/Activity;II)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x403

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private f(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 745
    const v0, 0x7f0f02e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 746
    const v1, 0x7f0f00d4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 747
    const v2, 0x7f0f03ca

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 749
    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Event;->t()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->t()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v1

    .line 752
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080025

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->t()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/TextView;D)V

    .line 755
    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/support/v4/app/Fragment;)Lcom/yelp/android/ui/util/t;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->t()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 757
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 759
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 399
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FlagEvent:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v1, "event_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    const v0, 0x7f07049c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0704f6

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/FlagContentDialog;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->s:Lcom/yelp/android/ui/dialogs/b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;->a(Lcom/yelp/android/ui/dialogs/b;)V

    .line 405
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "tag_flag_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->v()V

    .line 444
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->w()V

    .line 445
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 446
    return-void
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 449
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

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 453
    invoke-virtual {p0, v3, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0301a7

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    .line 458
    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/profile/e;

    .line 459
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/e;->clear()V

    .line 463
    iput-object v3, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    .line 464
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->l:Z

    .line 466
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/serializable/Event;)V

    .line 467
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 470
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->a:Lcom/yelp/android/ui/activities/events/g;

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Lcom/yelp/android/ui/activities/events/g;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->m:Lcom/yelp/android/ui/widgets/d$a;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->n:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/events/g;-><init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/widgets/d$a;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->a:Lcom/yelp/android/ui/activities/events/g;

    .line 474
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->a:Lcom/yelp/android/ui/activities/events/g;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;)V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->a:Lcom/yelp/android/ui/activities/events/g;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/g;->a(Lcom/yelp/android/serializable/Event;Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 477
    return-void
.end method

.method private t()V
    .locals 6

    .prologue
    const v5, 0x7f030167

    const/4 v4, 0x0

    .line 480
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 485
    const v0, 0x7f0f04a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 486
    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Event;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    const v0, 0x7f0f04a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 489
    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Event;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    const v0, 0x7f0f04a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/ui/activities/events/EventFragment$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/events/EventFragment$1;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    const v0, 0x7f0f00ef

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/ui/activities/events/EventFragment$8;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/events/EventFragment$8;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/aj;

    new-instance v2, Lcom/yelp/android/ui/util/e;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    invoke-static {v2}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 514
    return-void
.end method

.method private u()V
    .locals 12

    .prologue
    const v11, 0x7f030163

    const/16 v6, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 628
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 629
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v11, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 633
    const v0, 0x7f0f049a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 634
    new-instance v3, Lcom/yelp/android/ui/activities/events/EventFragment$11;

    invoke-direct {v3, p0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment$11;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    const v0, 0x7f0f049b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;

    .line 644
    new-instance v3, Lcom/yelp/android/ui/activities/events/EventFragment$12;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->EventAddToCalendar:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v3, p0, v4}, Lcom/yelp/android/ui/activities/events/EventFragment$12;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    const v3, 0x7f0f049c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 655
    iget-object v4, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->v()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->K()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    if-eq v4, v5, :cond_1

    .line 656
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->m()I

    move-result v4

    .line 657
    const v0, 0x7f0f049d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 658
    if-nez v4, :cond_0

    .line 659
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 667
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 668
    const-string/jumbo v4, "event_id"

    iget-object v5, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    new-instance v4, Lcom/yelp/android/ui/activities/events/EventFragment$13;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->EventTalk:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v4, p0, v5, v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment$13;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/aj;

    new-instance v1, Lcom/yelp/android/ui/util/e;

    new-array v3, v10, [Landroid/view/View;

    aput-object v2, v3, v9

    invoke-direct {v1, v3}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    invoke-static {v1}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    const v2, 0x7f0101cc

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 690
    return-void

    .line 661
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08000a

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 677
    :cond_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 681
    invoke-virtual {v0, v10}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->setRight(Z)V

    .line 682
    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->refreshDrawableState()V

    goto :goto_1
.end method

.method private v()V
    .locals 7

    .prologue
    const v6, 0x7f0301a7

    const/4 v5, 0x3

    .line 694
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    .line 695
    if-nez v0, :cond_1

    .line 701
    new-instance v0, Lcom/yelp/android/ui/activities/events/e;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/events/e;-><init>()V

    .line 702
    const v1, 0x7f070338

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    const v2, 0x7f0101cd

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    const v2, 0x7f0f001f

    sget v3, Lcom/yelp/android/appdata/n;->l:I

    sget v4, Lcom/yelp/android/appdata/n;->c:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/yelp/android/ui/util/aj$c;->a(III)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    .line 710
    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v2, v6, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 722
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/e;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventAttendees;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 742
    :cond_0
    :goto_1
    return-void

    .line 712
    :cond_1
    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/profile/e;

    .line 714
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/e;->a()Lcom/yelp/android/ui/util/w;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/e;

    goto :goto_0

    .line 728
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventAttendees;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 730
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 731
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    .line 732
    iget-object v4, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/EventAttendees;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 734
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventAttendees;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_4

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventAttendees;->b()Ljava/lang/String;

    move-result-object v1

    .line 739
    :goto_3
    invoke-virtual {v0, v3, v1}, Lcom/yelp/android/ui/activities/events/e;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 740
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/e;->notifyDataSetChanged()V

    goto :goto_1

    .line 734
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private w()V
    .locals 6

    .prologue
    const v5, 0x7f0f025c

    const/4 v4, 0x0

    .line 763
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    .line 764
    if-nez v0, :cond_2

    .line 765
    new-instance v1, Lcom/yelp/android/ui/util/ap;

    const v0, 0x7f030170

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/util/ap;-><init>(I)V

    .line 766
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->K()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    if-ne v0, v2, :cond_1

    const v0, 0x7f0701db

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 771
    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    const v2, 0x7f0f04c2

    sget v3, Lcom/yelp/android/appdata/n;->c:I

    invoke-virtual {v0, v2, v4, v3}, Lcom/yelp/android/ui/util/aj$c;->a(III)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    const v2, 0x7f0101cc

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    .line 777
    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->b:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v2, v5, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    move-object v0, v1

    .line 788
    :goto_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->u()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/yelp/android/ui/util/ap;->a(Lcom/yelp/android/serializable/User;Z)V

    .line 791
    :cond_0
    return-void

    .line 766
    :cond_1
    const v0, 0x7f0705a7

    goto :goto_0

    .line 779
    :cond_2
    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/profile/e;

    .line 780
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/e;->a()Lcom/yelp/android/ui/util/w;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ap;

    goto :goto_1
.end method

.method private x()V
    .locals 3

    .prologue
    .line 918
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    const-string/jumbo v2, "com.yelp.android.events.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 920
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 314
    instance-of v1, v0, Lcom/yelp/android/serializable/User;

    if-eqz v1, :cond_0

    .line 317
    sget-object v1, Lcom/yelp/android/ui/activities/events/e;->a:Lcom/yelp/android/serializable/User;

    if-ne v0, v1, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/ActivityEventAttendees;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;Lcom/yelp/android/serializable/EventAttendees;)Landroid/content/Intent;

    move-result-object v0

    .line 321
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivity(Landroid/content/Intent;)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->EventUser:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "event_id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
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

    .line 813
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->l()V

    .line 814
    sget-object v0, Lcom/yelp/android/ui/activities/events/EventFragment$7;->a:[I

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 841
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 816
    :pswitch_0
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 817
    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    .line 818
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 819
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_EVENT:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->populateError(Lcom/yelp/android/util/ErrorType;)V

    goto :goto_0

    .line 821
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0

    .line 826
    :pswitch_1
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->l:Z

    .line 827
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->h()V

    goto :goto_0

    .line 830
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/d;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0

    .line 833
    :pswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->f:Lcom/yelp/android/ui/activities/events/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/c;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0

    .line 814
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

    .line 847
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->l()V

    .line 848
    sget-object v2, Lcom/yelp/android/ui/activities/events/EventFragment$7;->a:[I

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 852
    :pswitch_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    if-nez v2, :cond_2

    .line 853
    :goto_1
    check-cast p1, Lcom/yelp/android/serializable/Event;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    .line 857
    if-eqz v0, :cond_1

    .line 858
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->G()V

    .line 862
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Landroid/os/Bundle;)V

    .line 863
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->f:Lcom/yelp/android/ui/activities/events/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/c;->b()V

    .line 864
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->y()V

    .line 865
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->x()V

    .line 869
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->l:Z

    if-nez v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/serializable/Event;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 852
    goto :goto_1

    .line 874
    :pswitch_1
    check-cast p1, Lcom/yelp/android/serializable/EventAttendees;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    .line 875
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->l:Z

    .line 880
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->h()V

    goto :goto_0

    .line 885
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/d;->a(Ljava/lang/Object;)V

    .line 886
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->y()V

    .line 887
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->x()V

    .line 888
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->j()V

    goto :goto_0

    .line 892
    :pswitch_3
    sget-object v2, Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;->EVENT_ENABLE_REMINDER_REQUEST:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    if-ne p2, v2, :cond_3

    .line 894
    :goto_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/Event;->a(Z)V

    .line 895
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/d;->b()V

    .line 896
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->x()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 892
    goto :goto_2

    .line 899
    :pswitch_4
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 903
    :pswitch_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->f:Lcom/yelp/android/ui/activities/events/c;

    check-cast p1, Lcom/yelp/android/serializable/EventRsvp;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/c;->a(Lcom/yelp/android/serializable/EventRsvp;)V

    .line 904
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->x()V

    .line 905
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->j()V

    goto :goto_0

    .line 908
    :pswitch_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->f:Lcom/yelp/android/ui/activities/events/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/c;->a()V

    .line 909
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->x()V

    .line 910
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->j()V

    goto :goto_0

    .line 848
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
    .line 369
    if-eqz p1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->f:Lcom/yelp/android/ui/activities/events/c;

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/activities/events/c;->a(Ljava/util/ArrayList;)V

    .line 374
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->f:Lcom/yelp/android/ui/activities/events/c;

    invoke-virtual {v0, p3, p2}, Lcom/yelp/android/ui/activities/events/c;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    return-object v0
.end method

.method d()Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    if-nez v0, :cond_0

    .line 940
    const/4 v0, 0x0

    .line 942
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Event:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 4
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
    .line 947
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 948
    const-string/jumbo v1, "event_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->j:Lcom/yelp/android/analytics/iris/IriSource;

    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->EventsSections:Lcom/yelp/android/analytics/iris/IriSource;

    if-ne v1, v2, :cond_0

    .line 950
    const-string/jumbo v1, "section_alias"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "section_alias"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->j:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v1, v0}, Lcom/yelp/android/analytics/iris/IriSource;->addParameter(Ljava/util/Map;)V

    .line 953
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    if-eqz v0, :cond_3

    .line 206
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Landroid/os/Bundle;)V

    .line 225
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 231
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->l:Z

    if-nez v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/serializable/Event;)V

    .line 234
    :cond_2
    return-void

    .line 208
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "event_id_or_alias"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "event_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event$EventType;

    .line 216
    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-virtual {v2, v1, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Ljava/lang/String;Lcom/yelp/android/serializable/Event$EventType;)V

    goto :goto_0

    .line 221
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
    .line 290
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 291
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 292
    sparse-switch p1, :sswitch_data_0

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 294
    :sswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->g()V

    goto :goto_0

    .line 297
    :sswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/d;->a()V

    goto :goto_0

    .line 300
    :sswitch_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->K()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Ljava/lang/String;Lcom/yelp/android/serializable/Event$EventType;)V

    goto :goto_0

    .line 292
    nop

    :sswitch_data_0
    .sparse-switch
        0x403 -> :sswitch_0
        0x41e -> :sswitch_2
        0x423 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    if-eqz p1, :cond_2

    .line 166
    const-string/jumbo v0, "saved_event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    .line 167
    const-string/jumbo v0, "saved_event_source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/IriSource;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->j:Lcom/yelp/android/analytics/iris/IriSource;

    .line 168
    const-string/jumbo v0, "saved_event_attendees"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/EventAttendees;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    .line 169
    const-string/jumbo v0, "saved_event_attendees_request_done"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->l:Z

    .line 176
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "tag_request_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    .line 180
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    const-string/jumbo v2, "tag_request_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->d:Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 191
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "tag_flag_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;

    .line 193
    if-eqz v0, :cond_1

    .line 194
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->s:Lcom/yelp/android/ui/dialogs/b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->a(Lcom/yelp/android/ui/dialogs/b;)V

    .line 196
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/activities/events/d;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/events/d;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/d;

    .line 197
    new-instance v0, Lcom/yelp/android/ui/activities/events/c;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/events/c;-><init>(Lcom/yelp/android/ui/activities/events/EventFragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->f:Lcom/yelp/android/ui/activities/events/c;

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->setHasOptionsMenu(Z)V

    .line 199
    return-void

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_event"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    .line 173
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

    .line 336
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->k:Z

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 339
    :cond_0
    const v0, 0x7f10000e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 341
    const v0, 0x7f0f0608

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->h()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v0

    sget-object v4, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    if-eq v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 344
    const v0, 0x7f0f0609

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Event;->K()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    if-eq v3, v4, :cond_2

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 341
    goto :goto_1

    :cond_2
    move v1, v2

    .line 344
    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDestroy()V

    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->d()V

    .line 286
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDestroyView()V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->a:Lcom/yelp/android/ui/activities/events/g;

    .line 278
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 349
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 363
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 351
    :sswitch_0
    new-instance v1, Lcom/yelp/android/ui/activities/events/EventShareFormatter;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/activities/events/EventShareFormatter;-><init>(Lcom/yelp/android/serializable/Event;)V

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/services/ShareFormatter;)V

    goto :goto_0

    .line 354
    :sswitch_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/d;

    sget-object v2, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/events/d;->a(Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V

    goto :goto_0

    .line 357
    :sswitch_2
    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->Menu:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    goto :goto_0

    .line 360
    :sswitch_3
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->f()V

    goto :goto_0

    .line 349
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f049b -> :sswitch_2
        0x7f0f05fa -> :sswitch_0
        0x7f0f0608 -> :sswitch_1
        0x7f0f0609 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->b()V

    .line 253
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 239
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->k:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->a:Lcom/yelp/android/ui/activities/events/g;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/g;->b(Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->c()V

    .line 245
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 258
    const-string/jumbo v0, "saved_event"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->g:Lcom/yelp/android/serializable/Event;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 259
    const-string/jumbo v0, "saved_event_source"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->j:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 260
    const-string/jumbo v0, "saved_event_attendees_request_done"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    if-eqz v0, :cond_0

    .line 262
    const-string/jumbo v0, "saved_event_attendees"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->i:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;)V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->e:Lcom/yelp/android/ui/activities/events/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/d;->a(Landroid/os/Bundle;)V

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment;->f:Lcom/yelp/android/ui/activities/events/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/c;->a(Landroid/os/Bundle;)V

    .line 269
    return-void
.end method
