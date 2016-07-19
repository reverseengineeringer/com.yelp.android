.class public Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;
.super Lcom/yelp/android/ui/activities/settings/PreferenceView;
.source "PreferenceRadioView.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput p2, p0, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;->a:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 17
    const v0, 0x7f0100d0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;->a:I

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setChecked(Z)V

    .line 36
    const v0, 0x7f0f00a8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 40
    :cond_0
    return-void
.end method
