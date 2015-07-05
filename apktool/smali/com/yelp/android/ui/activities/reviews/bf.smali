.class Lcom/yelp/android/ui/activities/reviews/bf;
.super Ljava/lang/Object;
.source "ReviewSuggestionsPageFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/at;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/bf;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bf;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSendTouchesView(Landroid/view/View;)V

    .line 524
    return-void
.end method

.method public a(Lcom/yelp/android/ui/panels/ak;)V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bf;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;Z)Z

    .line 512
    return-void
.end method

.method public b(Lcom/yelp/android/ui/panels/ak;)V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bf;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSendTouchesView(Landroid/view/View;)V

    .line 518
    return-void
.end method

.method public c(Lcom/yelp/android/ui/panels/ak;)V
    .locals 4

    .prologue
    .line 528
    invoke-virtual {p1}, Lcom/yelp/android/ui/panels/ak;->getSuggestion()Lcom/yelp/android/serializable/ReviewSuggestion;

    move-result-object v0

    .line 529
    sget v1, Lcom/yelp/android/ui/util/cw;->c:I

    const/4 v2, 0x1

    new-instance v3, Lcom/yelp/android/ui/activities/reviews/bg;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ui/activities/reviews/bg;-><init>(Lcom/yelp/android/ui/activities/reviews/bf;Lcom/yelp/android/serializable/ReviewSuggestion;)V

    invoke-static {p1, v1, v2, v3}, Lcom/yelp/android/ui/util/cw;->a(Landroid/view/View;IZLcom/yelp/android/ui/util/dd;)V

    .line 538
    return-void
.end method
