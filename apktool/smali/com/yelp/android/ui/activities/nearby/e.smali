.class Lcom/yelp/android/ui/activities/nearby/e;
.super Ljava/lang/Object;
.source "AnimationFrameLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/e;->a:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/e;->a:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a(Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;)V

    .line 174
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method
