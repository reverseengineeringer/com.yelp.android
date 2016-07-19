.class public Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityFavoritesList.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# instance fields
.field private a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

.field private b:Ljava/lang/String;

.field private c:Lcom/yelp/android/appdata/webrequests/bw;

.field private d:Lcom/yelp/android/ui/activities/favoriteslist/a;

.field private e:Landroid/view/View;

.field private f:Z

.field private g:Lcom/yelp/android/serializable/YelpBusiness;

.field private h:Lcom/yelp/android/util/c;

.field private i:Lcom/yelp/android/serializable/FavoritesList;

.field private final j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/FavoritesList;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/yelp/android/ui/activities/favoriteslist/a$a;

.field private final l:Lcom/yelp/android/util/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 256
    new-instance v0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;-><init>(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 285
    new-instance v0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$4;-><init>(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->k:Lcom/yelp/android/ui/activities/favoriteslist/a$a;

    .line 302
    new-instance v0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$5;-><init>(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->l:Lcom/yelp/android/util/c$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const-string/jumbo v1, "list_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/appdata/webrequests/bw;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->c:Lcom/yelp/android/appdata/webrequests/bw;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;Lcom/yelp/android/appdata/webrequests/bw;)Lcom/yelp/android/appdata/webrequests/bw;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->c:Lcom/yelp/android/appdata/webrequests/bw;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;Lcom/yelp/android/serializable/FavoritesList;)Lcom/yelp/android/serializable/FavoritesList;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->i:Lcom/yelp/android/serializable/FavoritesList;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->g:Lcom/yelp/android/serializable/YelpBusiness;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 75
    const-string/jumbo v1, "biz_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v1, "list_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->d:Lcom/yelp/android/ui/activities/favoriteslist/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/favoriteslist/a;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->i:Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FavoritesList;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    new-instance v1, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$1;-><init>(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnLoadNeeded(Ljava/lang/Runnable;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 209
    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->i:Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FavoritesList;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->e:Landroid/view/View;

    const v2, 0x7f0f0113

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->e:Landroid/view/View;

    const v1, 0x7f0f00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->i:Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FavoritesList;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->e:Landroid/view/View;

    const v1, 0x7f0f035a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 218
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->i:Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FavoritesList;->a()I

    move-result v1

    .line 220
    if-ne v1, v6, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070454

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->e:Landroid/view/View;

    const v1, 0x7f0f0183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 227
    new-instance v1, Lcom/yelp/android/ui/util/ap$b;

    invoke-direct {v1, v0, v5}, Lcom/yelp/android/ui/util/ap$b;-><init>(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->i:Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FavoritesList;->g()Lcom/yelp/android/serializable/Passport;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/ap$b;->a(Lcom/yelp/android/serializable/DisplayableAsUserBadge;)V

    .line 228
    new-instance v1, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$2;-><init>(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->e:Landroid/view/View;

    const v1, 0x7f0f0185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 246
    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->i:Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FavoritesList;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    :goto_1
    iput-boolean v6, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->f:Z

    .line 254
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070668

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->i:Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FavoritesList;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/serializable/FavoritesList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->i:Lcom/yelp/android/serializable/FavoritesList;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/ui/util/ScrollToLoadListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->b()V

    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/ui/activities/favoriteslist/a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->d:Lcom/yelp/android/ui/activities/favoriteslist/a;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a()V

    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->g:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/util/c;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->h:Lcom/yelp/android/util/c;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FavoritesList:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

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
    .line 178
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 179
    const-string/jumbo v1, "list_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->h:Lcom/yelp/android/util/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, p1, p2, v1}, Lcom/yelp/android/util/c;->a(IILcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->g:Lcom/yelp/android/serializable/YelpBusiness;

    .line 164
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->setContentView(I)V

    .line 85
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 86
    new-instance v0, Lcom/yelp/android/ui/widgets/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const v2, 0x7f03003c

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/widgets/e;-><init>(Landroid/widget/ListView;I)V

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/e;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->e:Landroid/view/View;

    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "list_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->b:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/yelp/android/ui/activities/favoriteslist/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->k:Lcom/yelp/android/ui/activities/favoriteslist/a$a;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/favoriteslist/a;-><init>(Lcom/yelp/android/ui/activities/favoriteslist/a$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->d:Lcom/yelp/android/ui/activities/favoriteslist/a;

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->d:Lcom/yelp/android/ui/activities/favoriteslist/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const-string/jumbo v0, "saved_business_to_bookmark"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->g:Lcom/yelp/android/serializable/YelpBusiness;

    .line 96
    const-string/jumbo v0, "saved_favorites_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FavoritesList;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->i:Lcom/yelp/android/serializable/FavoritesList;

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->d:Lcom/yelp/android/ui/activities/favoriteslist/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->i:Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/favoriteslist/a;->a(Lcom/yelp/android/serializable/FavoritesList;)V

    .line 98
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->b()V

    .line 101
    :cond_0
    new-instance v0, Lcom/yelp/android/util/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->l:Lcom/yelp/android/util/c$a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/util/c;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/yelp/android/util/c$a;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->h:Lcom/yelp/android/util/c;

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->i:Lcom/yelp/android/serializable/FavoritesList;

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bw;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/bw;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->c:Lcom/yelp/android/appdata/webrequests/bw;

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->enableLoading()V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->c:Lcom/yelp/android/appdata/webrequests/bw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bw;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 115
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 148
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 144
    :pswitch_0
    new-instance v0, Lcom/yelp/android/services/FavoritesListShareFormatter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->i:Lcom/yelp/android/serializable/FavoritesList;

    invoke-direct {v0, v1}, Lcom/yelp/android/services/FavoritesListShareFormatter;-><init>(Lcom/yelp/android/serializable/FavoritesList;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->showShareSheet(Lcom/yelp/android/services/ShareFormatter;)V

    .line 145
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->FavoritesListOpenShare:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "list_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x7f0f05fa
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 135
    const-string/jumbo v0, "request_add_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->h:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->a()Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 136
    const-string/jumbo v0, "request_remove_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->h:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->b()Lcom/yelp/android/appdata/webrequests/dk;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 137
    const-string/jumbo v0, "request_favorites_list"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->c:Lcom/yelp/android/appdata/webrequests/bw;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 138
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 123
    const-string/jumbo v0, "request_favorites_list"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->c:Lcom/yelp/android/appdata/webrequests/bw;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/bw;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->c:Lcom/yelp/android/appdata/webrequests/bw;

    .line 126
    const-string/jumbo v0, "request_add_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->h:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->c()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 127
    const-string/jumbo v0, "request_remove_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->h:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->d()Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 129
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    const-string/jumbo v0, "saved_business_to_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 156
    const-string/jumbo v0, "saved_favorites_list"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->i:Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 157
    return-void
.end method

.method public q_()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->c:Lcom/yelp/android/appdata/webrequests/bw;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/bw;->b()Lcom/yelp/android/appdata/webrequests/bw;

    .line 169
    return-void
.end method
