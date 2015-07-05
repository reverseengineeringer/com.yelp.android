.class Lcom/yelp/android/ui/activities/reviewpage/z;
.super Ljava/lang/Object;
.source "FlagReviewReasonsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/z;->b:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/z;->a:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/z;->b:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;)Lcom/yelp/android/ui/activities/reviewpage/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/z;->a:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/aa;->a(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;)V

    .line 87
    return-void
.end method
