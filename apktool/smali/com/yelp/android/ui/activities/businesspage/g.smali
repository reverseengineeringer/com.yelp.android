.class Lcom/yelp/android/ui/activities/businesspage/g;
.super Lcom/yelp/android/ui/util/dd;
.source "ActivityBusinessPage.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/g;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/g;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/g;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)Lcom/yelp/android/ui/panels/BizAttributesFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 794
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/g;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->h()V

    .line 795
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/g;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 796
    return-void
.end method
