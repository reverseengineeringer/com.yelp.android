.class public Lcom/yelp/android/ui/activities/reviews/StarsView;
.super Landroid/widget/ImageView;
.source "StarsView.java"


# static fields
.field protected static final a:[I

.field protected static final b:[I

.field protected static final c:[I


# instance fields
.field private d:I

.field private e:Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->a:[I

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->b:[I

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->c:[I

    return-void

    .line 28
    nop

    :array_0
    .array-data 4
        0x7f020335
        0x7f020336
        0x7f020337
        0x7f020338
        0x7f020339
        0x7f02033a
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x7f0203c1
        0x7f0203c2
        0x7f0203c3
        0x7f0203c4
        0x7f0203c5
        0x7f0203c6
    .end array-data

    .line 39
    :array_2
    .array-data 4
        0x7f020325
        0x7f020326
        0x7f020327
        0x7f020328
        0x7f020329
        0x7f02032a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;->LARGE:Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setStarSize(Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;->LARGE:Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setStarSize(Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;)V

    .line 56
    return-void
.end method

.method private a(F)I
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    .line 101
    div-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 111
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 114
    return v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/bh;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->e:Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->c:[I

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->d:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setImageResource(I)V

    .line 142
    :goto_0
    return-void

    .line 133
    :pswitch_0
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->a:[I

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->d:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setImageResource(I)V

    goto :goto_0

    .line 136
    :pswitch_1
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView;->b:[I

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->d:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setImageResource(I)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getNumStars()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->d:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const v6, 0x7f0e0031

    const/16 v3, 0x10

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 96
    :goto_1
    return v0

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/reviews/StarsView;->a(F)I

    move-result v2

    .line 72
    invoke-static {v3}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->d:I

    if-eq v2, v3, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v6, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 78
    :cond_1
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setNumStars(I)V

    goto :goto_1

    .line 81
    :pswitch_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->g:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->g:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 84
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/reviews/StarsView;->a(F)I

    move-result v2

    .line 87
    invoke-static {v3}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->d:I

    if-eq v2, v3, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v6, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 93
    :cond_3
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setNumStars(I)V

    goto :goto_1

    .line 61
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
    .line 155
    iput p1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->d:I

    .line 156
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->a()V

    .line 157
    return-void
.end method

.method public setOnActionDown(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->g:Ljava/lang/Runnable;

    .line 123
    return-void
.end method

.method public setOnStarsClicked(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->f:Ljava/lang/Runnable;

    .line 119
    return-void
.end method

.method public setStarSize(Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/StarsView;->e:Lcom/yelp/android/ui/activities/reviews/StarsView$StarSize;

    .line 127
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->a()V

    .line 128
    return-void
.end method
