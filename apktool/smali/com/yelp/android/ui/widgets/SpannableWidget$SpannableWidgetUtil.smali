.class public final Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;
.super Ljava/lang/Object;
.source "SpannableWidget.java"

# interfaces
.implements Lcom/yelp/android/ui/widgets/SpannableWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/widgets/SpannableWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpannableWidgetUtil"
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private final c:Z

.field private i:Lcom/yelp/android/ui/widgets/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/yelp/android/co/a$l;->SpannableWidget:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    sget v1, Lcom/yelp/android/co/a$l;->SpannableWidget_checkable:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->c:Z

    .line 62
    sget v1, Lcom/yelp/android/co/a$l;->SpannableWidget_position:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    iput-boolean v3, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b:Z

    .line 65
    return-void
.end method

.method private b()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 136
    sget-object v0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->d:[I

    array-length v0, v0

    sget-object v2, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->e:[I

    array-length v2, v2

    add-int/2addr v0, v2

    sget-object v2, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->f:[I

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v3, v0, [I

    .line 139
    iget v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 140
    sget-object v0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->d:[I

    sget-object v2, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->d:[I

    array-length v2, v2

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    sget-object v0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->d:[I

    array-length v0, v0

    add-int/2addr v0, v1

    .line 143
    :goto_0
    iget v2, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 144
    sget-object v2, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->e:[I

    sget-object v4, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->e:[I

    array-length v4, v4

    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    sget-object v2, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->e:[I

    array-length v2, v2

    add-int/2addr v0, v2

    .line 147
    :cond_0
    iget v2, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    and-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 148
    sget-object v2, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->f:[I

    sget-object v4, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->f:[I

    array-length v4, v4

    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    sget-object v2, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->f:[I

    array-length v2, v2

    add-int/2addr v0, v2

    .line 151
    :cond_1
    array-length v2, v3

    if-eq v0, v2, :cond_2

    .line 152
    new-array v2, v0, [I

    .line 153
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 156
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
    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->i:Lcom/yelp/android/ui/widgets/c;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->i:Lcom/yelp/android/ui/widgets/c;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/widgets/c;->onCheckedChanged(Landroid/view/View;)V

    .line 186
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
    .line 174
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b:Z

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    .line 175
    :goto_0
    iput-boolean p2, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b:Z

    .line 176
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 178
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->d(Landroid/view/View;)V

    .line 180
    :cond_0
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/widgets/c;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->i:Lcom/yelp/android/ui/widgets/c;

    .line 191
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b:Z

    return v0
.end method

.method public a(Landroid/view/View;)[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b()[I

    move-result-object v1

    .line 116
    array-length v0, v1

    .line 117
    iget-boolean v2, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->c:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b:Z

    if-eqz v2, :cond_0

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 123
    :cond_1
    new-array v2, v0, [I

    .line 124
    array-length v0, v1

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    array-length v1, v1

    .line 126
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->c:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b:Z

    if-eqz v0, :cond_3

    .line 127
    add-int/lit8 v0, v1, 0x1

    const v3, 0x10100a0

    aput v3, v2, v1

    .line 129
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    add-int/lit8 v1, v0, 0x1

    sget v1, Lcom/yelp/android/co/a$b;->state_clickable:I

    aput v1, v2, v0

    .line 132
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
    .line 160
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->c:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->c(Landroid/view/View;)V

    .line 163
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
    .line 166
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a(Landroid/view/View;Z)V

    .line 167
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLeft(Z)V
    .locals 1

    .prologue
    .line 82
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    or-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    .line 83
    return-void

    .line 82
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method

.method public setMiddle(Z)V
    .locals 1

    .prologue
    .line 91
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    .line 92
    return-void

    .line 91
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public setRight(Z)V
    .locals 1

    .prologue
    .line 73
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    or-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    .line 74
    return-void

    .line 73
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_0
.end method
