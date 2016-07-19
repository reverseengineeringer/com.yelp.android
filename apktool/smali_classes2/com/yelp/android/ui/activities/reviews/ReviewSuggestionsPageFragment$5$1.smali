.class Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5$1;
.super Lcom/yelp/android/ui/util/av$a;
.source "ReviewSuggestionsPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;->c(Lcom/yelp/android/ui/panels/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/ReviewSuggestion;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;Lcom/yelp/android/serializable/ReviewSuggestion;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5$1;->b:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5$1;->a:Lcom/yelp/android/serializable/ReviewSuggestion;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5$1;->b:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5$1;->a:Lcom/yelp/android/serializable/ReviewSuggestion;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 567
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5$1;->b:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5$1;->a:Lcom/yelp/android/serializable/ReviewSuggestion;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 568
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5$1;->b:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;->a:Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Lcom/yelp/android/ui/util/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->notifyDataSetChanged()V

    .line 569
    return-void
.end method
