.class Lcom/yelp/android/ui/activities/businesspage/al;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/al;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/al;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const-string/jumbo v1, "button_bar"

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/al;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageContributionButton:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/al;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)V

    .line 526
    return-void
.end method
