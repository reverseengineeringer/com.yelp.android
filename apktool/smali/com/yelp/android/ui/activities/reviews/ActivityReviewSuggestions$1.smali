.class Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions$1;
.super Ljava/lang/Object;
.source "ActivityReviewSuggestions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070231

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->b(Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/yelp/android/appdata/BusinessContributionType;->REVIEW:Lcom/yelp/android/appdata/BusinessContributionType;

    sget-object v6, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->CONTRIBUTION:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;

    const/16 v2, 0x41f

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->startActivityForResult(Landroid/content/Intent;I)V

    .line 65
    return-void
.end method
