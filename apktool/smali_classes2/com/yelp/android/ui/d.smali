.class public Lcom/yelp/android/ui/d;
.super Landroid/widget/BaseAdapter;
.source "DinoAnimationAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/d$a;
    }
.end annotation


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
    .line 38
    const/16 v0, 0x61

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/d;->a:I

    .line 39
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/ui/d;->b:[I

    return-void

    :array_0
    .array-data 4
        0x7f020202
        0x7f02020c
        0x7f02020d
        0x7f02020e
        0x7f02020f
        0x7f020210
        0x7f020211
        0x7f020212
        0x7f020213
        0x7f020203
        0x7f020204
        0x7f020205
        0x7f020206
        0x7f020207
        0x7f020208
        0x7f020209
        0x7f02020a
        0x7f02020b
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/DinoListView;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 79
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/yelp/android/ui/d;->e:Landroid/content/Context;

    .line 81
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 82
    iput-object p2, p0, Lcom/yelp/android/ui/d;->c:Lcom/yelp/android/DinoListView;

    .line 84
    iput-boolean v1, p0, Lcom/yelp/android/ui/d;->f:Z

    .line 85
    iput-boolean v1, p0, Lcom/yelp/android/ui/d;->g:Z

    .line 87
    sget-object v0, Lcom/yelp/android/ui/d;->b:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/yelp/android/ui/d;->d:[I

    .line 88
    iget-object v3, p0, Lcom/yelp/android/ui/d;->d:[I

    sget-object v0, Lcom/yelp/android/ui/d;->b:[I

    aget v0, v0, v4

    invoke-static {v2, v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/res/Resources;I)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v4

    .line 91
    :goto_0
    sget-object v0, Lcom/yelp/android/ui/d;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 92
    iget-object v3, p0, Lcom/yelp/android/ui/d;->d:[I

    sget-object v0, Lcom/yelp/android/ui/d;->b:[I

    aget v0, v0, v1

    invoke-static {v2, v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/res/Resources;I)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/yelp/android/ui/d;->d:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    add-int/2addr v0, v4

    aput v0, v3, v1

    .line 91
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/d;->h:Landroid/graphics/Paint;

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/d;->h:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/d;->h:Landroid/graphics/Paint;

    sget v1, Lcom/yelp/android/ui/d;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/d;->d:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/d;->b(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public a(I)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/yelp/android/ui/d;->b:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/d;->d:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/d;->d:[I

    aget v0, v0, p1

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/d;->g:Z

    .line 210
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/yelp/android/ui/d;->g:Z

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/d;->f:Z

    .line 218
    invoke-virtual {p0}, Lcom/yelp/android/ui/d;->notifyDataSetChanged()V

    .line 219
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/d;->f:Z

    .line 223
    invoke-virtual {p0}, Lcom/yelp/android/ui/d;->notifyDataSetChanged()V

    .line 224
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/yelp/android/ui/d;->f:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/yelp/android/ui/d;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/d;->f:Z

    if-nez v0, :cond_0

    .line 180
    sget-object v0, Lcom/yelp/android/ui/d;->b:[I

    array-length v0, v0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/d;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/yelp/android/ui/d;->b:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 110
    if-ne p1, v0, :cond_1

    .line 111
    const/4 v0, 0x3

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 114
    const/16 v0, 0x8

    if-ge p1, v0, :cond_2

    .line 115
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, -0x2

    .line 126
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/d;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    new-instance v1, Lcom/yelp/android/ui/d$a;

    iget-object v0, p0, Lcom/yelp/android/ui/d;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/d;->h:Landroid/graphics/Paint;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/ui/d$a;-><init>(Landroid/content/Context;Landroid/graphics/Paint;)V

    .line 128
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 139
    :goto_0
    check-cast v0, Landroid/widget/ImageView;

    .line 141
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/d;->b:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 148
    iget-object v1, p0, Lcom/yelp/android/ui/d;->c:Lcom/yelp/android/DinoListView;

    invoke-virtual {v1}, Lcom/yelp/android/DinoListView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/d;->c:Lcom/yelp/android/DinoListView;

    invoke-virtual {v2}, Lcom/yelp/android/DinoListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 155
    iget-object v2, p0, Lcom/yelp/android/ui/d;->c:Lcom/yelp/android/DinoListView;

    invoke-virtual {v2}, Lcom/yelp/android/DinoListView;->getOnScrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/d;->c:Lcom/yelp/android/DinoListView;

    iget-object v4, p0, Lcom/yelp/android/ui/d;->c:Lcom/yelp/android/DinoListView;

    invoke-virtual {v4}, Lcom/yelp/android/DinoListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lcom/yelp/android/ui/d;->c:Lcom/yelp/android/DinoListView;

    invoke-virtual {v5}, Lcom/yelp/android/DinoListView;->getCount()I

    move-result v5

    invoke-interface {v2, v3, v4, v1, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 163
    return-object v0

    .line 130
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/d;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 131
    new-instance v1, Lcom/yelp/android/ui/view/dino/b;

    iget-object v0, p0, Lcom/yelp/android/ui/d;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/d;->h:Landroid/graphics/Paint;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/ui/view/dino/b;-><init>(Landroid/content/Context;Landroid/graphics/Paint;)V

    move-object v0, v1

    .line 132
    check-cast v0, Lcom/yelp/android/ui/view/dino/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/view/dino/b;->a()V

    move-object v0, v1

    goto :goto_0

    .line 133
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/d;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 134
    new-instance v1, Lcom/yelp/android/ui/view/dino/a;

    iget-object v0, p0, Lcom/yelp/android/ui/d;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/d;->h:Landroid/graphics/Paint;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/ui/view/dino/a;-><init>(Landroid/content/Context;Landroid/graphics/Paint;)V

    move-object v0, v1

    .line 135
    check-cast v0, Lcom/yelp/android/ui/view/dino/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/view/dino/a;->a()V

    move-object v0, v1

    goto :goto_0

    .line 136
    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/d;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 137
    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yelp/android/ui/d;->e:Landroid/content/Context;

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
    .line 105
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method
