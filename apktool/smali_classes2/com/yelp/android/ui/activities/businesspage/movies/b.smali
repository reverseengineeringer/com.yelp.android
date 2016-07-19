.class public Lcom/yelp/android/ui/activities/businesspage/movies/b;
.super Lcom/yelp/android/bw/b;
.source "MoviesPresenter.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/businesspage/movies/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/bw/b",
        "<",
        "Lcom/yelp/android/ui/activities/businesspage/movies/a$c;",
        "Lcom/yelp/android/serializable/MoviesViewModel;",
        ">;",
        "Lcom/yelp/android/ui/activities/businesspage/movies/a$a;"
    }
.end annotation


# instance fields
.field private final c:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;


# direct methods
.method public constructor <init>(Lcom/yelp/android/by/b;Lcom/yelp/android/ui/activities/businesspage/movies/a$c;Lcom/yelp/android/serializable/MoviesViewModel;Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/bw/b;-><init>(Lcom/yelp/android/by/b;Lcom/yelp/android/bx/b;Lcom/yelp/android/bx/c;)V

    .line 22
    iput-object p4, p0, Lcom/yelp/android/ui/activities/businesspage/movies/b;->c:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/bw/b;->a()V

    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/movies/b;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/movies/a$c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/movies/b;->b:Lcom/yelp/android/bx/c;

    check-cast v1, Lcom/yelp/android/serializable/MoviesViewModel;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/MoviesViewModel;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/movies/a$c;->a(Ljava/util/List;)V

    .line 29
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Movie;)V
    .locals 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/movies/b;->c:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->MovieClicked:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "title"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Movie;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/movies/b;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/movies/a$c;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Movie;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/movies/a$c;->a(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 39
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/movies/b;->c:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->MoreMovieShowtimesClicked:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v3, "id"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/movies/b;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/MoviesViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/MoviesViewModel;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/movies/b;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/movies/a$c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/movies/b;->b:Lcom/yelp/android/bx/c;

    check-cast v1, Lcom/yelp/android/serializable/MoviesViewModel;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/MoviesViewModel;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/movies/a$c;->a(Ljava/lang/String;)V

    .line 42
    return-void
.end method
