.class public Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;
.super Lcom/yelp/android/ui/activities/settings/PreferenceView;
.source "PreferenceToggleView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    const v0, 0x7f0100cf

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/settings/PreferenceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    sget-object v0, Lcom/yelp/android/b$a;->PreferenceView:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 16
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;->setChecked(Z)V

    .line 17
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setChecked(Z)V

    .line 35
    const v0, 0x7f0f00a8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/YelpToggleButton;

    .line 36
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setChecked(Z)V

    .line 39
    :cond_0
    return-void
.end method
