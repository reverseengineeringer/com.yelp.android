.class Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$1;
.super Ljava/lang/Object;
.source "AnimationFrameLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$1;->a:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$1;->a:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a(Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;)V

    .line 158
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method
