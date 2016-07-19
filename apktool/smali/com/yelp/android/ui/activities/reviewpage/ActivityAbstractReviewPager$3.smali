.class Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$3;
.super Ljava/lang/Object;
.source "ActivityAbstractReviewPager.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$3;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$3;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$3;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->c()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 450
    return-void
.end method
