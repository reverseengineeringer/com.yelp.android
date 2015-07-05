.class Lcom/yelp/android/ui/activities/reviews/bd;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "ReviewSuggestionsPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/bd;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bd;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)I

    .line 468
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bd;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 469
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bd;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->f(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bd;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V

    .line 472
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bd;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)I

    .line 455
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bd;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_LOCATION:Lcom/yelp/android/util/ErrorType;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bd;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)I

    .line 462
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bd;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 463
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 451
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/bd;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V

    return-void
.end method
