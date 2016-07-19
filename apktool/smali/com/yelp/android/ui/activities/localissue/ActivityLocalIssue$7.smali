.class Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$7;
.super Ljava/lang/Object;
.source "ActivityLocalIssue.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$7;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 455
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$7;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->d(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$7;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$7;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->Y()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v4, v5, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->startActivity(Landroid/content/Intent;)V

    .line 463
    return-void
.end method
