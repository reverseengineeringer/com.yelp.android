.class public Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "NearbyCheckIns.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/yelp/android/ui/activities/support/o;
.implements Lcom/yelp/android/ui/p;
.implements Lcom/yelp/android/ui/panels/aa;


# instance fields
.field a:[I

.field b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

.field c:Lcom/yelp/android/ui/util/bs;

.field d:Lcom/yelp/android/ui/util/bs;

.field e:Lcom/yelp/android/ui/activities/friendcheckins/p;

.field private f:Landroid/view/View;

.field private g:Lcom/yelp/android/appdata/webrequests/cj;

.field private h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

.field private i:Lcom/yelp/android/ui/activities/friendcheckins/q;

.field private j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

.field private k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

.field private l:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

.field private m:Landroid/widget/ListView;

.field private n:Lcom/yelp/android/ui/util/h;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:J

.field private r:I

.field private s:I

.field private t:I

.field private u:Z

.field private final v:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ck;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 436
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/m;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/m;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->v:Lcom/yelp/android/appdata/webrequests/j;

    .line 585
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/n;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/n;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->e:Lcom/yelp/android/ui/activities/friendcheckins/p;

    .line 598
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/o;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/o;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->w:Landroid/widget/AdapterView$OnItemClickListener;

    .line 617
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;J)J
    .locals 1

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->q:J

    return-wide p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->l:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->o:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;)V
    .locals 2

    .prologue
    .line 234
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->l:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    new-instance v1, Lcom/yelp/android/ui/activities/friendcheckins/l;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/friendcheckins/l;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Lcom/yelp/android/ui/util/h;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->n:Lcom/yelp/android/ui/util/h;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e()Landroid/view/ViewGroup;
    .locals 4

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030113

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 210
    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f:Landroid/view/View;

    .line 211
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/friendcheckins/j;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/friendcheckins/j;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v1, 0x7f0c03e3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/panels/LeaderboardHeader;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    .line 219
    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->WEEK:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;)V

    .line 220
    const v1, 0x7f0c03e4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    .line 221
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0703b8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    new-instance v2, Lcom/yelp/android/ui/activities/friendcheckins/k;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/friendcheckins/k;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Lcom/yelp/android/appdata/webrequests/cj;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    return-object v0
.end method

.method private f()I
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    return-object v0
.end method


# virtual methods
.method protected a(III)V
    .locals 1

    .prologue
    .line 419
    iput p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->r:I

    .line 420
    iput p2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->s:I

    .line 421
    iput p3, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->t:I

    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->a(III)V

    .line 423
    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 427
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->setVisibility(I)V

    .line 428
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x2

    const-string/jumbo v1, ", "

    invoke-static {p0, p1, v0, v4, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->getSubTitle()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f07032e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_LOCATION:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 492
    return-void
.end method

.method public a_()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->clearError()V

    .line 370
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->p:Z

    .line 371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cj;->cancel(Z)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->cancel(Z)V

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cj;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->v:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/cj;-><init>(Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    .line 381
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    .line 387
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 388
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/h;->executeWithLocation([Ljava/lang/Object;)V

    .line 389
    return-void

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->i:Lcom/yelp/android/ui/activities/friendcheckins/q;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;->WEEK:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->a(Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    .line 384
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    goto :goto_0
.end method

.method protected addStatusView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 245
    instance-of v0, p1, Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz v0, :cond_0

    .line 246
    const v0, 0x7f0c00e0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 247
    const v1, 0x7f0c023c

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 248
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->addStatusView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public c()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;",
            "Lcom/yelp/android/appdata/webrequests/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public clearError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->clearError()V

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->setVisibility(I)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->setVisibility(I)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_2
    return-void
.end method

.method public d()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;",
            "Lcom/yelp/android/appdata/webrequests/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->clear()V

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->clear()V

    .line 259
    const v0, 0x7f0c00e1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 582
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckInsFriends:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public k_()V
    .locals 0

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a_()V

    .line 497
    return-void
.end method

.method public m_()V
    .locals 0

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a_()V

    .line 502
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->e:Lcom/yelp/android/ui/activities/friendcheckins/p;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/friendcheckins/p;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 205
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    const v13, 0x7f0c01c1

    const/4 v1, 0x1

    const/4 v12, -0x1

    const/4 v2, 0x0

    .line 121
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->setContentView(I)V

    .line 123
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->u:Z

    .line 124
    const v0, 0x7f0c00df

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 126
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->e()Landroid/view/ViewGroup;

    move-result-object v0

    .line 127
    new-instance v3, Lcom/yelp/android/ui/activities/friendcheckins/i;

    new-array v4, v1, [Landroid/view/View;

    aput-object v0, v4, v2

    invoke-direct {v3, p0, v4}, Lcom/yelp/android/ui/activities/friendcheckins/i;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;[Landroid/view/View;)V

    iput-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->n:Lcom/yelp/android/ui/util/h;

    .line 132
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    .line 137
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->n:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0, v13, v3, v4}, Lcom/yelp/android/ui/util/bs;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "like"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    const/16 v3, 0x67

    invoke-virtual {p0, v3, v0, v2}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "comment"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    const/16 v3, 0x66

    invoke-virtual {p0, v3, v0, v2}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "view_like_comment"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    const/16 v3, 0x68

    invoke-virtual {p0, v3, v0, v2}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 145
    iget-object v7, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    array-length v8, v7

    move v3, v2

    :goto_0
    if-ge v3, v8, :cond_1

    aget v9, v7, v3

    .line 146
    new-instance v10, Lcom/yelp/android/ui/activities/friendcheckins/a;

    const v0, 0x7f07013c

    if-ne v9, v0, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {v10, v0, v2}, Lcom/yelp/android/ui/activities/friendcheckins/a;-><init>(ZZ)V

    .line 148
    invoke-virtual {v10, v4}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a(Landroid/app/PendingIntent;)V

    .line 149
    invoke-virtual {v10, v5}, Lcom/yelp/android/ui/activities/friendcheckins/a;->b(Landroid/app/PendingIntent;)V

    .line 150
    invoke-virtual {v10, v6}, Lcom/yelp/android/ui/activities/friendcheckins/a;->c(Landroid/app/PendingIntent;)V

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v9, v11, v10}, Lcom/yelp/android/ui/util/bs;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 145
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 146
    goto :goto_1

    .line 153
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/bs;

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/bs;

    const-string/jumbo v1, ""

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->n:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0, v13, v1, v3}, Lcom/yelp/android/ui/util/bs;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 155
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->WEEK:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c03f1

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-virtual {v0, v1, v3, v4}, Lcom/yelp/android/ui/util/bs;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 158
    iput v12, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->r:I

    .line 159
    iput v12, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->s:I

    .line 160
    iput v12, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->t:I

    .line 161
    if-eqz p1, :cond_3

    .line 162
    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    array-length v4, v3

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_2

    aget v5, v3, v1

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a(Ljava/util/List;)V

    .line 162
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 166
    :cond_2
    const-string/jumbo v0, "weekly_rank"

    invoke-virtual {p1, v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->r:I

    .line 167
    const-string/jumbo v0, "friend_rank"

    invoke-virtual {p1, v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->s:I

    .line 168
    const-string/jumbo v0, "friend_active_count"

    invoke-virtual {p1, v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->t:I

    .line 169
    iget v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->r:I

    iget v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->s:I

    iget v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->t:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(III)V

    .line 170
    const-string/jumbo v0, "recent_locations"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->o:Ljava/util/ArrayList;

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Ljava/util/ArrayList;)V

    .line 172
    invoke-static {}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->values()[Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    move-result-object v0

    const-string/jumbo v1, "rank_target"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;)V

    .line 175
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d()Landroid/util/Pair;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_4

    .line 177
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    .line 178
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/cj;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    .line 180
    :cond_4
    return-void

    .line 132
    nop

    :array_0
    .array-data 4
        0x7f07013b
        0x7f07013d
        0x7f07013c
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .prologue
    .line 528
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v0, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p3

    .line 533
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 534
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move-object v0, p2

    .line 535
    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 536
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 537
    instance-of v1, v0, Lcom/yelp/android/serializable/CheckIn;

    if-eqz v1, :cond_0

    .line 541
    check-cast v0, Lcom/yelp/android/serializable/CheckIn;

    .line 542
    const v1, 0x7f020078

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 543
    const v1, 0x7f07012d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Lcom/yelp/android/serializable/CheckIn;->getUserName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 544
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/bf;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/CheckIn;)V

    .line 545
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 518
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 519
    instance-of v1, v0, Lcom/yelp/android/serializable/CheckIn;

    if-eqz v1, :cond_0

    .line 520
    check-cast v0, Lcom/yelp/android/serializable/CheckIn;

    invoke-interface {v0}, Lcom/yelp/android/serializable/CheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->startActivity(Landroid/content/Intent;)V

    .line 523
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 184
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->setIntent(Landroid/content/Intent;)V

    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->clear()V

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->clear()V

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->cancel(Z)V

    .line 191
    :cond_0
    iput-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cj;->cancel(Z)V

    .line 195
    :cond_1
    iput-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->u:Z

    .line 197
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const v4, 0x7f070281

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 300
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 301
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Checkin:Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-static {}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getIdForCheckInFriends()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/Integer;)V

    .line 303
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 304
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->u:Z

    if-nez v0, :cond_1

    .line 305
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->u:Z

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->registerForContextMenu(Landroid/view/View;)V

    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->v:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cj;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    if-nez v0, :cond_3

    .line 318
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a_()V

    .line 349
    :cond_2
    :goto_0
    return-void

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cj;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cj;->isWaitingForLocation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    invoke-virtual {p0, v0, v4}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    goto :goto_0

    .line 323
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/bs;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 324
    :cond_6
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a_()V

    goto :goto_0

    .line 327
    :cond_7
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->u:Z

    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->unregisterForContextMenu(Landroid/view/View;)V

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/q;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/q;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->i:Lcom/yelp/android/ui/activities/friendcheckins/q;

    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->w:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    if-eqz v0, :cond_8

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->i:Lcom/yelp/android/ui/activities/friendcheckins/q;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 335
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    if-eqz v0, :cond_a

    .line 336
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cj;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 337
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0

    .line 338
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cj;->isWaitingForLocation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cj;

    invoke-virtual {p0, v0, v4}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    goto :goto_0

    .line 340
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a([I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->p:Z

    if-eqz v0, :cond_c

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->q:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x258

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 346
    :cond_c
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a_()V

    goto/16 :goto_0
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 394
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    .line 396
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    .line 398
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 399
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 401
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    .line 402
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    .line 403
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 404
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 406
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    const/4 v1, 0x2

    aget v1, v0, v1

    .line 407
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    .line 408
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 409
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 411
    :cond_0
    const-string/jumbo v0, "weekly_rank"

    iget v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->r:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 412
    const-string/jumbo v0, "friend_rank"

    iget v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    const-string/jumbo v0, "friend_active_count"

    iget v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->t:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    const-string/jumbo v0, "rank_target"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->l:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    const-string/jumbo v0, "recent_locations"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 416
    return-void
.end method

.method public populateError(Lcom/yelp/android/util/ErrorType;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 264
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->clear()V

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->clear()V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->setVisibility(I)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->setVisibility(I)V

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_2
    return-void
.end method
