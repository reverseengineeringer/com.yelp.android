.class Lcom/yelp/android/ui/activities/reviews/k;
.super Ljava/lang/Object;
.source "ActivityReviewSuggestions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/k;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/k;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/k;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/k;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/k;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->b(Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/yelp/android/appdata/BusinessContributionType;->REVIEW:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;)Landroid/content/Intent;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/k;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;

    const/16 v2, 0x418

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->startActivityForResult(Landroid/content/Intent;I)V

    .line 57
    return-void
.end method
