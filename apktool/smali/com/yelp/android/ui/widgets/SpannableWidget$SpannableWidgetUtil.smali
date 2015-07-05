.class public final Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;
.super Ljava/lang/Object;
.source "SpannableWidget.java"

# interfaces
.implements Lcom/yelp/android/ui/widgets/SpannableWidget;


# instance fields
.field private a:I

.field private g:Z

.field private final h:Z

.field private i:Lcom/yelp/android/ui/widgets/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/yelp/android/bf/m;->SpannableWidget:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->h:Z

    .line 66
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    iput-boolean v3, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->g:Z

    .line 69
    return-void
.end method

.method private b()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 140
    sget-object v0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b:[I

    array-length v0, v0

    sget-object v2, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->c:[I

    array-length v2, v2

    add-int/2addr v0, v2

    sget-object v2, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->d:[I

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v3, v0, [I

    .line 143
    iget v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 144
    sget-object v0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b:[I

    sget-object v2, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b:[I

    array-length v2, v2

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    sget-object v0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b:[I

    array-length v0, v0

    add-int/2addr v0, v1

    .line 147
    :goto_0
    iget v2, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 148
    sget-object v2, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->c:[I

    sget-object v4, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->c:[I

    array-length v4, v4

    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    sget-object v2, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->c:[I

    array-length v2, v2

    add-int/2addr v0, v2

    .line 151
    :cond_0
    iget v2, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    and-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 152
    sget-object v2, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->d:[I

    sget-object v4, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->d:[I

    array-length v4, v4

    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    sget-object v2, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->d:[I

    array-length v2, v2

    add-int/2addr v0, v2

    .line 155
    :cond_1
    array-length v2, v3

    if-eq v0, v2, :cond_2

    .line 156
    new-array v2, v0, [I

    .line 157
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 160
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private d(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Instance:",
            "Landroid/view/View;",
            ":",
            "Landroid/widget/Checkable;",
            ">(TInstance;)V"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->i:Lcom/yelp/android/ui/widgets/j;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->i:Lcom/yelp/android/ui/widgets/j;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/widgets/j;->onCheckedChanged(Landroid/view/View;)V

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Instance:",
            "Landroid/view/View;",
            ":",
            "Landroid/widget/Checkable;",
            ">(TInstance;Z)V"
        }
    .end annotation

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->g:Z

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    .line 179
    :goto_0
    iput-boolean p2, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->g:Z

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 182
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->d(Landroid/view/View;)V

    .line 184
    :cond_0
    return-void

    .line 178
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->g:Z

    return v0
.end method

.method public a(Landroid/view/View;)[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b()[I

    move-result-object v1

    .line 120
    array-length v0, v1

    .line 121
    iget-boolean v2, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->h:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->g:Z

    if-eqz v2, :cond_0

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 127
    :cond_1
    new-array v2, v0, [I

    .line 128
    array-length v0, v1

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    array-length v1, v1

    .line 130
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->h:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->g:Z

    if-eqz v0, :cond_3

    .line 131
    add-int/lit8 v0, v1, 0x1

    const v3, 0x10100a0

    aput v3, v2, v1

    .line 133
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    add-int/lit8 v1, v0, 0x1

    sget v1, Lcom/yelp/android/bf/c;->state_clickable:I

    aput v1, v2, v0

    .line 136
    :cond_2
    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Instance:",
            "Landroid/view/View;",
            ":",
            "Landroid/widget/Checkable;",
            ">(TInstance;)V"
        }
    .end annotation

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->h:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->c(Landroid/view/View;)V

    .line 167
    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Instance:",
            "Landroid/view/View;",
            ":",
            "Landroid/widget/Checkable;",
            ">(TInstance;)V"
        }
    .end annotation

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a(Landroid/view/View;Z)V

    .line 171
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Call setChecked(view, checked) instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLeft(Z)V
    .locals 1

    .prologue
    .line 86
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    or-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    .line 87
    return-void

    .line 86
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method

.method public setMiddle(Z)V
    .locals 1

    .prologue
    .line 95
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    .line 96
    return-void

    .line 95
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->i:Lcom/yelp/android/ui/widgets/j;

    .line 195
    return-void
.end method

.method public setRight(Z)V
    .locals 1

    .prologue
    .line 77
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    or-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    .line 78
    return-void

    .line 77
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_0
.end method
