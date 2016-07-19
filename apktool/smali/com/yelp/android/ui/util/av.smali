.class public Lcom/yelp/android/ui/util/av;
.super Ljava/lang/Object;
.source "YelpAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/util/av$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static final g:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 462
    new-instance v0, Lcom/yelp/android/ui/util/av$7;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/util/av$7;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/util/av;->g:Landroid/util/Property;

    return-void
.end method

.method public static a(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;JI)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/view/View;JI)Landroid/view/animation/AlphaAnimation;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;JILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/view/View;JILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 93
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 94
    new-instance v1, Lcom/yelp/android/ui/util/av$1;

    invoke-direct {v1, p4, p0, p3}, Lcom/yelp/android/ui/util/av$1;-><init>(Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 122
    return-object v0
.end method

.method public static a(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x8

    invoke-static {p0, p1, p2, v0, p3}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;JILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static a(FF)Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 442
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 452
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 453
    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 454
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/ui/util/av$a;)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 192
    sget v0, Lcom/yelp/android/co/a$a;->slide_in_left:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 193
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 194
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 195
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 196
    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 267
    new-instance v2, Lcom/yelp/android/ui/util/av$4;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/yelp/android/ui/util/av$4;-><init>(Landroid/view/View;ILandroid/view/View;I)V

    .line 286
    sget v0, Lcom/yelp/android/ui/util/av;->d:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 287
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 289
    return-object v2
.end method

.method public static a(J)Landroid/view/animation/RotateAnimation;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 141
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 144
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 145
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 146
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 147
    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/yelp/android/co/a$g;->animation_duration_tiny:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/util/av;->f:I

    .line 51
    sget v0, Lcom/yelp/android/co/a$g;->animation_duration_short:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/util/av;->e:I

    .line 52
    sget v0, Lcom/yelp/android/co/a$g;->animation_duration_medium_short:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/util/av;->d:I

    .line 53
    sget v0, Lcom/yelp/android/co/a$g;->animation_duration_medium:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/util/av;->c:I

    .line 54
    sget v0, Lcom/yelp/android/co/a$g;->animation_duration_medium_long:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/util/av;->b:I

    .line 55
    sget v0, Lcom/yelp/android/co/a$g;->animation_duration_long:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/util/av;->a:I

    .line 56
    return-void
.end method

.method public static a(Landroid/view/View;ILcom/yelp/android/ui/util/av$a;)V
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/16 v2, 0xa

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 207
    new-instance v1, Lcom/yelp/android/ui/util/av$3;

    invoke-direct {v1, p0, v0, p2}, Lcom/yelp/android/ui/util/av$3;-><init>(Landroid/view/View;ILcom/yelp/android/ui/util/av$a;)V

    .line 225
    if-eqz p2, :cond_0

    .line 226
    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 228
    :cond_0
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 229
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 230
    return-void
.end method

.method public static a(Landroid/view/View;IZLcom/yelp/android/ui/util/av$a;)V
    .locals 4

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 160
    new-instance v1, Lcom/yelp/android/ui/util/av$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/yelp/android/ui/util/av$2;-><init>(Landroid/view/View;ZI)V

    .line 183
    if-eqz p3, :cond_0

    .line 184
    invoke-virtual {v1, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 186
    :cond_0
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 187
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 188
    return-void
.end method

.method public static a(Lcom/yelp/android/ui/util/w;Landroid/widget/ListView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 336
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 337
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    move v1, v0

    .line 343
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 344
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 345
    if-eq v3, p2, :cond_0

    .line 348
    add-int v4, v2, v0

    add-int/2addr v4, v1

    .line 349
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/util/w;->getItemId(I)J

    move-result-wide v6

    .line 350
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_0
    const/4 v1, -0x1

    goto :goto_1

    .line 358
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 359
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/w;->c(Ljava/lang/Object;)V

    .line 364
    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 365
    new-instance v0, Lcom/yelp/android/ui/util/av$6;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/util/av$6;-><init>(Landroid/view/ViewTreeObserver;Landroid/widget/ListView;Landroid/view/View;Lcom/yelp/android/ui/util/w;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 410
    return-void
.end method

.method public static b(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x8

    invoke-static {p0, p1, p2, v0}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;JI)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/yelp/android/ui/util/av$a;)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 234
    sget v0, Lcom/yelp/android/co/a$a;->slide_out_right:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 235
    sget v1, Lcom/yelp/android/ui/util/av;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 236
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 237
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 238
    return-object v0
.end method

.method public static b(Landroid/view/View;Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 299
    new-instance v2, Lcom/yelp/android/ui/util/av$5;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/yelp/android/ui/util/av$5;-><init>(Landroid/view/View;ILandroid/view/View;I)V

    .line 314
    sget v0, Lcom/yelp/android/ui/util/av;->d:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 315
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 317
    return-object v2
.end method

.method public static c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 130
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 131
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 134
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/yelp/android/ui/util/av$a;)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 243
    sget v0, Lcom/yelp/android/co/a$a;->slide_out_left:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 244
    sget v1, Lcom/yelp/android/ui/util/av;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 245
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 246
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 247
    return-object v0
.end method

.method public static d(Landroid/content/Context;Lcom/yelp/android/ui/util/av$a;)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 252
    sget v0, Lcom/yelp/android/co/a$a;->slide_in_bottom:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 253
    sget v1, Lcom/yelp/android/ui/util/av;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 254
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 255
    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 258
    :cond_0
    return-object v0
.end method
