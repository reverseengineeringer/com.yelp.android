.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$20;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;
.source "BusinessPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2662
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$20;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$20;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const-string/jumbo v1, "button"

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V

    .line 2667
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$20;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const-string/jumbo v1, "button"

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;)V

    .line 2668
    return-void
.end method
