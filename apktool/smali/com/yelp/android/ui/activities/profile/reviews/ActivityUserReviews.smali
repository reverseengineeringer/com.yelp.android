.class public Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityUserReviews.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/profile/reviews/a$c;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/profile/d;

.field private b:Lcom/yelp/android/ui/activities/profile/reviews/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->b:Lcom/yelp/android/ui/activities/profile/reviews/a$a;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/profile/reviews/a$a;->a(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 97
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 1

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->a:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/profile/d;->c(Ljava/lang/Object;)V

    .line 78
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusinessReview;I)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->a:Lcom/yelp/android/ui/activities/profile/d;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/ui/activities/profile/d;->a(Ljava/util/Collection;I)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->a:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/d;->notifyDataSetChanged()V

    .line 84
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->a:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/d;->clear()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->b(Ljava/util/List;)V

    .line 63
    :cond_0
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->Q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x41d

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->startActivityForResult(Landroid/content/Intent;I)V

    .line 92
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->a:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/profile/d;->a(Ljava/util/Collection;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->a:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/d;->notifyDataSetChanged()V

    .line 71
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->b:Lcom/yelp/android/ui/activities/profile/reviews/a$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/profile/reviews/a$a;->e()Z

    move-result v0

    return v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->b:Lcom/yelp/android/ui/activities/profile/reviews/a$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/profile/reviews/a$a;->d()V

    .line 112
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ProfileReviews:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f0703f8

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 102
    const/16 v0, 0x41d

    if-ne p1, v0, :cond_0

    const/16 v0, 0x41c

    if-ne p2, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->b:Lcom/yelp/android/ui/activities/profile/reviews/a$a;

    invoke-static {p3}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    invoke-static {p3}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->b(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/reviews/a$a;->a(Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/reviews/a$b;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/UserReviewsViewModel;

    move-result-object v0

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->B()Lcom/yelp/android/appdata/m;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/yelp/android/appdata/m;->a(Lcom/yelp/android/ui/activities/profile/reviews/a$c;Lcom/yelp/android/serializable/UserReviewsViewModel;)Lcom/yelp/android/ui/activities/profile/reviews/a$a;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->b:Lcom/yelp/android/ui/activities/profile/reviews/a$a;

    .line 39
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->b:Lcom/yelp/android/ui/activities/profile/reviews/a$a;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->setPresenter(Lcom/yelp/android/bx/a;)V

    .line 41
    new-instance v1, Lcom/yelp/android/ui/activities/profile/d;

    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserReviewsViewModel;->d()Lcom/yelp/android/serializable/User;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/yelp/android/ui/activities/profile/d;-><init>(Lcom/yelp/android/ui/util/t;Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/activities/profile/d$c;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->a:Lcom/yelp/android/ui/activities/profile/d;

    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->a:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/ActivityUserReviews;->b:Lcom/yelp/android/ui/activities/profile/reviews/a$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/profile/reviews/a$a;->a()V

    .line 45
    return-void

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/yelp/android/serializable/UserReviewsViewModel;->b(Landroid/os/Bundle;)Lcom/yelp/android/serializable/UserReviewsViewModel;

    move-result-object v0

    goto :goto_0
.end method
