.class final Landroid/support/design/widget/o;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/o$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/support/design/widget/o$a;

.field private c:Landroid/view/animation/Animation;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/o;->a:Ljava/util/ArrayList;

    .line 30
    iput-object v1, p0, Landroid/support/design/widget/o;->b:Landroid/support/design/widget/o$a;

    .line 31
    iput-object v1, p0, Landroid/support/design/widget/o;->c:Landroid/view/animation/Animation;

    .line 34
    new-instance v0, Landroid/support/design/widget/o$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/o$1;-><init>(Landroid/support/design/widget/o;)V

    iput-object v0, p0, Landroid/support/design/widget/o;->e:Landroid/view/animation/Animation$AnimationListener;

    .line 172
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/o;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Landroid/support/design/widget/o;->c:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic a(Landroid/support/design/widget/o;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Landroid/support/design/widget/o;->c:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private a(Landroid/support/design/widget/o$a;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p1, Landroid/support/design/widget/o$a;->b:Landroid/view/animation/Animation;

    iput-object v0, p0, Landroid/support/design/widget/o;->c:Landroid/view/animation/Animation;

    .line 136
    invoke-virtual {p0}, Landroid/support/design/widget/o;->a()Landroid/view/View;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Landroid/support/design/widget/o;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    :cond_0
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-virtual {p0}, Landroid/support/design/widget/o;->a()Landroid/view/View;

    move-result-object v2

    .line 96
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 97
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 98
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/o$a;

    iget-object v0, v0, Landroid/support/design/widget/o$a;->b:Landroid/view/animation/Animation;

    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 100
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 97
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 103
    :cond_1
    iput-object v5, p0, Landroid/support/design/widget/o;->d:Ljava/lang/ref/WeakReference;

    .line 104
    iput-object v5, p0, Landroid/support/design/widget/o;->b:Landroid/support/design/widget/o$a;

    .line 105
    iput-object v5, p0, Landroid/support/design/widget/o;->c:Landroid/view/animation/Animation;

    .line 106
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/design/widget/o;->c:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Landroid/support/design/widget/o;->a()Landroid/view/View;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/o;->c:Landroid/view/animation/Animation;

    if-ne v1, v2, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/o;->c:Landroid/view/animation/Animation;

    .line 150
    :cond_1
    return-void
.end method


# virtual methods
.method a()Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/design/widget/o;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/o;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/support/design/widget/o;->a()Landroid/view/View;

    move-result-object v0

    .line 83
    if-ne v0, p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    if-eqz v0, :cond_2

    .line 87
    invoke-direct {p0}, Landroid/support/design/widget/o;->c()V

    .line 89
    :cond_2
    if-eqz p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/o;->d:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method a([I)V
    .locals 5

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 114
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_4

    .line 115
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/o$a;

    .line 116
    iget-object v4, v0, Landroid/support/design/widget/o$a;->a:[I

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    :goto_1
    iget-object v1, p0, Landroid/support/design/widget/o;->b:Landroid/support/design/widget/o$a;

    if-ne v0, v1, :cond_2

    .line 131
    :cond_0
    :goto_2
    return-void

    .line 114
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 124
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/o;->b:Landroid/support/design/widget/o$a;

    if-eqz v1, :cond_3

    .line 125
    invoke-direct {p0}, Landroid/support/design/widget/o;->d()V

    .line 127
    :cond_3
    iput-object v0, p0, Landroid/support/design/widget/o;->b:Landroid/support/design/widget/o$a;

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, v0}, Landroid/support/design/widget/o;->a(Landroid/support/design/widget/o$a;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public a([ILandroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Landroid/support/design/widget/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/support/design/widget/o$a;-><init>([ILandroid/view/animation/Animation;Landroid/support/design/widget/o$1;)V

    .line 62
    iget-object v1, p0, Landroid/support/design/widget/o;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 63
    iget-object v1, p0, Landroid/support/design/widget/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/design/widget/o;->c:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/support/design/widget/o;->a()Landroid/view/View;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/o;->c:Landroid/view/animation/Animation;

    if-ne v1, v2, :cond_0

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 170
    :cond_0
    return-void
.end method
