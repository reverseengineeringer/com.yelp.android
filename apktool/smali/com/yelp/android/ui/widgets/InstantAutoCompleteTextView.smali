.class public Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;
.super Landroid/support/v7/widget/AppCompatAutoCompleteTextView;
.source "InstantAutoCompleteTextView.java"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->b()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->b()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->b()V

    .line 33
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->a:Z

    .line 37
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->a:Z

    return v0
.end method

.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->b:Z

    if-eqz v0, :cond_2

    .line 52
    :cond_0
    if-eqz p1, :cond_2

    .line 53
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->b:Z

    if-eqz v0, :cond_1

    .line 54
    iput-boolean v1, p0, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->b:Z

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->showDropDown()V

    .line 60
    :cond_2
    return-void
.end method

.method public setIsDropDownEnabled(Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->a:Z

    .line 82
    return-void
.end method
