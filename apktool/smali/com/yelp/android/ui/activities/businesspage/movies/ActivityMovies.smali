.class public Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityMovies.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/businesspage/movies/a$c;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/yelp/android/ui/activities/businesspage/movies/a$a;

.field private c:Lcom/yelp/android/ui/activities/businesspage/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;)Lcom/yelp/android/ui/activities/businesspage/movies/a$a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->b:Lcom/yelp/android/ui/activities/businesspage/movies/a$a;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/i;

    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/i;-><init>(Lcom/yelp/android/ui/util/t;Ljava/util/List;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->c:Lcom/yelp/android/ui/activities/businesspage/i;

    .line 92
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ff

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies$1;-><init>(Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    const-string/jumbo v2, "FOOTER"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 104
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->c:Lcom/yelp/android/ui/activities/businesspage/i;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 86
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/util/YelpListActivity;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 87
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->b:Lcom/yelp/android/ui/activities/businesspage/movies/a$a;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->c:Lcom/yelp/android/ui/activities/businesspage/i;

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/activities/businesspage/i;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Movie;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/movies/a$a;->a(Lcom/yelp/android/serializable/Movie;)V

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 67
    invoke-static {p1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Movie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->c:Lcom/yelp/android/ui/activities/businesspage/i;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/activities/businesspage/i;->a(Ljava/util/List;Z)V

    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 63
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->MoviesList:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 2
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
    .line 81
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/movies/a$b;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/MoviesViewModel;

    move-result-object v0

    .line 46
    :goto_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/MoviesViewModel;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->B()Lcom/yelp/android/appdata/m;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Lcom/yelp/android/appdata/m;->a(Lcom/yelp/android/ui/activities/businesspage/movies/a$c;Lcom/yelp/android/serializable/MoviesViewModel;Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)Lcom/yelp/android/ui/activities/businesspage/movies/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->b:Lcom/yelp/android/ui/activities/businesspage/movies/a$a;

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->b:Lcom/yelp/android/ui/activities/businesspage/movies/a$a;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->setPresenter(Lcom/yelp/android/bx/a;)V

    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->b()V

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->b:Lcom/yelp/android/ui/activities/businesspage/movies/a$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/businesspage/movies/a$a;->a()V

    .line 57
    return-void

    .line 42
    :cond_0
    invoke-static {p1}, Lcom/yelp/android/serializable/MoviesViewModel;->b(Landroid/os/Bundle;)Lcom/yelp/android/serializable/MoviesViewModel;

    move-result-object v0

    goto :goto_0
.end method
