.class Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$6;
.super Ljava/lang/Object;
.source "ActivityAnimatedOnboarding.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;
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
    .line 492
    iput-object p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$6;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 495
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LoginSplashHaveNoAccount:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 496
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$6;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$6;->a:Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3f8

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->startActivityForResult(Landroid/content/Intent;I)V

    .line 500
    return-void
.end method
