.class public Lcom/yelp/android/ui/h;
.super Landroid/widget/BaseAdapter;
.source "DinoAnimationAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/j;


# static fields
.field private static final a:I

.field private static final b:[I


# instance fields
.field private c:Lcom/yelp/android/DinoListView;

.field private d:[I

.field private e:Landroid/content/Context;

.field private f:Z

.field private g:Z

.field private h:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x61

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/h;->a:I

    .line 37
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/ui/h;->b:[I

    return-void

    :array_0
    .array-data 4
        0x7f020181
        0x7f02018b
        0x7f02018c
        0x7f02018d
        0x7f02018e
        0x7f02018f
        0x7f020190
        0x7f020191
        0x7f020192
        0x7f020182
        0x7f020183
        0x7f020184
        0x7f020185
        0x7f020186
        0x7f020187
        0x7f020188
        0x7f020189
        0x7f02018a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/DinoListView;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 66
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/yelp/android/ui/h;->e:Landroid/content/Context;

    .line 68
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 69
    iput-object p2, p0, Lcom/yelp/android/ui/h;->c:Lcom/yelp/android/DinoListView;

    .line 71
    iput-boolean v1, p0, Lcom/yelp/android/ui/h;->f:Z

    .line 72
    iput-boolean v1, p0, Lcom/yelp/android/ui/h;->g:Z

    .line 74
    sget-object v0, Lcom/yelp/android/ui/h;->b:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/yelp/android/ui/h;->d:[I

    .line 75
    iget-object v3, p0, Lcom/yelp/android/ui/h;->d:[I

    sget-object v0, Lcom/yelp/android/ui/h;->b:[I

    aget v0, v0, v4

    invoke-static {v2, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/res/Resources;I)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v4

    .line 78
    :goto_0
    sget-object v0, Lcom/yelp/android/ui/h;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 79
    iget-object v3, p0, Lcom/yelp/android/ui/h;->d:[I

    sget-object v0, Lcom/yelp/android/ui/h;->b:[I

    aget v0, v0, v1

    invoke-static {v2, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/res/Resources;I)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/yelp/android/ui/h;->d:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    add-int/2addr v0, v4

    aput v0, v3, v1

    .line 78
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/h;->h:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/h;->h:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/h;->h:Landroid/graphics/Paint;

    sget v1, Lcom/yelp/android/ui/h;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/h;->d:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public a(I)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/yelp/android/ui/h;->b:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/h;->d:[I

    aget v0, v0, p1

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/h;->g:Z

    .line 180
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/yelp/android/ui/h;->g:Z

    return v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/h;->f:Z

    .line 188
    invoke-virtual {p0}, Lcom/yelp/android/ui/h;->notifyDataSetChanged()V

    .line 189
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/h;->f:Z

    .line 193
    invoke-virtual {p0}, Lcom/yelp/android/ui/h;->notifyDataSetChanged()V

    .line 194
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/yelp/android/ui/h;->f:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/yelp/android/ui/h;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/h;->f:Z

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Lcom/yelp/android/ui/h;->b:[I

    array-length v0, v0

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/h;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/yelp/android/ui/h;->b:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 95
    if-ne p1, v0, :cond_1

    .line 96
    const/4 v0, 0x3

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 99
    const/16 v0, 0x8

    if-ge p1, v0, :cond_2

    .line 100
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, -0x2

    .line 108
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/h;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 109
    new-instance v1, Lcom/yelp/android/ui/i;

    iget-object v0, p0, Lcom/yelp/android/ui/h;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/h;->h:Landroid/graphics/Paint;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/ui/i;-><init>(Landroid/content/Context;Landroid/graphics/Paint;)V

    .line 110
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 121
    :goto_0
    check-cast v0, Landroid/widget/ImageView;

    .line 123
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/h;->b:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    iget-object v1, p0, Lcom/yelp/android/ui/h;->c:Lcom/yelp/android/DinoListView;

    invoke-virtual {v1}, Lcom/yelp/android/DinoListView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/h;->c:Lcom/yelp/android/DinoListView;

    invoke-virtual {v2}, Lcom/yelp/android/DinoListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 133
    iget-object v2, p0, Lcom/yelp/android/ui/h;->c:Lcom/yelp/android/DinoListView;

    invoke-virtual {v2}, Lcom/yelp/android/DinoListView;->getOnScrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/h;->c:Lcom/yelp/android/DinoListView;

    iget-object v4, p0, Lcom/yelp/android/ui/h;->c:Lcom/yelp/android/DinoListView;

    invoke-virtual {v4}, Lcom/yelp/android/DinoListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lcom/yelp/android/ui/h;->c:Lcom/yelp/android/DinoListView;

    invoke-virtual {v5}, Lcom/yelp/android/DinoListView;->getCount()I

    move-result v5

    invoke-interface {v2, v3, v4, v1, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 137
    return-object v0

    .line 112
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/h;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 113
    new-instance v1, Lcom/yelp/android/bc/c;

    iget-object v0, p0, Lcom/yelp/android/ui/h;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/h;->h:Landroid/graphics/Paint;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/bc/c;-><init>(Landroid/content/Context;Landroid/graphics/Paint;)V

    move-object v0, v1

    .line 114
    check-cast v0, Lcom/yelp/android/bc/c;

    invoke-virtual {v0}, Lcom/yelp/android/bc/c;->a()V

    move-object v0, v1

    goto :goto_0

    .line 115
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/h;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 116
    new-instance v1, Lcom/yelp/android/bc/a;

    iget-object v0, p0, Lcom/yelp/android/ui/h;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/h;->h:Landroid/graphics/Paint;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/bc/a;-><init>(Landroid/content/Context;Landroid/graphics/Paint;)V

    move-object v0, v1

    .line 117
    check-cast v0, Lcom/yelp/android/bc/a;

    invoke-virtual {v0}, Lcom/yelp/android/bc/a;->a()V

    move-object v0, v1

    goto :goto_0

    .line 118
    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/h;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 119
    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yelp/android/ui/h;->e:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    move-object v0, p2

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method
