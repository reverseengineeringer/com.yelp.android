.class Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;
.super Ljava/lang/Object;
.source "ReviewSuggestionsPageFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSendTouchesView(Landroid/view/View;)V

    .line 554
    return-void
.end method

.method public a(Lcom/yelp/android/ui/panels/g;)V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;Z)Z

    .line 542
    return-void
.end method

.method public b(Lcom/yelp/android/ui/panels/g;)V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSendTouchesView(Landroid/view/View;)V

    .line 548
    return-void
.end method

.method public c(Lcom/yelp/android/ui/panels/g;)V
    .locals 4

    .prologue
    .line 558
    invoke-virtual {p1}, Lcom/yelp/android/ui/panels/g;->getSuggestion()Lcom/yelp/android/serializable/ReviewSuggestion;

    move-result-object v0

    .line 559
    sget v1, Lcom/yelp/android/ui/util/av;->c:I

    const/4 v2, 0x1

    new-instance v3, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5$1;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5$1;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;Lcom/yelp/android/serializable/ReviewSuggestion;)V

    invoke-static {p1, v1, v2, v3}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;IZLcom/yelp/android/ui/util/av$a;)V

    .line 571
    return-void
.end method
