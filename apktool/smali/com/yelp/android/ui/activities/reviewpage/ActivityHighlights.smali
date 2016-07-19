.class public Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityHighlights.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/reviewpage/a$a;


# instance fields
.field protected a:Lcom/yelp/android/ui/activities/reviewpage/a;

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

.field private d:Lcom/yelp/android/ui/util/aj;

.field private e:Lcom/yelp/android/appdata/webrequests/dw;

.field private f:I

.field private g:Lcom/yelp/android/serializable/YelpBusiness;

.field private h:Lcom/yelp/android/appdata/webrequests/SearchRequest;

.field private final i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dw$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 231
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;I)I
    .locals 0

    .prologue
    .line 45
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
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const-string/jumbo v1, "extra.param.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 85
    const-string/jumbo v1, "extra.review_highlights"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 86
    const-string/jumbo v1, "extra.review_insights"

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aO()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    if-eqz p3, :cond_0

    .line 90
    const-string/jumbo v1, "extra.search_request"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 92
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
    .line 181
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 190
    :goto_0
    return-object v0

    .line 187
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
    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->e:Lcom/yelp/android/appdata/webrequests/dw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->e:Lcom/yelp/android/appdata/webrequests/dw;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dw;->u()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->f:I

    if-ne v2, v0, :cond_2

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dw;

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->h:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/dw;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->e:Lcom/yelp/android/appdata/webrequests/dw;

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->e:Lcom/yelp/android/appdata/webrequests/dw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dw;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 195
    const v0, 0x7f070536

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 197
    const v0, 0x7f070537

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_1
    const v0, 0x7f070535

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;I)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/ReviewHighlight;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/ReviewHighlight;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->startActivity(Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->c()V

    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessHighlights:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 1
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
    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 101
    const-string/jumbo v0, "extra.param.business"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->g:Lcom/yelp/android/serializable/YelpBusiness;

    .line 102
    const-string/jumbo v0, "extra.review_highlights"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    .line 103
    const-string/jumbo v0, "extra.review_insights"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->c:Ljava/util/ArrayList;

    .line 104
    const-string/jumbo v0, "extra.search_request"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->h:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 106
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->createLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    .line 109
    const v2, 0x7f07037c

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->a(I)V

    .line 110
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 112
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->d:Lcom/yelp/android/ui/util/aj;

    .line 113
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/a;

    const v2, 0x7f03019f

    invoke-direct {v0, v2, p0}, Lcom/yelp/android/ui/activities/reviewpage/a;-><init>(ILcom/yelp/android/ui/activities/reviewpage/a$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/a;

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->d:Lcom/yelp/android/ui/util/aj;

    const v2, 0x7f070536

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/a;

    invoke-virtual {v0, v2, v3, v4}, Lcom/yelp/android/ui/util/aj;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 120
    if-eqz p1, :cond_1

    .line 121
    const-string/jumbo v0, "HighlightsTotal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->f:I

    .line 122
    const-string/jumbo v0, "Highlights"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/a;->a(Ljava/util/List;)V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->f:I

    if-lt v0, v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/a;->c()V

    .line 129
    :cond_0
    const-string/jumbo v0, "search_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->h:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->registerForContextMenu(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->d:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/a;->a(Ljava/util/List;)V

    .line 132
    const v0, 0x7fffffff

    iput v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->f:I

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 215
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->d:Lcom/yelp/android/ui/util/aj;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 217
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 219
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 220
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v1, v0}, Lcom/yelp/android/ui/util/ab;->a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    const-string/jumbo v0, "Highlights"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 161
    const-string/jumbo v0, "HighlightsTotal"

    iget v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->h:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_0

    .line 163
    const-string/jumbo v0, "search_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->h:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 165
    :cond_0
    return-void
.end method
