.class public Lcom/yelp/android/ui/widgets/WidgetSpan;
.super Landroid/widget/LinearLayout;
.source "WidgetSpan.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/ui/widgets/SpannableWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/WidgetSpan;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/WidgetSpan;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/WidgetSpan;->a:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0, p0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 34
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/WidgetSpan;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    move v5, v3

    :goto_0
    if-ge v4, v6, :cond_3

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/WidgetSpan;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    move-object v1, v0

    .line 69
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 70
    if-nez v4, :cond_0

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setLeft(Z)V

    .line 71
    add-int/lit8 v1, v6, -0x1

    if-ne v4, v1, :cond_1

    move v1, v2

    :goto_2
    invoke-interface {v0, v1}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setRight(Z)V

    .line 72
    add-int/lit8 v1, v6, -0x1

    if-eq v4, v1, :cond_2

    move v1, v2

    :goto_3
    invoke-interface {v0, v1}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setMiddle(Z)V

    .line 67
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 70
    goto :goto_1

    :cond_1
    move v1, v3

    .line 71
    goto :goto_2

    :cond_2
    move v1, v3

    .line 72
    goto :goto_3

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/WidgetSpan;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/widgets/SpannableWidget;

    .line 75
    if-lez v5, :cond_4

    move-object v0, v1

    .line 76
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    :cond_4
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_4

    .line 80
    :cond_5
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 46
    instance-of v0, p2, Lcom/yelp/android/ui/widgets/SpannableWidget;

    if-eqz v0, :cond_0

    .line 47
    check-cast p2, Lcom/yelp/android/ui/widgets/SpannableWidget;

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/WidgetSpan;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->a()V

    .line 51
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/WidgetSpan;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 57
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/widgets/WidgetSpan;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 58
    instance-of v3, v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/yelp/android/ui/widgets/WidgetSpan;->a:Ljava/util/ArrayList;

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->a()V

    .line 63
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 94
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->getChildCount()I

    move-result v4

    :goto_0
    if-ge v1, v4, :cond_1

    .line 95
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/widgets/WidgetSpan;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 96
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->getOrientation()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 94
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :pswitch_0
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_0

    .line 99
    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    .line 113
    :goto_1
    return v0

    .line 104
    :pswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_0

    .line 105
    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    goto :goto_1

    .line 113
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
