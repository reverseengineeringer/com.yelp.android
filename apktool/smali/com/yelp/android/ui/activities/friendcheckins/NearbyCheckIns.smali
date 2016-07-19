.class public Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "NearbyCheckIns.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/yelp/android/ui/activities/support/b$e;
.implements Lcom/yelp/android/ui/k;
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$a;,
        Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$b;
    }
.end annotation


# instance fields
.field a:[I

.field b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

.field c:Lcom/yelp/android/ui/util/aj;

.field d:Lcom/yelp/android/ui/util/aj;

.field e:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$a;

.field private f:Landroid/view/View;

.field private g:Lcom/yelp/android/appdata/webrequests/cb;

.field private h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

.field private i:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$b;

.field private j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

.field private k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

.field private l:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

.field private m:Landroid/widget/ListView;

.field private n:Lcom/yelp/android/ui/util/e;

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

.field private final v:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/cb$a;",
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

    .line 457
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->v:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 613
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$6;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->e:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$a;

    .line 628
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$7;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->w:Landroid/widget/AdapterView$OnItemClickListener;

    .line 649
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
    .line 253
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->l:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    new-instance v1, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$4;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Lcom/yelp/android/ui/util/e;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->n:Lcom/yelp/android/ui/util/e;

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

.method static synthetic e(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Lcom/yelp/android/appdata/webrequests/cb;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    return-object v0
.end method

.method private f()Landroid/view/ViewGroup;
    .locals 4

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030174

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 226
    const v1, 0x7f0f011b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f:Landroid/view/View;

    .line 227
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$2;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v1, 0x7f0f04ca

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/panels/LeaderboardHeader;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    .line 237
    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->WEEK:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;)V

    .line 238
    const v1, 0x7f0f04cb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    .line 239
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->setVisibility(I)V

    .line 240
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0703ee

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    new-instance v2, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$3;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$3;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    return-object v0
.end method

.method private g()I
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected a(III)V
    .locals 1

    .prologue
    .line 440
    iput p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->r:I

    .line 441
    iput p2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->s:I

    .line 442
    iput p3, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->t:I

    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->a(III)V

    .line 444
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

    .line 448
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->setVisibility(I)V

    .line 449
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x2

    const-string/jumbo v1, ", "

    invoke-static {p0, p1, v0, v4, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 452
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->getSubTitle()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f070365

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 518
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_LOCATION:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 519
    return-void
.end method

.method protected addStatusView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 266
    instance-of v0, p1, Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz v0, :cond_0

    .line 267
    const v0, 0x7f0f012c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 268
    const v1, 0x7f0f0283

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 269
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->addStatusView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->p_()V

    .line 524
    return-void
.end method

.method public c()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;",
            "Lcom/yelp/android/appdata/webrequests/cb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public clearError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->clearError()V

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->setVisibility(I)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->setVisibility(I)V

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 315
    :cond_2
    return-void
.end method

.method public e()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;",
            "Lcom/yelp/android/appdata/webrequests/cb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
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
    .line 277
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->clear()V

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->clear()V

    .line 280
    const v0, 0x7f0f012d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 610
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckInsFriends:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
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
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->e()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->e:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$a;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 219
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    const v13, 0x7f0f01f1

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v12, -0x1

    const/4 v2, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->setContentView(I)V

    .line 124
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->u:Z

    .line 125
    const v0, 0x7f0f012b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 127
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f()Landroid/view/ViewGroup;

    move-result-object v0

    .line 128
    new-instance v3, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$1;

    new-array v4, v1, [Landroid/view/View;

    aput-object v0, v4, v2

    invoke-direct {v3, p0, v4}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$1;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;[Landroid/view/View;)V

    iput-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->n:Lcom/yelp/android/ui/util/e;

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    .line 139
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->n:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0, v13, v3, v4}, Lcom/yelp/android/ui/util/aj;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "like"

    const-class v4, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-direct {v0, v3, v7, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    const/16 v3, 0x67

    invoke-virtual {p0, v3, v0, v2}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "comment"

    const-class v5, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-direct {v0, v3, v7, p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    const/16 v3, 0x66

    invoke-virtual {p0, v3, v0, v2}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "view_like_comment"

    const-class v6, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-direct {v0, v3, v7, p0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    const/16 v3, 0x68

    invoke-virtual {p0, v3, v0, v2}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 157
    iget-object v7, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    array-length v8, v7

    move v3, v2

    :goto_0
    if-ge v3, v8, :cond_1

    aget v9, v7, v3

    .line 158
    new-instance v10, Lcom/yelp/android/ui/activities/friendcheckins/a;

    const v0, 0x7f0701be

    if-ne v9, v0, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {v10, v0, v2}, Lcom/yelp/android/ui/activities/friendcheckins/a;-><init>(ZZ)V

    .line 161
    invoke-virtual {v10, v4}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a(Landroid/app/PendingIntent;)V

    .line 162
    invoke-virtual {v10, v5}, Lcom/yelp/android/ui/activities/friendcheckins/a;->b(Landroid/app/PendingIntent;)V

    .line 163
    invoke-virtual {v10, v6}, Lcom/yelp/android/ui/activities/friendcheckins/a;->c(Landroid/app/PendingIntent;)V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v9, v11, v10}, Lcom/yelp/android/ui/util/aj;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 157
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 158
    goto :goto_1

    .line 166
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/aj;

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/aj;

    const-string/jumbo v1, ""

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->n:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0, v13, v1, v3}, Lcom/yelp/android/ui/util/aj;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 168
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->WEEK:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f04d6

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-virtual {v0, v1, v3, v4}, Lcom/yelp/android/ui/util/aj;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 171
    iput v12, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->r:I

    .line 172
    iput v12, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->s:I

    .line 173
    iput v12, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->t:I

    .line 174
    if-eqz p1, :cond_3

    .line 175
    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    array-length v4, v3

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_2

    aget v5, v3, v1

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a(Ljava/util/List;)V

    .line 175
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 179
    :cond_2
    const-string/jumbo v0, "weekly_rank"

    invoke-virtual {p1, v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->r:I

    .line 180
    const-string/jumbo v0, "friend_rank"

    invoke-virtual {p1, v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->s:I

    .line 181
    const-string/jumbo v0, "friend_active_count"

    invoke-virtual {p1, v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->t:I

    .line 182
    iget v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->r:I

    iget v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->s:I

    iget v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->t:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(III)V

    .line 183
    const-string/jumbo v0, "recent_locations"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->o:Ljava/util/ArrayList;

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Ljava/util/ArrayList;)V

    .line 185
    invoke-static {}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->values()[Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    move-result-object v0

    const-string/jumbo v1, "rank_target"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;)V

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->e()Landroid/util/Pair;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_4

    .line 191
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    .line 192
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/cb;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    .line 194
    :cond_4
    return-void

    .line 133
    :array_0
    .array-data 4
        0x7f0701bd
        0x7f0701bf
        0x7f0701be
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .prologue
    .line 555
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p3

    .line 560
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 561
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move-object v0, p2

    .line 562
    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 563
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 564
    instance-of v1, v0, Lcom/yelp/android/serializable/CheckIn;

    if-eqz v1, :cond_0

    .line 568
    check-cast v0, Lcom/yelp/android/serializable/CheckIn;

    .line 569
    const v1, 0x7f02008e

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 570
    const v1, 0x7f0701ac

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Lcom/yelp/android/serializable/CheckIn;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 571
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/ab;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/CheckIn;)V

    .line 572
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
    .line 545
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 546
    instance-of v1, v0, Lcom/yelp/android/serializable/CheckIn;

    if-eqz v1, :cond_0

    .line 547
    check-cast v0, Lcom/yelp/android/serializable/CheckIn;

    invoke-interface {v0}, Lcom/yelp/android/serializable/CheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->startActivity(Landroid/content/Intent;)V

    .line 551
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 198
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 199
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->setIntent(Landroid/content/Intent;)V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->clear()V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->clear()V

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->a(Z)V

    .line 205
    :cond_0
    iput-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cb;->a(Z)V

    .line 209
    :cond_1
    iput-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->u:Z

    .line 211
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const v4, 0x7f0702d3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 319
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 320
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Checkin:Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-static {}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getIdForCheckInFriends()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/Integer;)V

    .line 322
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 323
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->u:Z

    if-nez v0, :cond_1

    .line 324
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->u:Z

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->registerForContextMenu(Landroid/view/View;)V

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->v:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cb;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    if-nez v0, :cond_3

    .line 337
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->p_()V

    .line 369
    :cond_2
    :goto_0
    return-void

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cb;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cb;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 341
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    invoke-virtual {p0, v0, v4}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    goto :goto_0

    .line 342
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/aj;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 343
    :cond_6
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->p_()V

    goto :goto_0

    .line 346
    :cond_7
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->u:Z

    .line 347
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->unregisterForContextMenu(Landroid/view/View;)V

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$b;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->i:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$b;

    .line 350
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->w:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 352
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    if-eqz v0, :cond_8

    .line 353
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->i:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 355
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    if-eqz v0, :cond_a

    .line 356
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cb;->u()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0

    .line 358
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cb;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    invoke-virtual {p0, v0, v4}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    goto :goto_0

    .line 361
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a([I)Z

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

    .line 366
    :cond_c
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->p_()V

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
    .line 414
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 415
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    .line 419
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 420
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    .line 423
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    .line 424
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 425
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 427
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    const/4 v1, 0x2

    aget v1, v0, v1

    .line 428
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    .line 429
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 430
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 432
    :cond_0
    const-string/jumbo v0, "weekly_rank"

    iget v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->r:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 433
    const-string/jumbo v0, "friend_rank"

    iget v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    const-string/jumbo v0, "friend_active_count"

    iget v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->t:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    const-string/jumbo v0, "rank_target"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->l:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    const-string/jumbo v0, "recent_locations"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 437
    return-void
.end method

.method public p_()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->clearError()V

    .line 390
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->p:Z

    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cb;->a(Z)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->a(Z)V

    .line 399
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cb;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->v:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/cb;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    .line 401
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->g:Lcom/yelp/android/appdata/webrequests/cb;

    .line 408
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 409
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/k;->a([Ljava/lang/Object;)V

    .line 410
    return-void

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->i:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$b;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;->WEEK:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->a(Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    .line 405
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->h:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    goto :goto_0
.end method

.method public populateError(Lcom/yelp/android/util/ErrorType;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 285
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->clear()V

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->clear()V

    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->j:Lcom/yelp/android/ui/panels/LeaderboardHeader;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->setVisibility(I)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->k:Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->setVisibility(I)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    :cond_2
    return-void
.end method

.method public q_()V
    .locals 0

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->p_()V

    .line 529
    return-void
.end method
