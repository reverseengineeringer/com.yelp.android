.class Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$1;
.super Ljava/lang/Object;
.source "FlagReviewReasonsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;->a(Landroid/view/View;Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$1;->b:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$1;->a:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$1;->b:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment;)Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$1;->a:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$a;->a(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;)V

    .line 101
    return-void
.end method
