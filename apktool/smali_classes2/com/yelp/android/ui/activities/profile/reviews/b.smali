.class public Lcom/yelp/android/ui/activities/profile/reviews/b;
.super Lcom/yelp/android/bw/b;
.source "UserReviewsPresenter.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/profile/reviews/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/bw/b",
        "<",
        "Lcom/yelp/android/ui/activities/profile/reviews/a$c;",
        "Lcom/yelp/android/serializable/UserReviewsViewModel;",
        ">;",
        "Lcom/yelp/android/ui/activities/profile/reviews/a$a;"
    }
.end annotation


# instance fields
.field private c:Lcom/yelp/android/bt/b;

.field private d:Lcom/yelp/android/appdata/webrequests/co;

.field private e:Lrx/f;


# direct methods
.method public constructor <init>(Lcom/yelp/android/bt/b;Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/by/b;Lcom/yelp/android/ui/activities/profile/reviews/a$c;Lcom/yelp/android/serializable/UserReviewsViewModel;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p3, p4, p5}, Lcom/yelp/android/bw/b;-><init>(Lcom/yelp/android/by/b;Lcom/yelp/android/bx/b;Lcom/yelp/android/bx/c;)V

    .line 35
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->c:Lcom/yelp/android/bt/b;

    .line 36
    iput-object p2, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->d:Lcom/yelp/android/appdata/webrequests/co;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/b;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->a:Lcom/yelp/android/bx/b;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/b;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->a:Lcom/yelp/android/bx/b;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/c;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->b:Lcom/yelp/android/bx/c;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/b;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->a:Lcom/yelp/android/bx/b;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/b;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->a:Lcom/yelp/android/bx/b;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/c;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->b:Lcom/yelp/android/bx/c;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/UserReviewsViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserReviewsViewModel;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->e:Lrx/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->e:Lrx/f;

    invoke-interface {v0}, Lrx/f;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->c:Lcom/yelp/android/bt/b;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/UserReviewsViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserReviewsViewModel;->d()Lcom/yelp/android/serializable/User;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/UserReviewsViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserReviewsViewModel;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/UserReviewsViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserReviewsViewModel;->b()I

    move-result v0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/yelp/android/bt/b;->a(Lcom/yelp/android/serializable/User;IIZ)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/profile/reviews/b$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/profile/reviews/b$1;-><init>(Lcom/yelp/android/ui/activities/profile/reviews/b;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/reviews/b;->a(Lrx/a;Lrx/e;)Lrx/f;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->e:Lrx/f;

    goto :goto_0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/c;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->b:Lcom/yelp/android/bx/c;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/profile/reviews/b;)Lcom/yelp/android/bx/b;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->a:Lcom/yelp/android/bx/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/bw/b;->a()V

    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/UserReviewsViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserReviewsViewModel;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/profile/reviews/a$c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->b:Lcom/yelp/android/bx/c;

    check-cast v1, Lcom/yelp/android/serializable/UserReviewsViewModel;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/UserReviewsViewModel;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/profile/reviews/a$c;->a(Ljava/util/List;)V

    .line 45
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/profile/reviews/a$c;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/profile/reviews/a$c;->b(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 56
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/UserReviewsViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserReviewsViewModel;->e()Ljava/util/List;

    move-result-object v1

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/profile/reviews/a$c;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/profile/reviews/a$c;->a(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-interface {v1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/profile/reviews/a$c;

    invoke-interface {v0, p2, v2}, Lcom/yelp/android/ui/activities/profile/reviews/a$c;->a(Lcom/yelp/android/serializable/YelpBusinessReview;I)V

    .line 79
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/yelp/android/bw/b;->b()V

    .line 50
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/reviews/b;->f()V

    .line 51
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/reviews/b;->f()V

    .line 61
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->d:Lcom/yelp/android/appdata/webrequests/co;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/reviews/b;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/UserReviewsViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserReviewsViewModel;->d()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    return v0
.end method
