.class public Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;
.super Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;
.source "KeyboardAwareLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->a:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->a:I

    .line 30
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/16 v2, 0x190

    .line 34
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->onMeasure(II)V

    .line 35
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 36
    iget v1, p0, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->a:I

    sub-int/2addr v1, v0

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->b:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->b:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;

    invoke-interface {v1}, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;->a()V

    .line 42
    :cond_0
    :goto_0
    iput v0, p0, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->a:I

    .line 43
    return-void

    .line 38
    :cond_1
    iget v1, p0, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->a:I

    sub-int v1, v0, v1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->b:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->b:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;

    invoke-interface {v1}, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;->b()V

    goto :goto_0
.end method

.method public setKeyboardListener(Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout;->b:Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;

    .line 47
    return-void
.end method
