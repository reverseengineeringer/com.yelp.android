.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$18;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/e;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/util/e;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2540
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$18;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$18;->a:Lcom/yelp/android/ui/util/e;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$18;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2544
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCantBuyReviewsDismiss:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 2545
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->H()V

    .line 2550
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$18;->a:Lcom/yelp/android/ui/util/e;

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$18;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 2551
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$18;->a:Lcom/yelp/android/ui/util/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$18;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->a(Landroid/view/View;)V

    .line 2552
    return-void
.end method
