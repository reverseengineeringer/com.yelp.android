.class Lcom/yelp/android/ui/activities/reviews/bc;
.super Ljava/lang/Object;
.source "ReviewSuggestionsPageFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yelp/android/serializable/ReviewSuggestion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/bc;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/yelp/android/serializable/ReviewSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bc;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)I

    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bc;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 444
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bc;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->f(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bc;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V

    .line 447
    :cond_0
    return-void
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
    .line 435
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bc;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)I

    .line 436
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bc;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 437
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 432
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/bc;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V

    return-void
.end method
