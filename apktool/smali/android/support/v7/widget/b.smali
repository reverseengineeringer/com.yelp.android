.class Landroid/support/v7/widget/b;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/support/v7/internal/widget/o;

.field private c:Landroid/support/v7/internal/widget/n;

.field private d:Landroid/support/v7/internal/widget/n;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/v7/internal/widget/o;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/support/v7/widget/b;->a:Landroid/view/View;

    .line 41
    iput-object p2, p0, Landroid/support/v7/widget/b;->b:Landroid/support/v7/internal/widget/o;

    .line 42
    return-void
.end method


# virtual methods
.method a()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/internal/widget/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/internal/widget/n;

    iget-object v0, v0, Landroid/support/v7/internal/widget/n;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v7/widget/b;->b:Landroid/support/v7/internal/widget/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/b;->b:Landroid/support/v7/internal/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/o;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/b;->b(Landroid/content/res/ColorStateList;)V

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/internal/widget/n;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroid/support/v7/internal/widget/n;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/n;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/internal/widget/n;

    .line 84
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/internal/widget/n;

    iput-object p1, v0, Landroid/support/v7/internal/widget/n;->a:Landroid/content/res/ColorStateList;

    .line 85
    iget-object v0, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/internal/widget/n;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/n;->d:Z

    .line 87
    invoke-virtual {p0}, Landroid/support/v7/widget/b;->c()V

    .line 88
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/internal/widget/n;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Landroid/support/v7/internal/widget/n;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/n;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/internal/widget/n;

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/internal/widget/n;

    iput-object p1, v0, Landroid/support/v7/internal/widget/n;->b:Landroid/graphics/PorterDuff$Mode;

    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/internal/widget/n;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/n;->c:Z

    .line 101
    invoke-virtual {p0}, Landroid/support/v7/widget/b;->c()V

    .line 102
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/b;->b(Landroid/content/res/ColorStateList;)V

    .line 78
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/widget/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/j/a$k;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 48
    :try_start_0
    sget v0, Lcom/yelp/android/j/a$k;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Landroid/support/v7/widget/b;->b:Landroid/support/v7/internal/widget/o;

    sget v2, Lcom/yelp/android/j/a$k;->ViewBackgroundHelper_android_background:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/o;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/b;->b(Landroid/content/res/ColorStateList;)V

    .line 55
    :cond_0
    sget v0, Lcom/yelp/android/j/a$k;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Landroid/support/v7/widget/b;->a:Landroid/view/View;

    sget v2, Lcom/yelp/android/j/a$k;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/view/ai;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 59
    :cond_1
    sget v0, Lcom/yelp/android/j/a$k;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Landroid/support/v7/widget/b;->a:Landroid/view/View;

    sget v2, Lcom/yelp/android/j/a$k;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/yelp/android/k/a;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/view/ai;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void

    .line 66
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method b()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/internal/widget/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/internal/widget/n;

    iget-object v0, v0, Landroid/support/v7/internal/widget/n;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 119
    if-eqz p1, :cond_1

    .line 120
    iget-object v0, p0, Landroid/support/v7/widget/b;->c:Landroid/support/v7/internal/widget/n;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Landroid/support/v7/internal/widget/n;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/n;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/b;->c:Landroid/support/v7/internal/widget/n;

    .line 123
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/b;->c:Landroid/support/v7/internal/widget/n;

    iput-object p1, v0, Landroid/support/v7/internal/widget/n;->a:Landroid/content/res/ColorStateList;

    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/b;->c:Landroid/support/v7/internal/widget/n;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/n;->d:Z

    .line 128
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/b;->c()V

    .line 129
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/b;->c:Landroid/support/v7/internal/widget/n;

    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v7/widget/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/internal/widget/n;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Landroid/support/v7/widget/b;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/internal/widget/n;

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/o;->a(Landroid/view/View;Landroid/support/v7/internal/widget/n;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/b;->c:Landroid/support/v7/internal/widget/n;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/support/v7/widget/b;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/b;->c:Landroid/support/v7/internal/widget/n;

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/o;->a(Landroid/view/View;Landroid/support/v7/internal/widget/n;)V

    goto :goto_0
.end method
