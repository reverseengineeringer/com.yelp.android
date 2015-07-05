.class public Lcom/yelp/android/ui/util/cw;
.super Ljava/lang/Object;
.source "YelpAnimationUtils.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I


# direct methods
.method public static a(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lcom/yelp/android/ui/util/cw;->a(Landroid/view/View;JI)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/view/View;JI)Landroid/view/animation/AlphaAnimation;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 65
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 66
    new-instance v1, Lcom/yelp/android/ui/util/cx;

    invoke-direct {v1, p0, p3}, Lcom/yelp/android/ui/util/cx;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 85
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/ui/util/dd;)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 137
    sget v0, Lcom/yelp/android/bf/b;->slide_in_left:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 138
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 139
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 140
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 141
    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 209
    new-instance v2, Lcom/yelp/android/ui/util/da;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/yelp/android/ui/util/da;-><init>(Landroid/view/View;ILandroid/view/View;I)V

    .line 221
    sget v0, Lcom/yelp/android/ui/util/cw;->d:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 222
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 224
    return-object v2
.end method

.method public static a(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/yelp/android/bf/h;->animation_duration_tiny:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/util/cw;->f:I

    .line 38
    sget v0, Lcom/yelp/android/bf/h;->animation_duration_short:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/util/cw;->e:I

    .line 39
    sget v0, Lcom/yelp/android/bf/h;->animation_duration_medium_short:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/util/cw;->d:I

    .line 40
    sget v0, Lcom/yelp/android/bf/h;->animation_duration_medium:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/util/cw;->c:I

    .line 41
    sget v0, Lcom/yelp/android/bf/h;->animation_duration_medium_long:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/util/cw;->b:I

    .line 42
    sget v0, Lcom/yelp/android/bf/h;->animation_duration_long:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/util/cw;->a:I

    .line 43
    return-void
.end method

.method public static a(Landroid/view/View;ILcom/yelp/android/ui/util/dd;)V
    .locals 4

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/16 v2, 0xa

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 152
    new-instance v1, Lcom/yelp/android/ui/util/cz;

    invoke-direct {v1, p0, v0, p2}, Lcom/yelp/android/ui/util/cz;-><init>(Landroid/view/View;ILcom/yelp/android/ui/util/dd;)V

    .line 169
    if-eqz p2, :cond_0

    .line 170
    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 172
    :cond_0
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 173
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 174
    return-void
.end method

.method public static a(Landroid/view/View;IZLcom/yelp/android/ui/util/dd;)V
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 106
    new-instance v1, Lcom/yelp/android/ui/util/cy;

    invoke-direct {v1, p0, p2, v0}, Lcom/yelp/android/ui/util/cy;-><init>(Landroid/view/View;ZI)V

    .line 128
    if-eqz p3, :cond_0

    .line 129
    invoke-virtual {v1, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 131
    :cond_0
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 132
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 133
    return-void
.end method

.method public static a(Lcom/yelp/android/ui/util/au;Landroid/widget/ListView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 263
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 264
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    move v1, v0

    .line 270
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 271
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 272
    if-eq v3, p2, :cond_0

    .line 275
    add-int v4, v2, v0

    add-int/2addr v4, v1

    .line 276
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/util/au;->getItemId(I)J

    move-result-wide v6

    .line 277
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    const/4 v1, -0x1

    goto :goto_1

    .line 285
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 286
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/au;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/au;->b(Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 292
    new-instance v0, Lcom/yelp/android/ui/util/dc;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/util/dc;-><init>(Landroid/view/ViewTreeObserver;Landroid/widget/ListView;Landroid/view/View;Lcom/yelp/android/ui/util/au;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 337
    return-void
.end method

.method public static b(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x8

    invoke-static {p0, p1, p2, v0}, Lcom/yelp/android/ui/util/cw;->a(Landroid/view/View;JI)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/yelp/android/ui/util/dd;)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 178
    sget v0, Lcom/yelp/android/bf/b;->slide_out_right:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 179
    sget v1, Lcom/yelp/android/ui/util/cw;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 180
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 181
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 182
    return-object v0
.end method

.method public static b(Landroid/view/View;Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 231
    new-instance v2, Lcom/yelp/android/ui/util/db;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/yelp/android/ui/util/db;-><init>(Landroid/view/View;ILandroid/view/View;I)V

    .line 242
    sget v0, Lcom/yelp/android/ui/util/cw;->d:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 243
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 245
    return-object v2
.end method

.method public static c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 91
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 95
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/yelp/android/ui/util/dd;)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 187
    sget v0, Lcom/yelp/android/bf/b;->slide_out_left:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 188
    sget v1, Lcom/yelp/android/ui/util/cw;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 189
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    return-object v0
.end method

.method public static d(Landroid/content/Context;Lcom/yelp/android/ui/util/dd;)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 196
    sget v0, Lcom/yelp/android/bf/b;->slide_in_bottom:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 197
    sget v1, Lcom/yelp/android/ui/util/cw;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 198
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 199
    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 202
    :cond_0
    return-object v0
.end method
