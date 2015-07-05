.class Lcom/yelp/android/ui/activities/reviewpage/at;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/YelpBusinessReview;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/at;->b:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/at;->a:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/at;->a:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Complimentable;)Landroid/content/Intent;

    move-result-object v0

    .line 412
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070369

    invoke-static {v1, v2, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/at;->b:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->startActivity(Landroid/content/Intent;)V

    .line 415
    return-void
.end method
