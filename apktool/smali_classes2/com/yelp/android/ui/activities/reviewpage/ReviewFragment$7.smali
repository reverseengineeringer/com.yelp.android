.class Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$7;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/appdata/webrequests/co;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/YelpBusinessReview;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$7;->b:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$7;->a:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$7;->a:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Complimentable;)Landroid/content/Intent;

    move-result-object v0

    .line 476
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0703a4

    invoke-static {v1, v2, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$7;->b:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->startActivity(Landroid/content/Intent;)V

    .line 482
    return-void
.end method
