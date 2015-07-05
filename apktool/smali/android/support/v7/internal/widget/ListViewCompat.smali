.class public Landroid/support/v7/internal/widget/ListViewCompat;
.super Landroid/widget/ListView;
.source "ListViewCompat.java"


# static fields
.field private static final f:[I


# instance fields
.field final a:Landroid/graphics/Rect;

.field b:I

.field c:I

.field d:I

.field e:I

.field private g:Ljava/lang/reflect/Field;

.field private h:Landroid/support/v7/internal/widget/al;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Landroid/support/v7/internal/widget/ListViewCompat;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->a:Landroid/graphics/Rect;

    .line 47
    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->b:I

    .line 48
    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->c:I

    .line 49
    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->d:I

    .line 50
    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->e:I

    .line 68
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string/jumbo v1, "mIsChildViewEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->g:Ljava/lang/reflect/Field;

    .line 69
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->g:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(IIIII)I
    .locals 12

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingTop()I

    move-result v2

    .line 253
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingBottom()I

    move-result v3

    .line 254
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingLeft()I

    .line 255
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingRight()I

    .line 256
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getDividerHeight()I

    move-result v1

    .line 257
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 259
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    .line 261
    if-nez v8, :cond_1

    .line 262
    add-int p4, v2, v3

    .line 321
    :cond_0
    :goto_0
    return p4

    .line 266
    :cond_1
    add-int/2addr v3, v2

    .line 267
    if-lez v1, :cond_2

    if-eqz v4, :cond_2

    .line 272
    :goto_1
    const/4 v4, 0x0

    .line 274
    const/4 v6, 0x0

    .line 275
    const/4 v5, 0x0

    .line 276
    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    .line 277
    const/4 v2, 0x0

    move v7, v2

    :goto_2
    if-ge v7, v9, :cond_6

    .line 278
    invoke-interface {v8, v7}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 279
    if-eq v2, v5, :cond_7

    .line 280
    const/4 v5, 0x0

    move v11, v2

    move-object v2, v5

    move v5, v11

    .line 283
    :goto_3
    invoke-interface {v8, v7, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 287
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 288
    if-eqz v2, :cond_3

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v10, :cond_3

    .line 289
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 294
    :goto_4
    invoke-virtual {v6, p1, v2}, Landroid/view/View;->measure(II)V

    .line 296
    if-lez v7, :cond_8

    .line 298
    add-int v2, v3, v1

    .line 301
    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 303
    move/from16 v0, p4

    if-lt v2, v0, :cond_4

    .line 306
    if-ltz p5, :cond_0

    move/from16 v0, p5

    if-le v7, v0, :cond_0

    if-lez v4, :cond_0

    move/from16 v0, p4

    if-eq v2, v0, :cond_0

    move/from16 p4, v4

    goto :goto_0

    .line 267
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 292
    :cond_3
    const/4 v2, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_4

    .line 314
    :cond_4
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-lt v7, v0, :cond_5

    move v4, v2

    .line 277
    :cond_5
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v3, v2

    goto :goto_2

    :cond_6
    move/from16 p4, v3

    .line 321
    goto :goto_0

    :cond_7
    move-object v2, v6

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_5
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 110
    :cond_0
    return-void
.end method

.method protected a(ILandroid/view/View;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 181
    if-eqz v3, :cond_2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    move v2, v0

    .line 182
    :goto_0
    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 186
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/internal/widget/ListViewCompat;->b(ILandroid/view/View;)V

    .line 188
    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListViewCompat;->a:Landroid/graphics/Rect;

    .line 190
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 191
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    .line 192
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    invoke-virtual {v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 193
    invoke-static {v3, v4, v2}, Lcom/yelp/android/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 195
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 181
    goto :goto_0

    :cond_3
    move v0, v1

    .line 192
    goto :goto_1
.end method

.method protected a(ILandroid/view/View;FF)V
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/internal/widget/ListViewCompat;->a(ILandroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 173
    invoke-static {v0, p3, p4}, Lcom/yelp/android/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 175
    :cond_0
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    iget-object v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 124
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected b(ILandroid/view/View;)V
    .locals 5

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->a:Landroid/graphics/Rect;

    .line 199
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 202
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/support/v7/internal/widget/ListViewCompat;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 203
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/support/v7/internal/widget/ListViewCompat;->c:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 204
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/internal/widget/ListViewCompat;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 205
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/internal/widget/ListViewCompat;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 210
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 211
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 212
    iget-object v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->g:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 214
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_1
    return-void

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 97
    .line 99
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ListViewCompat;->a(Landroid/graphics/Canvas;)V

    .line 102
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 103
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 91
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->h:Landroid/support/v7/internal/widget/al;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/al;->a(Z)V

    .line 92
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->a()V

    .line 93
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Landroid/support/v7/internal/widget/al;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/al;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->h:Landroid/support/v7/internal/widget/al;

    .line 78
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->h:Landroid/support/v7/internal/widget/al;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 81
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 82
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->b:I

    .line 83
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->c:I

    .line 84
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->d:I

    .line 85
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->e:I

    .line 86
    return-void
.end method

.method protected setSelectorEnabled(Z)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->h:Landroid/support/v7/internal/widget/al;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/al;->a(Z)V

    .line 326
    return-void
.end method
