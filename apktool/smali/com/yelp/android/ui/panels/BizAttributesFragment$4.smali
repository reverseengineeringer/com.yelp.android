.class Lcom/yelp/android/ui/panels/BizAttributesFragment$4;
.super Ljava/lang/Object;
.source "BizAttributesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/BizAttributesFragment;->b(Landroid/view/ViewGroup;)Lcom/yelp/android/ui/widgets/SpannableFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/StarsView;

.field final synthetic b:Lcom/yelp/android/ui/panels/BizAttributesFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;Lcom/yelp/android/ui/activities/reviews/StarsView;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$4;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$4;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$4;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->i(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/panels/BizAttributesFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$4;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->i(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/panels/BizAttributesFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment$a;->a()V

    .line 363
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->CheckInsReceiptReviewStars:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 364
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$4;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$4;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->c(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$4;->a:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getNumStars()I

    move-result v2

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->PostCheckInSurvey:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;ILcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$4;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->startActivity(Landroid/content/Intent;)V

    .line 371
    return-void
.end method
