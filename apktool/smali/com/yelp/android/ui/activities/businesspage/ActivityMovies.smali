.class public Lcom/yelp/android/ui/activities/businesspage/ActivityMovies;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityMovies.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Movie;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/businesspage/ActivityMovies;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const-string/jumbo v1, "movies"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 43
    const-string/jumbo v1, "biz_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string/jumbo v1, "theater_url"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->MoviesList:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMovies;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 3
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
    .line 34
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 35
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMovies;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMovies;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "biz_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMovies;->a:Ljava/lang/String;

    .line 52
    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMovies;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "movies"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMovies;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "theater_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMovies;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMovies;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c01d4

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 59
    :cond_0
    return-void
.end method
