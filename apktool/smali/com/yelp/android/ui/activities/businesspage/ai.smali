.class Lcom/yelp/android/ui/activities/businesspage/ai;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/h;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/util/h;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ai;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/ai;->a:Lcom/yelp/android/ui/util/h;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/businesspage/ai;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1647
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCantBuyReviewsDismiss:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 1648
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->F()V

    .line 1651
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ai;->a:Lcom/yelp/android/ui/util/h;

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ai;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 1652
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ai;->a:Lcom/yelp/android/ui/util/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ai;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->a(Landroid/view/View;)V

    .line 1653
    return-void
.end method
