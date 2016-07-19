.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$23;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 695
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$23;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$23;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageContributionButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v0

    .line 700
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$23;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)V

    .line 701
    return-void
.end method
