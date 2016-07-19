.class public Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;
.super Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;
.source "NearbyPageFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$a;,
        Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$b;
    }
.end annotation


# static fields
.field private static final b:J


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/NearbyRow;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

.field private F:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$a;

.field private G:Lcom/yelp/android/serializable/LocalIssue;

.field private H:Lcom/yelp/android/serializable/TrendingSearches;

.field private I:Lcom/yelp/android/ui/activities/nearby/a;

.field private J:Z

.field private K:J

.field private L:Landroid/os/Handler;

.field private final M:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;>;"
        }
    .end annotation
.end field

.field private final N:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/NearbyRow;",
            ">;>;"
        }
    .end annotation
.end field

.field private final O:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private final P:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;>;"
        }
    .end annotation
.end field

.field private Q:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/serializable/LocalIssueResponse;",
            ">;"
        }
    .end annotation
.end field

.field private R:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/serializable/TrendingSearches;",
            ">;"
        }
    .end annotation
.end field

.field private S:Ljava/lang/Runnable;

.field private a:Landroid/os/Parcelable;

.field private c:Lcom/yelp/android/appdata/webrequests/cy;

.field private d:Lcom/yelp/android/appdata/webrequests/cw;

.field private e:Lcom/yelp/android/appdata/webrequests/cx;

.field private f:Lcom/yelp/android/appdata/webrequests/cz;

.field private g:Lcom/yelp/android/appdata/webrequests/et;

.field private j:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Lcom/yelp/android/util/ErrorType;

.field private x:Lcom/yelp/android/ui/util/aj;

.field private y:Lcom/yelp/android/ui/panels/PanelError;

.field private z:Lcom/yelp/android/ui/util/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 115
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;-><init>()V

    .line 136
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->v:Z

    .line 156
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->J:Z

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->L:Landroid/os/Handler;

    .line 923
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->M:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 973
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$6;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->N:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 999
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$7;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->O:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 1020
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$8;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->P:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 1041
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$9;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$9;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->Q:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 1062
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$10;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$10;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->R:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 1108
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$2;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->S:Ljava/lang/Runnable;

    .line 1125
    return-void
.end method

.method private H()V
    .locals 2

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeaderViewsCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 905
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->I:Lcom/yelp/android/ui/activities/nearby/a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/a;->a(Lcom/yelp/android/ui/util/ScrollToLoadListView;)V

    .line 906
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->J:Z

    if-nez v0, :cond_0

    .line 908
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->i()V

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Landroid/widget/ListAdapter;)V

    .line 915
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x()V

    .line 917
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/serializable/LocalIssue;)Lcom/yelp/android/serializable/LocalIssue;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->G:Lcom/yelp/android/serializable/LocalIssue;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/serializable/TrendingSearches;)Lcom/yelp/android/serializable/TrendingSearches;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->H:Lcom/yelp/android/serializable/TrendingSearches;

    return-object p1
.end method

.method public static a(Z)Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    const-string/jumbo v1, "args_show_location_permission"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    new-instance v1, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;-><init>()V

    .line 166
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 167
    return-object v1
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/core/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 920
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/core/b;->i_()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->D:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Lcom/yelp/android/serializable/TrendingSearches;)V
    .locals 6

    .prologue
    .line 738
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/TrendingSearches;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/TrendingSearches;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 742
    new-instance v1, Lcom/yelp/android/ui/activities/nearby/f;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/f;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 743
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/nearby/f;->a(Ljava/util/List;)V

    .line 745
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/util/aj;

    const v2, 0x7f0f0048

    invoke-virtual {p1}, Lcom/yelp/android/serializable/TrendingSearches;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    const v3, 0x7f0101cd

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    const v3, 0x7f0f0539

    sget v4, Lcom/yelp/android/appdata/n;->l:I

    sget v5, Lcom/yelp/android/appdata/n;->c:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/yelp/android/ui/util/aj$c;->a(III)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/util/ErrorType;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Ljava/util/List;)V

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

    .line 607
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->E:Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

    .line 612
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->E:Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    new-instance v3, Lcom/yelp/android/ui/util/e;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->E:Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

    aput-object v1, v0, v2

    invoke-direct {v3, v0}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    move v1, v2

    .line 622
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 623
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 624
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 625
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->E:Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->setCheckIns(Ljava/util/List;)V

    .line 631
    const v0, 0x7f0701bd

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->E:Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

    new-instance v2, Lcom/yelp/android/ui/util/ak;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->NearbyFriends:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->E:Lcom/yelp/android/ui/activities/nearby/NearbyFriends;

    invoke-virtual {v5}, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/yelp/android/ui/util/ak;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/nearby/NearbyFriends;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f0033

    invoke-static {v3}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    const v3, 0x7f0101cd

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    goto :goto_0

    .line 622
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
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
    const v10, 0x7f0f001f

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 646
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    :cond_0
    iput v3, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->t:I

    .line 698
    :cond_1
    return-void

    .line 651
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->t:I

    move v2, v3

    .line 652
    :goto_0
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->t:I

    if-ge v2, v0, :cond_1

    .line 653
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/NearbyRow;

    .line 654
    new-instance v1, Lcom/yelp/android/ui/activities/nearby/b;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/yelp/android/ui/activities/nearby/b;-><init>(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->b()I

    move-result v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_5

    .line 656
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->e()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/nearby/b;->a(Ljava/util/List;)V

    .line 657
    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/activities/nearby/b;->a(Z)V

    .line 662
    :goto_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    const v4, 0x7f0101cd

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    .line 665
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->b()I

    move-result v5

    if-le v1, v5, :cond_4

    .line 666
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f030106

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 673
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_3

    .line 674
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0a00a6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 678
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 683
    :cond_3
    const v1, 0x7f0f03a9

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 684
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f080019

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->e()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->b()I

    move-result v0

    sub-int v0, v8, v0

    invoke-static {v6, v7, v0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 691
    invoke-virtual {v1, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 692
    new-instance v6, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$b;

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v0, v2, v7}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$b;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;ILcom/yelp/android/ui/activities/nearby/NearbyPageFragment$1;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    invoke-virtual {v4, v5}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    .line 696
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v4}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 652
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 659
    :cond_5
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->e()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->b()I

    move-result v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/nearby/b;->a(Ljava/util/List;)V

    .line 660
    invoke-virtual {v1, v9}, Lcom/yelp/android/ui/activities/nearby/b;->a(Z)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Z)Z
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Lcom/yelp/android/serializable/LocalIssue;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->G:Lcom/yelp/android/serializable/LocalIssue;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->A:Ljava/util/ArrayList;

    return-object p1
.end method

.method private b(Lcom/yelp/android/util/ErrorType;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 798
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_ERROR:Lcom/yelp/android/util/ErrorType;

    if-ne p1, v0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->o:Z

    if-nez v0, :cond_1

    .line 803
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->o:Z

    .line 804
    new-instance v0, Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->y:Lcom/yelp/android/ui/panels/PanelError;

    .line 805
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->y:Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 806
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->y:Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 808
    new-instance v0, Lcom/yelp/android/ui/util/e;

    new-array v1, v2, [Landroid/view/View;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->y:Lcom/yelp/android/ui/panels/PanelError;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->z:Lcom/yelp/android/ui/util/e;

    .line 809
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f0026

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->z:Lcom/yelp/android/ui/util/e;

    invoke-static {v2}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 813
    :cond_1
    sget-object v0, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    if-ne p1, v0, :cond_2

    .line 814
    const v0, 0x7f0706c1

    invoke-static {v3, v0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a(ZI)Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;

    move-result-object v0

    .line 817
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Landroid/widget/ListAdapter;)V

    .line 822
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 823
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->l()V

    .line 824
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Z)V

    goto :goto_0
.end method

.method private b(Ljava/util/List;)V
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
    const v5, 0x7f0f001f

    const v4, 0x7f070622

    .line 757
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/activities/events/f;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/f;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 761
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/f;->a(Ljava/util/List;)V

    .line 762
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    const v2, 0x7f0101cd

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    sget v2, Lcom/yelp/android/appdata/n;->l:I

    sget v3, Lcom/yelp/android/appdata/n;->c:I

    invoke-virtual {v0, v5, v2, v3}, Lcom/yelp/android/ui/util/aj$c;->a(III)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 771
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->t:I

    if-lez v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/util/aj;

    iget v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->t:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$b;->b()Landroid/view/View;

    move-result-object v0

    .line 773
    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->B:Ljava/util/ArrayList;

    return-object p1
.end method

.method private c(Lcom/yelp/android/util/ErrorType;)V
    .locals 2

    .prologue
    .line 835
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_ERROR:Lcom/yelp/android/util/ErrorType;

    if-ne p1, v0, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->s:I

    .line 841
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->w:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p1, v0}, Lcom/yelp/android/util/ErrorType;->isMoreImportant(Lcom/yelp/android/util/ErrorType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->w:Lcom/yelp/android/util/ErrorType;

    .line 845
    :cond_2
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->s:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 846
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->w:Lcom/yelp/android/util/ErrorType;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b(Lcom/yelp/android/util/ErrorType;)V

    goto :goto_0
.end method

.method private c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 865
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/util/ErrorType;)V

    .line 870
    :goto_0
    return-void

    .line 868
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->h()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->v:Z

    return v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->D:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->C:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Lcom/yelp/android/util/ErrorType;
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->v()Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->H_()V

    .line 313
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->F:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$a;->a()V

    .line 315
    iput v4, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->s:I

    .line 316
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_ERROR:Lcom/yelp/android/util/ErrorType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->w:Lcom/yelp/android/util/ErrorType;

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->L:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->L:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 323
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->L:Landroid/os/Handler;

    .line 324
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->v:Z

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->L:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->S:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/cy;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->J:Z

    if-eqz v0, :cond_1

    .line 328
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cy;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->M:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/cy;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/cy;

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/cy;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cy;->a([Ljava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->I:Lcom/yelp/android/ui/activities/nearby/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/a;->b()V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cx;

    if-nez v0, :cond_2

    .line 334
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cx;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->P:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/cx;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cx;

    .line 335
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 336
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cx;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cx;->a([Ljava/lang/Object;)V

    .line 344
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f:Lcom/yelp/android/appdata/webrequests/cz;

    if-nez v0, :cond_3

    .line 345
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cz;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->N:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/cz;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f:Lcom/yelp/android/appdata/webrequests/cz;

    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f:Lcom/yelp/android/appdata/webrequests/cz;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cz;->a([Ljava/lang/Object;)V

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/cw;

    if-nez v0, :cond_4

    .line 350
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cw;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->O:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/cw;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/cw;

    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/cw;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cw;->a([Ljava/lang/Object;)V

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    if-nez v0, :cond_5

    .line 355
    new-instance v0, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;->NEARBY:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->Q:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;-><init>(Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;->a([Ljava/lang/Object;)V

    .line 361
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g:Lcom/yelp/android/appdata/webrequests/et;

    if-nez v0, :cond_6

    .line 362
    new-instance v0, Lcom/yelp/android/appdata/webrequests/et;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->R:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/et;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g:Lcom/yelp/android/appdata/webrequests/et;

    .line 364
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g:Lcom/yelp/android/appdata/webrequests/et;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/et;->a([Ljava/lang/Object;)V

    .line 366
    :cond_6
    return-void

    .line 340
    :cond_7
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/util/ErrorType;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->i()V

    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->h()V

    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 541
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/cy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/cy;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cy;->u()Z

    move-result v0

    if-nez v0, :cond_e

    .line 542
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->J:Z

    if-eqz v0, :cond_1

    .line 543
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->i()V

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g:Lcom/yelp/android/appdata/webrequests/et;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g:Lcom/yelp/android/appdata/webrequests/et;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/et;->u()Z

    move-result v0

    if-nez v0, :cond_e

    .line 546
    :cond_2
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->m:Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment$Cohort;->trending_searches_nearby_list_enabled:Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->r:Z

    if-nez v0, :cond_3

    .line 550
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->H:Lcom/yelp/android/serializable/TrendingSearches;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/serializable/TrendingSearches;)V

    .line 551
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->r:Z

    .line 554
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cx;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cx;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cx;->u()Z

    move-result v0

    if-nez v0, :cond_e

    .line 555
    :cond_4
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->l:Z

    if-nez v0, :cond_5

    .line 556
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->C:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/util/ArrayList;)V

    .line 557
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->l:Z

    .line 559
    :cond_5
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->q:Z

    if-nez v0, :cond_6

    .line 560
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->u()V

    .line 561
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->q:Z

    .line 564
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;->u()Z

    move-result v0

    if-nez v0, :cond_e

    .line 566
    :cond_7
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->p:Z

    if-nez v0, :cond_8

    .line 567
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->t()V

    .line 568
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->p:Z

    .line 571
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f:Lcom/yelp/android/appdata/webrequests/cz;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f:Lcom/yelp/android/appdata/webrequests/cz;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cz;->u()Z

    move-result v0

    if-nez v0, :cond_e

    .line 572
    :cond_9
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m:Z

    if-nez v0, :cond_b

    .line 573
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->F:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$a;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->A:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 576
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->F:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$a;->b()V

    .line 578
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->A:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/util/List;)V

    .line 579
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m:Z

    .line 581
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/cw;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/cw;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cw;->u()Z

    move-result v0

    if-nez v0, :cond_e

    .line 582
    :cond_c
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->n:Z

    if-nez v0, :cond_d

    .line 583
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->B:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b(Ljava/util/List;)V

    .line 584
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->n:Z

    .line 586
    :cond_d
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Landroid/widget/ListAdapter;)V

    .line 587
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b(Z)V

    .line 588
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->l()V

    .line 595
    :cond_e
    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->J:Z

    return v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->I:Lcom/yelp/android/ui/activities/nearby/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->D:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/cy;

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/appdata/webrequests/core/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/nearby/a;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->k:Z

    .line 603
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->l()V

    .line 604
    return-void
.end method

.method private t()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 702
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->G:Lcom/yelp/android/serializable/LocalIssue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->G:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03018b

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 706
    const v0, 0x7f0f00a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->G:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/LocalIssue;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    const v0, 0x7f0f0367

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->G:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/LocalIssue;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    const v0, 0x7f0f04f4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 712
    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/support/v4/app/Fragment;)Lcom/yelp/android/ui/util/t;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->G:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/LocalIssue;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 713
    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 715
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$3;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    new-instance v0, Lcom/yelp/android/ui/util/e;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    aput-object v1, v2, v4

    invoke-direct {v0, v2}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    .line 728
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/util/aj;

    const v2, 0x7f0f0032

    invoke-static {v0}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 731
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->NearbyLocalIssueShown:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 735
    :goto_0
    return-void

    .line 733
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->NearbyLocalIssueUnavailable:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0
.end method

.method private u()V
    .locals 5

    .prologue
    const v4, 0x7f0f0029

    const/4 v3, 0x0

    .line 782
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030176

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 785
    new-instance v0, Lcom/yelp/android/ui/util/e;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    .line 786
    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/util/aj;

    invoke-static {v0}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 789
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/widgets/InAppNotificationView;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setupInAppNotification(Ljava/lang/Class;Landroid/content/Context;Lcom/yelp/android/ui/widgets/InAppNotificationView;Lcom/yelp/android/services/push/c$a;)V

    .line 795
    return-void
.end method

.method private v()Lcom/yelp/android/util/ErrorType;
    .locals 2

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/k;->b(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_LOCATION_PERMISSION:Lcom/yelp/android/util/ErrorType;

    .line 854
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    goto :goto_0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->z:Lcom/yelp/android/ui/util/e;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->z:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 862
    :cond_0
    return-void
.end method

.method private x()V
    .locals 5

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$4;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    sget-object v2, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;->FINDING_PLACES:Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Ljava/lang/Runnable;Lcom/yelp/android/ui/panels/c;)V

    .line 881
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    .line 884
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 889
    return-void
.end method


# virtual methods
.method public H_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 893
    const/4 v0, 0x0

    invoke-super {p0, v0, v2}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 894
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->C()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    .line 895
    sget-object v1, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;->FINDING_PLACES:Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/c;)V

    .line 896
    const v1, 0x7f020301

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setBackgroundResource(I)V

    .line 897
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->setClickable(Z)V

    .line 898
    return-void
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 448
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 449
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 451
    instance-of v2, v0, Lcom/yelp/android/serializable/NearbyResult;

    if-eqz v2, :cond_1

    .line 452
    check-cast v0, Lcom/yelp/android/serializable/NearbyResult;

    .line 453
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 454
    const-string/jumbo v3, "row_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const-string/jumbo v3, "result_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->NearbySuggestion:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v3, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 457
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    instance-of v2, v0, Lcom/yelp/android/serializable/Event;

    if-eqz v2, :cond_3

    .line 460
    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 461
    sget-object v2, Lcom/yelp/android/ui/activities/events/f;->a:Lcom/yelp/android/serializable/Event;

    if-eq v0, v2, :cond_2

    .line 462
    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->Nearby:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-static {v1, v0, v2}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 464
    :cond_2
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->NearbyEvents:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 465
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->B:Ljava/util/ArrayList;

    .line 466
    if-eqz v0, :cond_0

    .line 467
    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/ActivityEvents;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 470
    :cond_3
    instance-of v1, v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    if-eqz v1, :cond_0

    .line 472
    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 474
    new-instance v1, Lcom/yelp/android/g/a;

    invoke-direct {v1}, Lcom/yelp/android/g/a;-><init>()V

    .line 475
    const-string/jumbo v2, "category"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string/jumbo v2, "type"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->NearbyCategory:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v2, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 481
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 520
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Nearby:Lcom/yelp/android/analytics/iris/ViewIri;

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
    .line 525
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 526
    const-string/jumbo v1, "mobile_nearby_new_tag"

    const-string/jumbo v2, "nearby_new_tag"

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string/jumbo v1, "vertical_search_nearby_suggest_prominence"

    const-string/jumbo v2, "vertical_search_nearby_suggest_prominence_experiment"

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x106000d

    .line 234
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 236
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 237
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 238
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setPanelLoadingBackground(I)V

    .line 245
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelector(I)V

    .line 248
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/util/aj;

    .line 250
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->H()V

    .line 251
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onAttach(Landroid/app/Activity;)V

    .line 173
    check-cast p1, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$a;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->F:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$a;

    .line 174
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->k:Z

    .line 180
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->l:Z

    .line 181
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m:Z

    .line 182
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->n:Z

    .line 183
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->p:Z

    .line 184
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->q:Z

    .line 185
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->r:Z

    .line 187
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/nearby/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->I:Lcom/yelp/android/ui/activities/nearby/a;

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->I:Lcom/yelp/android/ui/activities/nearby/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/a;->a()V

    .line 189
    sget-object v0, Lcom/yelp/android/appdata/Features;->nearby_search_suggest:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->J:Z

    .line 191
    if-eqz p1, :cond_0

    .line 192
    const-string/jumbo v0, "rows"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->A:Ljava/util/ArrayList;

    .line 193
    const-string/jumbo v0, "events"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->B:Ljava/util/ArrayList;

    .line 194
    const-string/jumbo v0, "checkins"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->C:Ljava/util/ArrayList;

    .line 195
    const-string/jumbo v0, "category_suggestions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->D:Ljava/util/ArrayList;

    .line 196
    const-string/jumbo v0, "most_important_error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/ErrorType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->w:Lcom/yelp/android/util/ErrorType;

    .line 197
    const-string/jumbo v0, "nearby_last_refresh_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->K:J

    .line 199
    const-string/jumbo v0, "list_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a:Landroid/os/Parcelable;

    .line 200
    const-string/jumbo v0, "local_issue"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalIssue;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->G:Lcom/yelp/android/serializable/LocalIssue;

    .line 201
    const-string/jumbo v0, "trending_searches"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TrendingSearches;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->H:Lcom/yelp/android/serializable/TrendingSearches;

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    const-string/jumbo v1, "com.yelp.android.events.update"

    new-instance v2, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$1;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 218
    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->B:Ljava/util/ArrayList;

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->K:J

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 223
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 224
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;

    .line 226
    const v1, 0x102000a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->a(Landroid/widget/ListView;)V

    .line 228
    :cond_0
    return-object v2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a:Landroid/os/Parcelable;

    .line 297
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onPause()V

    .line 299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->L:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->L:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 303
    :cond_0
    const-string/jumbo v0, "nearby_event_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/cw;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 304
    const-string/jumbo v0, "nearby_friends_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cx;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 305
    const-string/jumbo v0, "nearby_suggest_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f:Lcom/yelp/android/appdata/webrequests/cz;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 306
    const-string/jumbo v0, "nearby_search_suggest_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/cy;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 307
    const-string/jumbo v0, "local_issue_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 308
    const-string/jumbo v0, "trending_searches_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g:Lcom/yelp/android/appdata/webrequests/et;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 309
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 500
    const/16 v0, 0xfa

    if-ne v0, p1, :cond_2

    .line 501
    invoke-static {p2, p3}, Lcom/yelp/android/appdata/k;->a([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v0

    .line 503
    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->F()V

    .line 506
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->z()V

    .line 507
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->PermissionLocationAllowed:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 512
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->u:Z

    .line 516
    :goto_1
    return-void

    .line 509
    :cond_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->PermissionLocationDenied:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 514
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onResume()V

    .line 257
    const-string/jumbo v0, "nearby_event_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->O:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/cw;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/cw;

    .line 258
    const-string/jumbo v0, "nearby_friends_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->P:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/cx;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cx;

    .line 259
    const-string/jumbo v0, "nearby_suggest_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->N:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/cz;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f:Lcom/yelp/android/appdata/webrequests/cz;

    .line 260
    const-string/jumbo v0, "nearby_search_suggest_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->M:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/cy;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/cy;

    .line 262
    const-string/jumbo v0, "local_issue_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->Q:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    .line 265
    const-string/jumbo v0, "trending_searches_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->R:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/et;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g:Lcom/yelp/android/appdata/webrequests/et;

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->K:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->u:Z

    if-eqz v0, :cond_2

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->p_()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->u:Z

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 292
    :cond_1
    return-void

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->A:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->C:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 283
    :cond_3
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f()V

    goto :goto_0

    .line 285
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->h()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 370
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 371
    const-string/jumbo v0, "events"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 373
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->A:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 374
    const-string/jumbo v0, "rows"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 378
    const-string/jumbo v0, "checkins"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->C:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 382
    const-string/jumbo v0, "category_suggestions"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->D:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->G:Lcom/yelp/android/serializable/LocalIssue;

    if-eqz v0, :cond_3

    .line 386
    const-string/jumbo v0, "local_issue"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->G:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->H:Lcom/yelp/android/serializable/TrendingSearches;

    if-eqz v0, :cond_4

    .line 390
    const-string/jumbo v0, "trending_searches"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->H:Lcom/yelp/android/serializable/TrendingSearches;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 393
    :cond_4
    const-string/jumbo v0, "most_important_error"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->w:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 394
    const-string/jumbo v0, "nearby_last_refresh_time"

    iget-wide v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->K:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 395
    const-string/jumbo v0, "list_state"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 396
    return-void
.end method

.method public p_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 400
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->w()V

    .line 401
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x:Lcom/yelp/android/ui/util/aj;

    .line 402
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->J:Z

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->I:Lcom/yelp/android/ui/activities/nearby/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/a;->c()V

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->x()V

    .line 408
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->k:Z

    .line 409
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->l:Z

    .line 410
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m:Z

    .line 411
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->p:Z

    .line 412
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->n:Z

    .line 413
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->o:Z

    .line 414
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->q:Z

    .line 415
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->r:Z

    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/cy;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 418
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c:Lcom/yelp/android/appdata/webrequests/cy;

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f:Lcom/yelp/android/appdata/webrequests/cz;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 421
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f:Lcom/yelp/android/appdata/webrequests/cz;

    .line 423
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cx;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 424
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cx;

    .line 426
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/cw;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 427
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d:Lcom/yelp/android/appdata/webrequests/cw;

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 430
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g:Lcom/yelp/android/appdata/webrequests/et;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 433
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g:Lcom/yelp/android/appdata/webrequests/et;

    .line 435
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->D:Ljava/util/ArrayList;

    .line 436
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->B:Ljava/util/ArrayList;

    .line 437
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->A:Ljava/util/ArrayList;

    .line 438
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->C:Ljava/util/ArrayList;

    .line 439
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->G:Lcom/yelp/android/serializable/LocalIssue;

    .line 440
    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->H:Lcom/yelp/android/serializable/TrendingSearches;

    .line 442
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f()V

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->K:J

    .line 444
    return-void
.end method

.method public q_()V
    .locals 4

    .prologue
    .line 488
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->y:Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelError;->getErrorType()Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_LOCATION_PERMISSION:Lcom/yelp/android/util/ErrorType;

    if-ne v0, v1, :cond_0

    .line 489
    const/16 v0, 0xfa

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yelp/android/appdata/PermissionGroup;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/k;->a(Landroid/support/v4/app/Fragment;I[Lcom/yelp/android/appdata/PermissionGroup;)Z

    .line 495
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->z()V

    .line 493
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->p_()V

    goto :goto_0
.end method
