.class Lcom/yelp/android/ui/activities/profile/reviews/b$1;
.super Lcom/yelp/android/bt/a;
.source "UserReviewsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/profile/reviews/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/bt/a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/YelpBusinessReview;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/reviews/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/reviews/b;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/reviews/b$1;->a:Lcom/yelp/android/ui/activities/profile/reviews/b;

    invoke-direct {p0}, Lcom/yelp/android/bt/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/reviews/b$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 102
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b$1;->a:Lcom/yelp/android/ui/activities/profile/reviews/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/reviews/b;->a(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/reviews/a$c;

    check-cast p1, Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/profile/reviews/a$c;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b$1;->a:Lcom/yelp/android/ui/activities/profile/reviews/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/reviews/b;->b(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/reviews/a$c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/profile/reviews/a$c;->a()V

    .line 108
    return-void

    .line 105
    :cond_0
    const-string/jumbo v0, "UserReviewsPresenter"

    const-string/jumbo v1, "Error from request"

    invoke-static {v0, v1, p1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
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
    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b$1;->a:Lcom/yelp/android/ui/activities/profile/reviews/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/reviews/b;->c(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/c;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/UserReviewsViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserReviewsViewModel;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b$1;->a:Lcom/yelp/android/ui/activities/profile/reviews/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/reviews/b;->d(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/reviews/a$c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/profile/reviews/a$c;->disableLoading()V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b$1;->a:Lcom/yelp/android/ui/activities/profile/reviews/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/reviews/b;->e(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/reviews/a$c;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/profile/reviews/a$c;->b(Ljava/util/List;)V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b$1;->a:Lcom/yelp/android/ui/activities/profile/reviews/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/reviews/b;->f(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/c;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/UserReviewsViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserReviewsViewModel;->b()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b$1;->a:Lcom/yelp/android/ui/activities/profile/reviews/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/reviews/b;->g(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/c;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/UserReviewsViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/UserReviewsViewModel;->a(Z)V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b$1;->a:Lcom/yelp/android/ui/activities/profile/reviews/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/reviews/b;->h(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/reviews/a$c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/profile/reviews/a$c;->a()V

    .line 123
    :cond_0
    return-void
.end method
