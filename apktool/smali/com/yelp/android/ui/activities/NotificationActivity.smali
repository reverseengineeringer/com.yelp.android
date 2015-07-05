.class public abstract Lcom/yelp/android/ui/activities/NotificationActivity;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "NotificationActivity.java"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/RelativeLayout;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 32
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/NotificationActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/ui/activities/NotificationActivity;->setResult(ILandroid/content/Intent;)V

    .line 36
    const v0, 0x7f0c00ad

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 37
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 38
    new-instance v1, Lcom/yelp/android/ui/activities/fk;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/fk;-><init>(Lcom/yelp/android/ui/activities/NotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/NotificationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 45
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/NotificationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 48
    const v0, 0x7f0c0182

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/NotificationActivity;->b:Landroid/widget/RelativeLayout;

    .line 49
    const v0, 0x7f0c0181

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/NotificationActivity;->c:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/NotificationActivity;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 53
    const v1, 0x7f040019

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 54
    const v1, 0x7f040013

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 55
    iget-object v1, p0, Lcom/yelp/android/ui/activities/NotificationActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 57
    :cond_0
    const v0, 0x7f0c0180

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/NotificationActivity;->d:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0c0183

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/NotificationActivity;->e:Landroid/view/View;

    .line 60
    const v0, 0x7f0c017e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 61
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/NotificationActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f010086

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 63
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 64
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 65
    const v0, 0x7f0c017f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/NotificationActivity;->a:Landroid/view/View;

    .line 66
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/NotificationActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f010085

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 68
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_1

    .line 69
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/NotificationActivity;->setTitle(I)V

    .line 71
    :cond_1
    return-void
.end method
