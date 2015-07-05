.class public Landroid/support/v7/internal/widget/bg;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/res/TypedArray;

.field private c:Landroid/support/v7/internal/widget/bd;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/support/v7/internal/widget/bg;->a:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/internal/widget/bg;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    new-instance v1, Landroid/support/v7/internal/widget/bg;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/internal/widget/bg;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/bg;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    new-instance v1, Landroid/support/v7/internal/widget/bg;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/internal/widget/bg;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v1
.end method


# virtual methods
.method public a(IF)F
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    return v0
.end method

.method public a(II)I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public a(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/bg;->c()Landroid/support/v7/internal/widget/bd;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/bd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public a(IZ)Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public b(II)I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method public b(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    return-void
.end method

.method public c(II)I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method public c()Landroid/support/v7/internal/widget/bd;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->c:Landroid/support/v7/internal/widget/bd;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Landroid/support/v7/internal/widget/bd;

    iget-object v1, p0, Landroid/support/v7/internal/widget/bg;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/bd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/bg;->c:Landroid/support/v7/internal/widget/bd;

    .line 184
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->c:Landroid/support/v7/internal/widget/bd;

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(II)I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    return v0
.end method

.method public d(I)Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    return v0
.end method

.method public e(II)I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    return v0
.end method

.method public f(II)I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/v7/internal/widget/bg;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method
