.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$3;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$3;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$3;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageContributionCell:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v0

    .line 1404
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$3;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)V

    .line 1405
    return-void
.end method
