.class public Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;
.super Lcom/yelp/android/ui/widgets/LeftDrawableButton;
.source "LeftDrawableToggleButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final d:[I


# instance fields
.field a:Z

.field b:Z

.field private c:Lcom/yelp/android/ui/widgets/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->drawableStateChanged()V

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->getDrawableState()[I

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 83
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->invalidate()V

    .line 85
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->a:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 66
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->d:[I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->mergeDrawableStates([I[I)[I

    .line 70
    :cond_0
    return-object v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->toggle()V

    .line 61
    invoke-super {p0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->a:Z

    if-eq v0, p1, :cond_0

    .line 26
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->a:Z

    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->refreshDrawableState()V

    .line 31
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->b:Z

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->b:Z

    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->c:Lcom/yelp/android/ui/widgets/c;

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->c:Lcom/yelp/android/ui/widgets/c;

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/widgets/c;->onCheckedChanged(Landroid/view/View;)V

    .line 40
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->b:Z

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/c;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->c:Lcom/yelp/android/ui/widgets/c;

    .line 46
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->setChecked(Z)V

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
