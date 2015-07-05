.class public Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;
.super Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;
.source "NearbyPageFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/aa;


# static fields
.field private static final a:J


# instance fields
.field private final A:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;>;"
        }
    .end annotation
.end field

.field private final B:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/NearbyRow;",
            ">;>;"
        }
    .end annotation
.end field

.field private final C:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private final D:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/appdata/webrequests/du;

.field private c:Lcom/yelp/android/appdata/webrequests/ds;

.field private d:Lcom/yelp/android/appdata/webrequests/dt;

.field private e:Lcom/yelp/android/appdata/webrequests/dv;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Lcom/yelp/android/util/ErrorType;

.field private o:Lcom/yelp/android/ui/util/bs;

.field private p:Lcom/yelp/android/ui/panels/PanelError;

.field private q:Lcom/yelp/android/ui/util/h;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/NearbyRow;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

.field private w:Lcom/yelp/android/ui/activities/nearby/ac;

.field private x:Lcom/yelp/android/ui/activities/nearby/s;

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 86
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->y:Z

    .line 629
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/y;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/y;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->A:Lcom/yelp/android/appdata/webrequests/j;

    .line 656
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/z;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/z;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->B:Lcom/yelp/android/appdata/webrequests/j;

    .line 680
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/aa;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/aa;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->C:Lcom/yelp/android/appdata/webrequests/j;

    .line 700
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/ab;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/ab;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->D:Lcom/yelp/android/appdata/webrequests/j;

    .line 737
    return-void
.end method

.method private a(Lcom/yelp/android/av/g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/av/g;->getRequestId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/av/g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/av/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->u:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/util/ErrorType;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 415
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->v:Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->v:Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    new-instance v3, Lcom/yelp/android/ui/util/h;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->v:Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

    aput-object v1, v0, v2

    invoke-direct {v3, v0}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    move v1, v2

    .line 429
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 430
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 431
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 432
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->v:Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->setCheckIns(Ljava/util/List;)V

    .line 438
    const v0, 0x7f07013b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->v:Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

    new-instance v2, Lcom/yelp/android/ui/util/by;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->NearbyFriends:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->v:Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

    invoke-virtual {v5}, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/yelp/android/ui/util/by;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->o:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c002c

    invoke-static {v3}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    const v3, 0x7f01015f

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    goto :goto_0

    .line 429
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/activities/nearby/s;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:Lcom/yelp/android/appdata/webrequests/du;

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/av/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/activities/nearby/s;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Lcom/yelp/android/ui/activities/nearby/s;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/activities/nearby/s;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->r:Ljava/util/ArrayList;

    return-object p1
.end method

.method private b(Lcom/yelp/android/util/ErrorType;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 518
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_ERROR:Lcom/yelp/android/util/ErrorType;

    if-ne p1, v0, :cond_0

    .line 544
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->k:Z

    if-nez v0, :cond_1

    .line 523
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->k:Z

    .line 524
    new-instance v0, Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->p:Lcom/yelp/android/ui/panels/PanelError;

    .line 525
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->p:Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/aa;)V

    .line 526
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->p:Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 528
    new-instance v0, Lcom/yelp/android/ui/util/h;

    new-array v1, v2, [Landroid/view/View;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->p:Lcom/yelp/android/ui/panels/PanelError;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->q:Lcom/yelp/android/ui/util/h;

    .line 529
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->o:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c0023

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->q:Lcom/yelp/android/ui/util/h;

    invoke-static {v2}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 534
    :cond_1
    sget-object v0, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    if-ne p1, v0, :cond_2

    .line 535
    const v0, 0x7f0703dd

    invoke-static {v3, v0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a(ZI)Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;

    move-result-object v0

    .line 537
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 541
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 542
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b(Z)V

    .line 543
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j()V

    goto :goto_0
.end method

.method private b(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/NearbyRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v10, 0x7f0c001d

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 449
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    :cond_0
    iput v3, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m:I

    .line 492
    :cond_1
    return-void

    .line 454
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m:I

    move v2, v3

    .line 455
    :goto_0
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m:I

    if-ge v2, v0, :cond_1

    .line 456
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/NearbyRow;

    .line 457
    new-instance v1, Lcom/yelp/android/ui/activities/nearby/ae;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->getRowId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/yelp/android/ui/activities/nearby/ae;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->getTopResultCount()I

    move-result v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->getResults()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_5

    .line 459
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->getResults()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/nearby/ae;->a(Ljava/util/List;)V

    .line 460
    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/activities/nearby/ae;->a(Z)V

    .line 465
    :goto_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->getHeader()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    const v4, 0x7f01015f

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v4

    .line 467
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->getResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->getTopResultCount()I

    move-result v5

    if-le v1, v5, :cond_4

    .line 468
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f0300d6

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 473
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_3

    .line 474
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v6, 0x7f010049

    invoke-static {v1, v6}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;I)I

    move-result v6

    .line 476
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 479
    :cond_3
    const v1, 0x7f0c0324

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 480
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0e0017

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->getResults()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->getTopResultCount()I

    move-result v0

    sub-int v0, v8, v0

    invoke-static {v6, v7, v0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 485
    invoke-virtual {v1, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 486
    new-instance v6, Lcom/yelp/android/ui/activities/nearby/ad;

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v0, v2, v7}, Lcom/yelp/android/ui/activities/nearby/ad;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;ILcom/yelp/android/ui/activities/nearby/w;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    invoke-virtual {v4, v5}, Lcom/yelp/android/ui/util/bw;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/bw;

    .line 490
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->o:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v4}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 455
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 462
    :cond_5
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->getResults()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->getTopResultCount()I

    move-result v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/nearby/ae;->a(Ljava/util/List;)V

    .line 463
    invoke-virtual {v1, v9}, Lcom/yelp/android/ui/activities/nearby/ae;->a(Z)V

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->s:Ljava/util/ArrayList;

    return-object p1
.end method

.method private c(Lcom/yelp/android/util/ErrorType;)V
    .locals 2

    .prologue
    .line 554
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_ERROR:Lcom/yelp/android/util/ErrorType;

    if-ne p1, v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->l:I

    .line 560
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->n:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p1, v0}, Lcom/yelp/android/util/ErrorType;->isMoreImportant(Lcom/yelp/android/util/ErrorType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->n:Lcom/yelp/android/util/ErrorType;

    .line 564
    :cond_2
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->n:Lcom/yelp/android/util/ErrorType;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b(Lcom/yelp/android/util/ErrorType;)V

    goto :goto_0
.end method

.method private c(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v5, 0x7f0c001d

    const v4, 0x7f070646

    .line 495
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/activities/events/ay;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/ay;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 499
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/ay;->a(Ljava/util/List;)V

    .line 500
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->o:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    const v2, 0x7f01015f

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    sget v2, Lcom/yelp/android/appdata/ao;->l:I

    sget v3, Lcom/yelp/android/appdata/ao;->c:I

    invoke-virtual {v0, v5, v2, v3}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 509
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m:I

    if-lez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->o:Lcom/yelp/android/ui/util/bs;

    iget v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bv;->a()Landroid/view/View;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Lcom/yelp/android/appdata/webrequests/du;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:Lcom/yelp/android/appdata/webrequests/du;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->t:Ljava/util/ArrayList;

    return-object p1
.end method

.method private d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 576
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/util/ErrorType;)V

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f()V

    goto :goto_0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->i_()V

    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->w:Lcom/yelp/android/ui/activities/nearby/ac;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/nearby/ac;->a()V

    .line 230
    iput v4, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->l:I

    .line 231
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_ERROR:Lcom/yelp/android/util/ErrorType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->n:Lcom/yelp/android/util/ErrorType;

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:Lcom/yelp/android/appdata/webrequests/du;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:Lcom/yelp/android/appdata/webrequests/du;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/du;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->y:Z

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Lcom/yelp/android/appdata/webrequests/du;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->A:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/du;-><init>(Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:Lcom/yelp/android/appdata/webrequests/du;

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:Lcom/yelp/android/appdata/webrequests/du;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/du;->setLocationTimeout(J)V

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:Lcom/yelp/android/appdata/webrequests/du;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/du;->executeWithLocation([Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/s;->a()V

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/dt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/dt;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dt;->isFetching()Z

    move-result v0

    if-nez v0, :cond_3

    .line 241
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dt;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->D:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/dt;-><init>(Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/dt;

    .line 242
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/dt;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dt;->executeWithLocation([Ljava/lang/Object;)V

    .line 251
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dv;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dv;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dv;->isFetching()Z

    move-result v0

    if-nez v0, :cond_5

    .line 252
    :cond_4
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dv;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->B:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/dv;-><init>(Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dv;

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dv;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dv;->executeWithLocation([Ljava/lang/Object;)V

    .line 256
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/ds;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/ds;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ds;->isFetching()Z

    move-result v0

    if-nez v0, :cond_7

    .line 257
    :cond_6
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ds;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->C:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/ds;-><init>(Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/ds;

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/ds;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ds;->executeWithLocation([Ljava/lang/Object;)V

    .line 260
    :cond_7
    return-void

    .line 247
    :cond_8
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/util/ErrorType;)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 373
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:Lcom/yelp/android/appdata/webrequests/du;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:Lcom/yelp/android/appdata/webrequests/du;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/du;->isFetching()Z

    move-result v0

    if-nez v0, :cond_9

    .line 374
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->y:Z

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->u:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/util/List;)V

    .line 376
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g:Z

    .line 379
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j()V

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/dt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/dt;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dt;->isFetching()Z

    move-result v0

    if-nez v0, :cond_9

    .line 384
    :cond_2
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->h:Z

    if-nez v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->t:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/util/ArrayList;)V

    .line 386
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->h:Z

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dv;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dv;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dv;->isFetching()Z

    move-result v0

    if-nez v0, :cond_9

    .line 389
    :cond_4
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->i:Z

    if-nez v0, :cond_6

    .line 390
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->w:Lcom/yelp/android/ui/activities/nearby/ac;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->w:Lcom/yelp/android/ui/activities/nearby/ac;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/nearby/ac;->b()V

    .line 393
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->r:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b(Ljava/util/List;)V

    .line 394
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->i:Z

    .line 396
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/ds;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/ds;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ds;->isFetching()Z

    move-result v0

    if-nez v0, :cond_9

    .line 397
    :cond_7
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j:Z

    if-nez v0, :cond_8

    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->s:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Ljava/util/List;)V

    .line 399
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j:Z

    .line 401
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->o:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Landroid/widget/ListAdapter;)V

    .line 402
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Z)V

    .line 403
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j()V

    .line 408
    :cond_9
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->q:Lcom/yelp/android/ui/util/h;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->q:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 573
    :cond_0
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/nearby/x;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/x;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    sget-object v2, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;->FINDING_PLACES:Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Ljava/lang/Runnable;Lcom/yelp/android/ui/panels/y;)V

    .line 590
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    .line 593
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 595
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 607
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeaderViewsCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 611
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/s;->a(Lcom/yelp/android/ui/util/ScrollToLoadListView;)V

    .line 612
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->y:Z

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-virtual {v0, v2, v2}, Lcom/yelp/android/ui/activities/nearby/s;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->o:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Landroid/widget/ListAdapter;)V

    .line 621
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->h()V

    .line 623
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 331
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 332
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 334
    instance-of v2, v0, Lcom/yelp/android/serializable/NearbyResult;

    if-eqz v2, :cond_1

    .line 335
    check-cast v0, Lcom/yelp/android/serializable/NearbyResult;

    .line 336
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 337
    const-string/jumbo v3, "row_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->getRowId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string/jumbo v3, "result_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->getResultId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->NearbySuggestion:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v3, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 340
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    instance-of v2, v0, Lcom/yelp/android/serializable/Event;

    if-eqz v2, :cond_0

    .line 342
    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 343
    sget-object v2, Lcom/yelp/android/ui/activities/events/ay;->a:Lcom/yelp/android/serializable/Event;

    if-eq v0, v2, :cond_2

    .line 344
    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->Nearby:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-static {v1, v0, v2}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 346
    :cond_2
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->NearbyEvents:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 347
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->s:Ljava/util/ArrayList;

    .line 348
    if-eqz v0, :cond_0

    .line 349
    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/ActivityEvents;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a_()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 285
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g()V

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->o:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->clear()V

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->o:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->notifyDataSetChanged()V

    .line 288
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->y:Z

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/s;->b()V

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->h()V

    .line 294
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g:Z

    .line 295
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->h:Z

    .line 296
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->i:Z

    .line 297
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j:Z

    .line 298
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->k:Z

    .line 300
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:Lcom/yelp/android/appdata/webrequests/du;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:Lcom/yelp/android/appdata/webrequests/du;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/du;->cancel(Z)V

    .line 302
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:Lcom/yelp/android/appdata/webrequests/du;

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dv;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dv;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/dv;->cancel(Z)V

    .line 307
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dv;

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/dt;

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/dt;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/dt;->cancel(Z)V

    .line 312
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/dt;

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/ds;

    if-eqz v0, :cond_4

    .line 316
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/ds;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/ds;->cancel(Z)V

    .line 317
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/ds;

    .line 320
    :cond_4
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->u:Ljava/util/ArrayList;

    .line 321
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->s:Ljava/util/ArrayList;

    .line 322
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->r:Ljava/util/ArrayList;

    .line 323
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->t:Ljava/util/ArrayList;

    .line 325
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e()V

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->z:J

    .line 327
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Nearby:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public i_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 599
    const/4 v0, 0x0

    invoke-super {p0, v0, v2}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 600
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->B()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    .line 601
    sget-object v1, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;->FINDING_PLACES:Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/y;)V

    .line 602
    const v1, 0x7f020237

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setBackgroundResource(I)V

    .line 603
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->setClickable(Z)V

    .line 604
    return-void
.end method

.method public m_()V
    .locals 0

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x()V

    .line 358
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a_()V

    .line 359
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x106000d

    .line 173
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 177
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setPanelLoadingBackground(I)V

    .line 184
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelector(I)V

    .line 187
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->o:Lcom/yelp/android/ui/util/bs;

    .line 189
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->l()V

    .line 190
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onAttach(Landroid/app/Activity;)V

    .line 121
    check-cast p1, Lcom/yelp/android/ui/activities/nearby/ac;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->w:Lcom/yelp/android/ui/activities/nearby/ac;

    .line 122
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g:Z

    .line 128
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->h:Z

    .line 129
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->i:Z

    .line 130
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j:Z

    .line 132
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/s;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/nearby/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/activities/nearby/s;

    .line 133
    sget-object v0, Lcom/yelp/android/appdata/Features;->nearby_search_suggest:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->y:Z

    .line 135
    if-eqz p1, :cond_0

    .line 136
    const-string/jumbo v0, "rows"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->r:Ljava/util/ArrayList;

    .line 137
    const-string/jumbo v0, "events"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->s:Ljava/util/ArrayList;

    .line 138
    const-string/jumbo v0, "checkins"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->t:Ljava/util/ArrayList;

    .line 139
    const-string/jumbo v0, "category_suggestions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->u:Ljava/util/ArrayList;

    .line 140
    const-string/jumbo v0, "most_important_error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/ErrorType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->n:Lcom/yelp/android/util/ErrorType;

    .line 141
    const-string/jumbo v0, "nearby_last_refresh_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->z:J

    .line 147
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    const-string/jumbo v1, "com.yelp.android.events.update"

    new-instance v2, Lcom/yelp/android/ui/activities/nearby/w;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/nearby/w;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 157
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->s:Ljava/util/ArrayList;

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->z:J

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 163
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;

    .line 165
    const v1, 0x102000a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->a(Landroid/widget/ListView;)V

    .line 167
    :cond_0
    return-object v2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onPause()V

    .line 220
    const-string/jumbo v0, "nearby_event_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/ds;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V

    .line 221
    const-string/jumbo v0, "nearby_friends_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/dt;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V

    .line 222
    const-string/jumbo v0, "nearby_suggest_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dv;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V

    .line 223
    const-string/jumbo v0, "nearby_search_suggest_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:Lcom/yelp/android/appdata/webrequests/du;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V

    .line 224
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onResume()V

    .line 196
    const-string/jumbo v0, "nearby_event_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->C:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ds;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/ds;

    .line 197
    const-string/jumbo v0, "nearby_friends_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->D:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dt;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/dt;

    .line 198
    const-string/jumbo v0, "nearby_suggest_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->B:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dv;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dv;

    .line 199
    const-string/jumbo v0, "nearby_search_suggest_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->A:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/du;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:Lcom/yelp/android/appdata/webrequests/du;

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->z:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a_()V

    .line 214
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e()V

    goto :goto_0

    .line 212
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 265
    const-string/jumbo v0, "events"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->s:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 268
    const-string/jumbo v0, "rows"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 272
    const-string/jumbo v0, "checkins"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->t:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 276
    const-string/jumbo v0, "category_suggestions"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 279
    :cond_2
    const-string/jumbo v0, "most_important_error"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->n:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 280
    const-string/jumbo v0, "nearby_last_refresh_time"

    iget-wide v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->z:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 281
    return-void
.end method
