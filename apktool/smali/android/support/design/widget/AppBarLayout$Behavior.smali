.class public Landroid/support/design/widget/AppBarLayout$Behavior;
.super Landroid/support/design/widget/ViewOffsetBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;,
        Landroid/support/design/widget/AppBarLayout$Behavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/ViewOffsetBehavior",
        "<",
        "Landroid/support/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/Runnable;

.field private d:Landroid/support/v4/widget/v;

.field private e:Landroid/support/design/widget/p;

.field private f:I

.field private g:Z

.field private h:F

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 652
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>()V

    .line 641
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:I

    .line 646
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->j:I

    .line 648
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:I

    .line 652
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 655
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 641
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:I

    .line 646
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->j:I

    .line 648
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:I

    .line 656
    return-void
.end method

.method private a(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1052
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1054
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    .line 1055
    invoke-virtual {p1, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1056
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 1057
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->b()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 1059
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v3, v7, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v3, v7, :cond_2

    .line 1060
    if-eqz v6, :cond_1

    .line 1062
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->a()I

    move-result v2

    .line 1063
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_3

    .line 1065
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v7, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v7

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    .line 1068
    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_0

    .line 1071
    invoke-static {v5}, Landroid/support/v4/view/ai;->r(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1075
    :cond_0
    :goto_1
    if-lez v0, :cond_1

    .line 1076
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v3, v1

    .line 1077
    int-to-float v2, v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1081
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v0, v2

    mul-int p2, v1, v0

    .line 1091
    :cond_1
    return p2

    .line 1054
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/design/widget/AppBarLayout$Behavior;)Landroid/support/v4/widget/v;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/v4/widget/v;

    return-object v0
.end method

.method private a(Landroid/support/design/widget/AppBarLayout;)V
    .locals 5

    .prologue
    .line 1039
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout;)Ljava/util/List;

    move-result-object v2

    .line 1043
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 1044
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    .line 1045
    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->b()I

    move-result v4

    invoke-interface {v0, p1, v4}, Landroid/support/design/widget/AppBarLayout$a;->a(Landroid/support/design/widget/AppBarLayout;I)V

    .line 1043
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1049
    :cond_1
    return-void
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIF)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 894
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->c:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 898
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/v4/widget/v;

    if-nez v0, :cond_1

    .line 899
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/v;->a(Landroid/content/Context;)Landroid/support/v4/widget/v;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/v4/widget/v;

    .line 902
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/v4/widget/v;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v2

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/v;->a(IIIIIIII)V

    .line 908
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/v4/widget/v;

    invoke-virtual {v0}, Landroid/support/v4/widget/v;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 909
    new-instance v0, Landroid/support/design/widget/AppBarLayout$Behavior$a;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior$a;-><init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->c:Ljava/lang/Runnable;

    .line 910
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->c:Ljava/lang/Runnable;

    invoke-static {p2, v0}, Landroid/support/v4/view/ai;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 911
    const/4 v1, 0x1

    .line 914
    :goto_0
    return v1

    .line 913
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->c:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I
    .locals 6

    .prologue
    .line 982
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v0

    sub-int v3, v0, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result v0

    return v0
.end method

.method private c(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/p;

    if-nez v0, :cond_0

    .line 875
    invoke-static {}, Landroid/support/design/widget/v;->a()Landroid/support/design/widget/p;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/p;

    .line 876
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/p;

    sget-object v1, Landroid/support/design/widget/a;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p;->a(Landroid/view/animation/Interpolator;)V

    .line 877
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/p;

    new-instance v1, Landroid/support/design/widget/AppBarLayout$Behavior$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior$1;-><init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p;->a(Landroid/support/design/widget/p$c;)V

    .line 888
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/p;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/support/design/widget/p;->a(II)V

    .line 889
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->a()V

    .line 890
    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->e()V

    goto :goto_0
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 987
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 989
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/support/v4/view/ai;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 991
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 989
    goto :goto_0

    :cond_1
    move v0, v1

    .line 991
    goto :goto_0
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 1095
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->b()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I
    .locals 4

    .prologue
    .line 1002
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v2

    .line 1003
    const/4 v0, 0x0

    .line 1005
    if-eqz p4, :cond_1

    if-lt v2, p4, :cond_1

    if-gt v2, p5, :cond_1

    .line 1008
    invoke-static {p3, p4, p5}, Landroid/support/design/widget/k;->a(III)I

    move-result v1

    .line 1010
    if-eq v2, v1, :cond_1

    .line 1011
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v0

    .line 1015
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(I)Z

    move-result v3

    .line 1018
    sub-int/2addr v2, v1

    .line 1020
    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->a:I

    .line 1022
    if-nez v3, :cond_0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->c(Landroid/view/View;)V

    .line 1031
    :cond_0
    invoke-direct {p0, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/AppBarLayout;)V

    move v0, v2

    .line 1035
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 1011
    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1100
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/ViewOffsetBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v2

    .line 1101
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->b()I

    move-result v4

    .line 1104
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v5

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_2

    .line 1105
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1106
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int v7, v1, v4

    .line 1108
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v4

    if-gtz v1, :cond_1

    if-ltz v7, :cond_1

    .line 1109
    new-instance v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {v1, v2}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1110
    iput v3, v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->a:I

    .line 1111
    invoke-static {v6}, Landroid/support/v4/view/ai;->r(Landroid/view/View;)I

    move-result v2

    if-ne v7, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->c:Z

    .line 1113
    int-to-float v0, v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->b:F

    move-object v0, v1

    .line 1119
    :goto_1
    return-object v0

    .line 1104
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 1119
    goto :goto_1
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 629
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1125
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v0, :cond_0

    .line 1126
    check-cast p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    .line 1127
    invoke-virtual {p3}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/ViewOffsetBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1128
    iget v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->a:I

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:I

    .line 1129
    iget v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->b:F

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->h:F

    .line 1130
    iget-boolean v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->c:Z

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->g:Z

    .line 1135
    :goto_0
    return-void

    .line 1132
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/ViewOffsetBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1133
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:I

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:Z

    .line 719
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->m:Ljava/lang/ref/WeakReference;

    .line 720
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 700
    if-gez p7, :cond_0

    .line 703
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    .line 706
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:Z

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    iput-boolean v5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:Z

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[I)V
    .locals 7

    .prologue
    .line 681
    if-eqz p5, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:Z

    if-nez v0, :cond_0

    .line 683
    if-gez p5, :cond_1

    .line 685
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 686
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v0

    add-int v5, v4, v0

    .line 692
    :goto_0
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result v0

    aput v0, p6, v6

    .line 694
    :cond_0
    return-void

    .line 689
    :cond_1
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 690
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 629
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 629
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8

    .prologue
    .line 629
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7

    .prologue
    .line 629
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public bridge synthetic a(I)Z
    .locals 1

    .prologue
    .line 629
    invoke-super {p0, p1}, Landroid/support/design/widget/ViewOffsetBehavior;->a(I)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 941
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/ViewOffsetBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v2

    .line 943
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result v3

    .line 944
    if-eqz v3, :cond_6

    .line 945
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 946
    :goto_0
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_4

    .line 947
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v1

    neg-int v1, v1

    .line 948
    if-eqz v0, :cond_3

    .line 949
    invoke-direct {p0, p1, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    .line 961
    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->d()V

    .line 975
    :cond_1
    :goto_2
    invoke-direct {p0, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/AppBarLayout;)V

    .line 977
    return v2

    :cond_2
    move v0, v1

    .line 945
    goto :goto_0

    .line 951
    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)I

    goto :goto_1

    .line 953
    :cond_4
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 954
    if-eqz v0, :cond_5

    .line 955
    invoke-direct {p0, p1, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    goto :goto_1

    .line 957
    :cond_5
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)I

    goto :goto_1

    .line 962
    :cond_6
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:I

    if-ltz v0, :cond_1

    .line 963
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 964
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    .line 965
    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->g:Z

    if-eqz v3, :cond_7

    .line 966
    invoke-static {v0}, Landroid/support/v4/view/ai;->r(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    .line 970
    :goto_3
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(I)Z

    .line 971
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:I

    goto :goto_2

    .line 968
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->h:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_3
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 725
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:I

    if-gez v1, :cond_0

    .line 726
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:I

    .line 729
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 732
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->i:Z

    if-eqz v1, :cond_1

    .line 775
    :goto_0
    return v0

    .line 736
    :cond_1
    invoke-static {p3}, Landroid/support/v4/view/t;->a(Landroid/view/MotionEvent;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 775
    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->i:Z

    goto :goto_0

    .line 738
    :pswitch_0
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->j:I

    .line 739
    if-eq v1, v3, :cond_2

    .line 743
    invoke-static {p3, v1}, Landroid/support/v4/view/t;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 744
    if-eq v1, v3, :cond_2

    .line 748
    invoke-static {p3, v1}, Landroid/support/v4/view/t;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    .line 749
    iget v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 750
    iget v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:I

    if-le v2, v3, :cond_2

    .line 751
    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->i:Z

    .line 752
    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:I

    goto :goto_1

    .line 758
    :pswitch_1
    iput-boolean v4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->i:Z

    .line 759
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 760
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 761
    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:I

    .line 763
    invoke-static {p3, v4}, Landroid/support/v4/view/t;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->j:I

    goto :goto_1

    .line 770
    :pswitch_2
    iput-boolean v4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->i:Z

    .line 771
    iput v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->j:I

    goto :goto_1

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 835
    if-nez p6, :cond_1

    .line 837
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v3, v0

    neg-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIF)Z

    move-result v4

    .line 869
    :cond_0
    :goto_0
    return v4

    .line 842
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p5, v0

    if-gez v0, :cond_3

    .line 844
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v1

    add-int/2addr v0, v1

    .line 847
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 863
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 864
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    .line 865
    const/4 v4, 0x1

    goto :goto_0

    .line 854
    :cond_3
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    .line 856
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v1

    if-ge v1, v0, :cond_2

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2

    .prologue
    .line 663
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 667
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/p;

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/p;

    invoke-virtual {v1}, Landroid/support/design/widget/p;->e()V

    .line 673
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->m:Ljava/lang/ref/WeakReference;

    .line 675
    return v0

    .line 663
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 629
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z

    move-result v0

    return v0
.end method

.method public synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 629
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 7

    .prologue
    .line 629
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 629
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()I
    .locals 1

    .prologue
    .line 629
    invoke-super {p0}, Landroid/support/design/widget/ViewOffsetBehavior;->b()I

    move-result v0

    return v0
.end method

.method final b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)I
    .locals 6

    .prologue
    .line 996
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result v0

    return v0
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 780
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:I

    if-gez v0, :cond_0

    .line 781
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:I

    .line 784
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 785
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 787
    invoke-static {p3}, Landroid/support/v4/view/t;->a(Landroid/view/MotionEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    move v5, v6

    .line 828
    :cond_2
    return v5

    .line 789
    :pswitch_0
    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 790
    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:I

    .line 791
    invoke-static {p3, v5}, Landroid/support/v4/view/t;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->j:I

    goto :goto_0

    .line 797
    :pswitch_1
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->j:I

    invoke-static {p3, v0}, Landroid/support/v4/view/t;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 799
    if-eq v0, v3, :cond_2

    .line 803
    invoke-static {p3, v0}, Landroid/support/v4/view/t;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    float-to-int v0, v0

    .line 805
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:I

    sub-int v3, v1, v0

    .line 806
    iget-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->i:Z

    if-nez v1, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:I

    if-le v1, v2, :cond_3

    .line 807
    iput-boolean v6, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->i:Z

    .line 808
    if-lez v3, :cond_4

    .line 809
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:I

    sub-int/2addr v3, v1

    .line 815
    :cond_3
    :goto_1
    iget-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->i:Z

    if-eqz v1, :cond_1

    .line 816
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:I

    .line 818
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    goto :goto_0

    .line 811
    :cond_4
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 823
    :pswitch_2
    iput-boolean v5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->i:Z

    .line 824
    iput v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->j:I

    goto :goto_0

    .line 787
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 629
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
