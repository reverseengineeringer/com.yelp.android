.class Lcom/yelp/android/ui/activities/drawer/a$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DinoAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/drawer/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/drawer/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/drawer/a;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/a$3;->a:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 324
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 325
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DinoFinished:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a$3;->a:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/a;->a(Lcom/yelp/android/ui/activities/drawer/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a$3;->a:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/a;->a(Lcom/yelp/android/ui/activities/drawer/a;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/yelp/android/ui/activities/drawer/a$3;->a:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/drawer/a;->a(Lcom/yelp/android/ui/activities/drawer/a;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 333
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 337
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 338
    return-void
.end method
