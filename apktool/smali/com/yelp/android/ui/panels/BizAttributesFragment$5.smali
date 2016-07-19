.class Lcom/yelp/android/ui/panels/BizAttributesFragment$5;
.super Ljava/lang/Object;
.source "BizAttributesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/BizAttributesFragment;->c(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/BizAttributesFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$5;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$5;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->i(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/panels/BizAttributesFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$5;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->i(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/panels/BizAttributesFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment$a;->a()V

    .line 394
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->CheckInsReceiptAddPhotoVideoButton:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$5;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->c(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$5;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$5;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$5;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->c(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->startActivity(Landroid/content/Intent;)V

    .line 399
    return-void
.end method
