.class Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$1;
.super Ljava/lang/Object;
.source "ActivityAnimatedOnboarding.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;Z)Z

    .line 172
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;Z)Z

    .line 175
    :cond_1
    return v1
.end method
