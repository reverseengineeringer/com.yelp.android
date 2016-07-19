.class public Lcom/yelp/android/ui/activities/reviews/StarsView;
.super Landroid/widget/ImageView;
.source "StarsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviews/StarsView$1;,
        Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;
    }
.end annotation


# static fields
.field protected static final a:[I

.field protected static final b:[I

.field protected static final c:[I

.field protected static final d:[I

.field protected static final e:[I

.field protected static final f:[I


# instance fields
.field private g:I

.field private h:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 27
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->a:[I

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->b:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->c:[I

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->d:[I

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->e:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->f:[I

    return-void

    .line 27
    :array_0
    .array-data 4
        0x7f020476
        0x7f020477
        0x7f020478
        0x7f020479
        0x7f02047a
        0x7f02047b
    .end array-data

    .line 36
    :array_1
    .array-data 4
        0x7f02053d
        0x7f02053e
        0x7f02053f
        0x7f020540
        0x7f020541
        0x7f020542
    .end array-data

    .line 45
    :array_2
    .array-data 4
        0x7f020466
        0x7f020467
        0x7f020468
        0x7f020469
        0x7f02046a
        0x7f02046b
    .end array-data

    .line 54
    :array_3
    .array-data 4
        0x7f020543
        0x7f020544
        0x7f020545
        0x7f020546
        0x7f020547
        0x7f020548
    .end array-data

    .line 63
    :array_4
    .array-data 4
        0x7f02052d
        0x7f02052e
        0x7f02052f
        0x7f020530
        0x7f020531
        0x7f020532
    .end array-data

    .line 72
    :array_5
    .array-data 4
        0x7f02051d
        0x7f02051e
        0x7f02051f
        0x7f020520
        0x7f020521
        0x7f020522
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 86
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->LARGE:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setStarStyle(Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->LARGE:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setStarStyle(Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;)V

    .line 92
    return-void
.end method

.method private a(F)I
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    .line 138
    div-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 148
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 153
    return v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$1;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->h:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 187
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->c:[I

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->g:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setImageResource(I)V

    .line 190
    :goto_0
    return-void

    .line 172
    :pswitch_0
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->a:[I

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->g:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setImageResource(I)V

    goto :goto_0

    .line 175
    :pswitch_1
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->b:[I

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->g:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setImageResource(I)V

    goto :goto_0

    .line 178
    :pswitch_2
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->d:[I

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->g:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setImageResource(I)V

    goto :goto_0

    .line 181
    :pswitch_3
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->e:[I

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->g:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setImageResource(I)V

    goto :goto_0

    .line 184
    :pswitch_4
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->f:[I

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->g:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setImageResource(I)V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getNumStars()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->g:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const v6, 0x7f080036

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 133
    :goto_1
    return v0

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->i:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/reviews/StarsView;->a(F)I

    move-result v2

    .line 107
    iget v3, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->g:I

    if-eq v2, v3, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v6, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 114
    :cond_1
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setNumStars(I)V

    goto :goto_1

    .line 117
    :pswitch_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->j:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->j:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 120
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/reviews/StarsView;->a(F)I

    move-result v2

    .line 123
    iget v3, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->g:I

    if-eq v2, v3, :cond_3

    .line 124
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v6, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 130
    :cond_3
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setNumStars(I)V

    goto :goto_1

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setNumStars(I)V
    .locals 0

    .prologue
    .line 201
    iput p1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->g:I

    .line 202
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->a()V

    .line 203
    return-void
.end method

.method public setOnActionDown(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->j:Ljava/lang/Runnable;

    .line 162
    return-void
.end method

.method public setOnStarsClicked(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->i:Ljava/lang/Runnable;

    .line 158
    return-void
.end method

.method public setStarStyle(Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->h:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    .line 166
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->a()V

    .line 167
    return-void
.end method
