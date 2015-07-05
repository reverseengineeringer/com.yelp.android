.class public Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityHighlights.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/reviewpage/v;


# instance fields
.field protected a:Lcom/yelp/android/ui/activities/reviewpage/t;

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewHighlight;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReviewInsight;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yelp/android/ui/util/bs;

.field private e:Lcom/yelp/android/appdata/webrequests/eu;

.field private f:I

.field private g:Lcom/yelp/android/serializable/YelpBusiness;

.field private h:Lcom/yelp/android/appdata/webrequests/SearchRequest;

.field private final i:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ev;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 224
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/h;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/h;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->i:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->f:I

    return p1
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/List;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ReviewHighlight;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string/jumbo v1, "extra.param.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "extra.review_highlights"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 84
    const-string/jumbo v1, "extra.review_insights"

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewInsights()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 86
    if-eqz p3, :cond_0

    .line 87
    const-string/jumbo v1, "extra.search_request"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    :cond_0
    return-object v0
.end method

.method private a(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    :goto_0
    return-object v0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->e:Lcom/yelp/android/appdata/webrequests/eu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->e:Lcom/yelp/android/appdata/webrequests/eu;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/eu;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->f:I

    if-ne v2, v0, :cond_2

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/eu;

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->h:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->i:Lcom/yelp/android/appdata/webrequests/m;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/eu;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->e:Lcom/yelp/android/appdata/webrequests/eu;

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->e:Lcom/yelp/android/appdata/webrequests/eu;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/eu;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;I)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    const v0, 0x7f070537

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 191
    const v0, 0x7f070538

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_1
    const v0, 0x7f070536

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/ReviewHighlight;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/ReviewHighlight;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->startActivity(Landroid/content/Intent;)V

    .line 222
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->d()V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessHighlights:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 1
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
    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 98
    const-string/jumbo v0, "extra.param.business"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->g:Lcom/yelp/android/serializable/YelpBusiness;

    .line 99
    const-string/jumbo v0, "extra.review_highlights"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    .line 100
    const-string/jumbo v0, "extra.review_insights"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->c:Ljava/util/ArrayList;

    .line 101
    const-string/jumbo v0, "extra.search_request"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->h:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 103
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->createLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    .line 106
    const v2, 0x7f070341

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->b(I)V

    .line 107
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 109
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->d:Lcom/yelp/android/ui/util/bs;

    .line 110
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/t;

    const v2, 0x7f03013d

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v0, v2, p0, v3}, Lcom/yelp/android/ui/activities/reviewpage/t;-><init>(ILcom/yelp/android/ui/activities/reviewpage/v;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/t;

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->d:Lcom/yelp/android/ui/util/bs;

    const v2, 0x7f070537

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/t;

    invoke-virtual {v0, v2, v3, v4}, Lcom/yelp/android/ui/util/bs;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 115
    if-eqz p1, :cond_1

    .line 116
    const-string/jumbo v0, "HighlightsTotal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->f:I

    .line 117
    const-string/jumbo v0, "Highlights"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/t;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/t;->a(Ljava/util/List;)V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->f:I

    if-lt v0, v2, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/t;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/t;->c()V

    .line 124
    :cond_0
    const-string/jumbo v0, "search_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->h:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->registerForContextMenu(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->d:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/t;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/t;->a(Ljava/util/List;)V

    .line 127
    const v0, 0x7fffffff

    iput v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->f:I

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 209
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->d:Lcom/yelp/android/ui/util/bs;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 211
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    if-eqz v1, :cond_0

    .line 212
    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 213
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 214
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v1, v0}, Lcom/yelp/android/ui/util/bf;->a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 154
    const-string/jumbo v0, "Highlights"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 155
    const-string/jumbo v0, "HighlightsTotal"

    iget v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->h:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_0

    .line 157
    const-string/jumbo v0, "search_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->h:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    :cond_0
    return-void
.end method
