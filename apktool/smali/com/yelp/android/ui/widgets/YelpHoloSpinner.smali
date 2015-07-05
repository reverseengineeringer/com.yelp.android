.class public Lcom/yelp/android/ui/widgets/YelpHoloSpinner;
.super Landroid/widget/Spinner;
.source "YelpHoloSpinner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 24
    return-void
.end method
