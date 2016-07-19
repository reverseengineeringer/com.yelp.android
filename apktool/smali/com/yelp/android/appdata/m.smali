.class public Lcom/yelp/android/appdata/m;
.super Ljava/lang/Object;
.source "PresenterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/badges/b$c;Lcom/yelp/android/serializable/BadgesViewModel;)Lcom/yelp/android/ui/activities/badges/b$a;
    .locals 6

    .prologue
    .line 59
    new-instance v0, Lcom/yelp/android/ui/activities/badges/c;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->C()Lcom/yelp/android/bt/b;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    invoke-static {}, Lcom/yelp/android/by/b;->a()Lcom/yelp/android/by/b;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/badges/c;-><init>(Lcom/yelp/android/bt/b;Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/by/b;Lcom/yelp/android/ui/activities/badges/b$c;Lcom/yelp/android/serializable/BadgesViewModel;)V

    return-object v0
.end method

.method public a(Lcom/yelp/android/ui/activities/businesspage/movies/a$c;Lcom/yelp/android/serializable/MoviesViewModel;Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)Lcom/yelp/android/ui/activities/businesspage/movies/a$a;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/movies/b;

    invoke-static {}, Lcom/yelp/android/by/b;->a()Lcom/yelp/android/by/b;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/yelp/android/ui/activities/businesspage/movies/b;-><init>(Lcom/yelp/android/by/b;Lcom/yelp/android/ui/activities/businesspage/movies/a$c;Lcom/yelp/android/serializable/MoviesViewModel;Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)V

    return-object v0
.end method

.method public a(Lcom/yelp/android/ui/activities/profile/reviews/a$c;Lcom/yelp/android/serializable/UserReviewsViewModel;)Lcom/yelp/android/ui/activities/profile/reviews/a$a;
    .locals 6

    .prologue
    .line 43
    new-instance v0, Lcom/yelp/android/ui/activities/profile/reviews/b;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->C()Lcom/yelp/android/bt/b;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    invoke-static {}, Lcom/yelp/android/by/b;->a()Lcom/yelp/android/by/b;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/reviews/b;-><init>(Lcom/yelp/android/bt/b;Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/by/b;Lcom/yelp/android/ui/activities/profile/reviews/a$c;Lcom/yelp/android/serializable/UserReviewsViewModel;)V

    return-object v0
.end method

.method public a(Lcom/yelp/android/bt/b;Lcom/yelp/android/ui/activities/profile/tips/a$c;Lcom/yelp/android/serializable/UserTipsViewModel;I)Lcom/yelp/android/ui/activities/profile/tips/a$a;
    .locals 6

    .prologue
    .line 33
    new-instance v0, Lcom/yelp/android/ui/activities/profile/tips/b;

    invoke-static {}, Lcom/yelp/android/by/b;->a()Lcom/yelp/android/by/b;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/tips/b;-><init>(Lcom/yelp/android/bt/b;Lcom/yelp/android/by/b;Lcom/yelp/android/ui/activities/profile/tips/a$c;Lcom/yelp/android/serializable/UserTipsViewModel;I)V

    return-object v0
.end method

.method public a(Lcom/yelp/android/bt/b;Lcom/yelp/android/ui/activities/user/claimaccount/a$c;Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;)Lcom/yelp/android/ui/activities/user/claimaccount/a$a;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/yelp/android/ui/activities/user/claimaccount/b;

    invoke-static {}, Lcom/yelp/android/by/b;->a()Lcom/yelp/android/by/b;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/yelp/android/ui/activities/user/claimaccount/b;-><init>(Lcom/yelp/android/bt/b;Lcom/yelp/android/by/b;Lcom/yelp/android/ui/activities/user/claimaccount/a$c;Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;)V

    return-object v0
.end method
