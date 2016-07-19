.class public Lcom/yelp/android/ui/panels/e;
.super Lcom/yelp/android/ui/panels/d;
.source "SearchPanelMapCallout.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/yelp/android/serializable/BusinessSearchResult;

.field private c:J

.field private final d:Lcom/google/android/gms/maps/model/c;

.field private final e:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

.field private final f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/google/android/gms/maps/model/c;Lcom/yelp/android/ui/panels/businesssearch/a;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/d;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/yelp/android/ui/panels/e;->e:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    .line 46
    iput-object p2, p0, Lcom/yelp/android/ui/panels/e;->d:Lcom/google/android/gms/maps/model/c;

    .line 47
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/panels/e;->f:I

    .line 49
    instance-of v0, p3, Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v0, :cond_0

    .line 50
    check-cast p3, Lcom/yelp/android/serializable/BusinessSearchResult;

    iput-object p3, p0, Lcom/yelp/android/ui/panels/e;->b:Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 52
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/e;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/yelp/android/ui/panels/e;->c:J

    return-wide v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/e;J)J
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/yelp/android/ui/panels/e;->c:J

    return-wide p1
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 6

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/panels/e;->b:Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 115
    const/4 v1, 0x0

    .line 117
    iget-object v2, p0, Lcom/yelp/android/ui/panels/e;->b:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessSearchResult;->c()Ljava/util/ArrayList;

    move-result-object v2

    .line 118
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SearchAction;

    .line 119
    invoke-interface {v1}, Lcom/yelp/android/serializable/SearchAction;->a()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v2

    sget-object v5, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Platform:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    if-ne v2, v5, :cond_2

    if-nez v3, :cond_2

    sget-object v2, Lcom/yelp/android/appdata/Features;->platform_attributes:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 122
    check-cast v2, Lcom/yelp/android/serializable/PlatformSearchAction;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PlatformSearchAction;->q()Ljava/util/List;

    move-result-object v2

    .line 125
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3, p1, v2}, Lcom/yelp/android/ui/util/ai;->b(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 128
    const/4 v3, 0x1

    move v2, v3

    .line 132
    :goto_1
    iget-object v3, p0, Lcom/yelp/android/ui/panels/e;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/e;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v1, v0, v5}, Lcom/yelp/android/ui/util/ah;->a(Landroid/view/ViewGroup;Lcom/yelp/android/serializable/SearchAction;Landroid/view/LayoutInflater;Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v3

    .line 135
    iget-object v5, p0, Lcom/yelp/android/ui/panels/e;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    invoke-interface {v1}, Lcom/yelp/android/serializable/SearchAction;->b()Z

    move-result v5

    if-nez v5, :cond_0

    .line 139
    new-instance v5, Lcom/yelp/android/ui/panels/e$3;

    invoke-direct {v5, p0, v1}, Lcom/yelp/android/ui/panels/e$3;-><init>(Lcom/yelp/android/ui/panels/e;Lcom/yelp/android/serializable/SearchAction;)V

    .line 155
    iget-object v1, p0, Lcom/yelp/android/ui/panels/e;->d:Lcom/google/android/gms/maps/model/c;

    invoke-virtual {v5, v1}, Lcom/yelp/android/ui/map/h;->a(Lcom/google/android/gms/maps/model/c;)V

    .line 156
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    move v3, v2

    .line 158
    goto :goto_0

    .line 160
    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/e;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/yelp/android/ui/panels/e;->f:I

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/panels/e;)Lcom/yelp/android/serializable/BusinessSearchResult;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/panels/e;->b:Lcom/yelp/android/serializable/BusinessSearchResult;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/panels/e;)Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/panels/e;->e:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/panels/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/panels/e;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Lcom/yelp/android/ui/panels/d;->a()V

    .line 60
    const v0, 0x7f0f0462

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 63
    check-cast v0, Landroid/view/ViewStub;

    .line 64
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 67
    :goto_0
    const v0, 0x7f0f058a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 69
    const v2, 0x7f0f023a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yelp/android/ui/panels/e;->a:Landroid/widget/LinearLayout;

    .line 70
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 71
    iget-object v1, p0, Lcom/yelp/android/ui/panels/e;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 74
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/e;->a(Landroid/widget/LinearLayout;)V

    .line 76
    const v0, 0x7f0f04de

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/yelp/android/ui/panels/e$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/e$1;-><init>(Lcom/yelp/android/ui/panels/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v1, Lcom/yelp/android/ui/panels/e$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/e$2;-><init>(Lcom/yelp/android/ui/panels/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 103
    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method protected a(Lcom/yelp/android/serializable/YelpBusiness;Z)V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/panels/d;->a(Lcom/yelp/android/serializable/YelpBusiness;Z)V

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/panels/e;->b:Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/panels/e;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public getBusinessSearchResult()Lcom/yelp/android/serializable/BusinessSearchResult;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/panels/e;->b:Lcom/yelp/android/serializable/BusinessSearchResult;

    return-object v0
.end method

.method public setSearchRequestId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/yelp/android/ui/panels/e;->g:Ljava/lang/String;

    .line 107
    return-void
.end method
