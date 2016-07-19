.class Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5$1;
.super Lcom/yelp/android/ui/util/av$a;
.source "ActivityAnimatedOnboarding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5$1;->b:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5$1;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5$1;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    return-void
.end method
