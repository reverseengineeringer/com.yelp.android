.class public Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityOnboardingLocationPermission.java"


# instance fields
.field private a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 121
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission$1;-><init>(Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->OnboardingLocationPermission:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v8, 0x7f02021f

    const v7, 0x7f02021d

    const/16 v6, 0x32

    const/4 v2, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f0301c2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;->setContentView(I)V

    .line 54
    const v0, 0x7f0f00cd

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-wide/16 v4, 0x4e20

    invoke-static {v4, v5}, Lcom/yelp/android/ui/util/av;->a(J)Landroid/view/animation/RotateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 59
    const v0, 0x7f0f0140

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070684

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 61
    const v0, 0x7f0f0546

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v0, 0x7f0f0547

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 66
    const/16 v3, 0x11

    invoke-static {v3}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    move v1, v2

    .line 71
    :goto_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_0

    .line 72
    invoke-static {p0, v8}, Landroid/support/v4/content/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 75
    invoke-static {p0, v7}, Landroid/support/v4/content/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 78
    const v4, 0x7f02021e

    invoke-static {p0, v4}, Landroid/support/v4/content/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 81
    invoke-static {p0, v7}, Landroid/support/v4/content/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p0, v8}, Landroid/support/v4/content/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v4, 0x1388

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 88
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 89
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 91
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 101
    const/16 v0, 0xfa

    if-ne v0, p1, :cond_2

    .line 102
    invoke-static {p2, p3}, Lcom/yelp/android/appdata/k;->a([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->F()V

    .line 108
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->PermissionLocationAllowed:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 114
    :cond_0
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;->setResult(I)V

    .line 115
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;->finish()V

    .line 119
    :goto_1
    return-void

    .line 110
    :cond_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->PermissionLocationDenied:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1
.end method
