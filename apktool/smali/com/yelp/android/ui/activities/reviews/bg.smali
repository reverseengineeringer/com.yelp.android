.class Lcom/yelp/android/ui/activities/reviews/bg;
.super Lcom/yelp/android/ui/util/dd;
.source "ReviewSuggestionsPageFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/ReviewSuggestion;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviews/bf;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/bf;Lcom/yelp/android/serializable/ReviewSuggestion;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/bg;->b:Lcom/yelp/android/ui/activities/reviews/bf;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/bg;->a:Lcom/yelp/android/serializable/ReviewSuggestion;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bg;->b:Lcom/yelp/android/ui/activities/reviews/bf;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/bf;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/bg;->a:Lcom/yelp/android/serializable/ReviewSuggestion;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bg;->b:Lcom/yelp/android/ui/activities/reviews/bf;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/bf;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/bg;->a:Lcom/yelp/android/serializable/ReviewSuggestion;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 535
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/bg;->b:Lcom/yelp/android/ui/activities/reviews/bf;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/bf;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Lcom/yelp/android/ui/util/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->notifyDataSetChanged()V

    .line 536
    return-void
.end method
